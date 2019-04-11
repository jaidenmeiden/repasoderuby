# Modules

module Model
  class Company
  end
  class Employee
  end
end

module Reports
  class ExcelReporter
    def build
      puts "Generating excel report"
    end
  end

  class EmailReporter
  end
end

#Los dos punto indeican que queremos acceder
#a algo que esta dentro del módulo reports
#luego hacemos rerferencia a la clase
excel_report = Reports::ExcelReporter.new
excel_report.build