Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-isup?download=true
inline.NumInlined: 200
inline.NumDeleted: 78
begin_hunk_0
@.str.1905 = private unnamed_addr constant [26 x i8] c"propagation delay = %u ms\00", align 1
@.str.1906 = private unnamed_addr constant [29 x i8] c" : propagation delay = %u ms\00", align 1
@.str.1907 = private unnamed_addr constant [18 x i8] c": counter = %u ms\00", align 1
@.str.1908 = private unnamed_addr constant [20 x i8] c"Feature Code %u: %u\00", align 1
@.str.1909 = private unnamed_addr constant [15 x i8] c"spare/reserved\00", align 1
@.str.1910 = private unnamed_addr constant [48 x i8] c"0x%x (refer to 3.6/Q.763 for detailed decoding)\00", align 1
@dissect_isup_echo_control_information_parameter.info = internal constant [5 x ptr] [ptr @hf_isup_OECD_inf_ind, ptr @hf_isup_IECD_inf_ind, ptr @hf_isup_OECD_req_ind, ptr @hf_isup_IECD_req_ind, ptr null], align 16
@dissect_isup_message_compatibility_information_parameter.params = internal constant [8 x ptr] [ptr @hf_isup_transit_at_intermediate_exchange_ind, ptr @hf_isup_Release_call_ind, ptr @hf_isup_Send_notification_ind, ptr @hf_isup_Discard_message_ind_value, ptr @hf_isup_pass_on_not_possible_indicator2, ptr @hf_isup_Broadband_narrowband_interworking_ind2, ptr @hf_isup_extension_ind, ptr null], align 16
@dissect_isup_parameter_compatibility_information_parameter.indicator_flags = internal constant [8 x ptr] [ptr @hf_isup_transit_at_intermediate_exchange_ind, ptr @hf_isup_Release_call_ind, ptr @hf_isup_Send_notification_ind, ptr @hf_isup_Discard_message_ind_value, ptr @hf_isup_Discard_parameter_ind, ptr @hf_isup_Pass_on_not_possible_indicator, ptr @hf_isup_extension_ind, ptr null], align 16
@.str.1911 = private unnamed_addr constant [31 x i8] c"Upgraded parameter no: %u = %s\00", align 1
@.str.1912 = private unnamed_addr constant [13 x i8] c"unknown (%u)\00", align 1
@.str.1913 = private unnamed_addr constant [50 x i8] c" : Prec = %s, NI = %s, MLPP service domain = 0x%x\00", align 1
@.str.1914 = private unnamed_addr constant [76 x i8] c"0x%x (MCID requested by Bit1=1, Holding requested by Bit2=1 see 3.31/Q.763)\00", align 1
@.str.1915 = private unnamed_addr constant [74 x i8] c"0x%x (MCID included if Bit1=1, Holding provided if Bit2=1 see 3.32/Q.763)\00", align 1
@.str.1916 = private unnamed_addr constant [43 x i8] c" : %u (ANI II if < 51, reserved otherwise)\00", align 1
@.str.1917 = private unnamed_addr constant [9 x i8] c" : 0x%x \00", align 1
@.str.1918 = private unnamed_addr constant [16 x i8] c" : Request (%u)\00", align 1
@.str.1919 = private unnamed_addr constant [17 x i8] c" : Response (%u)\00", align 1
@.str.1920 = private unnamed_addr constant [22 x i8] c" : no indication (%u)\00", align 1
@.str.1921 = private unnamed_addr constant [18 x i8] c" : CCSS call (%u)\00", align 1
@.str.1922 = private unnamed_addr constant [49 x i8] c"0x%x (refer to 3.62/Q.763 for detailed decoding)\00", align 1
@.str.1923 = private unnamed_addr constant [30 x i8] c"(format is a national matter)\00", align 1
@dissect_isup_called_in_number_parameter.indicators1_fields = internal constant [3 x ptr] [ptr @hf_isup_odd_even_indicator, ptr @hf_isup_calling_party_nature_of_address_indicator, ptr null], align 16
@dissect_isup_called_in_number_parameter.indicators2_fields = internal constant [3 x ptr] [ptr @hf_isup_numbering_plan_indicator, ptr @hf_isup_address_presentation_restricted_indicator, ptr null], align 16
@.str.1924 = private unnamed_addr constant [49 x i8] c"0x%x (refer to 3.78/Q.763 for detailed decoding)\00", align 1
@.str.1925 = private unnamed_addr constant [49 x i8] c"0x%x (refer to 3.79/Q.763 for detailed decoding)\00", align 1
@.str.1926 = private unnamed_addr constant [24 x i8] c" : no indication (0x%x)\00", align 1
@.str.1927 = private unnamed_addr constant [33 x i8] c" : collect call requested (0x%x)\00", align 1
@dissect_isup_generic_name_parameter.indicators = internal constant [4 x ptr] [ptr @hf_isup_generic_name_presentation, ptr @hf_isup_generic_name_availability, ptr @hf_isup_generic_name_type, ptr null], align 16
@dissect_isup_charge_number_parameter.indicators1_fields = internal constant [3 x ptr] [ptr @hf_isup_odd_even_indicator, ptr @hf_isup_charge_number_nature_of_address_indicator, ptr null], align 16
@dissect_isup_application_transport_parameter.apm_flags = internal constant [4 x ptr] [ptr @hf_isup_extension_ind, ptr @hf_isup_apm_si_ind, ptr @hf_isup_apm_segmentation_ind, ptr null], align 16
@dissect_isup_application_transport_parameter.app_trans_flags = internal constant [4 x ptr] [ptr @hf_isup_extension_ind, ptr @hf_isup_app_Send_notification_ind, ptr @hf_isup_app_Release_call_ind, ptr null], align 16
@dissect_isup_application_transport_parameter.app_field_flags = internal constant [3 x ptr] [ptr @hf_isup_extension_ind, ptr @hf_isup_app_cont_ident, ptr null], align 16
@.str.1928 = private unnamed_addr constant [17 x i8] c"Reassembled ISUP\00", align 1
@isup_apm_msg_frag_items = internal constant %struct._fragment_items { ptr @ett_isup_apm_msg_fragment, ptr @ett_isup_apm_msg_fragments, ptr @hf_isup_apm_msg_fragments, ptr @hf_isup_apm_msg_fragment, ptr @hf_isup_apm_msg_fragment_overlap, ptr @hf_isup_apm_msg_fragment_overlap_conflicts, ptr @hf_isup_apm_msg_fragment_multiple_tails, ptr @hf_isup_apm_msg_fragment_too_long_fragment, ptr @hf_isup_apm_msg_fragment_error, ptr @hf_isup_apm_msg_fragment_count, ptr @hf_isup_apm_msg_reassembled_in, ptr @hf_isup_apm_msg_reassembled_length, ptr null, ptr @.str.1932 }, align 8
@.str.1929 = private unnamed_addr constant [23 x i8] c" (Message Reassembled)\00", align 1
@.str.1930 = private unnamed_addr constant [20 x i8] c" (Message fragment)\00", align 1
@.str.1931 = private unnamed_addr constant [52 x i8] c"No further dissection of APM-user information field\00", align 1
@.str.1932 = private unnamed_addr constant [27 x i8] c"ISUP APM Message fragments\00", align 1
@.str.1933 = private unnamed_addr constant [107 x i8] c"Bearer Association Transport (BAT) Application Service Element (ASE) Encapsulated Application Information:\00", align 1
@.str.1934 = private unnamed_addr constant [35 x i8] c"BAT ASE Element %u, Identifier: %s\00", align 1
@.str.1935 = private unnamed_addr constant [6 x i8] c" - %s\00", align 1
@.str.1936 = private unnamed_addr constant [14 x i8] c"BNCId: 0x%08x\00", align 1
@.str.1937 = private unnamed_addr constant [10 x i8] c" - 0x%08x\00", align 1
@.str.1938 = private unnamed_addr constant [26 x i8] c" - Tunnelling to be used \00", align 1
@dissect_codec.compatibility_info = internal constant [6 x ptr] [ptr @hf_Instruction_ind_for_general_action, ptr @hf_Send_notification_ind_for_general_action, ptr @hf_Instruction_ind_for_pass_on_not_possible, ptr @hf_Send_notification_ind_for_pass_on_not_possible, ptr @hf_isup_extension_ind, ptr null], align 16
@dissect_ansi_isup_param_carrier_id.flags = internal constant [4 x ptr] [ptr @hf_ansi_isup_spare_b7, ptr @hf_ansi_isup_type_of_nw_id, ptr @hf_ansi_isup_nw_id_plan, ptr null], align 16
@.str.1939 = private unnamed_addr constant [36 x i8] c"french_isup_message_type_value_acro\00", align 1
@.str.1940 = private unnamed_addr constant [4 x i8] c"CHP\00", align 1
@.str.1941 = private unnamed_addr constant [4 x i8] c"CHA\00", align 1
@french_isup_message_type_value_acro = internal constant [70 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.798 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.799 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.800 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.801 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.802 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.803 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.804 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.805 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.806 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.808 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.809 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.810 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.811 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.812 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.813 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.814 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.815 }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.816 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.817 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.818 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.819 }, { i32, [4 x i8], ptr } { i32 25, [4 x i8] zeroinitializer, ptr @.str.820 }, { i32, [4 x i8], ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.821 }, { i32, [4 x i8], ptr } { i32 27, [4 x i8] zeroinitializer, ptr @.str.822 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.823 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.824 }, { i32, [4 x i8], ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.825 }, { i32, [4 x i8], ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 35, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 36, [4 x i8] zeroinitializer, ptr @.str.826 }, { i32, [4 x i8], ptr } { i32 37, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 38, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 39, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 40, [4 x i8] zeroinitializer, ptr @.str.827 }, { i32, [4 x i8], ptr } { i32 41, [4 x i8] zeroinitializer, ptr @.str.828 }, { i32, [4 x i8], ptr } { i32 42, [4 x i8] zeroinitializer, ptr @.str.829 }, { i32, [4 x i8], ptr } { i32 43, [4 x i8] zeroinitializer, ptr @.str.830 }, { i32, [4 x i8], ptr } { i32 44, [4 x i8] zeroinitializer, ptr @.str.831 }, { i32, [4 x i8], ptr } { i32 45, [4 x i8] zeroinitializer, ptr @.str.832 }, { i32, [4 x i8], ptr } { i32 46, [4 x i8] zeroinitializer, ptr @.str.833 }, { i32, [4 x i8], ptr } { i32 47, [4 x i8] zeroinitializer, ptr @.str.834 }, { i32, [4 x i8], ptr } { i32 48, [4 x i8] zeroinitializer, ptr @.str.835 }, { i32, [4 x i8], ptr } { i32 49, [4 x i8] zeroinitializer, ptr @.str.836 }, { i32, [4 x i8], ptr } { i32 50, [4 x i8] zeroinitializer, ptr @.str.837 }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @.str.838 }, { i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @.str.839 }, { i32, [4 x i8], ptr } { i32 53, [4 x i8] zeroinitializer, ptr @.str.840 }, { i32, [4 x i8], ptr } { i32 54, [4 x i8] zeroinitializer, ptr @.str.841 }, { i32, [4 x i8], ptr } { i32 55, [4 x i8] zeroinitializer, ptr @.str.842 }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.843 }, { i32, [4 x i8], ptr } { i32 57, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 58, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 59, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 61, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 62, [4 x i8] zeroinitializer, ptr @.str.844 }, { i32, [4 x i8], ptr } { i32 63, [4 x i8] zeroinitializer, ptr @.str.844 }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @.str.845 }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @.str.846 }, { i32, [4 x i8], ptr } { i32 66, [4 x i8] zeroinitializer, ptr @.str.847 }, { i32, [4 x i8], ptr } { i32 67, [4 x i8] zeroinitializer, ptr @.str.848 }, { i32, [4 x i8], ptr } { i32 225, [4 x i8] zeroinitializer, ptr @.str.1940 }, { i32, [4 x i8], ptr } { i32 226, [4 x i8] zeroinitializer, ptr @.str.1941 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1943 = private unnamed_addr constant [37 x i8] c"israeli_isup_message_type_value_acro\00", align 1
@.str.1944 = private unnamed_addr constant [4 x i8] c"BCM\00", align 1
@.str.1945 = private unnamed_addr constant [4 x i8] c"TCM\00", align 1
@.str.1946 = private unnamed_addr constant [4 x i8] c"CAM\00", align 1
@israeli_isup_message_type_value_acro = internal constant [71 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.798 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.799 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.800 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.801 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.802 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.803 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.804 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.805 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.806 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.808 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.809 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.810 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.811 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.812 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.813 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.814 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.815 }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.816 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.817 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.818 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.819 }, { i32, [4 x i8], ptr } { i32 25, [4 x i8] zeroinitializer, ptr @.str.820 }, { i32, [4 x i8], ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.821 }, { i32, [4 x i8], ptr } { i32 27, [4 x i8] zeroinitializer, ptr @.str.822 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.823 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.824 }, { i32, [4 x i8], ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.825 }, { i32, [4 x i8], ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 35, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 36, [4 x i8] zeroinitializer, ptr @.str.826 }, { i32, [4 x i8], ptr } { i32 37, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 38, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 39, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 40, [4 x i8] zeroinitializer, ptr @.str.827 }, { i32, [4 x i8], ptr } { i32 41, [4 x i8] zeroinitializer, ptr @.str.828 }, { i32, [4 x i8], ptr } { i32 42, [4 x i8] zeroinitializer, ptr @.str.829 }, { i32, [4 x i8], ptr } { i32 43, [4 x i8] zeroinitializer, ptr @.str.830 }, { i32, [4 x i8], ptr } { i32 44, [4 x i8] zeroinitializer, ptr @.str.831 }, { i32, [4 x i8], ptr } { i32 45, [4 x i8] zeroinitializer, ptr @.str.832 }, { i32, [4 x i8], ptr } { i32 46, [4 x i8] zeroinitializer, ptr @.str.833 }, { i32, [4 x i8], ptr } { i32 47, [4 x i8] zeroinitializer, ptr @.str.834 }, { i32, [4 x i8], ptr } { i32 48, [4 x i8] zeroinitializer, ptr @.str.835 }, { i32, [4 x i8], ptr } { i32 49, [4 x i8] zeroinitializer, ptr @.str.836 }, { i32, [4 x i8], ptr } { i32 50, [4 x i8] zeroinitializer, ptr @.str.837 }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @.str.838 }, { i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @.str.839 }, { i32, [4 x i8], ptr } { i32 53, [4 x i8] zeroinitializer, ptr @.str.840 }, { i32, [4 x i8], ptr } { i32 54, [4 x i8] zeroinitializer, ptr @.str.841 }, { i32, [4 x i8], ptr } { i32 55, [4 x i8] zeroinitializer, ptr @.str.842 }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.843 }, { i32, [4 x i8], ptr } { i32 57, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 58, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 59, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 61, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 62, [4 x i8] zeroinitializer, ptr @.str.844 }, { i32, [4 x i8], ptr } { i32 63, [4 x i8] zeroinitializer, ptr @.str.844 }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @.str.845 }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @.str.846 }, { i32, [4 x i8], ptr } { i32 66, [4 x i8] zeroinitializer, ptr @.str.847 }, { i32, [4 x i8], ptr } { i32 67, [4 x i8] zeroinitializer, ptr @.str.848 }, { i32, [4 x i8], ptr } { i32 232, [4 x i8] zeroinitializer, ptr @.str.1944 }, { i32, [4 x i8], ptr } { i32 233, [4 x i8] zeroinitializer, ptr @.str.1945 }, { i32, [4 x i8], ptr } { i32 234, [4 x i8] zeroinitializer, ptr @.str.1946 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1948 = private unnamed_addr constant [37 x i8] c"russian_isup_message_type_value_acro\00", align 1
@.str.1949 = private unnamed_addr constant [4 x i8] c"CCL\00", align 1
@.str.1950 = private unnamed_addr constant [4 x i8] c"RNG\00", align 1
@russian_isup_message_type_value_acro = internal constant [70 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.798 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.799 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.800 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.801 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.802 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.803 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.804 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.805 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.806 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.808 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.809 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.810 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.811 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.812 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.813 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.814 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.815 }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.816 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.817 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.818 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.819 }, { i32, [4 x i8], ptr } { i32 25, [4 x i8] zeroinitializer, ptr @.str.820 }, { i32, [4 x i8], ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.821 }, { i32, [4 x i8], ptr } { i32 27, [4 x i8] zeroinitializer, ptr @.str.822 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.823 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.824 }, { i32, [4 x i8], ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.825 }, { i32, [4 x i8], ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 35, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 36, [4 x i8] zeroinitializer, ptr @.str.826 }, { i32, [4 x i8], ptr } { i32 37, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 38, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 39, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 40, [4 x i8] zeroinitializer, ptr @.str.827 }, { i32, [4 x i8], ptr } { i32 41, [4 x i8] zeroinitializer, ptr @.str.828 }, { i32, [4 x i8], ptr } { i32 42, [4 x i8] zeroinitializer, ptr @.str.829 }, { i32, [4 x i8], ptr } { i32 43, [4 x i8] zeroinitializer, ptr @.str.830 }, { i32, [4 x i8], ptr } { i32 44, [4 x i8] zeroinitializer, ptr @.str.831 }, { i32, [4 x i8], ptr } { i32 45, [4 x i8] zeroinitializer, ptr @.str.832 }, { i32, [4 x i8], ptr } { i32 46, [4 x i8] zeroinitializer, ptr @.str.833 }, { i32, [4 x i8], ptr } { i32 47, [4 x i8] zeroinitializer, ptr @.str.834 }, { i32, [4 x i8], ptr } { i32 48, [4 x i8] zeroinitializer, ptr @.str.835 }, { i32, [4 x i8], ptr } { i32 49, [4 x i8] zeroinitializer, ptr @.str.836 }, { i32, [4 x i8], ptr } { i32 50, [4 x i8] zeroinitializer, ptr @.str.837 }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @.str.838 }, { i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @.str.839 }, { i32, [4 x i8], ptr } { i32 53, [4 x i8] zeroinitializer, ptr @.str.840 }, { i32, [4 x i8], ptr } { i32 54, [4 x i8] zeroinitializer, ptr @.str.841 }, { i32, [4 x i8], ptr } { i32 55, [4 x i8] zeroinitializer, ptr @.str.842 }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.843 }, { i32, [4 x i8], ptr } { i32 57, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 58, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 59, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 61, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 62, [4 x i8] zeroinitializer, ptr @.str.844 }, { i32, [4 x i8], ptr } { i32 63, [4 x i8] zeroinitializer, ptr @.str.844 }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @.str.845 }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @.str.846 }, { i32, [4 x i8], ptr } { i32 66, [4 x i8] zeroinitializer, ptr @.str.847 }, { i32, [4 x i8], ptr } { i32 67, [4 x i8] zeroinitializer, ptr @.str.848 }, { i32, [4 x i8], ptr } { i32 252, [4 x i8] zeroinitializer, ptr @.str.1949 }, { i32, [4 x i8], ptr } { i32 255, [4 x i8] zeroinitializer, ptr @.str.1950 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1952 = private unnamed_addr constant [35 x i8] c"japan_isup_message_type_value_acro\00", align 1
@.str.1953 = private unnamed_addr constant [4 x i8] c"CHG\00", align 1
@japan_isup_message_type_value_acro = internal constant [69 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.798 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.799 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.800 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.801 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.802 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.803 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.804 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.805 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.806 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.808 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.809 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.810 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.811 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.812 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.813 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.814 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.815 }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.816 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.817 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.818 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.819 }, { i32, [4 x i8], ptr } { i32 25, [4 x i8] zeroinitializer, ptr @.str.820 }, { i32, [4 x i8], ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.821 }, { i32, [4 x i8], ptr } { i32 27, [4 x i8] zeroinitializer, ptr @.str.822 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.823 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.824 }, { i32, [4 x i8], ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.825 }, { i32, [4 x i8], ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 35, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 36, [4 x i8] zeroinitializer, ptr @.str.826 }, { i32, [4 x i8], ptr } { i32 37, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 38, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 39, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 40, [4 x i8] zeroinitializer, ptr @.str.827 }, { i32, [4 x i8], ptr } { i32 41, [4 x i8] zeroinitializer, ptr @.str.828 }, { i32, [4 x i8], ptr } { i32 42, [4 x i8] zeroinitializer, ptr @.str.829 }, { i32, [4 x i8], ptr } { i32 43, [4 x i8] zeroinitializer, ptr @.str.830 }, { i32, [4 x i8], ptr } { i32 44, [4 x i8] zeroinitializer, ptr @.str.831 }, { i32, [4 x i8], ptr } { i32 45, [4 x i8] zeroinitializer, ptr @.str.832 }, { i32, [4 x i8], ptr } { i32 46, [4 x i8] zeroinitializer, ptr @.str.833 }, { i32, [4 x i8], ptr } { i32 47, [4 x i8] zeroinitializer, ptr @.str.834 }, { i32, [4 x i8], ptr } { i32 48, [4 x i8] zeroinitializer, ptr @.str.835 }, { i32, [4 x i8], ptr } { i32 49, [4 x i8] zeroinitializer, ptr @.str.836 }, { i32, [4 x i8], ptr } { i32 50, [4 x i8] zeroinitializer, ptr @.str.837 }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @.str.838 }, { i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @.str.839 }, { i32, [4 x i8], ptr } { i32 53, [4 x i8] zeroinitializer, ptr @.str.840 }, { i32, [4 x i8], ptr } { i32 54, [4 x i8] zeroinitializer, ptr @.str.841 }, { i32, [4 x i8], ptr } { i32 55, [4 x i8] zeroinitializer, ptr @.str.842 }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.843 }, { i32, [4 x i8], ptr } { i32 57, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 58, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 59, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 61, [4 x i8] zeroinitializer, ptr @.str.807 }, { i32, [4 x i8], ptr } { i32 62, [4 x i8] zeroinitializer, ptr @.str.844 }, { i32, [4 x i8], ptr } { i32 63, [4 x i8] zeroinitializer, ptr @.str.844 }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @.str.845 }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @.str.846 }, { i32, [4 x i8], ptr } { i32 66, [4 x i8] zeroinitializer, ptr @.str.847 }, { i32, [4 x i8], ptr } { i32 67, [4 x i8] zeroinitializer, ptr @.str.848 }, { i32, [4 x i8], ptr } { i32 254, [4 x i8] zeroinitializer, ptr @.str.1953 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1955 = private unnamed_addr constant [55 x i8] c"%s:%u: failed assertion \22DISSECTOR_ASSERT_NOT_REACHED\22\00", align 1
@.str.1956 = private unnamed_addr constant [30 x i8] c"epan/dissectors/packet-isup.c\00", align 1
@japan_isup_parameter_type_value_ext = internal global %struct._value_string_ext { ptr @_try_val_to_str_ext_init, i32 0, i32 143, ptr @japan_isup_parameter_type_value, ptr @.str.1958, ptr null }, align 8
@.str.1957 = private unnamed_addr constant [43 x i8] c"Charge information data, not dissected yet\00", align 1
@.str.1958 = private unnamed_addr constant [32 x i8] c"japan_isup_parameter_type_value\00", align 1
@.str.1959 = private unnamed_addr constant [24 x i8] c"Called Directory Number\00", align 1
@.str.1960 = private unnamed_addr constant [29 x i8] c"Redirect forward information\00", align 1
@.str.1961 = private unnamed_addr constant [30 x i8] c"Redirect Backward information\00", align 1
@.str.1962 = private unnamed_addr constant [25 x i8] c"Emergency Call indicator\00", align 1
@.str.1963 = private unnamed_addr constant [37 x i8] c"Emergency Call Information indicator\00", align 1
@.str.1964 = private unnamed_addr constant [15 x i8] c"Network POI-CA\00", align 1
@.str.1965 = private unnamed_addr constant [29 x i8] c"Carrier Information transfer\00", align 1
@.str.1966 = private unnamed_addr constant [25 x i8] c"Charge Information Delay\00", align 1
@.str.1967 = private unnamed_addr constant [28 x i8] c"Additional party's category\00", align 1
@.str.1968 = private unnamed_addr constant [24 x i8] c"Reason For CLIP Failure\00", align 1
@.str.1969 = private unnamed_addr constant [24 x i8] c"Charge area information\00", align 1
@japan_isup_parameter_type_value = internal constant [144 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.2 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.3 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.4 }, { i32, [4 x i8], ptr } { i32 4, [4 x i8] zeroinitializer, ptr @.str.5 }, { i32, [4 x i8], ptr } { i32 5, [4 x i8] zeroinitializer, ptr @.str.6 }, { i32, [4 x i8], ptr } { i32 6, [4 x i8] zeroinitializer, ptr @.str.7 }, { i32, [4 x i8], ptr } { i32 7, [4 x i8] zeroinitializer, ptr @.str.8 }, { i32, [4 x i8], ptr } { i32 8, [4 x i8] zeroinitializer, ptr @.str.9 }, { i32, [4 x i8], ptr } { i32 9, [4 x i8] zeroinitializer, ptr @.str.10 }, { i32, [4 x i8], ptr } { i32 10, [4 x i8] zeroinitializer, ptr @.str.11 }, { i32, [4 x i8], ptr } { i32 11, [4 x i8] zeroinitializer, ptr @.str.12 }, { i32, [4 x i8], ptr } { i32 12, [4 x i8] zeroinitializer, ptr @.str.13 }, { i32, [4 x i8], ptr } { i32 13, [4 x i8] zeroinitializer, ptr @.str.14 }, { i32, [4 x i8], ptr } { i32 14, [4 x i8] zeroinitializer, ptr @.str.15 }, { i32, [4 x i8], ptr } { i32 15, [4 x i8] zeroinitializer, ptr @.str.16 }, { i32, [4 x i8], ptr } { i32 16, [4 x i8] zeroinitializer, ptr @.str.17 }, { i32, [4 x i8], ptr } { i32 17, [4 x i8] zeroinitializer, ptr @.str.18 }, { i32, [4 x i8], ptr } { i32 18, [4 x i8] zeroinitializer, ptr @.str.19 }, { i32, [4 x i8], ptr } { i32 19, [4 x i8] zeroinitializer, ptr @.str.20 }, { i32, [4 x i8], ptr } { i32 20, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 21, [4 x i8] zeroinitializer, ptr @.str.22 }, { i32, [4 x i8], ptr } { i32 22, [4 x i8] zeroinitializer, ptr @.str.23 }, { i32, [4 x i8], ptr } { i32 23, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 24, [4 x i8] zeroinitializer, ptr @.str.24 }, { i32, [4 x i8], ptr } { i32 25, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 26, [4 x i8] zeroinitializer, ptr @.str.25 }, { i32, [4 x i8], ptr } { i32 27, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 28, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 29, [4 x i8] zeroinitializer, ptr @.str.26 }, { i32, [4 x i8], ptr } { i32 30, [4 x i8] zeroinitializer, ptr @.str.27 }, { i32, [4 x i8], ptr } { i32 31, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 32, [4 x i8] zeroinitializer, ptr @.str.28 }, { i32, [4 x i8], ptr } { i32 33, [4 x i8] zeroinitializer, ptr @.str.29 }, { i32, [4 x i8], ptr } { i32 34, [4 x i8] zeroinitializer, ptr @.str.30 }, { i32, [4 x i8], ptr } { i32 35, [4 x i8] zeroinitializer, ptr @.str.31 }, { i32, [4 x i8], ptr } { i32 36, [4 x i8] zeroinitializer, ptr @.str.32 }, { i32, [4 x i8], ptr } { i32 37, [4 x i8] zeroinitializer, ptr @.str.33 }, { i32, [4 x i8], ptr } { i32 38, [4 x i8] zeroinitializer, ptr @.str.34 }, { i32, [4 x i8], ptr } { i32 39, [4 x i8] zeroinitializer, ptr @.str.35 }, { i32, [4 x i8], ptr } { i32 40, [4 x i8] zeroinitializer, ptr @.str.36 }, { i32, [4 x i8], ptr } { i32 41, [4 x i8] zeroinitializer, ptr @.str.18 }, { i32, [4 x i8], ptr } { i32 42, [4 x i8] zeroinitializer, ptr @.str.37 }, { i32, [4 x i8], ptr } { i32 43, [4 x i8] zeroinitializer, ptr @.str.38 }, { i32, [4 x i8], ptr } { i32 44, [4 x i8] zeroinitializer, ptr @.str.39 }, { i32, [4 x i8], ptr } { i32 45, [4 x i8] zeroinitializer, ptr @.str.40 }, { i32, [4 x i8], ptr } { i32 46, [4 x i8] zeroinitializer, ptr @.str.41 }, { i32, [4 x i8], ptr } { i32 47, [4 x i8] zeroinitializer, ptr @.str.42 }, { i32, [4 x i8], ptr } { i32 48, [4 x i8] zeroinitializer, ptr @.str.43 }, { i32, [4 x i8], ptr } { i32 49, [4 x i8] zeroinitializer, ptr @.str.44 }, { i32, [4 x i8], ptr } { i32 50, [4 x i8] zeroinitializer, ptr @.str.45 }, { i32, [4 x i8], ptr } { i32 51, [4 x i8] zeroinitializer, ptr @.str.46 }, { i32, [4 x i8], ptr } { i32 52, [4 x i8] zeroinitializer, ptr @.str.47 }, { i32, [4 x i8], ptr } { i32 53, [4 x i8] zeroinitializer, ptr @.str.48 }, { i32, [4 x i8], ptr } { i32 54, [4 x i8] zeroinitializer, ptr @.str.49 }, { i32, [4 x i8], ptr } { i32 55, [4 x i8] zeroinitializer, ptr @.str.50 }, { i32, [4 x i8], ptr } { i32 56, [4 x i8] zeroinitializer, ptr @.str.51 }, { i32, [4 x i8], ptr } { i32 57, [4 x i8] zeroinitializer, ptr @.str.52 }, { i32, [4 x i8], ptr } { i32 58, [4 x i8] zeroinitializer, ptr @.str.53 }, { i32, [4 x i8], ptr } { i32 59, [4 x i8] zeroinitializer, ptr @.str.54 }, { i32, [4 x i8], ptr } { i32 60, [4 x i8] zeroinitializer, ptr @.str.55 }, { i32, [4 x i8], ptr } { i32 61, [4 x i8] zeroinitializer, ptr @.str.56 }, { i32, [4 x i8], ptr } { i32 62, [4 x i8] zeroinitializer, ptr @.str.57 }, { i32, [4 x i8], ptr } { i32 63, [4 x i8] zeroinitializer, ptr @.str.58 }, { i32, [4 x i8], ptr } { i32 64, [4 x i8] zeroinitializer, ptr @.str.59 }, { i32, [4 x i8], ptr } { i32 65, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 66, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 67, [4 x i8] zeroinitializer, ptr @.str.60 }, { i32, [4 x i8], ptr } { i32 68, [4 x i8] zeroinitializer, ptr @.str.61 }, { i32, [4 x i8], ptr } { i32 69, [4 x i8] zeroinitializer, ptr @.str.62 }, { i32, [4 x i8], ptr } { i32 70, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 71, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 72, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 73, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 74, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 75, [4 x i8] zeroinitializer, ptr @.str.63 }, { i32, [4 x i8], ptr } { i32 76, [4 x i8] zeroinitializer, ptr @.str.64 }, { i32, [4 x i8], ptr } { i32 77, [4 x i8] zeroinitializer, ptr @.str.65 }, { i32, [4 x i8], ptr } { i32 78, [4 x i8] zeroinitializer, ptr @.str.66 }, { i32, [4 x i8], ptr } { i32 79, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 80, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 81, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 82, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 83, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 84, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 85, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 86, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 87, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 88, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 89, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 90, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 101, [4 x i8] zeroinitializer, ptr @.str.68 }, { i32, [4 x i8], ptr } { i32 102, [4 x i8] zeroinitializer, ptr @.str.69 }, { i32, [4 x i8], ptr } { i32 103, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 104, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 105, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 106, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 107, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 108, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 109, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 110, [4 x i8] zeroinitializer, ptr @.str.70 }, { i32, [4 x i8], ptr } { i32 111, [4 x i8] zeroinitializer, ptr @.str.71 }, { i32, [4 x i8], ptr } { i32 112, [4 x i8] zeroinitializer, ptr @.str.72 }, { i32, [4 x i8], ptr } { i32 113, [4 x i8] zeroinitializer, ptr @.str.73 }, { i32, [4 x i8], ptr } { i32 114, [4 x i8] zeroinitializer, ptr @.str.74 }, { i32, [4 x i8], ptr } { i32 115, [4 x i8] zeroinitializer, ptr @.str.75 }, { i32, [4 x i8], ptr } { i32 116, [4 x i8] zeroinitializer, ptr @.str.76 }, { i32, [4 x i8], ptr } { i32 117, [4 x i8] zeroinitializer, ptr @.str.77 }, { i32, [4 x i8], ptr } { i32 119, [4 x i8] zeroinitializer, ptr @.str.78 }, { i32, [4 x i8], ptr } { i32 120, [4 x i8] zeroinitializer, ptr @.str.79 }, { i32, [4 x i8], ptr } { i32 121, [4 x i8] zeroinitializer, ptr @.str.80 }, { i32, [4 x i8], ptr } { i32 122, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 123, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 124, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 125, [4 x i8] zeroinitializer, ptr @.str.1959 }, { i32, [4 x i8], ptr } { i32 126, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 127, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 128, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 129, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 130, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 131, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 132, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 133, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 134, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 135, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 136, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 137, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 138, [4 x i8] zeroinitializer, ptr @.str.21 }, { i32, [4 x i8], ptr } { i32 139, [4 x i8] zeroinitializer, ptr @.str.1960 }, { i32, [4 x i8], ptr } { i32 140, [4 x i8] zeroinitializer, ptr @.str.1961 }, { i32, [4 x i8], ptr } { i32 192, [4 x i8] zeroinitializer, ptr @.str.86 }, { i32, [4 x i8], ptr } { i32 193, [4 x i8] zeroinitializer, ptr @.str.87 }, { i32, [4 x i8], ptr } { i32 215, [4 x i8] zeroinitializer, ptr @.str.1962 }, { i32, [4 x i8], ptr } { i32 236, [4 x i8] zeroinitializer, ptr @.str.1963 }, { i32, [4 x i8], ptr } { i32 238, [4 x i8] zeroinitializer, ptr @.str.1964 }, { i32, [4 x i8], ptr } { i32 241, [4 x i8] zeroinitializer, ptr @.str.1965 }, { i32, [4 x i8], ptr } { i32 242, [4 x i8] zeroinitializer, ptr @.str.1966 }, { i32, [4 x i8], ptr } { i32 243, [4 x i8] zeroinitializer, ptr @.str.1967 }, { i32, [4 x i8], ptr } { i32 245, [4 x i8] zeroinitializer, ptr @.str.1968 }, { i32, [4 x i8], ptr } { i32 249, [4 x i8] zeroinitializer, ptr @.str.554 }, { i32, [4 x i8], ptr } { i32 250, [4 x i8] zeroinitializer, ptr @.str.580 }, { i32, [4 x i8], ptr } { i32 251, [4 x i8] zeroinitializer, ptr @.str.1118 }, { i32, [4 x i8], ptr } { i32 253, [4 x i8] zeroinitializer, ptr @.str.1969 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1971 = private unnamed_addr constant [40 x i8] c"Wrong parameter length %u, should be %u\00", align 1
@.str.1972 = private unnamed_addr constant [24 x i8] c"Parameter: (t=%u, l=%u)\00", align 1
@dissect_isup_transit_network_selection_parameter.indicators_fields = internal constant [4 x ptr] [ptr @hf_isup_odd_even_indicator, ptr @hf_isup_type_of_network_identification, ptr @hf_isup_network_identification_plan, ptr null], align 16
@.str.1973 = private unnamed_addr constant [25 x i8] c"Number not dissected yet\00", align 1
@.str.1974 = private unnamed_addr constant [27 x i8] c"Unknown(not dissected) tag\00", align 1
@.str.1975 = private unnamed_addr constant [19 x i8] c"Charge Area Number\00", align 1
@.str.1976 = private unnamed_addr constant [21 x i8] c"Category of Carrier:\00", align 1
@.str.1977 = private unnamed_addr constant [10 x i8] c": %s (%u)\00", align 1
@isup_carrier_info_category_vals_ext = internal global %struct._value_string_ext { ptr @_try_val_to_str_ext_init, i32 0, i32 6, ptr @isup_carrier_info_category_value, ptr @.str.1981, ptr null }, align 8
@.str.1978 = private unnamed_addr constant [17 x i8] c"Type of Carrier:\00", align 1
@isup_carrier_info_type_of_carrier_vals_ext = internal global %struct._value_string_ext { ptr @_try_val_to_str_ext_init, i32 0, i32 4, ptr @isup_carrier_info_type_of_carrier_value, ptr @.str.1988, ptr null }, align 8
@.str.1979 = private unnamed_addr constant [12 x i8] c"Charge Area\00", align 1
@.str.1980 = private unnamed_addr constant [16 x i8] c"Carrier ID Code\00", align 1
@.str.1981 = private unnamed_addr constant [33 x i8] c"isup_carrier_info_category_value\00", align 1
@.str.1982 = private unnamed_addr constant [32 x i8] c"(Service Control Point Carrier)\00", align 1
@.str.1983 = private unnamed_addr constant [37 x i8] c"(Originating Local Exchange Carrier)\00", align 1
@.str.1984 = private unnamed_addr constant [37 x i8] c"(Terminating Local Exchange Carrier)\00", align 1
@.str.1985 = private unnamed_addr constant [32 x i8] c"(Chosen Inter|Exchange Carrier)\00", align 1
@.str.1986 = private unnamed_addr constant [25 x i8] c"(Inter|Exchange Carrier)\00", align 1
@isup_carrier_info_category_value = internal constant [7 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 250, [4 x i8] zeroinitializer, ptr @.str.1982 }, { i32, [4 x i8], ptr } { i32 251, [4 x i8] zeroinitializer, ptr @.str.1983 }, { i32, [4 x i8], ptr } { i32 252, [4 x i8] zeroinitializer, ptr @.str.1984 }, { i32, [4 x i8], ptr } { i32 253, [4 x i8] zeroinitializer, ptr @.str.1985 }, { i32, [4 x i8], ptr } { i32 254, [4 x i8] zeroinitializer, ptr @.str.1986 }, { i32, [4 x i8], ptr } { i32 255, [4 x i8] zeroinitializer, ptr @.str.340 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1988 = private unnamed_addr constant [40 x i8] c"isup_carrier_info_type_of_carrier_value\00", align 1
@.str.1989 = private unnamed_addr constant [26 x i8] c"POI Hierarchy information\00", align 1
@.str.1990 = private unnamed_addr constant [33 x i8] c"POI|CA information (Charge Area)\00", align 1
@.str.1991 = private unnamed_addr constant [33 x i8] c"Carrier identification (ID) code\00", align 1
@isup_carrier_info_type_of_carrier_value = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 252, [4 x i8] zeroinitializer, ptr @.str.1989 }, { i32, [4 x i8], ptr } { i32 253, [4 x i8] zeroinitializer, ptr @.str.1990 }, { i32, [4 x i8], ptr } { i32 254, [4 x i8] zeroinitializer, ptr @.str.1991 }, { i32, [4 x i8], ptr } { i32 255, [4 x i8] zeroinitializer, ptr @.str.340 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.1993 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.1994 = private unnamed_addr constant [14 x i8] c"Message Area:\00", align 1
@.str.1995 = private unnamed_addr constant [7 x i8] c"%s->%s\00", align 1
@st_node_msg = internal unnamed_addr global i32 -1, align 4
@st_node_dir = internal unnamed_addr global i32 -1, align 4
@.str.1996 = private unnamed_addr constant [17 x i8] c"Messages by Type\00", align 1
@.str.1997 = private unnamed_addr constant [22 x i8] c"Messages by Direction\00", align 1
@.str.1998 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.1999 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.2000 = private unnamed_addr constant [5 x i8] c"ansi\00", align 1
@.str.2001 = private unnamed_addr constant [3 x i8] c"gr\00", align 1
@.str.2002 = private unnamed_addr constant [12 x i8] c"/ISUP(ANSI)\00", align 1
@.str.2003 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2004 = private unnamed_addr constant [8 x i8] c"ISUP:%s\00", align 1
@.str.2005 = private unnamed_addr constant [7 x i8] c"spirou\00", align 1
@.str.2006 = private unnamed_addr constant [11 x i8] c"/ISUP(ITU)\00", align 1
@.str.2007 = private unnamed_addr constant [14 x i8] c"/ISUP(French)\00", align 1
@.str.2009 = private unnamed_addr constant [22 x i8] c"no COT to be expected\00", align 1
@.str.2010 = private unnamed_addr constant [19 x i8] c"COT to be expected\00", align 1
@bicc_continuity_check_ind_value = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2009 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1219 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.2010 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.868 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@bicc_end_to_end_method_ind_value = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1152 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1219 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1219 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1219 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.2013 = private unnamed_addr constant [22 x i8] c"BICC used all the way\00", align 1
@.str.2014 = private unnamed_addr constant [26 x i8] c"BICC not used all the way\00", align 1
@bicc_SCCP_method_ind_value = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.1169 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.1219 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.1219 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.1219 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.2016 = private unnamed_addr constant [27 x i8] c"BICC preferred all the way\00", align 1
@.str.2017 = private unnamed_addr constant [30 x i8] c"BICC not required all the way\00", align 1
@.str.2018 = private unnamed_addr constant [26 x i8] c"BICC required all the way\00", align 1
@bicc_preferences_ind_value = internal constant [5 x { i32, [4 x i8], ptr }] [{ i32, [4 x i8], ptr } { i32 0, [4 x i8] zeroinitializer, ptr @.str.2016 }, { i32, [4 x i8], ptr } { i32 1, [4 x i8] zeroinitializer, ptr @.str.2017 }, { i32, [4 x i8], ptr } { i32 2, [4 x i8] zeroinitializer, ptr @.str.2018 }, { i32, [4 x i8], ptr } { i32 3, [4 x i8] zeroinitializer, ptr @.str.868 }, { i32, [4 x i8], ptr } zeroinitializer], align 16
@.str.2020 = private unnamed_addr constant [13 x i8] c"BICC(French)\00", align 1
@.str.2021 = private unnamed_addr constant [14 x i8] c"BICC(Israeli)\00", align 1
@.str.2022 = private unnamed_addr constant [14 x i8] c"BICC(Russian)\00", align 1
@.str.2023 = private unnamed_addr constant [12 x i8] c"BICC(Japan)\00", align 1
@.str.2024 = private unnamed_addr constant [10 x i8] c"BICC(ITU)\00", align 1
@.str.2025 = private unnamed_addr constant [12 x i8] c"%s (CIC %u)\00", align 1
@.str.2026 = private unnamed_addr constant [8 x i8] c"CIC: %u\00", align 1
@switch.table.dissect_bicc = private unnamed_addr constant [5 x ptr] [ptr @.str.2020, ptr @.str.2021, ptr @.str.2022, ptr @.str.2023, ptr @.str.2023], align 8
@switch.table.dissect_bicc.38 = private unnamed_addr constant [5 x ptr] [ptr @french_isup_message_type_value_acro_ext, ptr @israeli_isup_message_type_value_acro_ext, ptr @russian_isup_message_type_value_acro_ext, ptr @japan_isup_message_type_value_acro_ext, ptr @japan_isup_message_type_value_acro_ext], align 8
@switch.table.dissect_isup_message = private unnamed_addr constant [6 x ptr] [ptr @hf_isup_message_type, ptr @hf_isup_message_type_french, ptr @hf_isup_message_type_israeli, ptr @hf_isup_message_type_russian, ptr @hf_isup_message_type_japan, ptr @hf_isup_message_type_japan], align 8

; Function Attrs: null_pointer_is_valid
declare ptr @_try_val_to_str_ext_init(i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @dissect_isup_called_party_number_parameter(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 0) ; 2 uses
  tail call void @proto_tree_add_bitmask_list(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @dissect_isup_called_party_number_parameter.indicators1_flags, i32 noundef 0)
  %i.b = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef 1)
  tail call void @proto_tree_add_bitmask_list(ptr noundef %2, ptr noundef %0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull @dissect_isup_called_party_number_parameter.indicators2_flags, i32 noundef 0)
  %i.c = load i32, ptr @hf_isup_called, align 4
  %i.d = load i32, ptr @hf_isup_called_party_odd_address_signal_digit, align 4
  %i.e = load i32, ptr @hf_isup_called_party_even_address_signal_digit, align 4
  %i.f = icmp sgt i8 %i.a, -1
  %i.g = and i8 %i.b, 112
  %i.h = icmp eq i8 %i.g, 16
  %i.i = select i1 %i.h, i32 2, i32 0
  %i.j = and i8 %i.a, 127
  %i.k = zext nneg i8 %i.j to i32
  %i.l = tail call fastcc ptr @dissect_isup_digits_common(ptr noundef %0, i32 noundef 2, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.c, i32 noundef %i.d, i32 noundef %i.e, i1 noundef zeroext %i.f, i32 noundef %i.i, i32 noundef %i.k)
  store ptr %i.l, ptr @tap_called_number, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid
declare zeroext i8 @tvb_get_uint8(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @proto_tree_add_bitmask_list(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef ptr @dissect_isup_digits_common(ptr noundef %0, i32 noundef range(i32 0, 4) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8, i32 noundef range(i32 0, 3) %9, i32 noundef range(i32 0, 128) %10) unnamed_addr #1 {
bb.a:
  %11 = alloca %struct.e164_info_t, align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.a = tail call i32 @tvb_reported_length_remaining(ptr noundef %0, i32 noundef %1) ; 3 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @expert_add_info(ptr noundef %2, ptr noundef %4, ptr noundef nonnull @ei_isup_empty_number) ; 0 uses
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %4, ptr noundef nonnull @.str.904)
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 416
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call ptr @wmem_strbuf_new_sized(ptr noundef %i.e, i64 noundef 33) ; 4 uses
  %i.g = tail call i32 @tvb_captured_length_remaining(ptr noundef %0, i32 noundef %1) ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.i = add nuw i32 %.078105162, 1
  %i.j = icmp eq i32 %i.q, 32
  br i1 %i.j, label %._crit_edge.loopexit.split.loop.exit186, label %.lr.ph.preheader, !llvm.loop !10

.lr.ph.preheader:                                 ; preds = %bb.c, %.lr.ph
  %.078105162 = phi i32 [ %i.i, %.lr.ph ], [ %1, %bb.c ] ; 2 uses
  %.075106161 = phi i32 [ %i.q, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %.073107160 = phi i32 [ %i.p, %.lr.ph ], [ %i.g, %bb.c ] ; 3 uses
  %i.k = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %.078105162) ; 4 uses
  %i.l = and i8 %i.k, 15                          ; 3 uses
  %i.m = icmp samesign ult i8 %i.l, 10
  %i.n = or disjoint i8 %i.l, 48
  %i.o = add nuw nsw i8 %i.l, 55
  %.0.i = select i1 %i.m, i8 %i.n, i8 %i.o
  tail call void @wmem_strbuf_append_c(ptr noundef %i.f, i8 noundef signext %.0.i)
  %i.p = add nsw i32 %.073107160, -1
  %.not = icmp eq i32 %.073107160, 1
  br i1 %.not, label %._crit_edge.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.preheader
  %i.q = add i32 %.075106161, 2                   ; 5 uses
  %i.r = icmp sgt i32 %i.q, 32
  br i1 %i.r, label %._crit_edge.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = lshr i8 %i.k, 4                          ; 2 uses
  %i.t = icmp ult i8 %i.k, -96
  %i.u = or disjoint i8 %i.s, 48
  %i.v = add nuw nsw i8 %i.s, 55
  %.0.i97 = select i1 %i.t, i8 %i.u, i8 %i.v
  tail call void @wmem_strbuf_append_c(ptr noundef %i.f, i8 noundef signext %.0.i97)
  %i.w = icmp sgt i32 %.073107160, 1
  br i1 %i.w, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !10

._crit_edge.loopexit.split.loop.exit:             ; preds = %.lr.ph.preheader
  %12 = or disjoint i32 %.075106161, 1
  br label %._crit_edge.loopexit

._crit_edge.loopexit.split.loop.exit186:          ; preds = %.lr.ph
  %13 = or disjoint i32 %i.q, 1
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.e, %bb.d, %._crit_edge.loopexit.split.loop.exit186, %._crit_edge.loopexit.split.loop.exit
  %.2.ph = phi i32 [ %13, %._crit_edge.loopexit.split.loop.exit186 ], [ 33, %bb.d ], [ %12, %._crit_edge.loopexit.split.loop.exit ], [ %i.q, %bb.e ]
  %i.x = add i32 %.2.ph, 1
  %i.y = icmp slt i32 %i.x, 32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.2 = phi i1 [ true, %bb.c ], [ %i.y, %._crit_edge.loopexit ]
  %.1 = phi i8 [ 0, %bb.c ], [ %i.k, %._crit_edge.loopexit ] ; 2 uses
  br i1 %8, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.z = tail call i32 @tvb_captured_length(ptr noundef %0)
  %.not92 = icmp ne i32 %i.z, 0
  %or.cond = and i1 %.2, %.not92
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = lshr i8 %.1, 4                          ; 2 uses
  %i.ab = icmp ult i8 %.1, -96
  %i.ac = or disjoint i8 %i.aa, 48
  %i.ad = add nuw nsw i8 %i.aa, 55
  %.0.i98 = select i1 %i.ab, i8 %i.ac, i8 %i.ad
  tail call void @wmem_strbuf_append_c(ptr noundef %i.f, i8 noundef signext %.0.i98)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge
  %i.ae = tail call ptr @wmem_strbuf_finalize(ptr noundef %i.f) ; 4 uses
  %i.af = tail call ptr @proto_tree_add_string(ptr noundef %3, i32 noundef %5, ptr noundef %0, i32 noundef %1, i32 noundef -1, ptr noundef %i.ae) ; 4 uses
  %i.ag = load i32, ptr @ett_isup_address_digits, align 4
  %i.ah = tail call ptr @proto_item_add_subtree(ptr noundef %i.af, i32 noundef %i.ag) ; 4 uses
  %i.ai = icmp sgt i32 %i.a, 0
  br i1 %i.ai, label %.lr.ph120, label %.loopexit

.lr.ph120:                                        ; preds = %bb.h, %bb.m
  %.074118 = phi i32 [ %i.an, %bb.m ], [ %i.a, %bb.h ] ; 3 uses
  %.3117 = phi i32 [ %i.aq, %bb.m ], [ 0, %bb.h ] ; 4 uses
  %.179116 = phi i32 [ %i.au, %bb.m ], [ %1, %bb.h ] ; 6 uses
  %i.aj = icmp sgt i32 %.3117, 31
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph120
  %i.ak = or disjoint i32 %.3117, 1
  %i.al = tail call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.af, ptr noundef nonnull @ei_isup_too_many_digits) ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %.lr.ph120
  %i.am = tail call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %6, ptr noundef %0, i32 noundef %.179116, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.an = add nsw i32 %.074118, -1
  %.not93 = icmp eq i32 %.074118, 1
  br i1 %.not93, label %.thread139, label %bb.k

.thread139:                                       ; preds = %bb.j
  %i.ao = or disjoint i32 %.3117, 1
  %i.ap = add nuw i32 %.179116, 1
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.aq = add i32 %.3117, 2                       ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 32
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = tail call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.af, ptr noundef nonnull @ei_isup_too_many_digits) ; 0 uses
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.at = tail call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %7, ptr noundef %0, i32 noundef %.179116, i32 noundef 1, i32 noundef 0) ; 0 uses
  %i.au = add nuw i32 %.179116, 1                 ; 2 uses
  %i.av = icmp sgt i32 %.074118, 1
  br i1 %i.av, label %.lr.ph120, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %bb.m, %.thread139, %bb.h, %bb.l, %bb.i
  %.179103 = phi i32 [ %.179116, %bb.i ], [ %.179116, %bb.l ], [ %1, %bb.h ], [ %i.ap, %.thread139 ], [ %i.au, %bb.m ] ; 2 uses
  %.5 = phi i32 [ %i.ak, %bb.i ], [ 33, %bb.l ], [ 0, %bb.h ], [ %i.ao, %.thread139 ], [ %i.aq, %bb.m ] ; 3 uses
  br i1 %8, label %bb.n, label %bb.r

bb.n:                                             ; preds = %.loopexit
  %i.aw = tail call i32 @tvb_reported_length(ptr noundef %0)
  %.not94 = icmp eq i32 %i.aw, 0
  br i1 %.not94, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = add i32 %.5, 1                          ; 3 uses
  %i.ay = icmp slt i32 %i.ax, 32
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.az = add i32 %.179103, -1
  %i.ba = tail call ptr @proto_tree_add_item(ptr noundef %i.ah, i32 noundef %7, ptr noundef %0, i32 noundef %i.az, i32 noundef 1, i32 noundef 0) ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bb = tail call ptr @expert_add_info(ptr noundef %2, ptr noundef %i.af, ptr noundef nonnull @ei_isup_too_many_digits) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.n, %.loopexit
  %.6 = phi i32 [ %i.ax, %bb.p ], [ %i.ax, %bb.q ], [ %.5, %bb.n ], [ %.5, %.loopexit ]
  %.not95 = icmp eq i32 %9, 0
  br i1 %.not95, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %9, ptr %11, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 4
  store i32 %10, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.ae, ptr %i.bd, align 8
  %i.be = add i32 %.6, -1
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 %i.be, ptr %i.bf, align 8
  %i.bg = add i32 %.179103, -2
  tail call void @dissect_e164_number(ptr noundef %0, ptr noundef %i.ah, i32 noundef 2, i32 noundef %i.bg, ptr noundef nonnull byval(%struct.e164_info_t) align 8 %11)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  tail call void (ptr, ptr, ...) @proto_item_append_text(ptr noundef %4, ptr noundef nonnull @.str.905, ptr noundef %i.ae)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.b
  %.077 = phi ptr [ null, %bb.b ], [ %i.ae, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  ret ptr %.077
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @dissect_isup_cause_indicators_parameter(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @tvb_reported_length(ptr noundef %0)
  %i.b = load i32, ptr @hf_isup_cause_indicators, align 4
  %i.c = tail call ptr @proto_tree_add_item(ptr noundef %2, i32 noundef %i.b, ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) ; 0 uses
  %i.d = load i32, ptr @hf_isup_cause_indicator, align 4
  tail call void @dissect_q931_cause_ie(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef %i.a, ptr noundef %2, i32 noundef %i.d, ptr noundef nonnull @tap_cause_value, ptr noundef nonnull @isup_parameter_type_value)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_reported_length(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare ptr @proto_tree_add_item(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare void @dissect_q931_cause_ie(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @dissect_nsap(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i8 @tvb_get_uint8(ptr noundef %0, i32 noundef %2) ; 2 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  switch i8 %i.a, label %bb.f [
    i8 53, label %bb.b
    i8 69, label %bb.e
    i8 -61, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @hf_isup_idp, align 4
  %i.d = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.c, ptr noundef %0, i32 noundef %2, i32 noundef 3, i32 noundef 0) ; 0 uses
  %i.e = load i32, ptr @hf_afi, align 4
  %i.f = tail call ptr @proto_tree_add_uint(ptr noundef %4, i32 noundef %i.e, ptr noundef %0, i32 noundef %2, i32 noundef 1, i32 noundef 53) ; 0 uses
  %i.g = add i32 %2, 1                            ; 2 uses
  %i.h = tail call zeroext i16 @tvb_get_ntohs(ptr noundef %0, i32 noundef %i.g) ; 2 uses
  %i.i = zext i16 %i.h to i32
  %i.j = load i32, ptr @hf_iana_icp, align 4
  %i.k = tail call ptr @proto_tree_add_uint(ptr noundef %4, i32 noundef %i.j, ptr noundef %0, i32 noundef %i.g, i32 noundef 1, i32 noundef %i.i) ; 0 uses
  %i.l = icmp eq i16 %i.h, 0
  %i.m = load i32, ptr @hf_isup_dsp, align 4
  %i.n = add i32 %2, 3                            ; 3 uses
  %i.o = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.m, ptr noundef %0, i32 noundef %i.n, i32 noundef 17, i32 noundef 0) ; 0 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load i32, ptr @hf_nsap_ipv6_addr, align 4
  %i.q = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.p, ptr noundef %0, i32 noundef %i.n, i32 noundef 16, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.r = load i32, ptr @hf_nsap_ipv4_addr, align 4
  %i.s = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.r, ptr noundef %0, i32 noundef %i.n, i32 noundef 4, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.t = load i32, ptr @hf_isup_idp, align 4
  %i.u = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.t, ptr noundef %0, i32 noundef %2, i32 noundef 9, i32 noundef 0) ; 0 uses
  %i.v = load i32, ptr @hf_afi, align 4
  %i.w = tail call ptr @proto_tree_add_uint(ptr noundef %4, i32 noundef %i.v, ptr noundef %0, i32 noundef %2, i32 noundef 1, i32 noundef %i.b) ; 0 uses
  %i.x = load i32, ptr @hf_isup_idi, align 4
  %i.y = add i32 %2, 1                            ; 3 uses
  %i.z = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.x, ptr noundef %0, i32 noundef %i.y, i32 noundef 8, i32 noundef 0) ; 0 uses
  tail call void @dissect_e164_cc(ptr noundef %0, ptr noundef %1, ptr noundef %4, i32 noundef %i.y, i32 noundef 1)
  %i.aa = load i32, ptr @hf_bicc_nsap_dsp_length, align 4
  %i.ab = add i32 %3, -9                          ; 3 uses
  %i.ac = tail call ptr (ptr, i32, ptr, i32, i32, i32, ptr, ...) @proto_tree_add_uint_format_value(ptr noundef %4, i32 noundef %i.aa, ptr noundef %0, i32 noundef %i.y, i32 noundef 0, i32 noundef %i.ab, ptr noundef nonnull @.str.92, i32 noundef %i.ab, i32 noundef %3) ; 0 uses
  %i.ad = load i32, ptr @hf_bicc_nsap_dsp, align 4
  %i.ae = add i32 %2, 9
  %i.af = tail call ptr @proto_tree_add_item(ptr noundef %4, i32 noundef %i.ad, ptr noundef %0, i32 noundef %i.ae, i32 noundef %i.ab, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.a
end_hunk_0
