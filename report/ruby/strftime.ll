Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/strftime?download=true
inline.NumInlined: 250
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@rb_strftime_with_timespec:bb.a
  %i.eey = sub i64 %i.eeq, %i.een                 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %.27, i8 noundef %spec.store.select41, i64 noundef %i.eey, i1 noundef false) #11
  %i.eez = getelementptr i8, ptr %.27, i64 %i.eey
  br label %buffer_size_check.exit2793

bb.pr:                                            ; preds = %format_value.exit2785, %bb.pm
  %i.efa = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2126 = icmp ult ptr %i.bl, %i.efa
  br i1 %.not2126, label %bb.ps, label %._crit_edge3686

._crit_edge3686:                                  ; preds = %bb.pr
  %.pre3796 = ptrtoint ptr %i.bl to i64
  br label %bb.pt

bb.ps:                                            ; preds = %bb.pr
  %i.efb = ptrtoint ptr %i.efa to i64
  %i.efc = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.efd = xor i64 %i.efc, -1
  %i.efe = add i64 %i.efb, %i.efd
  %.not2127 = icmp slt i64 %i.een, %i.efe
  br i1 %.not2127, label %buffer_size_check.exit2793, label %bb.pt

bb.pt:                                            ; preds = %._crit_edge3686, %bb.ps
  %.pre-phi3797 = phi i64 [ %.pre3796, %._crit_edge3686 ], [ %i.efc, %bb.ps ]
  %i.eff = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.efg = ptrtoint ptr %i.eff to i64
  %i.efh = sub i64 %.pre-phi3797, %i.efg          ; 5 uses
  %i.efi = shl i64 %i.een, 1
  %i.efj = add i64 %i.efh, %i.efi
  %i.efk = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.pu

bb.pu:                                            ; preds = %bb.pu, %bb.pt
  %.0.i2786 = phi i64 [ %i.efk, %bb.pt ], [ %i.efm, %bb.pu ] ; 6 uses
  %i.efl = icmp ult i64 %.0.i2786, %i.efj
  %i.efm = shl i64 %.0.i2786, 1
  br i1 %i.efl, label %bb.pu, label %bb.pv, !llvm.loop !0

bb.pv:                                            ; preds = %bb.pu
  %i.efn = icmp ult i64 %.0.i2786, %i.efh
  %i.efo = icmp ugt i64 %.0.i2786, %9
  %or.cond.i2787 = or i1 %i.efn, %i.efo
  br i1 %or.cond.i2787, label %resize_buffer.exit2791.thread, label %bb.pw

bb.pw:                                            ; preds = %bb.pv
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.efh) #11
  %i.efp = sub nuw i64 %.0.i2786, %i.efh
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.efp) #11
  %i.efq = load i64, ptr %i.h, align 8, !tbaa !14
  %i.efr = and i64 %i.efq, 8192
  %.not.i.i2788 = icmp eq i64 %i.efr, 0
  br i1 %.not.i.i2788, label %resize_buffer.exit2791, label %bb.px

bb.px:                                            ; preds = %bb.pw
  %i.efs = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2791

resize_buffer.exit2791:                           ; preds = %bb.pw, %bb.px
  %i.eft = phi ptr [ %i.efs, %bb.px ], [ %i.m, %bb.pw ] ; 3 uses
  %i.efu = getelementptr i8, ptr %i.eft, i64 %.0.i2786
  store ptr %i.efu, ptr %i.b, align 8, !tbaa !18
  store ptr %i.eft, ptr %i.a, align 8, !tbaa !18
  %i.efv = getelementptr i8, ptr %i.eft, i64 %i.efh ; 2 uses
  %.not.i2792 = icmp eq ptr %i.efv, null
  br i1 %.not.i2792, label %resize_buffer.exit2791.thread, label %buffer_size_check.exit2793

resize_buffer.exit2791.thread:                    ; preds = %bb.pv, %resize_buffer.exit2791
  %i.efw = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.efw) #13
  unreachable

buffer_size_check.exit2793:                       ; preds = %resize_buffer.exit2791, %bb.ps, %bb.pq
  %.28 = phi ptr [ %i.eez, %bb.pq ], [ %i.bl, %bb.ps ], [ %i.efv, %resize_buffer.exit2791 ]
  %i.efx = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.efy = ptrtoint ptr %.28 to i64
  %i.efz = ptrtoint ptr %i.efx to i64
  %i.ega = sub i64 %i.efy, %i.efz
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.ega) #11
  %i.egb = call i64 @rb_str_append(i64 noundef %0, i64 noundef %i.eek) #11 ; 0 uses
  %i.egc = load i64, ptr %i.h, align 8, !tbaa !14
  %i.egd = and i64 %i.egc, 8192
  %.not.i2794 = icmp eq i64 %i.egd, 0
  br i1 %.not.i2794, label %RSTRING_PTR.exit2795, label %bb.py

bb.py:                                            ; preds = %buffer_size_check.exit2793
  %i.ege = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2795

RSTRING_PTR.exit2795:                             ; preds = %buffer_size_check.exit2793, %bb.py
  %i.egf = phi ptr [ %i.ege, %bb.py ], [ %i.m, %buffer_size_check.exit2793 ] ; 3 uses
  %i.egg = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.egf, ptr %i.a, align 8, !tbaa !18
  %i.egh = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.egi = getelementptr i8, ptr %i.egf, i64 %i.egh
  store ptr %i.egi, ptr %i.b, align 8, !tbaa !18
  %i.egj = getelementptr i8, ptr %i.egf, i64 %i.egg
  br label %case_conv.exit2868

bb.pz:                                            ; preds = %bb.pc
  %i.egk = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.01898, i64 noundef 37, i32 noundef 1, i64 noundef 201) #11
  %i.egl = ashr i64 %i.egk, 1
  %i.egm = and i32 %.019203305, 1
  %.not2118 = icmp eq i32 %i.egm, 0
  %i.egn = icmp slt i32 %.019283304, 1
  %i.ego = select i1 %i.egn, i32 2, i32 %.019283304
  %i.egp = select i1 %.not2118, i32 %i.ego, i32 1 ; 2 uses
  %i.egq = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.egr = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.egs = ptrtoint ptr %i.egq to i64
  %i.egt = sub i64 %i.egr, %i.egs                 ; 6 uses
  %i.egu = load ptr, ptr %i.b, align 8, !tbaa !18 ; 2 uses
  %.not2119 = icmp ult ptr %i.bl, %i.egu
  %i.egv = sext i32 %i.egp to i64                 ; 2 uses
  br i1 %.not2119, label %bb.qa, label %._crit_edge3685

bb.qa:                                            ; preds = %bb.pz
  %i.egw = ptrtoint ptr %i.egu to i64
  %i.egx = xor i64 %i.egr, -1
  %i.egy = add i64 %i.egw, %i.egx
  %.not2120 = icmp sgt i64 %i.egy, %i.egv
  br i1 %.not2120, label %buffer_size_check.exit2803, label %._crit_edge3685

._crit_edge3685:                                  ; preds = %bb.pz, %bb.qa
  %i.egz = shl nsw i64 %i.egv, 1
  %i.eha = add i64 %i.egt, %i.egz
  %i.ehb = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qb, %._crit_edge3685
  %.0.i2796 = phi i64 [ %i.ehb, %._crit_edge3685 ], [ %i.ehd, %bb.qb ] ; 6 uses
  %i.ehc = icmp ult i64 %.0.i2796, %i.eha
  %i.ehd = shl i64 %.0.i2796, 1
  br i1 %i.ehc, label %bb.qb, label %bb.qc, !llvm.loop !0

bb.qc:                                            ; preds = %bb.qb
  %i.ehe = icmp ult i64 %.0.i2796, %i.egt
  %i.ehf = icmp ugt i64 %.0.i2796, %9
  %or.cond.i2797 = or i1 %i.ehe, %i.ehf
  br i1 %or.cond.i2797, label %resize_buffer.exit2801.thread, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.egt) #11
  %i.ehg = sub nuw i64 %.0.i2796, %i.egt
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.ehg) #11
  %i.ehh = load i64, ptr %i.h, align 8, !tbaa !14
  %i.ehi = and i64 %i.ehh, 8192
  %.not.i.i2798 = icmp eq i64 %i.ehi, 0
  br i1 %.not.i.i2798, label %resize_buffer.exit2801, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.ehj = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2801

resize_buffer.exit2801:                           ; preds = %bb.qd, %bb.qe
  %i.ehk = phi ptr [ %i.ehj, %bb.qe ], [ %i.m, %bb.qd ] ; 3 uses
  %i.ehl = getelementptr i8, ptr %i.ehk, i64 %.0.i2796
  store ptr %i.ehl, ptr %i.b, align 8, !tbaa !18
  store ptr %i.ehk, ptr %i.a, align 8, !tbaa !18
  %i.ehm = getelementptr i8, ptr %i.ehk, i64 %i.egt
  %.not.i2802 = icmp eq ptr %i.ehm, null
  br i1 %.not.i2802, label %resize_buffer.exit2801.thread, label %buffer_size_check.exit2803

resize_buffer.exit2801.thread:                    ; preds = %bb.qc, %resize_buffer.exit2801
  %i.ehn = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.ehn) #13
  unreachable

buffer_size_check.exit2803:                       ; preds = %resize_buffer.exit2801, %bb.qa
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.egt) #11
  %i.eho = icmp eq i8 %.019153307, 48
  %.not2121 = icmp eq i8 %.019153307, 0
  %i.ehp = or i1 %i.eho, %.not2121
  %i.ehq = select i1 %i.ehp, i64 5, i64 0
  %i.ehr = getelementptr i8, ptr @.str.3, i64 %i.ehq
  %i.ehs = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.ehr, i32 noundef %i.egp, i64 noundef %i.egl) #11 ; 0 uses
  %i.eht = load i64, ptr %i.h, align 8, !tbaa !14
  %i.ehu = and i64 %i.eht, 8192
  %.not.i2804 = icmp eq i64 %i.ehu, 0
  br i1 %.not.i2804, label %RSTRING_PTR.exit2805, label %bb.qf

bb.qf:                                            ; preds = %buffer_size_check.exit2803
  %i.ehv = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2805

RSTRING_PTR.exit2805:                             ; preds = %buffer_size_check.exit2803, %bb.qf
  %i.ehw = phi ptr [ %i.ehv, %bb.qf ], [ %i.m, %buffer_size_check.exit2803 ] ; 3 uses
  %i.ehx = load i64, ptr %i.i, align 8, !tbaa !89
  store ptr %i.ehw, ptr %i.a, align 8, !tbaa !18
  %i.ehy = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.ehz = getelementptr i8, ptr %i.ehw, i64 %i.ehy
  store ptr %i.ehz, ptr %i.b, align 8, !tbaa !18
  %i.eia = getelementptr i8, ptr %i.ehw, i64 %i.ehx
  br label %case_conv.exit2868

.loopexit2997.loopexit:                           ; preds = %.lr.ph
  br label %.loopexit2997

.loopexit2997:                                    ; preds = %.lr.ph, %.loopexit2997.loopexit
  %.01933 = phi i32 [ 3, %.loopexit2997.loopexit ], [ 9, %.lr.ph ]
  %i.eib = icmp slt i32 %.019283304, 1
  %spec.select2343 = select i1 %i.eib, i32 %.01933, i32 %.019283304 ; 14 uses
  %i.eic = load ptr, ptr %i.b, align 8, !tbaa !18 ; 3 uses
  %.not2113 = icmp ult ptr %i.bl, %i.eic
  %i.eid = zext nneg i32 %spec.select2343 to i64  ; 2 uses
  br i1 %.not2113, label %bb.qg, label %._crit_edge3684

._crit_edge3684:                                  ; preds = %.loopexit2997
  %.pre3802 = ptrtoint ptr %i.bl to i64
  br label %bb.qh

bb.qg:                                            ; preds = %.loopexit2997
  %i.eie = ptrtoint ptr %i.eic to i64
  %i.eif = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.eig = xor i64 %i.eif, -1
  %i.eih = add i64 %i.eie, %i.eig
  %.not2114 = icmp sgt i64 %i.eih, %i.eid
  br i1 %.not2114, label %buffer_size_check.exit2813, label %bb.qh

bb.qh:                                            ; preds = %._crit_edge3684, %bb.qg
  %.pre-phi3803 = phi i64 [ %.pre3802, %._crit_edge3684 ], [ %i.eif, %bb.qg ]
  %i.eii = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.eij = ptrtoint ptr %i.eii to i64
  %i.eik = sub i64 %.pre-phi3803, %i.eij          ; 5 uses
  %i.eil = shl nuw nsw i64 %i.eid, 1
  %i.eim = add i64 %i.eik, %i.eil
  %i.ein = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.qi

bb.qi:                                            ; preds = %bb.qi, %bb.qh
  %.0.i2806 = phi i64 [ %i.ein, %bb.qh ], [ %i.eip, %bb.qi ] ; 6 uses
  %i.eio = icmp ult i64 %.0.i2806, %i.eim
  %i.eip = shl i64 %.0.i2806, 1
  br i1 %i.eio, label %bb.qi, label %bb.qj, !llvm.loop !0

bb.qj:                                            ; preds = %bb.qi
  %i.eiq = icmp ult i64 %.0.i2806, %i.eik
  %i.eir = icmp ugt i64 %.0.i2806, %9
  %or.cond.i2807 = or i1 %i.eiq, %i.eir
  br i1 %or.cond.i2807, label %resize_buffer.exit2811.thread, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.eik) #11
  %i.eis = sub nuw i64 %.0.i2806, %i.eik
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.eis) #11
  %i.eit = load i64, ptr %i.h, align 8, !tbaa !14
  %i.eiu = and i64 %i.eit, 8192
  %.not.i.i2808 = icmp eq i64 %i.eiu, 0
  br i1 %.not.i.i2808, label %resize_buffer.exit2811, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.eiv = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %resize_buffer.exit2811

resize_buffer.exit2811:                           ; preds = %bb.qk, %bb.ql
  %i.eiw = phi ptr [ %i.eiv, %bb.ql ], [ %i.m, %bb.qk ] ; 3 uses
  %i.eix = getelementptr i8, ptr %i.eiw, i64 %.0.i2806 ; 2 uses
  store ptr %i.eix, ptr %i.b, align 8, !tbaa !18
  store ptr %i.eiw, ptr %i.a, align 8, !tbaa !18
  %i.eiy = getelementptr i8, ptr %i.eiw, i64 %i.eik ; 2 uses
  %.not.i2812 = icmp eq ptr %i.eiy, null
  br i1 %.not.i2812, label %resize_buffer.exit2811.thread, label %buffer_size_check.exit2813

resize_buffer.exit2811.thread:                    ; preds = %bb.qj, %resize_buffer.exit2811
  %i.eiz = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01901) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.eiz) #13
  unreachable

buffer_size_check.exit2813:                       ; preds = %resize_buffer.exit2811, %bb.qg
  %i.eja = phi ptr [ %i.eic, %bb.qg ], [ %i.eix, %resize_buffer.exit2811 ] ; 2 uses
  %.31 = phi ptr [ %i.bl, %bb.qg ], [ %i.eiy, %resize_buffer.exit2811 ] ; 11 uses
  br i1 %.not2115, label %bb.qp, label %bb.qm

bb.qm:                                            ; preds = %buffer_size_check.exit2813
  %i.ejb = load i64, ptr %i.ae, align 8, !tbaa !99 ; 4 uses
  %i.ejc = icmp sgt i32 %spec.select2343, 9
  br i1 %i.ejc, label %bb.qn, label %.preheader2993

.preheader2993:                                   ; preds = %bb.qm
  %12 = sub i32 9, %spec.select2343               ; 3 uses
  %.not3356 = icmp eq i32 %spec.select2343, 9
  br i1 %.not3356, label %._crit_edge, label %.lr.ph3331.preheader

.lr.ph3331.preheader:                             ; preds = %.preheader2993
  %xtraiter = and i32 %12, 1
  %13 = icmp eq i32 %spec.select2343, 8
  br i1 %13, label %.lr.ph3331.epil.preheader, label %.lr.ph3331.preheader.new

.lr.ph3331.preheader.new:                         ; preds = %.lr.ph3331.preheader
  %unroll_iter = and i32 %12, -2
  br label %.lr.ph3331

bb.qn:                                            ; preds = %bb.qm
  %i.ejd = ptrtoint ptr %i.eja to i64
  %i.eje = ptrtoint ptr %.31 to i64
  %i.ejf = sub i64 %i.ejd, %i.eje
  %i.ejg = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %.31, i64 noundef %i.ejf, ptr noundef nonnull @.str.19, i64 noundef %i.ejb) #11 ; 0 uses
  %i.ejh = getelementptr i8, ptr %.31, i64 9
  %i.eji = add nsw i32 %spec.select2343, -9
  %i.ejj = zext nneg i32 %i.eji to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ejh, i8 noundef 48, i64 noundef %i.ejj, i1 noundef false) #11
  br label %bb.qo

.lr.ph3331:                                       ; preds = %.lr.ph3331, %.lr.ph3331.preheader.new
  %.018973329 = phi i64 [ %i.ejb, %.lr.ph3331.preheader.new ], [ %i.ejk, %.lr.ph3331 ]
  %niter = phi i32 [ 0, %.lr.ph3331.preheader.new ], [ %niter.next.1, %.lr.ph3331 ]
  %i.ejk = sdiv i64 %.018973329, 100              ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph3331, !llvm.loop !71

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph3331
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph3331.epil.preheader

.lr.ph3331.epil.preheader:                        ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph3331.preheader
  %.018973329.epil.init = phi i64 [ %i.ejb, %.lr.ph3331.preheader ], [ %i.ejk, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod6862 = trunc i32 %12 to i1
  call void @llvm.assume(i1 %lcmp.mod6862)
  %i.ejl = sdiv i64 %.018973329.epil.init, 10
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph3331.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader2993
  %.01897.lcssa = phi i64 [ %i.ejb, %.preheader2993 ], [ %i.ejk, %._crit_edge.loopexit.unr-lcssa ], [ %i.ejl, %.lr.ph3331.epil.preheader ]
  %i.ejm = ptrtoint ptr %i.eja to i64
  %i.ejn = ptrtoint ptr %.31 to i64
  %i.ejo = sub i64 %i.ejm, %i.ejn
  %i.ejp = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %.31, i64 noundef %i.ejo, ptr noundef nonnull @.str.20, i32 noundef %spec.select2343, i64 noundef %.01897.lcssa) #11 ; 0 uses
  br label %bb.qo

bb.qo:                                            ; preds = %._crit_edge, %bb.qn
  %.pn2117 = zext i32 %spec.select2343 to i64
  %.32 = getelementptr i8, ptr %.31, i64 %.pn2117
  br label %case_conv.exit2868

bb.qp:                                            ; preds = %buffer_size_check.exit2813
  %i.ejq = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %6, i64 noundef 37, i32 noundef 1, i64 noundef 3) #11 ; 2 uses
  %i.ejr = icmp sgt i32 %spec.select2343, 8
  br i1 %i.ejr, label %.lr.ph3336, label %.preheader2992

.preheader2992:                                   ; preds = %.lr.ph3336, %bb.qp
  %.01894.lcssa = phi i64 [ %i.ejq, %bb.qp ], [ %i.eju, %.lr.ph3336 ] ; 2 uses
  %.01893.lcssa = phi i32 [ %spec.select2343, %bb.qp ], [ %i.ejv, %.lr.ph3336 ] ; 4 uses
  %i.ejs = icmp sgt i32 %.01893.lcssa, 0
  br i1 %i.ejs, label %.lr.ph3341.preheader, label %._crit_edge3342.thread

.lr.ph3341.preheader:                             ; preds = %.preheader2992
  %xtraiter6863 = and i32 %.01893.lcssa, 7        ; 3 uses
  %i.ejt = icmp ult i32 %.01893.lcssa, 8
  br i1 %i.ejt, label %.lr.ph3341.epil.preheader, label %.lr.ph3341.preheader.new

.lr.ph3341.preheader.new:                         ; preds = %.lr.ph3341.preheader
  %unroll_iter6867 = and i32 %.01893.lcssa, 2147483640
  br label %.lr.ph3341

.lr.ph3336:                                       ; preds = %bb.qp, %.lr.ph3336
  %.018933334 = phi i32 [ %i.ejv, %.lr.ph3336 ], [ %spec.select2343, %bb.qp ] ; 2 uses
  %.018943333 = phi i64 [ %i.eju, %.lr.ph3336 ], [ %i.ejq, %bb.qp ]
  %i.eju = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.018943333, i64 noundef 42, i32 noundef 1, i64 noundef 2000000001) #11 ; 2 uses
  %i.ejv = add nsw i32 %.018933334, -9            ; 2 uses
  %i.ejw = icmp samesign ugt i32 %.018933334, 17
  br i1 %i.ejw, label %.lr.ph3336, label %.preheader2992, !llvm.loop !72

.lr.ph3341:                                       ; preds = %.lr.ph3341, %.lr.ph3341.preheader.new
  %.018923340 = phi i64 [ 1, %.lr.ph3341.preheader.new ], [ %i.ejx, %.lr.ph3341 ] ; 2 uses
  %niter6868 = phi i32 [ 0, %.lr.ph3341.preheader.new ], [ %niter6868.next.7, %.lr.ph3341 ]
  %i.ejx = mul i64 %.018923340, 100000000         ; 2 uses
  %niter6868.next.7 = add nuw nsw i32 %niter6868, 8 ; 2 uses
  %niter6868.ncmp.7.not = icmp eq i32 %niter6868.next.7, %unroll_iter6867
  br i1 %niter6868.ncmp.7.not, label %._crit_edge3342.unr-lcssa, label %.lr.ph3341, !llvm.loop !73

._crit_edge3342.unr-lcssa:                        ; preds = %.lr.ph3341
  %i.ejy = mul i64 %.018923340, 10000000
  %lcmp.mod6864.not = icmp eq i32 %xtraiter6863, 0
  br i1 %lcmp.mod6864.not, label %._crit_edge3342, label %.lr.ph3341.epil.preheader

.lr.ph3341.epil.preheader:                        ; preds = %._crit_edge3342.unr-lcssa, %.lr.ph3341.preheader
  %.018923340.epil.init = phi i64 [ 1, %.lr.ph3341.preheader ], [ %i.ejx, %._crit_edge3342.unr-lcssa ]
  %lcmp.mod6866 = icmp ne i32 %xtraiter6863, 0
  call void @llvm.assume(i1 %lcmp.mod6866)
  br label %.lr.ph3341.epil

.lr.ph3341.epil:                                  ; preds = %.lr.ph3341.epil, %.lr.ph3341.epil.preheader
  %.018923340.epil = phi i64 [ %i.ejz, %.lr.ph3341.epil ], [ %.018923340.epil.init, %.lr.ph3341.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph3341.epil ], [ 0, %.lr.ph3341.epil.preheader ]
  %i.ejz = mul i64 %.018923340.epil, 10
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter6863
  br i1 %epil.iter.cmp.not, label %._crit_edge3342, label %.lr.ph3341.epil, !llvm.loop !74

._crit_edge3342:                                  ; preds = %.lr.ph3341.epil, %._crit_edge3342.unr-lcssa
  %.018923340.lcssa = phi i64 [ %i.ejy, %._crit_edge3342.unr-lcssa ], [ %.018923340.epil, %.lr.ph3341.epil ]
  %i.eka = mul i64 %.018923340.lcssa, 20
  %i.ekb = or disjoint i64 %i.eka, 1
  %i.ekc = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.01894.lcssa, i64 noundef 42, i32 noundef 1, i64 noundef %i.ekb) #11
  br label %._crit_edge3342.thread

._crit_edge3342.thread:                           ; preds = %.preheader2992, %._crit_edge3342
  %.11895 = phi i64 [ %i.ekc, %._crit_edge3342 ], [ %.01894.lcssa, %.preheader2992 ]
  %.pr.i2814 = load i64, ptr @rb_strftime_with_timespec.rbimpl_id.21, align 8, !tbaa !20 ; 2 uses
  %.not4.i2815 = icmp eq i64 %.pr.i2814, 0
  br i1 %.not4.i2815, label %.lr.ph.i2817, label %rbimpl_intern_const.exit2819

.lr.ph.i2817:                                     ; preds = %._crit_edge3342.thread, %.lr.ph.i2817
  %i.ekd = call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 3) #11 ; 3 uses
  store i64 %i.ekd, ptr @rb_strftime_with_timespec.rbimpl_id.21, align 8, !tbaa !20
  %.not.i2818 = icmp eq i64 %i.ekd, 0
  br i1 %.not.i2818, label %.lr.ph.i2817, label %rbimpl_intern_const.exit2819, !llvm.loop !27

rbimpl_intern_const.exit2819:                     ; preds = %.lr.ph.i2817, %._crit_edge3342.thread
  %.lcssa.i2816 = phi i64 [ %.pr.i2814, %._crit_edge3342.thread ], [ %i.ekd, %.lr.ph.i2817 ]
  %i.eke = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.11895, i64 noundef %.lcssa.i2816, i32 noundef 1, i64 noundef 3) #11 ; 3 uses
  %i.ekf = trunc i64 %i.eke to i1
  br i1 %i.ekf, label %bb.qq, label %bb.qr

bb.qq:                                            ; preds = %rbimpl_intern_const.exit2819
  %i.ekg = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.ekh = ptrtoint ptr %i.ekg to i64
  %i.eki = ptrtoint ptr %.31 to i64
  %i.ekj = sub i64 %i.ekh, %i.eki
  %i.ekk = ashr i64 %i.eke, 1
  %i.ekl = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %.31, i64 noundef %i.ekj, ptr noundef nonnull @.str.20, i32 noundef %spec.select2343, i64 noundef %i.ekk) #11 ; 0 uses
  %i.ekm = zext nneg i32 %spec.select2343 to i64
  br label %bb.qs

bb.qr:                                            ; preds = %rbimpl_intern_const.exit2819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.ekn = zext nneg i32 %spec.select2343 to i64  ; 2 uses
  %i.eko = shl nuw nsw i64 %i.ekn, 1
  %i.ekp = or disjoint i64 %i.eko, 1
  store i64 %i.ekp, ptr %i.d, align 16, !tbaa !20
  store i64 %i.eke, ptr %i.af, align 8, !tbaa !20
  %i.ekq = call i64 @rb_fstring_new(ptr noundef nonnull @.str.22, i64 noundef 4) #11
  %i.ekr = call i64 @rb_str_format(i32 noundef 2, ptr noundef nonnull %i.d, i64 noundef %i.ekq) #11
  store i64 %i.ekr, ptr %i.e, align 8, !tbaa !20
  %i.eks = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.e) #11
  %i.ekt = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.eku = ptrtoint ptr %i.ekt to i64
  %i.ekv = ptrtoint ptr %.31 to i64
  %i.ekw = sub i64 %i.eku, %i.ekv
  %i.ekx = call i64 @strlcpy(ptr noundef %.31, ptr noundef nonnull dereferenceable(1) %i.eks, i64 noundef %i.ekw) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.qs

bb.qs:                                            ; preds = %bb.qr, %bb.qq
  %.pn = phi i64 [ %i.ekm, %bb.qq ], [ %i.ekn, %bb.qr ]
  %.33 = getelementptr i8, ptr %.31, i64 %.pn
  br label %case_conv.exit2868

bb.qt:                                            ; preds = %.lr.ph
  %i.eky = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ekz = ptrtoint ptr %i.bl to i64
  %i.ela = ptrtoint ptr %i.eky to i64
  %i.elb = sub i64 %i.ekz, %i.ela                 ; 3 uses
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.elb) #11
  %i.elc = call fastcc i64 @rb_strftime_with_timespec(i64 noundef %0, ptr noundef nonnull @.str.23, i64 noundef 8, ptr noundef %.01901, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8, i64 noundef %9)
  %.not2109 = icmp eq i64 %i.elc, 0
  br i1 %.not2109, label %.loopexit2998, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  %i.eld = load i64, ptr %i.h, align 8, !tbaa !14
  %i.ele = and i64 %i.eld, 8192
  %.not.i2820 = icmp eq i64 %i.ele, 0
  br i1 %.not.i2820, label %RSTRING_PTR.exit2821, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.elf = load ptr, ptr %i.m, align 8, !tbaa !15
  br label %RSTRING_PTR.exit2821

RSTRING_PTR.exit2821:                             ; preds = %bb.qu, %bb.qv
  %i.elg = phi ptr [ %i.elf, %bb.qv ], [ %i.m, %bb.qu ] ; 4 uses
  %i.elh = load i64, ptr %i.i, align 8, !tbaa !89 ; 2 uses
  %i.eli = sub i64 %i.elh, %i.elb                 ; 25 uses
  store ptr %i.elg, ptr %i.a, align 8, !tbaa !18
  %i.elj = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.elk = getelementptr i8, ptr %i.elg, i64 %i.elj
  store ptr %i.elk, ptr %i.b, align 8, !tbaa !18
  %i.ell = icmp sgt i64 %i.eli, 0
  br i1 %i.ell, label %bb.qw, label %case_conv.exit2831

bb.qw:                                            ; preds = %RSTRING_PTR.exit2821
  %i.elm = getelementptr i8, ptr %i.elg, i64 %i.elb ; 46 uses
  %i.eln = and i32 %.019203305, 12
  switch i32 %i.eln, label %case_conv.exit2831 [
    i32 8, label %iter.check6396
    i32 4, label %iter.check6483
  ]

iter.check6483:                                   ; preds = %bb.qw
  %min.iters.check6422 = icmp ult i64 %i.eli, 4
  br i1 %min.iters.check6422, label %.preheader20.i2822.preheader, label %vector.main.loop.iter.check6423

vector.main.loop.iter.check6423:                  ; preds = %iter.check6483
  %min.iters.check6424 = icmp ult i64 %i.eli, 16
  br i1 %min.iters.check6424, label %vec.epilog.ph6487, label %vector.ph6425

vector.ph6425:                                    ; preds = %vector.main.loop.iter.check6423
  %i.elo = and i64 %i.eli, 12
  %n.vec6426 = and i64 %i.eli, 9223372036854775792 ; 4 uses
  %i.elp = and i64 %i.eli, 15
  %i.elq = getelementptr i8, ptr %i.elm, i64 %n.vec6426
  br label %vector.body6427

vector.body6427:                                  ; preds = %pred.store.continue6477, %vector.ph6425
  %index6428 = phi i64 [ 0, %vector.ph6425 ], [ %index.next6478, %pred.store.continue6477 ] ; 17 uses
  %next.gep6429 = getelementptr i8, ptr %i.elm, i64 %index6428 ; 2 uses
  %i.elr = getelementptr i8, ptr %i.elm, i64 %index6428
  %next.gep6430 = getelementptr i8, ptr %i.elr, i64 1
  %i.els = getelementptr i8, ptr %i.elm, i64 %index6428
  %next.gep6431 = getelementptr i8, ptr %i.els, i64 2
  %i.elt = getelementptr i8, ptr %i.elm, i64 %index6428
  %next.gep6432 = getelementptr i8, ptr %i.elt, i64 3
  %i.elu = getelementptr i8, ptr %i.elm, i64 %index6428
  %next.gep6433 = getelementptr i8, ptr %i.elu, i64 4
  %i.elv = getelementptr i8, ptr %i.elm, i64 %index6428
  %next.gep6434 = getelementptr i8, ptr %i.elv, i64 5
end_hunk_0
