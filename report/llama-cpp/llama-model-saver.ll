Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-model-saver?download=true
inline.NumInlined: 728
inline.NumDeleted: 311
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN17llama_model_saver17add_kv_from_modelEv:bb.a
  %i.ayv = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #19
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %76, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i32 noundef 131)
          to label %.noexc1103 unwind label %.loopexit.split-lp2148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1103:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1092
  %i.ayw = load ptr, ptr %76, align 8, !tbaa !105
  invoke void @gguf_set_val_f32(ptr noundef %i.ayv, ptr noundef %i.ayw, float noundef %i.ayu)
          to label %bb.gs unwind label %bb.gt

bb.gs:                                            ; preds = %.noexc1103
  %i.ayx = load ptr, ptr %76, align 8, !tbaa !105 ; 2 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 2 uses
  %i.ayz = icmp eq ptr %i.ayx, %i.ayy
  br i1 %i.ayz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1100: ; preds = %bb.gs
  %i.aza = load i64, ptr %i.ayy, align 8, !tbaa !106
  %i.azb = add i64 %i.aza, 1
  call void @_ZdlPvm(ptr noundef %i.ayx, i64 noundef %i.azb) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1102

bb.gt:                                            ; preds = %.noexc1103
  %i.azc = landingpad { ptr, i32 }
          cleanup
  %i.azd = load ptr, ptr %76, align 8, !tbaa !105 ; 2 uses
  %i.aze = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 2 uses
  %i.azf = icmp eq ptr %i.azd, %i.aze
  br i1 %i.azf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1098, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1097

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1097: ; preds = %bb.gt
  %i.azg = load i64, ptr %i.aze, align 8, !tbaa !106
  %i.azh = add i64 %i.azg, 1
  call void @_ZdlPvm(ptr noundef %i.azd, i64 noundef %i.azh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1098

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1098: ; preds = %bb.gt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1097
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #19
  br label %.body382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1102: ; preds = %bb.gs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1100
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #19
  %i.azi = getelementptr inbounds nuw i8, ptr %i.b, i64 27196
  %i.azj = load i32, ptr %i.azi, align 4, !tbaa !221
  %i.azk = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #19
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %75, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i32 noundef 142)
          to label %.noexc1113 unwind label %.loopexit.split-lp2148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1113:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1102
  %i.azl = load ptr, ptr %75, align 8, !tbaa !105
  invoke void @gguf_set_val_u32(ptr noundef %i.azk, ptr noundef %i.azl, i32 noundef %i.azj)
          to label %bb.gu unwind label %bb.gv

bb.gu:                                            ; preds = %.noexc1113
  %i.azm = load ptr, ptr %75, align 8, !tbaa !105 ; 2 uses
  %i.azn = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  %i.azo = icmp eq ptr %i.azm, %i.azn
  br i1 %i.azo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1110: ; preds = %bb.gu
  %i.azp = load i64, ptr %i.azn, align 8, !tbaa !106
  %i.azq = add i64 %i.azp, 1
  call void @_ZdlPvm(ptr noundef %i.azm, i64 noundef %i.azq) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1112

bb.gv:                                            ; preds = %.noexc1113
  %i.azr = landingpad { ptr, i32 }
          cleanup
  %i.azs = load ptr, ptr %75, align 8, !tbaa !105 ; 2 uses
  %i.azt = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  %i.azu = icmp eq ptr %i.azs, %i.azt
  br i1 %i.azu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1107: ; preds = %bb.gv
  %i.azv = load i64, ptr %i.azt, align 8, !tbaa !106
  %i.azw = add i64 %i.azv, 1
  call void @_ZdlPvm(ptr noundef %i.azs, i64 noundef %i.azw) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1108

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1108: ; preds = %bb.gv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1107
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #19
  br label %.body382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1112: ; preds = %bb.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1110
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #19
  %i.azx = getelementptr inbounds nuw i8, ptr %i.b, i64 29256
  %i.azy = load i32, ptr %i.azx, align 8, !tbaa !222
  %i.azz = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #19
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %74, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i32 noundef 132)
          to label %.noexc1123 unwind label %.loopexit.split-lp2148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1123:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1112
  %i.baa = load ptr, ptr %74, align 8, !tbaa !105
  invoke void @gguf_set_val_u32(ptr noundef %i.azz, ptr noundef %i.baa, i32 noundef %i.azy)
          to label %bb.gw unwind label %bb.gx

bb.gw:                                            ; preds = %.noexc1123
  %i.bab = load ptr, ptr %74, align 8, !tbaa !105 ; 2 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 2 uses
  %i.bad = icmp eq ptr %i.bab, %i.bac
  br i1 %i.bad, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1120: ; preds = %bb.gw
  %i.bae = load i64, ptr %i.bac, align 8, !tbaa !106
  %i.baf = add i64 %i.bae, 1
  call void @_ZdlPvm(ptr noundef %i.bab, i64 noundef %i.baf) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1122

bb.gx:                                            ; preds = %.noexc1123
  %i.bag = landingpad { ptr, i32 }
          cleanup
  %i.bah = load ptr, ptr %74, align 8, !tbaa !105 ; 2 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 2 uses
  %i.baj = icmp eq ptr %i.bah, %i.bai
  br i1 %i.baj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1117: ; preds = %bb.gx
  %i.bak = load i64, ptr %i.bai, align 8, !tbaa !106
  %i.bal = add i64 %i.bak, 1
  call void @_ZdlPvm(ptr noundef %i.bah, i64 noundef %i.bal) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1118

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1118: ; preds = %bb.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1117
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #19
  br label %.body382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1122: ; preds = %bb.gw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1120
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #19
  %i.bam = getelementptr inbounds nuw i8, ptr %i.b, i64 29272 ; 3 uses
  %i.ban = load i32, ptr %i.bam, align 8, !tbaa !223
  %.not235 = icmp eq i32 %i.ban, 0
  br i1 %.not235, label %_ZNSt6vectorIjSaIjEED2Ev.exit1267, label %.preheader

.preheader:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1122
  %i.bao = load i32, ptr %i.fr, align 8, !tbaa !150
  %.not2174 = icmp eq i32 %i.bao, 0
  br i1 %.not2174, label %_ZN17llama_model_saver6add_kvISt6vectorIjSaIjEEEEv6llm_kvRKT_b.exit1137, label %.lr.ph2171

.lr.ph2171:                                       ; preds = %.preheader
  %i.bap = getelementptr inbounds nuw i8, ptr %i.b, i64 29288
  br label %bb.ha

._crit_edge:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.baq = ptrtoint ptr %.sroa.102006.1 to i64
  %i.bar = ptrtoint ptr %.sroa.02001.1 to i64     ; 3 uses
  %i.bas = sub i64 %i.baq, %i.bar
  %i.bat = ashr exact i64 %i.bas, 2
  %i.bau = icmp eq ptr %.sroa.102006.1, %.sroa.02001.1
  br i1 %i.bau, label %_ZN17llama_model_saver6add_kvISt6vectorIjSaIjEEEEv6llm_kvRKT_b.exit1137, label %.critedge29.i1127

.critedge29.i1127:                                ; preds = %._crit_edge
  %i.bav = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #19
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %73, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i32 noundef 133)
          to label %.noexc1134 unwind label %.loopexit.split-lp

.noexc1134:                                       ; preds = %.critedge29.i1127
  %i.baw = load ptr, ptr %73, align 8, !tbaa !105
  invoke void @gguf_set_arr_data(ptr noundef %i.bav, ptr noundef %i.baw, i32 noundef 4, ptr noundef %.sroa.02001.1, i64 noundef %i.bat)
          to label %bb.gy unwind label %bb.gz

bb.gy:                                            ; preds = %.noexc1134
  %i.bax = load ptr, ptr %73, align 8, !tbaa !105 ; 2 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 2 uses
  %i.baz = icmp eq ptr %i.bax, %i.bay
  br i1 %i.baz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1131: ; preds = %bb.gy
  %i.bba = load i64, ptr %i.bay, align 8, !tbaa !106
  %i.bbb = add i64 %i.bba, 1
  call void @_ZdlPvm(ptr noundef %i.bax, i64 noundef %i.bbb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1132: ; preds = %bb.gy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1131
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #19
  br label %_ZN17llama_model_saver6add_kvISt6vectorIjSaIjEEEEv6llm_kvRKT_b.exit1137

bb.gz:                                            ; preds = %.noexc1134
  %i.bbc = landingpad { ptr, i32 }
          cleanup
  %i.bbd = load ptr, ptr %73, align 8, !tbaa !105 ; 2 uses
  %i.bbe = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 2 uses
  %i.bbf = icmp eq ptr %i.bbd, %i.bbe
  br i1 %i.bbf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.i1129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i1128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i1128: ; preds = %bb.gz
  %i.bbg = load i64, ptr %i.bbe, align 8, !tbaa !106
  %i.bbh = add i64 %i.bbg, 1
  call void @_ZdlPvm(ptr noundef %i.bbd, i64 noundef %i.bbh) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.i1129

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.i1129: ; preds = %bb.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i1128
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #19
  br label %.body1135

bb.ha:                                            ; preds = %.lr.ph2171, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %indvars.iv2184 = phi i64 [ 0, %.lr.ph2171 ], [ %indvars.iv.next2185, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 5 uses
  %.sroa.14.02169 = phi ptr [ null, %.lr.ph2171 ], [ %.sroa.14.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 6 uses
  %.sroa.102006.02168 = phi ptr [ null, %.lr.ph2171 ], [ %.sroa.102006.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 4 uses
  %.sroa.02001.02167 = phi ptr [ null, %.lr.ph2171 ], [ %.sroa.02001.1, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 8 uses
  %i.bbi = lshr i64 %indvars.iv2184, 6
  %i.bbj = getelementptr inbounds nuw [8 x i8], ptr %i.bap, i64 %i.bbi
  %i.bbk = load i64, ptr %i.bbj, align 8, !tbaa !110
  %i.bbl = and i64 %indvars.iv2184, 63
  %i.bbm = shl nuw i64 1, %i.bbl
  %i.bbn = and i64 %i.bbk, %i.bbm
  %.not2144 = icmp eq i64 %i.bbn, 0
  br i1 %.not2144, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %.not.i = icmp eq ptr %.sroa.102006.02168, %.sroa.14.02169
  br i1 %.not.i, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.bbo = trunc nuw i64 %indvars.iv2184 to i32
  store i32 %i.bbo, ptr %.sroa.102006.02168, align 4, !tbaa !107
  %i.bbp = getelementptr inbounds nuw i8, ptr %.sroa.102006.02168, i64 4
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.hd:                                            ; preds = %bb.hb
  %i.bbq = ptrtoint ptr %.sroa.14.02169 to i64
  %i.bbr = ptrtoint ptr %.sroa.02001.02167 to i64
  %i.bbs = sub i64 %i.bbq, %i.bbr                 ; 6 uses
  %i.bbt = icmp eq i64 %i.bbs, 9223372036854775804
  br i1 %i.bbt, label %bb.he, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.he:                                            ; preds = %bb.hd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #17
          to label %.noexc1139 unwind label %.loopexit.split-lp

.noexc1139:                                       ; preds = %bb.he
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.hd
  %i.bbu = ashr exact i64 %i.bbs, 2               ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bbu, i64 1)
  %i.bbv = add nsw i64 %.sroa.speculated.i.i.i, %i.bbu ; 2 uses
  %i.bbw = icmp ult i64 %i.bbv, %i.bbu
  %i.bbx = call i64 @llvm.umin.i64(i64 %i.bbv, i64 2305843009213693951)
  %i.bby = select i1 %i.bbw, i64 2305843009213693951, i64 %i.bbx ; 3 uses
  %.not.i.i.i1138 = icmp ne i64 %i.bby, 0
  call void @llvm.assume(i1 %.not.i.i.i1138)
  %i.bbz = shl nuw nsw i64 %i.bby, 2
  %i.bca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bbz) #21
          to label %.noexc1140 unwind label %.loopexit ; 4 uses

.noexc1140:                                       ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.bcb = getelementptr inbounds i8, ptr %i.bca, i64 %i.bbs ; 2 uses
  %i.bcc = trunc nuw i64 %indvars.iv2184 to i32
  store i32 %i.bcc, ptr %i.bcb, align 4, !tbaa !107
  %i.bcd = icmp sgt i64 %i.bbs, 0
  br i1 %i.bcd, label %bb.hf, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.hf:                                            ; preds = %.noexc1140
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bca, ptr align 4 %.sroa.02001.02167, i64 %i.bbs, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.hf, %.noexc1140
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bcb, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.02001.02167, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.hg

bb.hg:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02001.02167, i64 noundef %i.bbs) #20
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.hg, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.bcf = getelementptr inbounds nuw [4 x i8], ptr %i.bca, i64 %i.bby
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.hc, %bb.ha
  %.sroa.02001.1 = phi ptr [ %.sroa.02001.02167, %bb.ha ], [ %i.bca, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.02001.02167, %bb.hc ] ; 8 uses
  %.sroa.102006.1 = phi ptr [ %.sroa.102006.02168, %bb.ha ], [ %i.bce, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %i.bbp, %bb.hc ] ; 3 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.02169, %bb.ha ], [ %i.bcf, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.14.02169, %bb.hc ] ; 5 uses
  %indvars.iv.next2185 = add nuw nsw i64 %indvars.iv2184, 1 ; 2 uses
  %i.bcg = load i32, ptr %i.fr, align 8, !tbaa !150
  %i.bch = zext i32 %i.bcg to i64
  %i.bci = icmp samesign ult i64 %indvars.iv.next2185, %i.bch
  br i1 %i.bci, label %bb.ha, label %._crit_edge, !llvm.loop !137

_ZN17llama_model_saver6add_kvISt6vectorIjSaIjEEEEv6llm_kvRKT_b.exit1137: ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1132, %._crit_edge
  %i.bcj = phi i64 [ %i.bar, %._crit_edge ], [ %i.bar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1132 ], [ 0, %.preheader ]
  %.sroa.14.0.lcssa2858 = phi ptr [ %.sroa.14.1, %._crit_edge ], [ %.sroa.14.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1132 ], [ null, %.preheader ] ; 18 uses
  %.sroa.02001.0.lcssa2857 = phi ptr [ %.sroa.02001.1, %._crit_edge ], [ %.sroa.02001.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1132 ], [ null, %.preheader ] ; 19 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %i.b, i64 29260 ; 2 uses
  %i.bcl = load i32, ptr %i.bck, align 4, !tbaa !224
  %i.bcm = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #19
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %72, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i32 noundef 134)
          to label %.noexc1147 unwind label %.loopexit.split-lp

.noexc1147:                                       ; preds = %_ZN17llama_model_saver6add_kvISt6vectorIjSaIjEEEEv6llm_kvRKT_b.exit1137
  %i.bcn = load ptr, ptr %72, align 8, !tbaa !105
  invoke void @gguf_set_val_u32(ptr noundef %i.bcm, ptr noundef %i.bcn, i32 noundef %i.bcl)
          to label %bb.hh unwind label %bb.hi

bb.hh:                                            ; preds = %.noexc1147
  %i.bco = load ptr, ptr %72, align 8, !tbaa !105 ; 2 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 2 uses
  %i.bcq = icmp eq ptr %i.bco, %i.bcp
  br i1 %i.bcq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1144: ; preds = %bb.hh
  %i.bcr = load i64, ptr %i.bcp, align 8, !tbaa !106
  %i.bcs = add i64 %i.bcr, 1
  call void @_ZdlPvm(ptr noundef %i.bco, i64 noundef %i.bcs) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1146

bb.hi:                                            ; preds = %.noexc1147
  %i.bct = landingpad { ptr, i32 }
          cleanup
  %i.bcu = load ptr, ptr %72, align 8, !tbaa !105 ; 2 uses
  %i.bcv = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 2 uses
  %i.bcw = icmp eq ptr %i.bcu, %i.bcv
  br i1 %i.bcw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1141: ; preds = %bb.hi
  %i.bcx = load i64, ptr %i.bcv, align 8, !tbaa !106
  %i.bcy = add i64 %i.bcx, 1
  call void @_ZdlPvm(ptr noundef %i.bcu, i64 noundef %i.bcy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1142: ; preds = %bb.hi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1141
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #19
  br label %.body1135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1146: ; preds = %bb.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1144
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #19
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.b, i64 29264
  %i.bda = load i32, ptr %i.bcz, align 8, !tbaa !225
  %i.bdb = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #19
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %71, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i32 noundef 135)
          to label %.noexc1157 unwind label %.loopexit.split-lp

.noexc1157:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1146
  %i.bdc = load ptr, ptr %71, align 8, !tbaa !105
  invoke void @gguf_set_val_u32(ptr noundef %i.bdb, ptr noundef %i.bdc, i32 noundef %i.bda)
          to label %bb.hj unwind label %bb.hk

bb.hj:                                            ; preds = %.noexc1157
  %i.bdd = load ptr, ptr %71, align 8, !tbaa !105 ; 2 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 2 uses
  %i.bdf = icmp eq ptr %i.bdd, %i.bde
  br i1 %i.bdf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1154: ; preds = %bb.hj
  %i.bdg = load i64, ptr %i.bde, align 8, !tbaa !106
  %i.bdh = add i64 %i.bdg, 1
  call void @_ZdlPvm(ptr noundef %i.bdd, i64 noundef %i.bdh) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1156

bb.hk:                                            ; preds = %.noexc1157
  %i.bdi = landingpad { ptr, i32 }
          cleanup
  %i.bdj = load ptr, ptr %71, align 8, !tbaa !105 ; 2 uses
  %i.bdk = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 2 uses
  %i.bdl = icmp eq ptr %i.bdj, %i.bdk
  br i1 %i.bdl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1151: ; preds = %bb.hk
  %i.bdm = load i64, ptr %i.bdk, align 8, !tbaa !106
  %i.bdn = add i64 %i.bdm, 1
  call void @_ZdlPvm(ptr noundef %i.bdj, i64 noundef %i.bdn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1152: ; preds = %bb.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1151
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #19
  br label %.body1135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1156: ; preds = %bb.hj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1154
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #19
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.b, i64 29268
  %i.bdp = load i32, ptr %i.bdo, align 4, !tbaa !226
  %i.bdq = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #19
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %70, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i32 noundef 136)
          to label %.noexc1167 unwind label %.loopexit.split-lp

.noexc1167:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1156
  %i.bdr = load ptr, ptr %70, align 8, !tbaa !105
  invoke void @gguf_set_val_u32(ptr noundef %i.bdq, ptr noundef %i.bdr, i32 noundef %i.bdp)
          to label %bb.hl unwind label %bb.hm

bb.hl:                                            ; preds = %.noexc1167
  %i.bds = load ptr, ptr %70, align 8, !tbaa !105 ; 2 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.bdu = icmp eq ptr %i.bds, %i.bdt
  br i1 %i.bdu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1164: ; preds = %bb.hl
  %i.bdv = load i64, ptr %i.bdt, align 8, !tbaa !106
  %i.bdw = add i64 %i.bdv, 1
  call void @_ZdlPvm(ptr noundef %i.bds, i64 noundef %i.bdw) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1166

bb.hm:                                            ; preds = %.noexc1167
  %i.bdx = landingpad { ptr, i32 }
          cleanup
  %i.bdy = load ptr, ptr %70, align 8, !tbaa !105 ; 2 uses
  %i.bdz = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.bea = icmp eq ptr %i.bdy, %i.bdz
  br i1 %i.bea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1162, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1161: ; preds = %bb.hm
  %i.beb = load i64, ptr %i.bdz, align 8, !tbaa !106
  %i.bec = add i64 %i.beb, 1
  call void @_ZdlPvm(ptr noundef %i.bdy, i64 noundef %i.bec) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1162

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1162: ; preds = %bb.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1161
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #19
  br label %.body1135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1166: ; preds = %bb.hl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1164
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #19
  %i.bed = getelementptr inbounds nuw i8, ptr %i.b, i64 29280
  %i.bee = load i32, ptr %i.bed, align 8, !tbaa !227
  %i.bef = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #19
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %69, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i32 noundef 140)
          to label %.noexc1177 unwind label %.loopexit.split-lp

.noexc1177:                                       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1166
  %i.beg = load ptr, ptr %69, align 8, !tbaa !105
  invoke void @gguf_set_val_u32(ptr noundef %i.bef, ptr noundef %i.beg, i32 noundef %i.bee)
          to label %bb.hn unwind label %bb.ho

bb.hn:                                            ; preds = %.noexc1177
  %i.beh = load ptr, ptr %69, align 8, !tbaa !105 ; 2 uses
  %i.bei = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  %i.bej = icmp eq ptr %i.beh, %i.bei
  br i1 %i.bej, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1174: ; preds = %bb.hn
  %i.bek = load i64, ptr %i.bei, align 8, !tbaa !106
  %i.bel = add i64 %i.bek, 1
  call void @_ZdlPvm(ptr noundef %i.beh, i64 noundef %i.bel) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1176

bb.ho:                                            ; preds = %.noexc1177
  %i.bem = landingpad { ptr, i32 }
          cleanup
  %i.ben = load ptr, ptr %69, align 8, !tbaa !105 ; 2 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %69, i64 16 ; 2 uses
  %i.bep = icmp eq ptr %i.ben, %i.beo
  br i1 %i.bep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1172, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1171

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1171: ; preds = %bb.ho
  %i.beq = load i64, ptr %i.beo, align 8, !tbaa !106
  %i.ber = add i64 %i.beq, 1
  call void @_ZdlPvm(ptr noundef %i.ben, i64 noundef %i.ber) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1172

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1172: ; preds = %bb.ho, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1171
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #19
  br label %.body1135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1176: ; preds = %bb.hn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1174
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #19
  %i.bes = getelementptr inbounds nuw i8, ptr %i.b, i64 29276
  %i.bet = load i32, ptr %i.bes, align 4, !tbaa !228
  %i.beu = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #19
end_hunk_0
begin_hunk_1_@_ZN17llama_model_saver17add_kv_from_modelEv:bb.a
  %i.cgy = add i64 %i.cgx, 1
  call void @_ZdlPvm(ptr noundef %i.cgu, i64 noundef %i.cgy) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1665

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1665: ; preds = %bb.lt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1664
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  br label %.body382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1669: ; preds = %bb.ls, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1667
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  %i.cgz = invoke noundef zeroext i1 @_ZNK11llama_vocab11get_add_eosEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.lu unwind label %.loopexit.split-lp2148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.lu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1669
  %i.cha = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %26, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i32 noundef 190)
          to label %.noexc1680 unwind label %.loopexit.split-lp2148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1680:                                       ; preds = %bb.lu
  %i.chb = load ptr, ptr %26, align 8, !tbaa !105
  invoke void @gguf_set_val_bool(ptr noundef %i.cha, ptr noundef %i.chb, i1 noundef zeroext %i.cgz)
          to label %bb.lv unwind label %bb.lw

bb.lv:                                            ; preds = %.noexc1680
  %i.chc = load ptr, ptr %26, align 8, !tbaa !105 ; 2 uses
  %i.chd = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.che = icmp eq ptr %i.chc, %i.chd
  br i1 %i.che, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1679, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1677

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1677: ; preds = %bb.lv
  %i.chf = load i64, ptr %i.chd, align 8, !tbaa !106
  %i.chg = add i64 %i.chf, 1
  call void @_ZdlPvm(ptr noundef %i.chc, i64 noundef %i.chg) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1679

bb.lw:                                            ; preds = %.noexc1680
  %i.chh = landingpad { ptr, i32 }
          cleanup
  %i.chi = load ptr, ptr %26, align 8, !tbaa !105 ; 2 uses
  %i.chj = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.chk = icmp eq ptr %i.chi, %i.chj
  br i1 %i.chk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1675, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1674

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1674: ; preds = %bb.lw
  %i.chl = load i64, ptr %i.chj, align 8, !tbaa !106
  %i.chm = add i64 %i.chl, 1
  call void @_ZdlPvm(ptr noundef %i.chi, i64 noundef %i.chm) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1675

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1675: ; preds = %bb.lw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1674
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  br label %.body382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1679: ; preds = %bb.lv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1677
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  %i.chn = invoke noundef zeroext i1 @_ZNK11llama_vocab11get_add_sepEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.lx unwind label %.loopexit.split-lp2148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.lx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1679
  %i.cho = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i32 noundef 191)
          to label %.noexc1690 unwind label %.loopexit.split-lp2148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1690:                                       ; preds = %bb.lx
  %i.chp = load ptr, ptr %25, align 8, !tbaa !105
  invoke void @gguf_set_val_bool(ptr noundef %i.cho, ptr noundef %i.chp, i1 noundef zeroext %i.chn)
          to label %bb.ly unwind label %bb.lz

bb.ly:                                            ; preds = %.noexc1690
  %i.chq = load ptr, ptr %25, align 8, !tbaa !105 ; 2 uses
  %i.chr = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.chs = icmp eq ptr %i.chq, %i.chr
  br i1 %i.chs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1689, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1687

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1687: ; preds = %bb.ly
  %i.cht = load i64, ptr %i.chr, align 8, !tbaa !106
  %i.chu = add i64 %i.cht, 1
  call void @_ZdlPvm(ptr noundef %i.chq, i64 noundef %i.chu) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1689

bb.lz:                                            ; preds = %.noexc1690
  %i.chv = landingpad { ptr, i32 }
          cleanup
  %i.chw = load ptr, ptr %25, align 8, !tbaa !105 ; 2 uses
  %i.chx = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.chy = icmp eq ptr %i.chw, %i.chx
  br i1 %i.chy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1685, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1684

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1684: ; preds = %bb.lz
  %i.chz = load i64, ptr %i.chx, align 8, !tbaa !106
  %i.cia = add i64 %i.chz, 1
  call void @_ZdlPvm(ptr noundef %i.chw, i64 noundef %i.cia) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1685

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1685: ; preds = %bb.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1684
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %.body382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1689: ; preds = %bb.ly, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1687
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  %i.cib = invoke noundef zeroext i1 @_ZNK11llama_vocab20get_add_space_prefixEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.ma unwind label %.loopexit.split-lp2148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ma:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1689
  %i.cic = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i32 noundef 192)
          to label %.noexc1700 unwind label %.loopexit.split-lp2148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1700:                                       ; preds = %bb.ma
  %i.cid = load ptr, ptr %24, align 8, !tbaa !105
  invoke void @gguf_set_val_bool(ptr noundef %i.cic, ptr noundef %i.cid, i1 noundef zeroext %i.cib)
          to label %bb.mb unwind label %bb.mc

bb.mb:                                            ; preds = %.noexc1700
  %i.cie = load ptr, ptr %24, align 8, !tbaa !105 ; 2 uses
  %i.cif = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.cig = icmp eq ptr %i.cie, %i.cif
  br i1 %i.cig, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1699, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1697

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1697: ; preds = %bb.mb
  %i.cih = load i64, ptr %i.cif, align 8, !tbaa !106
  %i.cii = add i64 %i.cih, 1
  call void @_ZdlPvm(ptr noundef %i.cie, i64 noundef %i.cii) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1699

bb.mc:                                            ; preds = %.noexc1700
  %i.cij = landingpad { ptr, i32 }
          cleanup
  %i.cik = load ptr, ptr %24, align 8, !tbaa !105 ; 2 uses
  %i.cil = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.cim = icmp eq ptr %i.cik, %i.cil
  br i1 %i.cim, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1695, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1694

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1694: ; preds = %bb.mc
  %i.cin = load i64, ptr %i.cil, align 8, !tbaa !106
  %i.cio = add i64 %i.cin, 1
  call void @_ZdlPvm(ptr noundef %i.cik, i64 noundef %i.cio) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1695

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1695: ; preds = %bb.mc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1694
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  br label %.body382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1699: ; preds = %bb.mb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1697
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #19
  %i.cip = invoke noundef zeroext i1 @_ZNK11llama_vocab28get_remove_extra_whitespacesEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.md unwind label %.loopexit.split-lp2148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.md:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1699
  %i.ciq = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #19
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i32 noundef 193)
          to label %.noexc1710 unwind label %.loopexit.split-lp2148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1710:                                       ; preds = %bb.md
  %i.cir = load ptr, ptr %23, align 8, !tbaa !105
  invoke void @gguf_set_val_bool(ptr noundef %i.ciq, ptr noundef %i.cir, i1 noundef zeroext %i.cip)
          to label %bb.me unwind label %bb.mf

bb.me:                                            ; preds = %.noexc1710
  %i.cis = load ptr, ptr %23, align 8, !tbaa !105 ; 2 uses
  %i.cit = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ciu = icmp eq ptr %i.cis, %i.cit
  br i1 %i.ciu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1709, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1707

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1707: ; preds = %bb.me
  %i.civ = load i64, ptr %i.cit, align 8, !tbaa !106
  %i.ciw = add i64 %i.civ, 1
  call void @_ZdlPvm(ptr noundef %i.cis, i64 noundef %i.ciw) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1709

bb.mf:                                            ; preds = %.noexc1710
  %i.cix = landingpad { ptr, i32 }
          cleanup
  %i.ciy = load ptr, ptr %23, align 8, !tbaa !105 ; 2 uses
  %i.ciz = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.cja = icmp eq ptr %i.ciy, %i.ciz
  br i1 %i.cja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1705, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1704

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1704: ; preds = %bb.mf
  %i.cjb = load i64, ptr %i.ciz, align 8, !tbaa !106
  %i.cjc = add i64 %i.cjb, 1
  call void @_ZdlPvm(ptr noundef %i.ciy, i64 noundef %i.cjc) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1705

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1705: ; preds = %bb.mf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1704
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  br label %.body382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1709: ; preds = %bb.me, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1707
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %164) #19
  invoke void @_ZNK11llama_vocab24get_precompiled_charsmapEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.82") align 8 %164, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.mg unwind label %bb.ot

bb.mg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1709
  %i.cjd = getelementptr inbounds nuw i8, ptr %164, i64 8
  %i.cje = load ptr, ptr %i.cjd, align 8, !tbaa !254 ; 3 uses
  %i.cjf = load ptr, ptr %164, align 8, !tbaa !255 ; 2 uses
  %i.cjg = icmp eq ptr %i.cje, %i.cjf
  br i1 %i.cjg, label %_ZN17llama_model_saver6add_kvISt6vectorIcSaIcEEEEv6llm_kvRKT_b.exit, label %.loopexit.i1714

.loopexit.i1714:                                  ; preds = %bb.mg
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 127, ptr noundef nonnull @.str.3) #17
          to label %.noexc1715 unwind label %bb.ou

.noexc1715:                                       ; preds = %.loopexit.i1714
  unreachable

_ZN17llama_model_saver6add_kvISt6vectorIcSaIcEEEEv6llm_kvRKT_b.exit: ; preds = %bb.mg
  %.not.i.i.i1716 = icmp eq ptr %i.cje, null
  br i1 %.not.i.i.i1716, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.mh

bb.mh:                                            ; preds = %_ZN17llama_model_saver6add_kvISt6vectorIcSaIcEEEEv6llm_kvRKT_b.exit
  %i.cjh = getelementptr inbounds nuw i8, ptr %164, i64 16
  %i.cji = load ptr, ptr %i.cjh, align 8, !tbaa !256
  %i.cjj = ptrtoint ptr %i.cji to i64
  %i.cjk = ptrtoint ptr %i.cje to i64
  %i.cjl = sub i64 %i.cjj, %i.cjk
  call void @_ZdlPvm(ptr noundef nonnull %i.cjf, i64 noundef %i.cjl) #20
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %_ZN17llama_model_saver6add_kvISt6vectorIcSaIcEEEEv6llm_kvRKT_b.exit, %bb.mh
  call void @llvm.lifetime.end.p0(ptr nonnull %164) #19
  %i.cjm = invoke noundef i32 @_ZNK11llama_vocab13token_fim_preEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.mi unwind label %.loopexit.split-lp2148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mi:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.cjn = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i32 noundef 200)
          to label %.noexc1723 unwind label %.loopexit.split-lp2148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1723:                                       ; preds = %bb.mi
  %i.cjo = load ptr, ptr %22, align 8, !tbaa !105
  invoke void @gguf_set_val_u32(ptr noundef %i.cjn, ptr noundef %i.cjo, i32 noundef %i.cjm)
          to label %bb.mj unwind label %bb.mk

bb.mj:                                            ; preds = %.noexc1723
  %i.cjp = load ptr, ptr %22, align 8, !tbaa !105 ; 2 uses
  %i.cjq = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.cjr = icmp eq ptr %i.cjp, %i.cjq
  br i1 %i.cjr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1722, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1720

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1720: ; preds = %bb.mj
  %i.cjs = load i64, ptr %i.cjq, align 8, !tbaa !106
  %i.cjt = add i64 %i.cjs, 1
  call void @_ZdlPvm(ptr noundef %i.cjp, i64 noundef %i.cjt) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1722

bb.mk:                                            ; preds = %.noexc1723
  %i.cju = landingpad { ptr, i32 }
          cleanup
  %i.cjv = load ptr, ptr %22, align 8, !tbaa !105 ; 2 uses
  %i.cjw = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.cjx = icmp eq ptr %i.cjv, %i.cjw
  br i1 %i.cjx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1718, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1717

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1717: ; preds = %bb.mk
  %i.cjy = load i64, ptr %i.cjw, align 8, !tbaa !106
  %i.cjz = add i64 %i.cjy, 1
  call void @_ZdlPvm(ptr noundef %i.cjv, i64 noundef %i.cjz) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1718

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1718: ; preds = %bb.mk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1717
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  br label %.body382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1722: ; preds = %bb.mj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1720
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  %i.cka = invoke noundef i32 @_ZNK11llama_vocab13token_fim_sufEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.ml unwind label %.loopexit.split-lp2148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ml:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1722
  %i.ckb = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i32 noundef 201)
          to label %.noexc1733 unwind label %.loopexit.split-lp2148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1733:                                       ; preds = %bb.ml
  %i.ckc = load ptr, ptr %21, align 8, !tbaa !105
  invoke void @gguf_set_val_u32(ptr noundef %i.ckb, ptr noundef %i.ckc, i32 noundef %i.cka)
          to label %bb.mm unwind label %bb.mn

bb.mm:                                            ; preds = %.noexc1733
  %i.ckd = load ptr, ptr %21, align 8, !tbaa !105 ; 2 uses
  %i.cke = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ckf = icmp eq ptr %i.ckd, %i.cke
  br i1 %i.ckf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1732, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1730

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1730: ; preds = %bb.mm
  %i.ckg = load i64, ptr %i.cke, align 8, !tbaa !106
  %i.ckh = add i64 %i.ckg, 1
  call void @_ZdlPvm(ptr noundef %i.ckd, i64 noundef %i.ckh) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1732

bb.mn:                                            ; preds = %.noexc1733
  %i.cki = landingpad { ptr, i32 }
          cleanup
  %i.ckj = load ptr, ptr %21, align 8, !tbaa !105 ; 2 uses
  %i.ckk = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.ckl = icmp eq ptr %i.ckj, %i.ckk
  br i1 %i.ckl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1728, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1727

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1727: ; preds = %bb.mn
  %i.ckm = load i64, ptr %i.ckk, align 8, !tbaa !106
  %i.ckn = add i64 %i.ckm, 1
  call void @_ZdlPvm(ptr noundef %i.ckj, i64 noundef %i.ckn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1728

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1728: ; preds = %bb.mn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1727
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %.body382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1732: ; preds = %bb.mm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1730
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  %i.cko = invoke noundef i32 @_ZNK11llama_vocab13token_fim_midEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.mo unwind label %.loopexit.split-lp2148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1732
  %i.ckp = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i32 noundef 202)
          to label %.noexc1743 unwind label %.loopexit.split-lp2148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1743:                                       ; preds = %bb.mo
  %i.ckq = load ptr, ptr %20, align 8, !tbaa !105
  invoke void @gguf_set_val_u32(ptr noundef %i.ckp, ptr noundef %i.ckq, i32 noundef %i.cko)
          to label %bb.mp unwind label %bb.mq

bb.mp:                                            ; preds = %.noexc1743
  %i.ckr = load ptr, ptr %20, align 8, !tbaa !105 ; 2 uses
  %i.cks = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ckt = icmp eq ptr %i.ckr, %i.cks
  br i1 %i.ckt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1742, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1740

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1740: ; preds = %bb.mp
  %i.cku = load i64, ptr %i.cks, align 8, !tbaa !106
  %i.ckv = add i64 %i.cku, 1
  call void @_ZdlPvm(ptr noundef %i.ckr, i64 noundef %i.ckv) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1742

bb.mq:                                            ; preds = %.noexc1743
  %i.ckw = landingpad { ptr, i32 }
          cleanup
  %i.ckx = load ptr, ptr %20, align 8, !tbaa !105 ; 2 uses
  %i.cky = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.ckz = icmp eq ptr %i.ckx, %i.cky
  br i1 %i.ckz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1738, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1737

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1737: ; preds = %bb.mq
  %i.cla = load i64, ptr %i.cky, align 8, !tbaa !106
  %i.clb = add i64 %i.cla, 1
  call void @_ZdlPvm(ptr noundef %i.ckx, i64 noundef %i.clb) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1738

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1738: ; preds = %bb.mq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1737
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  br label %.body382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1742: ; preds = %bb.mp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1740
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  %i.clc = invoke noundef i32 @_ZNK11llama_vocab13token_fim_padEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.mr unwind label %.loopexit.split-lp2148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1742
  %i.cld = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i32 noundef 203)
          to label %.noexc1753 unwind label %.loopexit.split-lp2148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1753:                                       ; preds = %bb.mr
  %i.cle = load ptr, ptr %19, align 8, !tbaa !105
  invoke void @gguf_set_val_u32(ptr noundef %i.cld, ptr noundef %i.cle, i32 noundef %i.clc)
          to label %bb.ms unwind label %bb.mt

bb.ms:                                            ; preds = %.noexc1753
  %i.clf = load ptr, ptr %19, align 8, !tbaa !105 ; 2 uses
  %i.clg = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.clh = icmp eq ptr %i.clf, %i.clg
  br i1 %i.clh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1752, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1750

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1750: ; preds = %bb.ms
  %i.cli = load i64, ptr %i.clg, align 8, !tbaa !106
  %i.clj = add i64 %i.cli, 1
  call void @_ZdlPvm(ptr noundef %i.clf, i64 noundef %i.clj) #20
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1752

bb.mt:                                            ; preds = %.noexc1753
  %i.clk = landingpad { ptr, i32 }
          cleanup
  %i.cll = load ptr, ptr %19, align 8, !tbaa !105 ; 2 uses
  %i.clm = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.cln = icmp eq ptr %i.cll, %i.clm
  br i1 %i.cln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1748, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1747

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1747: ; preds = %bb.mt
  %i.clo = load i64, ptr %i.clm, align 8, !tbaa !106
  %i.clp = add i64 %i.clo, 1
  call void @_ZdlPvm(ptr noundef %i.cll, i64 noundef %i.clp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1748

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i1748: ; preds = %bb.mt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i1747
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %.body382

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1752: ; preds = %bb.ms, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1750
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.clq = invoke noundef i32 @_ZNK11llama_vocab13token_fim_repEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.mu unwind label %.loopexit.split-lp2148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.mu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1752
  %i.clr = load ptr, ptr %0, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  invoke void @_ZNK6LLM_KVclB5cxx11E6llm_kv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i32 noundef 204)
          to label %.noexc1763 unwind label %.loopexit.split-lp2148.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc1763:                                       ; preds = %bb.mu
end_hunk_1
