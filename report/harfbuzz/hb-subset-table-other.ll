Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-other?download=true
inline.NumInlined: 11065
inline.NumDeleted: 4620
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZNK2OT3OS26subsetEP19hb_subset_context_t:bb.a
_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EppEv.exit.i.i.i.i.i: ; preds = %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EdeEv.exit.i", %bb.af
  %.sroa.021.1.i345 = phi ptr [ %i.pi, %bb.af ], [ %.sroa.021.038.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EdeEv.exit.i" ] ; 2 uses
  %.sroa.722.1.i344 = phi i32 [ %i.ph, %bb.af ], [ %.sroa.722.037.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EdeEv.exit.i" ]
  %i.ph = add i32 %.sroa.722.1.i344, -1           ; 3 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ph, 0
  br i1 %.not.i.i.i.i.i, label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i", label %"_ZNK4$_23clIRMN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEKFbvERS5_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i.i.i"

"_ZNK4$_23clIRMN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEKFbvERS5_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i.i.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EppEv.exit.i.i.i.i.i
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.021.1.i345, i64 16 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %.sroa.021.1.i345, i64 20
  %i.pk = load i32, ptr %i.pj, align 4
  %i.pl = trunc i32 %i.pk to i1
  br i1 %i.pl, label %"_ZNK4$_23clIRMN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEKFbvERS5_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i_crit_edge", label %bb.af, !llvm.loop !45

"_ZNK4$_23clIRMN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEKFbvERS5_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i_crit_edge": ; preds = %"_ZNK4$_23clIRMN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEKFbvERS5_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i.i.i"
  br label %"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i", !llvm.loop !45

"_ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i": ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EppEv.exit.i.i.i.i.i, %"_ZNK4$_23clIRMN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEKFbvERS5_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i_crit_edge", %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EdeEv.exit.i"
  %.sroa.722.2.i = phi i32 [ 0, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EdeEv.exit.i" ], [ %i.ph, %"_ZNK4$_23clIRMN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEKFbvERS5_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i_crit_edge" ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EppEv.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.021.2.i = phi ptr [ %scevgep.i, %"_ZN9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EdeEv.exit.i" ], [ %i.pi, %"_ZNK4$_23clIRMN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEKFbvERS5_EEN10_hb_head_tIbJDTcl4implclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_Ecv11hb_priorityILj16EE_EEEEE4typeEOSB_OSC_.exit.i.i.i.i.i._ZNR9hb_iter_tI13hb_map_iter_tI16hb_filter_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEEMS7_KFbvERK4$_19LPv0EEMS7_FRS5_vEL24hb_function_sortedness_t0ELSE_0EESG_EppEv.exit.i_crit_edge" ], [ %scevgep62.i, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EppEv.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i202 = icmp ne ptr %.sroa.021.2.i, %i.ox
  %i.pm = icmp ne i32 %.sroa.722.2.i, 0
  %i.pn = or i1 %i.pm, %.not.i.i.i.i202
  br i1 %i.pn, label %.lr.ph.i, label %._crit_edge.i

bb.ag:                                            ; preds = %._crit_edge.i
  %i.po = uitofp i32 %i.pa to double
  %i.pp = uitofp i32 %.111.i to double
  %i.pq = fdiv double %i.po, %i.pp
  %i.pr = fadd double %i.pq, 5.000000e-01
  %i.ps = tail call noundef double @llvm.floor.f64(double %i.pr)
  %i.pt = fptoui double %i.ps to i32
  br label %_ZN2OT3OS219calc_avg_char_widthERK12hb_hashmap_tIj9hb_pair_tIjiELb0EE.exit

_ZN2OT3OS219calc_avg_char_widthERK12hb_hashmap_tIj9hb_pair_tIjiELb0EE.exit: ; preds = %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EppEv.exit.i.us.i.i.i.i.i, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EsLj2EEEfEEbRT_OT0_20hb_serialize_error_t.exit201, %._crit_edge.i, %bb.ag
  %i.pu = phi i32 [ %i.pt, %bb.ag ], [ 0, %._crit_edge.i ], [ 0, %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EsLj2EEEfEEbRT_OT0_20hb_serialize_error_t.exit201 ], [ 0, %_ZNR9hb_iter_tI10hb_array_tIN12hb_hashmap_tIj9hb_pair_tIjiELb0EE6item_tEERS5_EppEv.exit.i.us.i.i.i.i.i ] ; 2 uses
  %i.pv = load ptr, ptr %i.a, align 8, !tbaa !166
  %i.pw = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.px = trunc i32 %i.pu to i16                  ; 2 uses
  %i.py = tail call i16 @llvm.bswap.i16(i16 %i.px)
  store i16 %i.py, ptr %i.pw, align 1, !tbaa !236
  %i.pz = sext i16 %i.px to i64
  %i.qa = zext i32 %i.pu to i64
  %.not.i.i204 = icmp eq i64 %i.pz, %i.qa
  br i1 %.not.i.i204, label %_ZN2OT3OS219calc_avg_char_widthERK12hb_hashmap_tIj9hb_pair_tIjiELb0EE.exit..thread_crit_edge, label %bb.ah

_ZN2OT3OS219calc_avg_char_widthERK12hb_hashmap_tIj9hb_pair_tIjiELb0EE.exit..thread_crit_edge: ; preds = %_ZN2OT3OS219calc_avg_char_widthERK12hb_hashmap_tIj9hb_pair_tIjiELb0EE.exit
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !165
  br label %.thread

bb.ah:                                            ; preds = %_ZN2OT3OS219calc_avg_char_widthERK12hb_hashmap_tIj9hb_pair_tIjiELb0EE.exit
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pv, i64 44 ; 2 uses
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !148
  %i.qd = or i32 %i.qc, 8
  store i32 %i.qd, ptr %i.qb, align 4, !tbaa !148
  br label %bb.ax

.thread:                                          ; preds = %_ZN2OT3OS219calc_avg_char_widthERK12hb_hashmap_tIj9hb_pair_tIjiELb0EE.exit..thread_crit_edge, %bb.e
  %i.qe = phi ptr [ %.pre, %_ZN2OT3OS219calc_avg_char_widthERK12hb_hashmap_tIj9hb_pair_tIjiELb0EE.exit..thread_crit_edge ], [ %i.s, %bb.e ] ; 8 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 2408
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !261 ; 8 uses
  %.not.i207 = icmp eq ptr %i.qg, null
  br i1 %.not.i207, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread, label %bb.ai

bb.ai:                                            ; preds = %.thread
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 2400
  %i.qi = load i32, ptr %i.qh, align 8, !tbaa !694
  %i.qj = urem i32 935988276, %i.qi               ; 2 uses
  %i.qk = zext nneg i32 %i.qj to i64              ; 2 uses
  %i.ql = getelementptr inbounds nuw [32 x i8], ptr %i.qg, i64 %i.qk ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 4
  %i.qn = load i32, ptr %i.qm, align 4            ; 2 uses
  %i.qo = and i32 %i.qn, 2
  %.not15.i.i.i = icmp eq i32 %i.qo, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread.thread, label %.lr.ph.i.i.i209

.lr.ph.i.i.i209:                                  ; preds = %bb.ai
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qe, i64 2396
  %i.qq = load i32, ptr %i.qp, align 4
  %i.qr = load i32, ptr %i.ql, align 4, !tbaa !172
  %i.qs = icmp eq i32 %i.qr, 2003265652
  br i1 %i.qs, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i
  %i.qt = load i32, ptr %i.qz, align 4, !tbaa !172
  %i.qu = icmp eq i32 %i.qt, 2003265652
  br i1 %i.qu, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i, label %.lr.ph.i.i, !llvm.loop !51

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i209, %bb.aj
  %.01016.i20.i.i = phi i32 [ %i.qx, %bb.aj ], [ %i.qj, %.lr.ph.i.i.i209 ]
  %.017.i19.i.i = phi i32 [ %i.qv, %bb.aj ], [ 0, %.lr.ph.i.i.i209 ]
  %i.qv = add i32 %.017.i19.i.i, 1                ; 2 uses
  %i.qw = add i32 %i.qv, %.01016.i20.i.i
  %i.qx = and i32 %i.qw, %i.qq                    ; 2 uses
  %i.qy = zext i32 %i.qx to i64                   ; 2 uses
  %i.qz = getelementptr inbounds nuw [32 x i8], ptr %i.qg, i64 %i.qy ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 4
  %i.rb = load i32, ptr %i.ra, align 4            ; 2 uses
  %i.rc = and i32 %i.rb, 2
  %.not.i.i.i210 = icmp eq i32 %i.rc, 0
  br i1 %.not.i.i.i210, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread.thread, label %bb.aj, !llvm.loop !51

_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i: ; preds = %bb.aj, %.lr.ph.i.i.i209
  %.lcssa17.i.i = phi i32 [ %i.qn, %.lr.ph.i.i.i209 ], [ %i.rb, %bb.aj ]
  %i.rd = phi i64 [ %i.qk, %.lr.ph.i.i.i209 ], [ %i.qy, %bb.aj ]
  %i.re = trunc i32 %.lcssa17.i.i to i1
  br i1 %i.re, label %.cont, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread.thread

.cont:                                            ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i
  %i.rf = getelementptr inbounds nuw [32 x i8], ptr %i.qg, i64 %i.rd
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !695 ; 3 uses
  %i.ri = fcmp ult double %i.rh, 1.000000e+00     ; 2 uses
  %i.rj = fcmp ole double %i.rh, 1.000000e+03     ; 2 uses
  %i.rk = or i1 %i.ri, %i.rj
  %i.rl = xor i1 %i.rj, true
  %brmerge = or i1 %i.ri, %i.rl
  %.mux = select i1 %i.rk, double 1.000000e+00, double 1.000000e+03
  %i.rm = select i1 %brmerge, double %.mux, double %i.rh
  %i.rn = fadd double %i.rm, 5.000000e-01
  %i.ro = tail call noundef double @llvm.floor.f64(double %i.rn)
  %i.rp = fptoui double %i.ro to i32              ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.rr = load i16, ptr %i.rq, align 1, !tbaa !178
  %i.rs = tail call noundef i16 @llvm.bswap.i16(i16 %i.rr)
  %i.rt = zext i16 %i.rs to i32
  %.not134 = icmp eq i32 %i.rt, %i.rp
  br i1 %.not134, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread.thread, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread

_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread: ; preds = %.cont
  %i.ru = trunc i32 %i.rp to i16
  %i.rv = tail call i16 @llvm.bswap.i16(i16 %i.ru)
  store i16 %i.rv, ptr %i.rq, align 1, !tbaa !236
  %.pre306 = load ptr, ptr %i.r, align 8, !tbaa !165 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre306, i64 2408
  %.pre307 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !261 ; 2 uses
  %.not.i212 = icmp eq ptr %.pre307, null
  br i1 %.not.i212, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread.thread

_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread.thread: ; preds = %.lr.ph.i.i, %.cont, %bb.ai, %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread
  %i.rw = phi ptr [ %.pre306, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread ], [ %i.qe, %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i ], [ %i.qe, %bb.ai ], [ %i.qe, %.cont ], [ %i.qe, %.lr.ph.i.i ] ; 6 uses
  %i.rx = phi ptr [ %.pre307, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread ], [ %i.qg, %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i ], [ %i.qg, %bb.ai ], [ %i.qg, %.cont ], [ %i.qg, %.lr.ph.i.i ] ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rw, i64 2400
  %i.rz = load i32, ptr %i.ry, align 8, !tbaa !694
  %i.sa = urem i32 970040296, %i.rz               ; 2 uses
  %i.sb = zext nneg i32 %i.sa to i64              ; 2 uses
  %i.sc = getelementptr inbounds nuw [32 x i8], ptr %i.rx, i64 %i.sb ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 4
  %i.se = load i32, ptr %i.sd, align 4            ; 2 uses
  %i.sf = and i32 %i.se, 2
  %.not15.i.i.i214 = icmp eq i32 %i.sf, 0
  br i1 %.not15.i.i.i214, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread, label %.lr.ph.i.i.i215

.lr.ph.i.i.i215:                                  ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread.thread
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rw, i64 2396
  %i.sh = load i32, ptr %i.sg, align 4
  %i.si = load i32, ptr %i.sc, align 4, !tbaa !172
  %i.sj = icmp eq i32 %i.si, 2003072104
  br i1 %i.sj, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i220, label %.lr.ph.i.i216

bb.ak:                                            ; preds = %.lr.ph.i.i216
  %i.sk = load i32, ptr %i.sq, align 4, !tbaa !172
  %i.sl = icmp eq i32 %i.sk, 2003072104
  br i1 %i.sl, label %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i220, label %.lr.ph.i.i216, !llvm.loop !51

.lr.ph.i.i216:                                    ; preds = %.lr.ph.i.i.i215, %bb.ak
  %.01016.i20.i.i217 = phi i32 [ %i.so, %bb.ak ], [ %i.sa, %.lr.ph.i.i.i215 ]
  %.017.i19.i.i218 = phi i32 [ %i.sm, %bb.ak ], [ 0, %.lr.ph.i.i.i215 ]
  %i.sm = add i32 %.017.i19.i.i218, 1             ; 2 uses
  %i.sn = add i32 %i.sm, %.01016.i20.i.i217
  %i.so = and i32 %i.sn, %i.sh                    ; 2 uses
  %i.sp = zext i32 %i.so to i64                   ; 2 uses
  %i.sq = getelementptr inbounds nuw [32 x i8], ptr %i.rx, i64 %i.sp ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 4
  %i.ss = load i32, ptr %i.sr, align 4            ; 2 uses
  %i.st = and i32 %i.ss, 2
  %.not.i.i.i219 = icmp eq i32 %i.st, 0
  br i1 %.not.i.i.i219, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread, label %bb.ak, !llvm.loop !51

_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i220: ; preds = %bb.ak, %.lr.ph.i.i.i215
  %.lcssa17.i.i221 = phi i32 [ %i.se, %.lr.ph.i.i.i215 ], [ %i.ss, %bb.ak ]
  %i.su = phi i64 [ %i.sb, %.lr.ph.i.i.i215 ], [ %i.sp, %bb.ak ]
  %i.sv = trunc i32 %.lcssa17.i.i221 to i1
  br i1 %i.sv, label %bb.al, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread

bb.al:                                            ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i220
  %i.sw = getelementptr inbounds nuw [32 x i8], ptr %i.rx, i64 %i.su
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  %i.sy = load double, ptr %i.sx, align 8, !tbaa !2979 ; 3 uses
  %i.sz = fptrunc double %i.sy to float           ; 2 uses
  %i.ta = fcmp olt double %i.sy, f0x4048FFFFF0000000
  br i1 %i.ta, label %_ZNK2OT3OS222map_wdth_to_widthclassEf.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.tb = fcmp ogt double %i.sy, f0x4069000010000000
  br i1 %i.tb, label %_ZNK2OT3OS222map_wdth_to_widthclassEf.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.tc = fadd float %i.sz, -5.000000e+01
  %i.td = fdiv float %i.tc, 1.250000e+01          ; 2 uses
  %2 = tail call float @llvm.floor.f32(float %i.td)
  %i.te = tail call float @llvm.ceil.f32(float %i.td)
  %3 = insertelement <2 x float> poison, float %i.te, i64 0
  %4 = insertelement <2 x float> %3, float %2, i64 1
  %5 = fptosi <2 x float> %4 to <2 x i32>         ; 5 uses
  %6 = extractelement <2 x i32> %5, i64 0         ; 3 uses
  %i.tf = icmp slt i32 %6, 7
  br i1 %i.tf, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %7 = extractelement <2 x i32> %5, i64 1         ; 2 uses
  %i.tg = icmp eq i32 %7, %6
  br i1 %i.tg, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.th = sitofp i32 %7 to float
  %i.ti = fadd float %i.th, 1.000000e+00
  br label %_ZNK2OT3OS222map_wdth_to_widthclassEf.exit

bb.aq:                                            ; preds = %bb.an
  switch i32 %6, label %bb.as [
    i32 7, label %bb.at
    i32 8, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq
  %8 = extractelement <2 x i32> %5, i64 1
  %i.tj = icmp eq i32 %8, 8
  br i1 %i.tj, label %_ZNK2OT3OS222map_wdth_to_widthclassEf.exit, label %bb.at

bb.as:                                            ; preds = %bb.aq
  %.scalar = bitcast <2 x i32> %5 to i64
  %i.tk = icmp eq i64 %.scalar, 51539607564
  br i1 %i.tk, label %_ZNK2OT3OS222map_wdth_to_widthclassEf.exit, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ao
  %9 = phi <2 x i32> [ %5, %bb.ao ], [ <i32 8, i32 6>, %bb.ar ], [ <i32 8, i32 6>, %bb.aq ], [ <i32 12, i32 8>, %bb.as ]
  %10 = freeze <2 x i32> %9                       ; 2 uses
  %i.tl = sitofp <2 x i32> %10 to <2 x float>     ; 2 uses
  %i.tm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tl, <2 x float> splat (float 1.250000e+01), <2 x float> splat (float 5.000000e+01)) ; 2 uses
  %i.tn = extractelement <2 x float> %i.tm, i64 1 ; 2 uses
  %i.to = fsub float %i.sz, %i.tn
  %i.tp = extractelement <2 x float> %i.tm, i64 0
  %i.tq = fsub float %i.tp, %i.tn
  %i.tr = fdiv float %i.to, %i.tq
  %i.ts = extractelement <2 x float> %i.tl, i64 1
  %i.tt = fadd float %i.tr, %i.ts                 ; 2 uses
  %11 = extractelement <2 x i32> %10, i64 1
  %i.tu = icmp slt i32 %11, 7
  br i1 %i.tu, label %bb.au, label %_ZNK2OT3OS222map_wdth_to_widthclassEf.exit

bb.au:                                            ; preds = %bb.at
  %i.tv = fadd float %i.tt, 1.000000e+00
  br label %_ZNK2OT3OS222map_wdth_to_widthclassEf.exit

_ZNK2OT3OS222map_wdth_to_widthclassEf.exit:       ; preds = %bb.al, %bb.am, %bb.ap, %bb.ar, %bb.as, %bb.at, %bb.au
  %.1.i = phi float [ 9.000000e+00, %bb.am ], [ 1.000000e+00, %bb.al ], [ %i.ti, %bb.ap ], [ 9.000000e+00, %bb.as ], [ 8.000000e+00, %bb.ar ], [ %i.tv, %bb.au ], [ %i.tt, %bb.at ]
  %i.tw = fadd float %.1.i, 5.000000e-01
  %i.tx = tail call noundef float @llvm.floor.f32(float %i.tw)
  %i.ty = fptoui float %i.tx to i32               ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.l, i64 6 ; 2 uses
  %i.ua = load i16, ptr %i.tz, align 1, !tbaa !178
  %i.ub = tail call noundef i16 @llvm.bswap.i16(i16 %i.ua)
  %i.uc = zext i16 %i.ub to i32
  %.not135 = icmp eq i32 %i.uc, %i.ty
  br i1 %.not135, label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread, label %bb.av

bb.av:                                            ; preds = %_ZNK2OT3OS222map_wdth_to_widthclassEf.exit
  %i.ud = trunc i32 %i.ty to i16
  %i.ue = tail call i16 @llvm.bswap.i16(i16 %i.ud)
  store i16 %i.ue, ptr %i.tz, align 1, !tbaa !236
  %.pre308 = load ptr, ptr %i.r, align 8, !tbaa !165
  br label %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread

_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread: ; preds = %.lr.ph.i.i216, %.thread, %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i220, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread.thread, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread, %_ZNK2OT3OS222map_wdth_to_widthclassEf.exit, %bb.av
  %i.uf = phi ptr [ %i.qe, %.thread ], [ %i.rw, %_ZNK12hb_hashmap_tIj6TripleLb0EE10fetch_itemERKjj.exit.i.i220 ], [ %i.rw, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread.thread ], [ %.pre306, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit.thread ], [ %i.rw, %_ZNK2OT3OS222map_wdth_to_widthclassEf.exit ], [ %.pre308, %bb.av ], [ %i.rw, %.lr.ph.i.i216 ]
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 3076
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !172
  %.sroa.speculated230 = tail call i32 @llvm.umin.i32(i32 %i.uh, i32 65535)
  %i.ui = trunc nuw i32 %.sroa.speculated230 to i16
  %i.uj = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.uk = tail call i16 @llvm.bswap.i16(i16 %i.ui)
  store i16 %i.uk, ptr %i.uj, align 1, !tbaa !236
  %i.ul = load ptr, ptr %i.r, align 8, !tbaa !165
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 3080
  %i.un = load i32, ptr %i.um, align 4, !tbaa !172
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.un, i32 65535)
  %i.uo = trunc nuw i32 %.sroa.speculated to i16
  %i.up = getelementptr inbounds nuw i8, ptr %i.l, i64 66
  %i.uq = tail call i16 @llvm.bswap.i16(i16 %i.uo)
  store i16 %i.uq, ptr %i.up, align 1, !tbaa !236
  %i.ur = load ptr, ptr %i.r, align 8, !tbaa !165 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 20
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !271
  %i.uu = and i32 %i.ut, 256
  %.not136 = icmp eq i32 %i.uu, 0
  br i1 %.not136, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ur, i64 104
  %i.uw = getelementptr inbounds nuw i8, ptr %i.l, i64 42
  tail call void @_ZNK2OT3OS222_update_unicode_rangesEPK8hb_set_tPNS_7NumTypeILb1EjLj4EEE(ptr noundef nonnull align 1 dereferenceable(100) %0, ptr noundef nonnull %i.uv, ptr noundef nonnull %i.uw)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread, %bb.ah, %_ZNK2OT3OS28get_sizeEv.exit.i, %.critedge.i.i, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT3OS2EEEPT_mb.exit.i
  %.2 = phi i1 [ false, %bb.ah ], [ false, %_ZNK2OT3OS28get_sizeEv.exit.i ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT3OS2EEEPT_mb.exit.i ], [ false, %.critedge.i.i ], [ true, %bb.aw ], [ true, %_ZNK12hb_hashmap_tIj6TripleLb0EE3hasIS0_EEbRKjPPT_.exit223.thread ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2OT3OS222_update_unicode_rangesEPK8hb_set_tPNS_7NumTypeILb1EjLj4EEE(ptr noundef nonnull align 1 dereferenceable(100) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %3 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 3 uses
  %4 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 5 uses
  %5 = alloca [4 x %"struct.OT::NumType.224"], align 16 ; 6 uses
  %6 = alloca %"struct.hb_bit_set_invertible_t::iter_t", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, i8 0, i64 16, i1 false), !tbaa !236
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(49) %i.c, i1 noundef zeroext true)
  %.fca.0.load.i.i.i = load ptr, ptr %4, align 8
  %.fca.1.gep.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.fca.1.load.i.i.i = load i64, ptr %.fca.1.gep.i.i.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store ptr %.fca.0.load.i.i.i, ptr %6, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store i64 %.fca.1.load.i.i.i, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN23hb_bit_set_invertible_t6iter_tC2ERKS_b(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(49) %i.c, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.e = trunc i64 %.fca.1.load.i.i.i to i32      ; 2 uses
  %.not29 = icmp eq i32 %i.e, -1
  br i1 %.not29, label %._crit_edge, label %.lr.ph.i.i.i.i.i.preheader.lr.ph

.lr.ph.i.i.i.i.i.preheader.lr.ph:                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.lr.ph.i.i.i.i.i.preheader.lr.ph, %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit
  %i.h = phi i32 [ %i.e, %.lr.ph.i.i.i.i.i.preheader.lr.ph ], [ %i.ba, %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit ] ; 8 uses
  br label %.lr.ph.i.i.i.i.i

._crit_edge.loopexit:                             ; preds = %_ZNR9hb_iter_tIN23hb_bit_set_invertible_t6iter_tEjEppEv.exit
  %i.i = load <4 x i32>, ptr %5, align 16, !tbaa !176
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.j = phi <4 x i32> [ %i.i, %._crit_edge.loopexit ], [ zeroinitializer, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.k = load <4 x i32>, ptr %2, align 1, !tbaa !176
  %i.l = and <4 x i32> %i.j, %i.k
  store <4 x i32> %i.l, ptr %2, align 1, !tbaa !236
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.0203.i.i.i.i.i = phi i32 [ %.2.i.i.i.i.i, %bb.e ], [ 168, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0212.i.i.i.i.i = phi i32 [ %.223.i.i.i.i.i, %bb.e ], [ 0, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %i.m = add i32 %.0212.i.i.i.i.i, %.0203.i.i.i.i.i
  %i.n = lshr i32 %i.m, 1                         ; 3 uses
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = mul nuw nsw i64 %i.o, 12
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN2OTL22_hb_os2_unicode_rangesE, i64 %i.p ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !2982
  %i.s = icmp ult i32 %i.h, %i.r
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = add nsw i32 %i.n, -1
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %.not.i.i.not.i.i.i.i.i = icmp ugt i32 %i.h, %i.v
  br i1 %.not.i.i.not.i.i.i.i.i, label %bb.d, label %_ZN2OTL32_hb_ot_os2_get_unicode_range_bitEj.exit

bb.d:                                             ; preds = %bb.c
  %i.w = add nuw nsw i32 %i.n, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.223.i.i.i.i.i = phi i32 [ %i.w, %bb.d ], [ %.0212.i.i.i.i.i, %bb.b ] ; 2 uses
  %.2.i.i.i.i.i = phi i32 [ %.0203.i.i.i.i.i, %bb.d ], [ %i.t, %bb.b ] ; 2 uses
  %.not.not.i.i.i.i.i = icmp sgt i32 %.223.i.i.i.i.i, %.2.i.i.i.i.i
  br i1 %.not.not.i.i.i.i.i, label %_ZN2OTL32_hb_ot_os2_get_unicode_range_bitEj.exit.thread, label %.lr.ph.i.i.i.i.i, !llvm.loop !2980

_ZN2OTL32_hb_ot_os2_get_unicode_range_bitEj.exit: ; preds = %bb.c
  %i.x = getelementptr inbounds nuw [12 x i8], ptr @_ZN2OTL22_hb_os2_unicode_rangesE, i64 %i.o
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !2983 ; 2 uses
  %i.aa = lshr i32 %i.z, 5
  %i.ab = and i32 %i.z, 31
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = zext nneg i32 %i.aa to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !176
  %i.ag = call i32 @llvm.bswap.i32(i32 %i.ac)
  %i.ah = or i32 %i.ag, %i.af
  store i32 %i.ah, ptr %i.ae, align 4, !tbaa !236
  br label %_ZN2OTL32_hb_ot_os2_get_unicode_range_bitEj.exit.thread

_ZN2OTL32_hb_ot_os2_get_unicode_range_bitEj.exit.thread: ; preds = %bb.e, %_ZN2OTL32_hb_ot_os2_get_unicode_range_bitEj.exit
  %i.ai = add i32 %i.h, -65536
  %or.cond = icmp ult i32 %i.ai, 1048577
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN2OTL32_hb_ot_os2_get_unicode_range_bitEj.exit.thread
  %i.aj = load i32, ptr %i.f, align 4, !tbaa !176
  %i.ak = or i32 %i.aj, 2
  store i32 %i.ak, ptr %i.f, align 4, !tbaa !236
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN2OTL32_hb_ot_os2_get_unicode_range_bitEj.exit.thread
  %i.al = load ptr, ptr %6, align 8, !tbaa !406   ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load i8, ptr %i.am, align 8, !tbaa !201, !range !167, !noundef !191
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.i, label %bb.h, !prof !72

bb.h:                                             ; preds = %bb.g
  %i.ap = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.al, ptr noundef nonnull %i.d) ; 0 uses
  br label %_ZNK23hb_bit_set_invertible_t4nextEPj.exit.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 %i.h, ptr %i.a, align 4, !tbaa !172
  %i.aq = icmp eq i32 %i.h, -2
  br i1 %i.aq, label %bb.j, label %bb.k, !prof !72

bb.j:                                             ; preds = %bb.i
  store i32 -1, ptr %i.d, align 8, !tbaa !172
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 %i.h, ptr %i.b, align 4, !tbaa !172
  %i.ar = call noundef zeroext i1 @_ZNK12hb_bit_set_t4nextEPj(ptr noundef nonnull align 8 dereferenceable(49) %i.al, ptr noundef nonnull %i.b) ; 0 uses
  %i.as = add nuw i32 %i.h, 1                     ; 2 uses
  %i.at = load i32, ptr %i.b, align 4, !tbaa !172
  %i.au = icmp ult i32 %i.as, %i.at
  br i1 %i.au, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
end_hunk_0
