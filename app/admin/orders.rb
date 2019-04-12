ActiveAdmin.register Order do
  permit_params payments_attributes: [:id, :amount_cents]

  form do |f|
    panel 'Payment Methods' do
      table do
        thead do
          th 'ID'
          th 'Amount Processed'
        end

        tbody do
          f.semantic_fields_for :payments do |payments|
            tr(class: cycle('odd', '')) do
              td(style: 'display:none') { payments.input :id, as: :hidden }
              td { payments.object.id }
              td { payments.text_field :amount_cents }
            end
            nil # workaround duplicate display.
          end
        end
      end
    end

    f.actions
  end
end
