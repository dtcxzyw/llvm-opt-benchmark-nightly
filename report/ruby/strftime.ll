inline.NumInlined: 250
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@rb_strftime_with_timespec:bb.a
  %i.efl = call i64 @rb_str_append(i64 noundef %0, i64 noundef %i.edu) #11 ; 0 uses
  %i.efm = load i64, ptr %i.h, align 8, !tbaa !11
  %i.efn = and i64 %i.efm, 8192
  %.not.i2794 = icmp eq i64 %i.efn, 0
  br i1 %.not.i2794, label %RSTRING_PTR.exit2795, label %bb.py

bb.py:                                            ; preds = %buffer_size_check.exit2793
  %i.efo = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %RSTRING_PTR.exit2795

RSTRING_PTR.exit2795:                             ; preds = %buffer_size_check.exit2793, %bb.py
  %i.efp = phi ptr [ %i.efo, %bb.py ], [ %i.m, %buffer_size_check.exit2793 ] ; 3 uses
  %i.efq = load i64, ptr %i.i, align 8, !tbaa !14
  store ptr %i.efp, ptr %i.a, align 8, !tbaa !17
  %i.efr = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.efs = getelementptr i8, ptr %i.efp, i64 %i.efr
  store ptr %i.efs, ptr %i.b, align 8, !tbaa !17
  %i.eft = getelementptr i8, ptr %i.efp, i64 %i.efq
  br label %case_conv.exit2868

bb.pz:                                            ; preds = %bb.pc
  %i.efu = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.01901, i64 noundef 37, i32 noundef 1, i64 noundef 201) #11
  %i.efv = ashr i64 %i.efu, 1
  %i.efw = and i32 %.019243306, 1
  %.not2118 = icmp eq i32 %i.efw, 0
  %i.efx = icmp slt i32 %.019193307, 1
  %i.efy = select i1 %i.efx, i32 2, i32 %.019193307
  %i.efz = select i1 %.not2118, i32 %i.efy, i32 1 ; 2 uses
  %i.ega = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.egb = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.egc = ptrtoint ptr %i.ega to i64
  %i.egd = sub i64 %i.egb, %i.egc                 ; 6 uses
  %i.ege = load ptr, ptr %i.b, align 8, !tbaa !17 ; 2 uses
  %.not2119 = icmp ult ptr %i.bl, %i.ege
  %i.egf = sext i32 %i.efz to i64                 ; 2 uses
  br i1 %.not2119, label %bb.qa, label %._crit_edge3685

bb.qa:                                            ; preds = %bb.pz
  %i.egg = ptrtoint ptr %i.ege to i64
  %i.egh = xor i64 %i.egb, -1
  %i.egi = add i64 %i.egg, %i.egh
  %.not2120 = icmp sgt i64 %i.egi, %i.egf
  br i1 %.not2120, label %buffer_size_check.exit2803, label %._crit_edge3685

._crit_edge3685:                                  ; preds = %bb.pz, %bb.qa
  %i.egj = shl nsw i64 %i.egf, 1
  %i.egk = add i64 %i.egd, %i.egj
  %i.egl = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qb, %._crit_edge3685
  %.0.i2796 = phi i64 [ %i.egl, %._crit_edge3685 ], [ %i.egn, %bb.qb ] ; 6 uses
  %i.egm = icmp ult i64 %.0.i2796, %i.egk
  %i.egn = shl i64 %.0.i2796, 1
  br i1 %i.egm, label %bb.qb, label %bb.qc, !llvm.loop !20

bb.qc:                                            ; preds = %bb.qb
  %i.ego = icmp ult i64 %.0.i2796, %i.egd
  %i.egp = icmp ugt i64 %.0.i2796, %9
  %or.cond.i2797 = or i1 %i.ego, %i.egp
  br i1 %or.cond.i2797, label %resize_buffer.exit2801.thread, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.egd) #11
  %i.egq = sub nuw i64 %.0.i2796, %i.egd
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.egq) #11
  %i.egr = load i64, ptr %i.h, align 8, !tbaa !11
  %i.egs = and i64 %i.egr, 8192
  %.not.i.i2798 = icmp eq i64 %i.egs, 0
  br i1 %.not.i.i2798, label %resize_buffer.exit2801, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.egt = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %resize_buffer.exit2801

resize_buffer.exit2801:                           ; preds = %bb.qd, %bb.qe
  %i.egu = phi ptr [ %i.egt, %bb.qe ], [ %i.m, %bb.qd ] ; 3 uses
  %i.egv = getelementptr i8, ptr %i.egu, i64 %.0.i2796
  store ptr %i.egv, ptr %i.b, align 8, !tbaa !17
  store ptr %i.egu, ptr %i.a, align 8, !tbaa !17
  %i.egw = getelementptr i8, ptr %i.egu, i64 %i.egd
  %.not.i2802 = icmp eq ptr %i.egw, null
  br i1 %.not.i2802, label %resize_buffer.exit2801.thread, label %buffer_size_check.exit2803

resize_buffer.exit2801.thread:                    ; preds = %bb.qc, %resize_buffer.exit2801
  %i.egx = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01900) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.egx) #13
  unreachable

buffer_size_check.exit2803:                       ; preds = %resize_buffer.exit2801, %bb.qa
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.egd) #11
  %i.egy = icmp eq i8 %.019343304, 48
  %.not2121 = icmp eq i8 %.019343304, 0
  %i.egz = or i1 %i.egy, %.not2121
  %i.eha = select i1 %i.egz, i64 5, i64 0
  %i.ehb = getelementptr i8, ptr @.str.3, i64 %i.eha
  %i.ehc = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef %i.ehb, i32 noundef %i.efz, i64 noundef %i.efv) #11 ; 0 uses
  %i.ehd = load i64, ptr %i.h, align 8, !tbaa !11
  %i.ehe = and i64 %i.ehd, 8192
  %.not.i2804 = icmp eq i64 %i.ehe, 0
  br i1 %.not.i2804, label %RSTRING_PTR.exit2805, label %bb.qf

bb.qf:                                            ; preds = %buffer_size_check.exit2803
  %i.ehf = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %RSTRING_PTR.exit2805

RSTRING_PTR.exit2805:                             ; preds = %buffer_size_check.exit2803, %bb.qf
  %i.ehg = phi ptr [ %i.ehf, %bb.qf ], [ %i.m, %buffer_size_check.exit2803 ] ; 3 uses
  %i.ehh = load i64, ptr %i.i, align 8, !tbaa !14
  store ptr %i.ehg, ptr %i.a, align 8, !tbaa !17
  %i.ehi = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.ehj = getelementptr i8, ptr %i.ehg, i64 %i.ehi
  store ptr %i.ehj, ptr %i.b, align 8, !tbaa !17
  %i.ehk = getelementptr i8, ptr %i.ehg, i64 %i.ehh
  br label %case_conv.exit2868

.loopexit2997.loopexit:                           ; preds = %.lr.ph
  br label %.loopexit2997

.loopexit2997:                                    ; preds = %.lr.ph, %.loopexit2997.loopexit
  %.01918 = phi i32 [ 3, %.loopexit2997.loopexit ], [ 9, %.lr.ph ]
  %i.ehl = icmp slt i32 %.019193307, 1
  %spec.select2343 = select i1 %i.ehl, i32 %.01918, i32 %.019193307 ; 14 uses
  %i.ehm = load ptr, ptr %i.b, align 8, !tbaa !17 ; 3 uses
  %.not2113 = icmp ult ptr %i.bl, %i.ehm
  %i.ehn = zext nneg i32 %spec.select2343 to i64  ; 2 uses
  br i1 %.not2113, label %bb.qg, label %._crit_edge3684

._crit_edge3684:                                  ; preds = %.loopexit2997
  %.pre3802 = ptrtoint ptr %i.bl to i64
  br label %bb.qh

bb.qg:                                            ; preds = %.loopexit2997
  %i.eho = ptrtoint ptr %i.ehm to i64
  %i.ehp = ptrtoint ptr %i.bl to i64              ; 2 uses
  %i.ehq = xor i64 %i.ehp, -1
  %i.ehr = add i64 %i.eho, %i.ehq
  %.not2114 = icmp sgt i64 %i.ehr, %i.ehn
  br i1 %.not2114, label %buffer_size_check.exit2813, label %bb.qh

bb.qh:                                            ; preds = %._crit_edge3684, %bb.qg
  %.pre-phi3803 = phi i64 [ %.pre3802, %._crit_edge3684 ], [ %i.ehp, %bb.qg ]
  %i.ehs = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.eht = ptrtoint ptr %i.ehs to i64
  %i.ehu = sub i64 %.pre-phi3803, %i.eht          ; 5 uses
  %i.ehv = shl nuw nsw i64 %i.ehn, 1
  %i.ehw = add i64 %i.ehu, %i.ehv
  %i.ehx = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.qi

bb.qi:                                            ; preds = %bb.qi, %bb.qh
  %.0.i2806 = phi i64 [ %i.ehx, %bb.qh ], [ %i.ehz, %bb.qi ] ; 6 uses
  %i.ehy = icmp ult i64 %.0.i2806, %i.ehw
  %i.ehz = shl i64 %.0.i2806, 1
  br i1 %i.ehy, label %bb.qi, label %bb.qj, !llvm.loop !20

bb.qj:                                            ; preds = %bb.qi
  %i.eia = icmp ult i64 %.0.i2806, %i.ehu
  %i.eib = icmp ugt i64 %.0.i2806, %9
  %or.cond.i2807 = or i1 %i.eia, %i.eib
  br i1 %or.cond.i2807, label %resize_buffer.exit2811.thread, label %bb.qk

bb.qk:                                            ; preds = %bb.qj
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.ehu) #11
  %i.eic = sub nuw i64 %.0.i2806, %i.ehu
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.eic) #11
  %i.eid = load i64, ptr %i.h, align 8, !tbaa !11
  %i.eie = and i64 %i.eid, 8192
  %.not.i.i2808 = icmp eq i64 %i.eie, 0
  br i1 %.not.i.i2808, label %resize_buffer.exit2811, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.eif = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %resize_buffer.exit2811

resize_buffer.exit2811:                           ; preds = %bb.qk, %bb.ql
  %i.eig = phi ptr [ %i.eif, %bb.ql ], [ %i.m, %bb.qk ] ; 3 uses
  %i.eih = getelementptr i8, ptr %i.eig, i64 %.0.i2806 ; 2 uses
  store ptr %i.eih, ptr %i.b, align 8, !tbaa !17
  store ptr %i.eig, ptr %i.a, align 8, !tbaa !17
  %i.eii = getelementptr i8, ptr %i.eig, i64 %i.ehu ; 2 uses
  %.not.i2812 = icmp eq ptr %i.eii, null
  br i1 %.not.i2812, label %resize_buffer.exit2811.thread, label %buffer_size_check.exit2813

resize_buffer.exit2811.thread:                    ; preds = %bb.qj, %resize_buffer.exit2811
  %i.eij = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01900) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.eij) #13
  unreachable

buffer_size_check.exit2813:                       ; preds = %resize_buffer.exit2811, %bb.qg
  %i.eik = phi ptr [ %i.ehm, %bb.qg ], [ %i.eih, %resize_buffer.exit2811 ] ; 2 uses
  %.31 = phi ptr [ %i.bl, %bb.qg ], [ %i.eii, %resize_buffer.exit2811 ] ; 11 uses
  br i1 %.not2115, label %bb.qp, label %bb.qm

bb.qm:                                            ; preds = %buffer_size_check.exit2813
  %i.eil = load i64, ptr %i.ae, align 8, !tbaa !82 ; 4 uses
  %i.eim = icmp sgt i32 %spec.select2343, 9
  br i1 %i.eim, label %bb.qn, label %.preheader2993

.preheader2993:                                   ; preds = %bb.qm
  %i.ein = sub i32 9, %spec.select2343            ; 2 uses
  %.not3356 = icmp eq i32 %spec.select2343, 9
  br i1 %.not3356, label %._crit_edge, label %.lr.ph3331.preheader

.lr.ph3331.preheader:                             ; preds = %.preheader2993
  %xtraiter = and i32 %i.ein, 3                   ; 3 uses
  %12 = add i32 %spec.select2343, -6
  %13 = icmp ult i32 %12, 3
  br i1 %13, label %.lr.ph3331.epil.preheader, label %.lr.ph3331.preheader.new

.lr.ph3331.preheader.new:                         ; preds = %.lr.ph3331.preheader
  %unroll_iter = and i32 %i.ein, -4
  br label %.lr.ph3331

bb.qn:                                            ; preds = %bb.qm
  %i.eio = ptrtoint ptr %i.eik to i64
  %i.eip = ptrtoint ptr %.31 to i64
  %i.eiq = sub i64 %i.eio, %i.eip
  %i.eir = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %.31, i64 noundef %i.eiq, ptr noundef nonnull @.str.19, i64 noundef %i.eil) #11 ; 0 uses
  %i.eis = getelementptr i8, ptr %.31, i64 9
  %i.eit = add nsw i32 %spec.select2343, -9
  %i.eiu = zext nneg i32 %i.eit to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.eis, i8 noundef 48, i64 noundef %i.eiu, i1 noundef false) #11
  br label %bb.qo

.lr.ph3331:                                       ; preds = %.lr.ph3331, %.lr.ph3331.preheader.new
  %.018993329 = phi i64 [ %i.eil, %.lr.ph3331.preheader.new ], [ %i.eiv, %.lr.ph3331 ]
  %niter = phi i32 [ 0, %.lr.ph3331.preheader.new ], [ %niter.next.3, %.lr.ph3331 ]
  %i.eiv = sdiv i64 %.018993329, 10000            ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph3331, !llvm.loop !83

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph3331
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph3331.epil.preheader

.lr.ph3331.epil.preheader:                        ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph3331.preheader
  %.018993329.epil.init = phi i64 [ %i.eil, %.lr.ph3331.preheader ], [ %i.eiv, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod6901 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod6901)
  br label %.lr.ph3331.epil

.lr.ph3331.epil:                                  ; preds = %.lr.ph3331.epil, %.lr.ph3331.epil.preheader
  %.018993329.epil = phi i64 [ %14, %.lr.ph3331.epil ], [ %.018993329.epil.init, %.lr.ph3331.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph3331.epil ], [ 0, %.lr.ph3331.epil.preheader ]
  %14 = sdiv i64 %.018993329.epil, 10             ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph3331.epil, !llvm.loop !84

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph3331.epil, %.preheader2993
  %.01899.lcssa = phi i64 [ %i.eil, %.preheader2993 ], [ %i.eiv, %._crit_edge.loopexit.unr-lcssa ], [ %14, %.lr.ph3331.epil ]
  %i.eiw = ptrtoint ptr %i.eik to i64
  %i.eix = ptrtoint ptr %.31 to i64
  %i.eiy = sub i64 %i.eiw, %i.eix
  %i.eiz = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %.31, i64 noundef %i.eiy, ptr noundef nonnull @.str.20, i32 noundef %spec.select2343, i64 noundef %.01899.lcssa) #11 ; 0 uses
  br label %bb.qo

bb.qo:                                            ; preds = %._crit_edge, %bb.qn
  %.pn2117 = zext i32 %spec.select2343 to i64
  %.32 = getelementptr i8, ptr %.31, i64 %.pn2117
  br label %case_conv.exit2868

bb.qp:                                            ; preds = %buffer_size_check.exit2813
  %i.eja = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %6, i64 noundef 37, i32 noundef 1, i64 noundef 3) #11 ; 2 uses
  %i.ejb = icmp sgt i32 %spec.select2343, 8
  br i1 %i.ejb, label %.lr.ph3336, label %.preheader2992

.preheader2992:                                   ; preds = %.lr.ph3336, %bb.qp
  %.01896.lcssa = phi i64 [ %i.eja, %bb.qp ], [ %i.eje, %.lr.ph3336 ] ; 2 uses
  %.01894.lcssa = phi i32 [ %spec.select2343, %bb.qp ], [ %i.ejf, %.lr.ph3336 ] ; 4 uses
  %i.ejc = icmp sgt i32 %.01894.lcssa, 0
  br i1 %i.ejc, label %.lr.ph3341.preheader, label %._crit_edge3342.thread

.lr.ph3341.preheader:                             ; preds = %.preheader2992
  %xtraiter6902 = and i32 %.01894.lcssa, 7        ; 3 uses
  %i.ejd = icmp ult i32 %.01894.lcssa, 8
  br i1 %i.ejd, label %.lr.ph3341.epil.preheader, label %.lr.ph3341.preheader.new

.lr.ph3341.preheader.new:                         ; preds = %.lr.ph3341.preheader
  %unroll_iter6907 = and i32 %.01894.lcssa, 2147483640
  br label %.lr.ph3341

.lr.ph3336:                                       ; preds = %bb.qp, %.lr.ph3336
  %.018943334 = phi i32 [ %i.ejf, %.lr.ph3336 ], [ %spec.select2343, %bb.qp ] ; 2 uses
  %.018963333 = phi i64 [ %i.eje, %.lr.ph3336 ], [ %i.eja, %bb.qp ]
  %i.eje = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.018963333, i64 noundef 42, i32 noundef 1, i64 noundef 2000000001) #11 ; 2 uses
  %i.ejf = add nsw i32 %.018943334, -9            ; 2 uses
  %i.ejg = icmp samesign ugt i32 %.018943334, 17
  br i1 %i.ejg, label %.lr.ph3336, label %.preheader2992, !llvm.loop !86

.lr.ph3341:                                       ; preds = %.lr.ph3341, %.lr.ph3341.preheader.new
  %.018933340 = phi i64 [ 1, %.lr.ph3341.preheader.new ], [ %i.ejh, %.lr.ph3341 ] ; 2 uses
  %niter6908 = phi i32 [ 0, %.lr.ph3341.preheader.new ], [ %niter6908.next.7, %.lr.ph3341 ]
  %i.ejh = mul i64 %.018933340, 100000000         ; 2 uses
  %niter6908.next.7 = add nuw nsw i32 %niter6908, 8 ; 2 uses
  %niter6908.ncmp.7.not = icmp eq i32 %niter6908.next.7, %unroll_iter6907
  br i1 %niter6908.ncmp.7.not, label %._crit_edge3342.unr-lcssa, label %.lr.ph3341, !llvm.loop !87

._crit_edge3342.unr-lcssa:                        ; preds = %.lr.ph3341
  %i.eji = mul i64 %.018933340, 10000000
  %lcmp.mod6904.not = icmp eq i32 %xtraiter6902, 0
  br i1 %lcmp.mod6904.not, label %._crit_edge3342, label %.lr.ph3341.epil.preheader

.lr.ph3341.epil.preheader:                        ; preds = %._crit_edge3342.unr-lcssa, %.lr.ph3341.preheader
  %.018933340.epil.init = phi i64 [ 1, %.lr.ph3341.preheader ], [ %i.ejh, %._crit_edge3342.unr-lcssa ]
  %lcmp.mod6906 = icmp ne i32 %xtraiter6902, 0
  call void @llvm.assume(i1 %lcmp.mod6906)
  br label %.lr.ph3341.epil

.lr.ph3341.epil:                                  ; preds = %.lr.ph3341.epil, %.lr.ph3341.epil.preheader
  %.018933340.epil = phi i64 [ %i.ejj, %.lr.ph3341.epil ], [ %.018933340.epil.init, %.lr.ph3341.epil.preheader ] ; 2 uses
  %epil.iter6903 = phi i32 [ %epil.iter6903.next, %.lr.ph3341.epil ], [ 0, %.lr.ph3341.epil.preheader ]
  %i.ejj = mul i64 %.018933340.epil, 10
  %epil.iter6903.next = add i32 %epil.iter6903, 1 ; 2 uses
  %epil.iter6903.cmp.not = icmp eq i32 %epil.iter6903.next, %xtraiter6902
  br i1 %epil.iter6903.cmp.not, label %._crit_edge3342, label %.lr.ph3341.epil, !llvm.loop !88

._crit_edge3342:                                  ; preds = %.lr.ph3341.epil, %._crit_edge3342.unr-lcssa
  %.018933340.lcssa = phi i64 [ %i.eji, %._crit_edge3342.unr-lcssa ], [ %.018933340.epil, %.lr.ph3341.epil ]
  %i.ejk = mul i64 %.018933340.lcssa, 20
  %i.ejl = or disjoint i64 %i.ejk, 1
  %i.ejm = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.01896.lcssa, i64 noundef 42, i32 noundef 1, i64 noundef %i.ejl) #11
  br label %._crit_edge3342.thread

._crit_edge3342.thread:                           ; preds = %.preheader2992, %._crit_edge3342
  %.11897 = phi i64 [ %i.ejm, %._crit_edge3342 ], [ %.01896.lcssa, %.preheader2992 ]
  %.pr.i2814 = load i64, ptr @rb_strftime_with_timespec.rbimpl_id.21, align 8, !tbaa !33 ; 2 uses
  %.not4.i2815 = icmp eq i64 %.pr.i2814, 0
  br i1 %.not4.i2815, label %.lr.ph.i2817, label %rbimpl_intern_const.exit2819

.lr.ph.i2817:                                     ; preds = %._crit_edge3342.thread, %.lr.ph.i2817
  %i.ejn = call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 3) #11 ; 3 uses
  store i64 %i.ejn, ptr @rb_strftime_with_timespec.rbimpl_id.21, align 8, !tbaa !33
  %.not.i2818 = icmp eq i64 %i.ejn, 0
  br i1 %.not.i2818, label %.lr.ph.i2817, label %rbimpl_intern_const.exit2819, !llvm.loop !34

rbimpl_intern_const.exit2819:                     ; preds = %.lr.ph.i2817, %._crit_edge3342.thread
  %.lcssa.i2816 = phi i64 [ %.pr.i2814, %._crit_edge3342.thread ], [ %i.ejn, %.lr.ph.i2817 ]
  %i.ejo = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.11897, i64 noundef %.lcssa.i2816, i32 noundef 1, i64 noundef 3) #11 ; 3 uses
  %i.ejp = trunc i64 %i.ejo to i1
  br i1 %i.ejp, label %bb.qq, label %bb.qr

bb.qq:                                            ; preds = %rbimpl_intern_const.exit2819
  %i.ejq = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ejr = ptrtoint ptr %i.ejq to i64
  %i.ejs = ptrtoint ptr %.31 to i64
  %i.ejt = sub i64 %i.ejr, %i.ejs
  %i.eju = ashr i64 %i.ejo, 1
  %i.ejv = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %.31, i64 noundef %i.ejt, ptr noundef nonnull @.str.20, i32 noundef %spec.select2343, i64 noundef %i.eju) #11 ; 0 uses
  %i.ejw = zext nneg i32 %spec.select2343 to i64
  br label %bb.qs

bb.qr:                                            ; preds = %rbimpl_intern_const.exit2819
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.ejx = zext nneg i32 %spec.select2343 to i64  ; 2 uses
  %i.ejy = shl nuw nsw i64 %i.ejx, 1
  %i.ejz = or disjoint i64 %i.ejy, 1
  store i64 %i.ejz, ptr %i.d, align 16, !tbaa !33
  store i64 %i.ejo, ptr %i.af, align 8, !tbaa !33
  %i.eka = call i64 @rb_fstring_new(ptr noundef nonnull @.str.22, i64 noundef 4) #11
  %i.ekb = call i64 @rb_str_format(i32 noundef 2, ptr noundef nonnull %i.d, i64 noundef %i.eka) #11
  store i64 %i.ekb, ptr %i.e, align 8, !tbaa !33
  %i.ekc = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.e) #11
  %i.ekd = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.eke = ptrtoint ptr %i.ekd to i64
  %i.ekf = ptrtoint ptr %.31 to i64
  %i.ekg = sub i64 %i.eke, %i.ekf
  %i.ekh = call i64 @strlcpy(ptr noundef %.31, ptr noundef nonnull dereferenceable(1) %i.ekc, i64 noundef %i.ekg) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.qs

bb.qs:                                            ; preds = %bb.qr, %bb.qq
  %.pn = phi i64 [ %i.ejw, %bb.qq ], [ %i.ejx, %bb.qr ]
  %.33 = getelementptr i8, ptr %.31, i64 %.pn
  br label %case_conv.exit2868

bb.qt:                                            ; preds = %.lr.ph
  %i.eki = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.ekj = ptrtoint ptr %i.bl to i64
  %i.ekk = ptrtoint ptr %i.eki to i64
  %i.ekl = sub i64 %i.ekj, %i.ekk                 ; 3 uses
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.ekl) #11
  %i.ekm = call fastcc i64 @rb_strftime_with_timespec(i64 noundef %0, ptr noundef nonnull @.str.23, i64 noundef 8, ptr noundef %.01900, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i32 noundef %8, i64 noundef %9)
  %.not2109 = icmp eq i64 %i.ekm, 0
  br i1 %.not2109, label %.loopexit2998, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  %i.ekn = load i64, ptr %i.h, align 8, !tbaa !11
  %i.eko = and i64 %i.ekn, 8192
  %.not.i2820 = icmp eq i64 %i.eko, 0
  br i1 %.not.i2820, label %RSTRING_PTR.exit2821, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.ekp = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %RSTRING_PTR.exit2821

RSTRING_PTR.exit2821:                             ; preds = %bb.qu, %bb.qv
  %i.ekq = phi ptr [ %i.ekp, %bb.qv ], [ %i.m, %bb.qu ] ; 4 uses
  %i.ekr = load i64, ptr %i.i, align 8, !tbaa !14 ; 2 uses
  %i.eks = sub i64 %i.ekr, %i.ekl                 ; 25 uses
  store ptr %i.ekq, ptr %i.a, align 8, !tbaa !17
  %i.ekt = call i64 @rb_str_capacity(i64 noundef %0) #12
  %i.eku = getelementptr i8, ptr %i.ekq, i64 %i.ekt
  store ptr %i.eku, ptr %i.b, align 8, !tbaa !17
  %i.ekv = icmp sgt i64 %i.eks, 0
  br i1 %i.ekv, label %bb.qw, label %case_conv.exit2831

bb.qw:                                            ; preds = %RSTRING_PTR.exit2821
  %i.ekw = getelementptr i8, ptr %i.ekq, i64 %i.ekl ; 46 uses
  %i.ekx = and i32 %.019243306, 12
  switch i32 %i.ekx, label %case_conv.exit2831 [
    i32 8, label %iter.check6432
    i32 4, label %iter.check6521
  ]

iter.check6521:                                   ; preds = %bb.qw
  %min.iters.check6459 = icmp ult i64 %i.eks, 4
  br i1 %min.iters.check6459, label %.preheader20.i2822.preheader, label %vector.main.loop.iter.check6460

vector.main.loop.iter.check6460:                  ; preds = %iter.check6521
  %min.iters.check6461 = icmp ult i64 %i.eks, 16
  br i1 %min.iters.check6461, label %vec.epilog.ph6525, label %vector.ph6462

vector.ph6462:                                    ; preds = %vector.main.loop.iter.check6460
  %n.mod.vf6463 = and i64 %i.eks, 12
  %n.vec6464 = and i64 %i.eks, 9223372036854775792 ; 4 uses
  %i.eky = and i64 %i.eks, 15
  %i.ekz = getelementptr i8, ptr %i.ekw, i64 %n.vec6464
  br label %vector.body6465

vector.body6465:                                  ; preds = %pred.store.continue6515, %vector.ph6462
  %index6466 = phi i64 [ 0, %vector.ph6462 ], [ %index.next6516, %pred.store.continue6515 ] ; 17 uses
  %next.gep6467 = getelementptr i8, ptr %i.ekw, i64 %index6466 ; 2 uses
  %i.ela = getelementptr i8, ptr %i.ekw, i64 %index6466
  %next.gep6468 = getelementptr i8, ptr %i.ela, i64 1
  %i.elb = getelementptr i8, ptr %i.ekw, i64 %index6466
  %next.gep6469 = getelementptr i8, ptr %i.elb, i64 2
  %i.elc = getelementptr i8, ptr %i.ekw, i64 %index6466
  %next.gep6470 = getelementptr i8, ptr %i.elc, i64 3
  %i.eld = getelementptr i8, ptr %i.ekw, i64 %index6466
  %next.gep6471 = getelementptr i8, ptr %i.eld, i64 4
  %i.ele = getelementptr i8, ptr %i.ekw, i64 %index6466
  %next.gep6472 = getelementptr i8, ptr %i.ele, i64 5
  %i.elf = getelementptr i8, ptr %i.ekw, i64 %index6466
  %next.gep6473 = getelementptr i8, ptr %i.elf, i64 6
  %i.elg = getelementptr i8, ptr %i.ekw, i64 %index6466
  %next.gep6474 = getelementptr i8, ptr %i.elg, i64 7
  %i.elh = getelementptr i8, ptr %i.ekw, i64 %index6466
  %next.gep6475 = getelementptr i8, ptr %i.elh, i64 8
  %i.eli = getelementptr i8, ptr %i.ekw, i64 %index6466
  %next.gep6476 = getelementptr i8, ptr %i.eli, i64 9
  %i.elj = getelementptr i8, ptr %i.ekw, i64 %index6466
  %next.gep6477 = getelementptr i8, ptr %i.elj, i64 10
  %i.elk = getelementptr i8, ptr %i.ekw, i64 %index6466
  %next.gep6478 = getelementptr i8, ptr %i.elk, i64 11
  %i.ell = getelementptr i8, ptr %i.ekw, i64 %index6466
  %next.gep6479 = getelementptr i8, ptr %i.ell, i64 12
  %i.elm = getelementptr i8, ptr %i.ekw, i64 %index6466
  %next.gep6480 = getelementptr i8, ptr %i.elm, i64 13
  %i.eln = getelementptr i8, ptr %i.ekw, i64 %index6466
  %next.gep6481 = getelementptr i8, ptr %i.eln, i64 14
  %i.elo = getelementptr i8, ptr %i.ekw, i64 %index6466
  %next.gep6482 = getelementptr i8, ptr %i.elo, i64 15
  %wide.load6483 = load <16 x i8>, ptr %next.gep6467, align 1, !tbaa !16 ; 17 uses
  %i.elp = sext <16 x i8> %wide.load6483 to <16 x i32>
  %i.elq = add nsw <16 x i32> %i.elp, splat (i32 -65)
  %i.elr = icmp ult <16 x i32> %i.elq, splat (i32 26) ; 16 uses
  %i.els = extractelement <16 x i1> %i.elr, i64 0
  br i1 %i.els, label %pred.store.if6484, label %pred.store.continue6485

pred.store.if6484:                                ; preds = %vector.body6465
  %i.elt = extractelement <16 x i8> %wide.load6483, i64 0
  %i.elu = or i8 %i.elt, 32
  store i8 %i.elu, ptr %next.gep6467, align 1, !tbaa !16
  br label %pred.store.continue6485

pred.store.continue6485:                          ; preds = %pred.store.if6484, %vector.body6465
  %i.elv = extractelement <16 x i1> %i.elr, i64 1
  br i1 %i.elv, label %pred.store.if6486, label %pred.store.continue6487

pred.store.if6486:                                ; preds = %pred.store.continue6485
  %i.elw = extractelement <16 x i8> %wide.load6483, i64 1
  %i.elx = or i8 %i.elw, 32
  store i8 %i.elx, ptr %next.gep6468, align 1, !tbaa !16
  br label %pred.store.continue6487

pred.store.continue6487:                          ; preds = %pred.store.if6486, %pred.store.continue6485
  %i.ely = extractelement <16 x i1> %i.elr, i64 2
  br i1 %i.ely, label %pred.store.if6488, label %pred.store.continue6489

pred.store.if6488:                                ; preds = %pred.store.continue6487
  %i.elz = extractelement <16 x i8> %wide.load6483, i64 2
  %i.ema = or i8 %i.elz, 32
  store i8 %i.ema, ptr %next.gep6469, align 1, !tbaa !16
  br label %pred.store.continue6489

pred.store.continue6489:                          ; preds = %pred.store.if6488, %pred.store.continue6487
  %i.emb = extractelement <16 x i1> %i.elr, i64 3
  br i1 %i.emb, label %pred.store.if6490, label %pred.store.continue6491

pred.store.if6490:                                ; preds = %pred.store.continue6489
  %i.emc = extractelement <16 x i8> %wide.load6483, i64 3
  %i.emd = or i8 %i.emc, 32
  store i8 %i.emd, ptr %next.gep6470, align 1, !tbaa !16
  br label %pred.store.continue6491

pred.store.continue6491:                          ; preds = %pred.store.if6490, %pred.store.continue6489
  %i.eme = extractelement <16 x i1> %i.elr, i64 4
  br i1 %i.eme, label %pred.store.if6492, label %pred.store.continue6493

pred.store.if6492:                                ; preds = %pred.store.continue6491
  %i.emf = extractelement <16 x i8> %wide.load6483, i64 4
  %i.emg = or i8 %i.emf, 32
  store i8 %i.emg, ptr %next.gep6471, align 1, !tbaa !16
  br label %pred.store.continue6493

pred.store.continue6493:                          ; preds = %pred.store.if6492, %pred.store.continue6491
  %i.emh = extractelement <16 x i1> %i.elr, i64 5
  br i1 %i.emh, label %pred.store.if6494, label %pred.store.continue6495

pred.store.if6494:                                ; preds = %pred.store.continue6493
  %i.emi = extractelement <16 x i8> %wide.load6483, i64 5
  %i.emj = or i8 %i.emi, 32
  store i8 %i.emj, ptr %next.gep6472, align 1, !tbaa !16
  br label %pred.store.continue6495

pred.store.continue6495:                          ; preds = %pred.store.if6494, %pred.store.continue6493
  %i.emk = extractelement <16 x i1> %i.elr, i64 6
  br i1 %i.emk, label %pred.store.if6496, label %pred.store.continue6497

pred.store.if6496:                                ; preds = %pred.store.continue6495
  %i.eml = extractelement <16 x i8> %wide.load6483, i64 6
  %i.emm = or i8 %i.eml, 32
  store i8 %i.emm, ptr %next.gep6473, align 1, !tbaa !16
  br label %pred.store.continue6497

pred.store.continue6497:                          ; preds = %pred.store.if6496, %pred.store.continue6495
  %i.emn = extractelement <16 x i1> %i.elr, i64 7
  br i1 %i.emn, label %pred.store.if6498, label %pred.store.continue6499

pred.store.if6498:                                ; preds = %pred.store.continue6497
  %i.emo = extractelement <16 x i8> %wide.load6483, i64 7
  %i.emp = or i8 %i.emo, 32
  store i8 %i.emp, ptr %next.gep6474, align 1, !tbaa !16
  br label %pred.store.continue6499

pred.store.continue6499:                          ; preds = %pred.store.if6498, %pred.store.continue6497
  %i.emq = extractelement <16 x i1> %i.elr, i64 8
  br i1 %i.emq, label %pred.store.if6500, label %pred.store.continue6501

pred.store.if6500:                                ; preds = %pred.store.continue6499
  %i.emr = extractelement <16 x i8> %wide.load6483, i64 8
  %i.ems = or i8 %i.emr, 32
  store i8 %i.ems, ptr %next.gep6475, align 1, !tbaa !16
  br label %pred.store.continue6501

pred.store.continue6501:                          ; preds = %pred.store.if6500, %pred.store.continue6499
  %i.emt = extractelement <16 x i1> %i.elr, i64 9
  br i1 %i.emt, label %pred.store.if6502, label %pred.store.continue6503

pred.store.if6502:                                ; preds = %pred.store.continue6501
  %i.emu = extractelement <16 x i8> %wide.load6483, i64 9
  %i.emv = or i8 %i.emu, 32
  store i8 %i.emv, ptr %next.gep6476, align 1, !tbaa !16
  br label %pred.store.continue6503

pred.store.continue6503:                          ; preds = %pred.store.if6502, %pred.store.continue6501
  %i.emw = extractelement <16 x i1> %i.elr, i64 10
  br i1 %i.emw, label %pred.store.if6504, label %pred.store.continue6505

pred.store.if6504:                                ; preds = %pred.store.continue6503
  %i.emx = extractelement <16 x i8> %wide.load6483, i64 10
  %i.emy = or i8 %i.emx, 32
  store i8 %i.emy, ptr %next.gep6477, align 1, !tbaa !16
  br label %pred.store.continue6505

pred.store.continue6505:                          ; preds = %pred.store.if6504, %pred.store.continue6503
  %i.emz = extractelement <16 x i1> %i.elr, i64 11
  br i1 %i.emz, label %pred.store.if6506, label %pred.store.continue6507

pred.store.if6506:                                ; preds = %pred.store.continue6505
  %i.ena = extractelement <16 x i8> %wide.load6483, i64 11
  %i.enb = or i8 %i.ena, 32
  store i8 %i.enb, ptr %next.gep6478, align 1, !tbaa !16
  br label %pred.store.continue6507

pred.store.continue6507:                          ; preds = %pred.store.if6506, %pred.store.continue6505
  %i.enc = extractelement <16 x i1> %i.elr, i64 12
  br i1 %i.enc, label %pred.store.if6508, label %pred.store.continue6509

pred.store.if6508:                                ; preds = %pred.store.continue6507
  %i.end = extractelement <16 x i8> %wide.load6483, i64 12
  %i.ene = or i8 %i.end, 32
  store i8 %i.ene, ptr %next.gep6479, align 1, !tbaa !16
  br label %pred.store.continue6509

pred.store.continue6509:                          ; preds = %pred.store.if6508, %pred.store.continue6507
  %i.enf = extractelement <16 x i1> %i.elr, i64 13
  br i1 %i.enf, label %pred.store.if6510, label %pred.store.continue6511

pred.store.if6510:                                ; preds = %pred.store.continue6509
  %i.eng = extractelement <16 x i8> %wide.load6483, i64 13
  %i.enh = or i8 %i.eng, 32
  store i8 %i.enh, ptr %next.gep6480, align 1, !tbaa !16
  br label %pred.store.continue6511

pred.store.continue6511:                          ; preds = %pred.store.if6510, %pred.store.continue6509
  %i.eni = extractelement <16 x i1> %i.elr, i64 14
  br i1 %i.eni, label %pred.store.if6512, label %pred.store.continue6513

pred.store.if6512:                                ; preds = %pred.store.continue6511
  %i.enj = extractelement <16 x i8> %wide.load6483, i64 14
  %i.enk = or i8 %i.enj, 32
  store i8 %i.enk, ptr %next.gep6481, align 1, !tbaa !16
  br label %pred.store.continue6513

pred.store.continue6513:                          ; preds = %pred.store.if6512, %pred.store.continue6511
  %i.enl = extractelement <16 x i1> %i.elr, i64 15
  br i1 %i.enl, label %pred.store.if6514, label %pred.store.continue6515

pred.store.if6514:                                ; preds = %pred.store.continue6513
  %i.enm = extractelement <16 x i8> %wide.load6483, i64 15
  %i.enn = or i8 %i.enm, 32
  store i8 %i.enn, ptr %next.gep6482, align 1, !tbaa !16
  br label %pred.store.continue6515

pred.store.continue6515:                          ; preds = %pred.store.if6514, %pred.store.continue6513
  %index.next6516 = add nuw i64 %index6466, 16    ; 2 uses
  %i.eno = icmp eq i64 %index.next6516, %n.vec6464
  br i1 %i.eno, label %middle.block6517, label %vector.body6465, !llvm.loop !89

middle.block6517:                                 ; preds = %pred.store.continue6515
  %cmp.n6518 = icmp eq i64 %i.eks, %n.vec6464
  br i1 %cmp.n6518, label %case_conv.exit2831, label %vec.epilog.iter.check6523

vec.epilog.iter.check6523:                        ; preds = %middle.block6517
  %min.epilog.iters.check6524 = icmp eq i64 %n.mod.vf6463, 0
  br i1 %min.epilog.iters.check6524, label %.preheader20.i2822.preheader, label %vec.epilog.ph6525, !prof !25

vec.epilog.ph6525:                                ; preds = %vector.main.loop.iter.check6460, %vec.epilog.iter.check6523
  %vec.epilog.resume.val6519 = phi i64 [ %n.vec6464, %vec.epilog.iter.check6523 ], [ 0, %vector.main.loop.iter.check6460 ]
  %n.vec6527 = and i64 %i.eks, 9223372036854775804 ; 3 uses
  %i.enp = and i64 %i.eks, 3
  %i.enq = getelementptr i8, ptr %i.ekw, i64 %n.vec6527
  br label %vec.epilog.vector.body6528

vec.epilog.vector.body6528:                       ; preds = %pred.store.continue6542, %vec.epilog.ph6525
  %index6529 = phi i64 [ %vec.epilog.resume.val6519, %vec.epilog.ph6525 ], [ %index.next6543, %pred.store.continue6542 ] ; 5 uses
  %next.gep6530 = getelementptr i8, ptr %i.ekw, i64 %index6529 ; 2 uses
  %i.enr = getelementptr i8, ptr %i.ekw, i64 %index6529
  %next.gep6531 = getelementptr i8, ptr %i.enr, i64 1
  %i.ens = getelementptr i8, ptr %i.ekw, i64 %index6529
  %next.gep6532 = getelementptr i8, ptr %i.ens, i64 2
  %i.ent = getelementptr i8, ptr %i.ekw, i64 %index6529
  %next.gep6533 = getelementptr i8, ptr %i.ent, i64 3
  %wide.load6534 = load <4 x i8>, ptr %next.gep6530, align 1, !tbaa !16 ; 5 uses
  %i.enu = sext <4 x i8> %wide.load6534 to <4 x i32>
  %i.env = add nsw <4 x i32> %i.enu, splat (i32 -65)
  %i.enw = icmp ult <4 x i32> %i.env, splat (i32 26) ; 4 uses
  %i.enx = extractelement <4 x i1> %i.enw, i64 0
  br i1 %i.enx, label %pred.store.if6535, label %pred.store.continue6536

pred.store.if6535:                                ; preds = %vec.epilog.vector.body6528
  %i.eny = extractelement <4 x i8> %wide.load6534, i64 0
  %i.enz = or i8 %i.eny, 32
  store i8 %i.enz, ptr %next.gep6530, align 1, !tbaa !16
  br label %pred.store.continue6536

pred.store.continue6536:                          ; preds = %pred.store.if6535, %vec.epilog.vector.body6528
  %i.eoa = extractelement <4 x i1> %i.enw, i64 1
  br i1 %i.eoa, label %pred.store.if6537, label %pred.store.continue6538

pred.store.if6537:                                ; preds = %pred.store.continue6536
  %i.eob = extractelement <4 x i8> %wide.load6534, i64 1
  %i.eoc = or i8 %i.eob, 32
  store i8 %i.eoc, ptr %next.gep6531, align 1, !tbaa !16
  br label %pred.store.continue6538

pred.store.continue6538:                          ; preds = %pred.store.if6537, %pred.store.continue6536
  %i.eod = extractelement <4 x i1> %i.enw, i64 2
  br i1 %i.eod, label %pred.store.if6539, label %pred.store.continue6540

pred.store.if6539:                                ; preds = %pred.store.continue6538
  %i.eoe = extractelement <4 x i8> %wide.load6534, i64 2
  %i.eof = or i8 %i.eoe, 32
  store i8 %i.eof, ptr %next.gep6532, align 1, !tbaa !16
  br label %pred.store.continue6540

pred.store.continue6540:                          ; preds = %pred.store.if6539, %pred.store.continue6538
  %i.eog = extractelement <4 x i1> %i.enw, i64 3
  br i1 %i.eog, label %pred.store.if6541, label %pred.store.continue6542

pred.store.if6541:                                ; preds = %pred.store.continue6540
  %i.eoh = extractelement <4 x i8> %wide.load6534, i64 3
  %i.eoi = or i8 %i.eoh, 32
  store i8 %i.eoi, ptr %next.gep6533, align 1, !tbaa !16
  br label %pred.store.continue6542

pred.store.continue6542:                          ; preds = %pred.store.if6541, %pred.store.continue6540
  %index.next6543 = add nuw i64 %index6529, 4     ; 2 uses
  %i.eoj = icmp eq i64 %index.next6543, %n.vec6527
  br i1 %i.eoj, label %vec.epilog.middle.block6544, label %vec.epilog.vector.body6528, !llvm.loop !90

vec.epilog.middle.block6544:                      ; preds = %pred.store.continue6542
  %cmp.n6545 = icmp eq i64 %i.eks, %n.vec6527
  br i1 %cmp.n6545, label %case_conv.exit2831, label %.preheader20.i2822.preheader

.preheader20.i2822.preheader:                     ; preds = %iter.check6521, %vec.epilog.iter.check6523, %vec.epilog.middle.block6544
  %.114.i2823.ph = phi i64 [ %i.eks, %iter.check6521 ], [ %i.eky, %vec.epilog.iter.check6523 ], [ %i.enp, %vec.epilog.middle.block6544 ]
  %.1.i2824.ph = phi ptr [ %i.ekw, %iter.check6521 ], [ %i.ekz, %vec.epilog.iter.check6523 ], [ %i.enq, %vec.epilog.middle.block6544 ]
  br label %.preheader20.i2822

iter.check6432:                                   ; preds = %bb.qw
  %min.iters.check6370 = icmp ult i64 %i.eks, 4
  br i1 %min.iters.check6370, label %.preheader.i2827.preheader, label %vector.main.loop.iter.check6371

vector.main.loop.iter.check6371:                  ; preds = %iter.check6432
  %min.iters.check6372 = icmp ult i64 %i.eks, 16
  br i1 %min.iters.check6372, label %vec.epilog.ph6436, label %vector.ph6373

vector.ph6373:                                    ; preds = %vector.main.loop.iter.check6371
  %n.mod.vf6374 = and i64 %i.eks, 12
  %n.vec6375 = and i64 %i.eks, 9223372036854775792 ; 4 uses
  %i.eok = and i64 %i.eks, 15
  %i.eol = getelementptr i8, ptr %i.ekw, i64 %n.vec6375
  br label %vector.body6376

vector.body6376:                                  ; preds = %pred.store.continue6426, %vector.ph6373
  %index6377 = phi i64 [ 0, %vector.ph6373 ], [ %index.next6427, %pred.store.continue6426 ] ; 17 uses
  %next.gep6378 = getelementptr i8, ptr %i.ekw, i64 %index6377 ; 2 uses
  %i.eom = getelementptr i8, ptr %i.ekw, i64 %index6377
  %next.gep6379 = getelementptr i8, ptr %i.eom, i64 1
  %i.eon = getelementptr i8, ptr %i.ekw, i64 %index6377
  %next.gep6380 = getelementptr i8, ptr %i.eon, i64 2
  %i.eoo = getelementptr i8, ptr %i.ekw, i64 %index6377
  %next.gep6381 = getelementptr i8, ptr %i.eoo, i64 3
  %i.eop = getelementptr i8, ptr %i.ekw, i64 %index6377
  %next.gep6382 = getelementptr i8, ptr %i.eop, i64 4
  %i.eoq = getelementptr i8, ptr %i.ekw, i64 %index6377
  %next.gep6383 = getelementptr i8, ptr %i.eoq, i64 5
  %i.eor = getelementptr i8, ptr %i.ekw, i64 %index6377
  %next.gep6384 = getelementptr i8, ptr %i.eor, i64 6
  %i.eos = getelementptr i8, ptr %i.ekw, i64 %index6377
  %next.gep6385 = getelementptr i8, ptr %i.eos, i64 7
  %i.eot = getelementptr i8, ptr %i.ekw, i64 %index6377
  %next.gep6386 = getelementptr i8, ptr %i.eot, i64 8
  %i.eou = getelementptr i8, ptr %i.ekw, i64 %index6377
  %next.gep6387 = getelementptr i8, ptr %i.eou, i64 9
  %i.eov = getelementptr i8, ptr %i.ekw, i64 %index6377
  %next.gep6388 = getelementptr i8, ptr %i.eov, i64 10
  %i.eow = getelementptr i8, ptr %i.ekw, i64 %index6377
  %next.gep6389 = getelementptr i8, ptr %i.eow, i64 11
  %i.eox = getelementptr i8, ptr %i.ekw, i64 %index6377
  %next.gep6390 = getelementptr i8, ptr %i.eox, i64 12
  %i.eoy = getelementptr i8, ptr %i.ekw, i64 %index6377
  %next.gep6391 = getelementptr i8, ptr %i.eoy, i64 13
  %i.eoz = getelementptr i8, ptr %i.ekw, i64 %index6377
  %next.gep6392 = getelementptr i8, ptr %i.eoz, i64 14
  %i.epa = getelementptr i8, ptr %i.ekw, i64 %index6377
  %next.gep6393 = getelementptr i8, ptr %i.epa, i64 15
  %wide.load6394 = load <16 x i8>, ptr %next.gep6378, align 1, !tbaa !16 ; 17 uses
  %i.epb = sext <16 x i8> %wide.load6394 to <16 x i32>
  %i.epc = add nsw <16 x i32> %i.epb, splat (i32 -97)
  %i.epd = icmp ult <16 x i32> %i.epc, splat (i32 26) ; 16 uses
  %i.epe = extractelement <16 x i1> %i.epd, i64 0
  br i1 %i.epe, label %pred.store.if6395, label %pred.store.continue6396

pred.store.if6395:                                ; preds = %vector.body6376
  %i.epf = extractelement <16 x i8> %wide.load6394, i64 0
  %i.epg = and i8 %i.epf, 95
  store i8 %i.epg, ptr %next.gep6378, align 1, !tbaa !16
  br label %pred.store.continue6396

pred.store.continue6396:                          ; preds = %pred.store.if6395, %vector.body6376
  %i.eph = extractelement <16 x i1> %i.epd, i64 1
  br i1 %i.eph, label %pred.store.if6397, label %pred.store.continue6398

pred.store.if6397:                                ; preds = %pred.store.continue6396
  %i.epi = extractelement <16 x i8> %wide.load6394, i64 1
  %i.epj = and i8 %i.epi, 95
  store i8 %i.epj, ptr %next.gep6379, align 1, !tbaa !16
  br label %pred.store.continue6398

pred.store.continue6398:                          ; preds = %pred.store.if6397, %pred.store.continue6396
  %i.epk = extractelement <16 x i1> %i.epd, i64 2
  br i1 %i.epk, label %pred.store.if6399, label %pred.store.continue6400

pred.store.if6399:                                ; preds = %pred.store.continue6398
  %i.epl = extractelement <16 x i8> %wide.load6394, i64 2
  %i.epm = and i8 %i.epl, 95
  store i8 %i.epm, ptr %next.gep6380, align 1, !tbaa !16
  br label %pred.store.continue6400

pred.store.continue6400:                          ; preds = %pred.store.if6399, %pred.store.continue6398
  %i.epn = extractelement <16 x i1> %i.epd, i64 3
  br i1 %i.epn, label %pred.store.if6401, label %pred.store.continue6402

pred.store.if6401:                                ; preds = %pred.store.continue6400
  %i.epo = extractelement <16 x i8> %wide.load6394, i64 3
  %i.epp = and i8 %i.epo, 95
  store i8 %i.epp, ptr %next.gep6381, align 1, !tbaa !16
  br label %pred.store.continue6402

pred.store.continue6402:                          ; preds = %pred.store.if6401, %pred.store.continue6400
  %i.epq = extractelement <16 x i1> %i.epd, i64 4
  br i1 %i.epq, label %pred.store.if6403, label %pred.store.continue6404

pred.store.if6403:                                ; preds = %pred.store.continue6402
  %i.epr = extractelement <16 x i8> %wide.load6394, i64 4
  %i.eps = and i8 %i.epr, 95
  store i8 %i.eps, ptr %next.gep6382, align 1, !tbaa !16
  br label %pred.store.continue6404

pred.store.continue6404:                          ; preds = %pred.store.if6403, %pred.store.continue6402
  %i.ept = extractelement <16 x i1> %i.epd, i64 5
  br i1 %i.ept, label %pred.store.if6405, label %pred.store.continue6406

pred.store.if6405:                                ; preds = %pred.store.continue6404
  %i.epu = extractelement <16 x i8> %wide.load6394, i64 5
  %i.epv = and i8 %i.epu, 95
  store i8 %i.epv, ptr %next.gep6383, align 1, !tbaa !16
  br label %pred.store.continue6406

pred.store.continue6406:                          ; preds = %pred.store.if6405, %pred.store.continue6404
  %i.epw = extractelement <16 x i1> %i.epd, i64 6
  br i1 %i.epw, label %pred.store.if6407, label %pred.store.continue6408

pred.store.if6407:                                ; preds = %pred.store.continue6406
  %i.epx = extractelement <16 x i8> %wide.load6394, i64 6
  %i.epy = and i8 %i.epx, 95
  store i8 %i.epy, ptr %next.gep6384, align 1, !tbaa !16
  br label %pred.store.continue6408

pred.store.continue6408:                          ; preds = %pred.store.if6407, %pred.store.continue6406
  %i.epz = extractelement <16 x i1> %i.epd, i64 7
  br i1 %i.epz, label %pred.store.if6409, label %pred.store.continue6410

pred.store.if6409:                                ; preds = %pred.store.continue6408
  %i.eqa = extractelement <16 x i8> %wide.load6394, i64 7
  %i.eqb = and i8 %i.eqa, 95
  store i8 %i.eqb, ptr %next.gep6385, align 1, !tbaa !16
  br label %pred.store.continue6410

pred.store.continue6410:                          ; preds = %pred.store.if6409, %pred.store.continue6408
  %i.eqc = extractelement <16 x i1> %i.epd, i64 8
  br i1 %i.eqc, label %pred.store.if6411, label %pred.store.continue6412

pred.store.if6411:                                ; preds = %pred.store.continue6410
  %i.eqd = extractelement <16 x i8> %wide.load6394, i64 8
  %i.eqe = and i8 %i.eqd, 95
  store i8 %i.eqe, ptr %next.gep6386, align 1, !tbaa !16
  br label %pred.store.continue6412

pred.store.continue6412:                          ; preds = %pred.store.if6411, %pred.store.continue6410
  %i.eqf = extractelement <16 x i1> %i.epd, i64 9
  br i1 %i.eqf, label %pred.store.if6413, label %pred.store.continue6414

pred.store.if6413:                                ; preds = %pred.store.continue6412
  %i.eqg = extractelement <16 x i8> %wide.load6394, i64 9
  %i.eqh = and i8 %i.eqg, 95
  store i8 %i.eqh, ptr %next.gep6387, align 1, !tbaa !16
  br label %pred.store.continue6414

pred.store.continue6414:                          ; preds = %pred.store.if6413, %pred.store.continue6412
  %i.eqi = extractelement <16 x i1> %i.epd, i64 10
  br i1 %i.eqi, label %pred.store.if6415, label %pred.store.continue6416

pred.store.if6415:                                ; preds = %pred.store.continue6414
  %i.eqj = extractelement <16 x i8> %wide.load6394, i64 10
  %i.eqk = and i8 %i.eqj, 95
  store i8 %i.eqk, ptr %next.gep6388, align 1, !tbaa !16
  br label %pred.store.continue6416

pred.store.continue6416:                          ; preds = %pred.store.if6415, %pred.store.continue6414
  %i.eql = extractelement <16 x i1> %i.epd, i64 11
  br i1 %i.eql, label %pred.store.if6417, label %pred.store.continue6418

pred.store.if6417:                                ; preds = %pred.store.continue6416
  %i.eqm = extractelement <16 x i8> %wide.load6394, i64 11
  %i.eqn = and i8 %i.eqm, 95
  store i8 %i.eqn, ptr %next.gep6389, align 1, !tbaa !16
  br label %pred.store.continue6418

pred.store.continue6418:                          ; preds = %pred.store.if6417, %pred.store.continue6416
  %i.eqo = extractelement <16 x i1> %i.epd, i64 12
  br i1 %i.eqo, label %pred.store.if6419, label %pred.store.continue6420

pred.store.if6419:                                ; preds = %pred.store.continue6418
  %i.eqp = extractelement <16 x i8> %wide.load6394, i64 12
  %i.eqq = and i8 %i.eqp, 95
  store i8 %i.eqq, ptr %next.gep6390, align 1, !tbaa !16
  br label %pred.store.continue6420

pred.store.continue6420:                          ; preds = %pred.store.if6419, %pred.store.continue6418
  %i.eqr = extractelement <16 x i1> %i.epd, i64 13
  br i1 %i.eqr, label %pred.store.if6421, label %pred.store.continue6422

pred.store.if6421:                                ; preds = %pred.store.continue6420
  %i.eqs = extractelement <16 x i8> %wide.load6394, i64 13
  %i.eqt = and i8 %i.eqs, 95
  store i8 %i.eqt, ptr %next.gep6391, align 1, !tbaa !16
  br label %pred.store.continue6422

pred.store.continue6422:                          ; preds = %pred.store.if6421, %pred.store.continue6420
  %i.equ = extractelement <16 x i1> %i.epd, i64 14
  br i1 %i.equ, label %pred.store.if6423, label %pred.store.continue6424

pred.store.if6423:                                ; preds = %pred.store.continue6422
  %i.eqv = extractelement <16 x i8> %wide.load6394, i64 14
  %i.eqw = and i8 %i.eqv, 95
  store i8 %i.eqw, ptr %next.gep6392, align 1, !tbaa !16
  br label %pred.store.continue6424

pred.store.continue6424:                          ; preds = %pred.store.if6423, %pred.store.continue6422
  %i.eqx = extractelement <16 x i1> %i.epd, i64 15
  br i1 %i.eqx, label %pred.store.if6425, label %pred.store.continue6426

pred.store.if6425:                                ; preds = %pred.store.continue6424
  %i.eqy = extractelement <16 x i8> %wide.load6394, i64 15
  %i.eqz = and i8 %i.eqy, 95
  store i8 %i.eqz, ptr %next.gep6393, align 1, !tbaa !16
  br label %pred.store.continue6426

pred.store.continue6426:                          ; preds = %pred.store.if6425, %pred.store.continue6424
  %index.next6427 = add nuw i64 %index6377, 16    ; 2 uses
  %i.era = icmp eq i64 %index.next6427, %n.vec6375
  br i1 %i.era, label %middle.block6428, label %vector.body6376, !llvm.loop !91

middle.block6428:                                 ; preds = %pred.store.continue6426
  %cmp.n6429 = icmp eq i64 %i.eks, %n.vec6375
  br i1 %cmp.n6429, label %case_conv.exit2831, label %vec.epilog.iter.check6434

vec.epilog.iter.check6434:                        ; preds = %middle.block6428
  %min.epilog.iters.check6435 = icmp eq i64 %n.mod.vf6374, 0
  br i1 %min.epilog.iters.check6435, label %.preheader.i2827.preheader, label %vec.epilog.ph6436, !prof !25

vec.epilog.ph6436:                                ; preds = %vector.main.loop.iter.check6371, %vec.epilog.iter.check6434
  %vec.epilog.resume.val6430 = phi i64 [ %n.vec6375, %vec.epilog.iter.check6434 ], [ 0, %vector.main.loop.iter.check6371 ]
  %n.vec6438 = and i64 %i.eks, 9223372036854775804 ; 3 uses
  %i.erb = and i64 %i.eks, 3
  %i.erc = getelementptr i8, ptr %i.ekw, i64 %n.vec6438
  br label %vec.epilog.vector.body6439

vec.epilog.vector.body6439:                       ; preds = %pred.store.continue6453, %vec.epilog.ph6436
  %index6440 = phi i64 [ %vec.epilog.resume.val6430, %vec.epilog.ph6436 ], [ %index.next6454, %pred.store.continue6453 ] ; 5 uses
  %next.gep6441 = getelementptr i8, ptr %i.ekw, i64 %index6440 ; 2 uses
  %i.erd = getelementptr i8, ptr %i.ekw, i64 %index6440
  %next.gep6442 = getelementptr i8, ptr %i.erd, i64 1
  %i.ere = getelementptr i8, ptr %i.ekw, i64 %index6440
  %next.gep6443 = getelementptr i8, ptr %i.ere, i64 2
  %i.erf = getelementptr i8, ptr %i.ekw, i64 %index6440
  %next.gep6444 = getelementptr i8, ptr %i.erf, i64 3
  %wide.load6445 = load <4 x i8>, ptr %next.gep6441, align 1, !tbaa !16 ; 5 uses
  %i.erg = sext <4 x i8> %wide.load6445 to <4 x i32>
  %i.erh = add nsw <4 x i32> %i.erg, splat (i32 -97)
  %i.eri = icmp ult <4 x i32> %i.erh, splat (i32 26) ; 4 uses
  %i.erj = extractelement <4 x i1> %i.eri, i64 0
  br i1 %i.erj, label %pred.store.if6446, label %pred.store.continue6447

pred.store.if6446:                                ; preds = %vec.epilog.vector.body6439
  %i.erk = extractelement <4 x i8> %wide.load6445, i64 0
  %i.erl = and i8 %i.erk, 95
  store i8 %i.erl, ptr %next.gep6441, align 1, !tbaa !16
  br label %pred.store.continue6447

pred.store.continue6447:                          ; preds = %pred.store.if6446, %vec.epilog.vector.body6439
  %i.erm = extractelement <4 x i1> %i.eri, i64 1
  br i1 %i.erm, label %pred.store.if6448, label %pred.store.continue6449

pred.store.if6448:                                ; preds = %pred.store.continue6447
  %i.ern = extractelement <4 x i8> %wide.load6445, i64 1
  %i.ero = and i8 %i.ern, 95
  store i8 %i.ero, ptr %next.gep6442, align 1, !tbaa !16
  br label %pred.store.continue6449

pred.store.continue6449:                          ; preds = %pred.store.if6448, %pred.store.continue6447
  %i.erp = extractelement <4 x i1> %i.eri, i64 2
  br i1 %i.erp, label %pred.store.if6450, label %pred.store.continue6451

pred.store.if6450:                                ; preds = %pred.store.continue6449
  %i.erq = extractelement <4 x i8> %wide.load6445, i64 2
  %i.err = and i8 %i.erq, 95
  store i8 %i.err, ptr %next.gep6443, align 1, !tbaa !16
  br label %pred.store.continue6451

pred.store.continue6451:                          ; preds = %pred.store.if6450, %pred.store.continue6449
  %i.ers = extractelement <4 x i1> %i.eri, i64 3
  br i1 %i.ers, label %pred.store.if6452, label %pred.store.continue6453

pred.store.if6452:                                ; preds = %pred.store.continue6451
  %i.ert = extractelement <4 x i8> %wide.load6445, i64 3
  %i.eru = and i8 %i.ert, 95
  store i8 %i.eru, ptr %next.gep6444, align 1, !tbaa !16
  br label %pred.store.continue6453

pred.store.continue6453:                          ; preds = %pred.store.if6452, %pred.store.continue6451
  %index.next6454 = add nuw i64 %index6440, 4     ; 2 uses
  %i.erv = icmp eq i64 %index.next6454, %n.vec6438
  br i1 %i.erv, label %vec.epilog.middle.block6455, label %vec.epilog.vector.body6439, !llvm.loop !92

vec.epilog.middle.block6455:                      ; preds = %pred.store.continue6453
  %cmp.n6456 = icmp eq i64 %i.eks, %n.vec6438
  br i1 %cmp.n6456, label %case_conv.exit2831, label %.preheader.i2827.preheader

.preheader.i2827.preheader:                       ; preds = %iter.check6432, %vec.epilog.iter.check6434, %vec.epilog.middle.block6455
  %.013.i2828.ph = phi i64 [ %i.eks, %iter.check6432 ], [ %i.eok, %vec.epilog.iter.check6434 ], [ %i.erb, %vec.epilog.middle.block6455 ]
  %.0.i2829.ph = phi ptr [ %i.ekw, %iter.check6432 ], [ %i.eol, %vec.epilog.iter.check6434 ], [ %i.erc, %vec.epilog.middle.block6455 ]
  br label %.preheader.i2827

.preheader.i2827:                                 ; preds = %.preheader.i2827.preheader, %bb.qy
  %.013.i2828 = phi i64 [ %i.esc, %bb.qy ], [ %.013.i2828.ph, %.preheader.i2827.preheader ]
  %.0.i2829 = phi ptr [ %i.esb, %bb.qy ], [ %.0.i2829.ph, %.preheader.i2827.preheader ] ; 3 uses
  %i.erw = load i8, ptr %.0.i2829, align 1, !tbaa !16 ; 2 uses
  %i.erx = sext i8 %i.erw to i32
  %i.ery = add nsw i32 %i.erx, -123
  %i.erz = icmp ult i32 %i.ery, -26
  br i1 %i.erz, label %bb.qy, label %bb.qx

bb.qx:                                            ; preds = %.preheader.i2827
  %i.esa = and i8 %i.erw, 95
  store i8 %i.esa, ptr %.0.i2829, align 1, !tbaa !16
  br label %bb.qy

bb.qy:                                            ; preds = %bb.qx, %.preheader.i2827
  %i.esb = getelementptr i8, ptr %.0.i2829, i64 1
  %i.esc = add nsw i64 %.013.i2828, -1            ; 2 uses
  %.not19.i2830 = icmp eq i64 %i.esc, 0
  br i1 %.not19.i2830, label %case_conv.exit2831, label %.preheader.i2827, !llvm.loop !93

.preheader20.i2822:                               ; preds = %.preheader20.i2822.preheader, %bb.ra
  %.114.i2823 = phi i64 [ %i.esj, %bb.ra ], [ %.114.i2823.ph, %.preheader20.i2822.preheader ]
  %.1.i2824 = phi ptr [ %i.esi, %bb.ra ], [ %.1.i2824.ph, %.preheader20.i2822.preheader ] ; 3 uses
  %i.esd = load i8, ptr %.1.i2824, align 1, !tbaa !16 ; 2 uses
  %i.ese = sext i8 %i.esd to i32
  %i.esf = add nsw i32 %i.ese, -91
  %i.esg = icmp ult i32 %i.esf, -26
  br i1 %i.esg, label %bb.ra, label %bb.qz

bb.qz:                                            ; preds = %.preheader20.i2822
  %i.esh = or i8 %i.esd, 32
  store i8 %i.esh, ptr %.1.i2824, align 1, !tbaa !16
  br label %bb.ra

bb.ra:                                            ; preds = %bb.qz, %.preheader20.i2822
  %i.esi = getelementptr i8, ptr %.1.i2824, i64 1
  %i.esj = add nsw i64 %.114.i2823, -1            ; 2 uses
  %.not17.i2825 = icmp eq i64 %i.esj, 0
  br i1 %.not17.i2825, label %case_conv.exit2831, label %.preheader20.i2822, !llvm.loop !94

case_conv.exit2831:                               ; preds = %bb.ra, %bb.qy, %middle.block6517, %vec.epilog.middle.block6544, %middle.block6428, %vec.epilog.middle.block6455, %bb.qw, %RSTRING_PTR.exit2821
  %i.esk = sext i32 %.019193307 to i64            ; 5 uses
  %i.esl = icmp slt i64 %i.eks, %i.esk
  %i.esm = getelementptr i8, ptr %i.ekq, i64 %i.ekr ; 5 uses
  br i1 %i.esl, label %bb.rb, label %case_conv.exit2868

bb.rb:                                            ; preds = %case_conv.exit2831
  %i.esn = load ptr, ptr %i.b, align 8, !tbaa !17 ; 2 uses
  %.not2110 = icmp ult ptr %i.esm, %i.esn
  br i1 %.not2110, label %bb.rc, label %._crit_edge3683

._crit_edge3683:                                  ; preds = %bb.rb
  %.pre3804 = ptrtoint ptr %i.esm to i64
  br label %bb.rd

bb.rc:                                            ; preds = %bb.rb
  %i.eso = ptrtoint ptr %i.esn to i64
  %i.esp = ptrtoint ptr %i.esm to i64             ; 2 uses
  %i.esq = xor i64 %i.esp, -1
  %i.esr = add i64 %i.eso, %i.esq
  %.not2111 = icmp sgt i64 %i.esr, %i.esk
  br i1 %.not2111, label %buffer_size_check.exit2839, label %bb.rd

bb.rd:                                            ; preds = %._crit_edge3683, %bb.rc
  %.pre-phi3805 = phi i64 [ %.pre3804, %._crit_edge3683 ], [ %i.esp, %bb.rc ]
  %i.ess = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.est = ptrtoint ptr %i.ess to i64
  %i.esu = sub i64 %.pre-phi3805, %i.est          ; 5 uses
  %i.esv = shl nsw i64 %i.esk, 1
  %i.esw = add i64 %i.esu, %i.esv
  %i.esx = call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.re

bb.re:                                            ; preds = %bb.re, %bb.rd
  %.0.i2832 = phi i64 [ %i.esx, %bb.rd ], [ %i.esz, %bb.re ] ; 6 uses
  %i.esy = icmp ult i64 %.0.i2832, %i.esw
  %i.esz = shl i64 %.0.i2832, 1
  br i1 %i.esy, label %bb.re, label %bb.rf, !llvm.loop !20

bb.rf:                                            ; preds = %bb.re
  %i.eta = icmp ult i64 %.0.i2832, %i.esu
  %i.etb = icmp ugt i64 %.0.i2832, %9
  %or.cond.i2833 = or i1 %i.eta, %i.etb
  br i1 %or.cond.i2833, label %resize_buffer.exit2837.thread, label %bb.rg

bb.rg:                                            ; preds = %bb.rf
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.esu) #11
  %i.etc = sub nuw i64 %.0.i2832, %i.esu
  call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.etc) #11
  %i.etd = load i64, ptr %i.h, align 8, !tbaa !11
  %i.ete = and i64 %i.etd, 8192
  %.not.i.i2834 = icmp eq i64 %i.ete, 0
  br i1 %.not.i.i2834, label %resize_buffer.exit2837, label %bb.rh

bb.rh:                                            ; preds = %bb.rg
  %i.etf = load ptr, ptr %i.m, align 8, !tbaa !16
  br label %resize_buffer.exit2837

resize_buffer.exit2837:                           ; preds = %bb.rg, %bb.rh
  %i.etg = phi ptr [ %i.etf, %bb.rh ], [ %i.m, %bb.rg ] ; 3 uses
  %i.eth = getelementptr i8, ptr %i.etg, i64 %.0.i2832
  store ptr %i.eth, ptr %i.b, align 8, !tbaa !17
  store ptr %i.etg, ptr %i.a, align 8, !tbaa !17
  %i.eti = getelementptr i8, ptr %i.etg, i64 %i.esu ; 2 uses
  %.not.i2838 = icmp eq ptr %i.eti, null
  br i1 %.not.i2838, label %resize_buffer.exit2837.thread, label %buffer_size_check.exit2839

resize_buffer.exit2837.thread:                    ; preds = %bb.rf, %resize_buffer.exit2837
  %i.etj = call i64 @rb_enc_str_new(ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %.01900) #11
  call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.etj) #13
  unreachable

buffer_size_check.exit2839:                       ; preds = %resize_buffer.exit2837, %bb.rc
  %.34 = phi ptr [ %i.esm, %bb.rc ], [ %i.eti, %resize_buffer.exit2837 ]
  %i.etk = sub i64 0, %i.eks                      ; 2 uses
  %i.etl = getelementptr i8, ptr %.34, i64 %i.etk ; 3 uses
  %i.etm = getelementptr i8, ptr %i.etl, i64 %i.esk ; 2 uses
  %i.etn = getelementptr i8, ptr %i.etm, i64 %i.etk
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.etn, ptr noundef nonnull align 1 %i.etl, i64 noundef range(i64 -9223372036854775808, 2147483647) %i.eks, i1 noundef false) #11
  %.not2112 = icmp eq i8 %.019343304, 0
  %narrow = select i1 %.not2112, i8 32, i8 %.019343304
  %i.eto = sub i64 %i.esk, %i.eks
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.etl, i8 noundef %narrow, i64 noundef %i.eto, i1 noundef false) #11
  br label %case_conv.exit2868

bb.ri:                                            ; preds = %.lr.ph
  %i.etp = icmp sgt i32 %.019193307, 0
  br i1 %i.etp, label %.loopexit, label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.etq = or i32 %.019243306, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.rj, %bb.rl, %bb.rn, %bb.rt, %bb.oi, %bb.ok, %bb.ro, %bb.rv
  %.01934.be = phi i8 [ %.11935, %bb.rv ], [ %.019343304, %bb.oi ], [ %.019343304, %bb.ok ], [ 0, %bb.rj ], [ %.019343304, %bb.rl ], [ %.019343304, %bb.rn ], [ 32, %bb.ro ], [ %.019343304, %bb.rt ]
  %.01932.be = phi i32 [ %.019323305, %bb.rv ], [ %.019323305, %bb.oi ], [ %.019323305, %bb.ok ], [ %.019323305, %bb.rj ], [ %.019323305, %bb.rl ], [ %.019323305, %bb.rn ], [ %.019323305, %bb.ro ], [ %.11933.lcssa, %bb.rt ]
  %.01924.be = phi i32 [ %.019243306, %bb.rv ], [ %.019243306, %bb.oi ], [ %.019243306, %bb.ok ], [ %i.etq, %bb.rj ], [ %i.ett, %bb.rl ], [ %i.etv, %bb.rn ], [ %.019243306, %bb.ro ], [ %.019243306, %bb.rt ]
  %.01919.be = phi i32 [ %i.eul, %bb.rv ], [ %.019193307, %bb.oi ], [ %.019193307, %bb.ok ], [ 0, %bb.rj ], [ %.019193307, %bb.rl ], [ %.019193307, %bb.rn ], [ %.019193307, %bb.ro ], [ %.019193307, %bb.rt ]
  %.1.be = phi ptr [ %i.eun, %bb.rv ], [ %i.bo, %bb.oi ], [ %i.bo, %bb.ok ], [ %i.bo, %bb.rj ], [ %i.bo, %bb.rl ], [ %i.bo, %bb.rn ], [ %i.bo, %bb.ro ], [ %i.eue, %bb.rt ] ; 2 uses
  %i.etr = getelementptr i8, ptr %.1.be, i64 1    ; 3 uses
  %.not2106 = icmp ult ptr %i.etr, %i.r
  br i1 %.not2106, label %.lr.ph, label %.loopexit

bb.rk:                                            ; preds = %.lr.ph
  %i.ets = icmp sgt i32 %.019193307, 0
  br i1 %i.ets, label %.loopexit, label %bb.rl

bb.rl:                                            ; preds = %bb.rk
  %i.ett = or i32 %.019243306, 8
  br label %.backedge

bb.rm:                                            ; preds = %.lr.ph
  %i.etu = icmp sgt i32 %.019193307, 0
  br i1 %i.etu, label %.loopexit, label %bb.rn

bb.rn:                                            ; preds = %bb.rm
  %i.etv = or i32 %.019243306, 2
  br label %.backedge

bb.ro:                                            ; preds = %.lr.ph
  %i.etw = icmp sgt i32 %.019193307, 0
  br i1 %i.etw, label %.loopexit, label %.backedge

bb.rp:                                            ; preds = %.preheader.preheader
  %i.etx = load i8, ptr %i.bq, align 1, !tbaa !16
  switch i8 %i.etx, label %.loopexit [
    i8 122, label %bb.rt
    i8 58, label %.preheader.1
  ]

.preheader.1:                                     ; preds = %bb.rp
  %i.ety = getelementptr i8, ptr %i.bo, i64 2     ; 2 uses
  %.not2107.1 = icmp ult ptr %i.ety, %i.r
  br i1 %.not2107.1, label %bb.rq, label %.loopexit

bb.rq:                                            ; preds = %.preheader.1
  %i.etz = load i8, ptr %i.ety, align 1, !tbaa !16
  switch i8 %i.etz, label %.loopexit [
    i8 122, label %bb.rt
    i8 58, label %.preheader.2
  ]

.preheader.2:                                     ; preds = %bb.rq
  %i.eua = getelementptr i8, ptr %i.bo, i64 3     ; 2 uses
  %.not2107.2 = icmp ult ptr %i.eua, %i.r
  br i1 %.not2107.2, label %bb.rr, label %.loopexit

bb.rr:                                            ; preds = %.preheader.2
  %i.eub = load i8, ptr %i.eua, align 1, !tbaa !16
  switch i8 %i.eub, label %.loopexit [
    i8 122, label %bb.rt
    i8 58, label %bb.rs
  ]

bb.rs:                                            ; preds = %bb.rr
  br label %bb.rt

bb.rt:                                            ; preds = %bb.rs, %bb.rr, %bb.rq, %bb.rp
  %.11933.lcssa = phi i32 [ 1, %bb.rp ], [ 4, %bb.rs ], [ 2, %bb.rq ], [ 3, %bb.rr ] ; 2 uses
  %i.euc = zext nneg i32 %.11933.lcssa to i64
  %i.eud = getelementptr i8, ptr %i.bo, i64 %i.euc
  %i.eue = getelementptr i8, ptr %i.eud, i64 -1
  br label %.backedge

bb.ru:                                            ; preds = %.lr.ph
  br label %bb.rv

bb.rv:                                            ; preds = %bb.ru, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %.11935 = phi i8 [ 48, %bb.ru ], [ %.019343304, %.lr.ph ], [ %.019343304, %.lr.ph ], [ %.019343304, %.lr.ph ], [ %.019343304, %.lr.ph ], [ %.019343304, %.lr.ph ], [ %.019343304, %.lr.ph ], [ %.019343304, %.lr.ph ], [ %.019343304, %.lr.ph ], [ %.019343304, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  %i.euf = ptrtoint ptr %i.bo to i64
  %i.eug = sub i64 %i.ad, %i.euf
  %i.euh = call i64 @ruby_scan_digits(ptr noundef nonnull %i.bo, i64 noundef %i.eug, i32 noundef 10, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #11 ; 2 uses
  %i.eui = load i32, ptr %i.g, align 4, !tbaa !7
  %i.euj = icmp ne i32 %i.eui, 0
  %i.euk = icmp ugt i64 %i.euh, 2147483647
  %or.cond44 = select i1 %i.euj, i1 true, i1 %i.euk
  %i.eul = trunc nuw nsw i64 %i.euh to i32
  %i.eum = load i64, ptr %i.f, align 8
  %i.eun = getelementptr i8, ptr %.13308, i64 %i.eum
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  br i1 %or.cond44, label %.loopexit, label %.backedge

.loopexit:                                        ; preds = %.backedge, %bb.oi, %bb.oh, %bb.ok, %bb.oj, %bb.ri, %bb.rk, %bb.rm, %bb.ro, %.lr.ph, %bb.rv, %bb.rp, %.preheader.preheader, %.preheader.1, %bb.rq, %.preheader.2, %bb.rr, %.preheader2995, %.thread
  %.3 = phi ptr [ %i.bn, %.preheader2995 ], [ %.13308, %.thread ], [ %i.bo, %.lr.ph ], [ %i.bo, %bb.rv ], [ %i.etr, %.backedge ], [ %i.bo, %bb.oi ], [ %i.bo, %bb.oh ], [ %i.bo, %bb.ok ], [ %i.bo, %bb.oj ], [ %i.bo, %bb.ri ], [ %i.bo, %bb.rk ], [ %i.bo, %bb.rm ], [ %i.bo, %bb.ro ], [ %i.bo, %.preheader.preheader ], [ %i.bo, %.preheader.1 ], [ %i.bo, %bb.rq ], [ %i.bo, %.preheader.2 ], [ %i.bo, %bb.rr ], [ %i.bo, %bb.rp ] ; 2 uses
  %i.euo = ptrtoint ptr %.3 to i64
  %reass.sub = sub i64 %i.euo, %i.an
  %i.eup = add i64 %reass.sub, 1
  br label %.critedge

.critedge:                                        ; preds = %.preheader2986, %.preheader2986.1, %.preheader2986.2, %.preheader2986.3, %RSTRING_PTR.exit2566, %bb.iw, %bb.ai, %bb.ae, %.loopexit
  %.21941 = phi i64 [ %.019393345, %.loopexit ], [ %.11940, %bb.iw ], [ %.11940, %RSTRING_PTR.exit2566 ], [ %.019393345, %bb.ai ], [ %.019393345, %bb.ae ], [ %.11940, %.preheader2986.3 ], [ %.11940, %.preheader2986.2 ], [ %.11940, %.preheader2986.1 ], [ %.11940, %.preheader2986 ] ; 2 uses
  %.21936 = phi i8 [ 0, %.loopexit ], [ %.019343304, %bb.iw ], [ %.019343304, %RSTRING_PTR.exit2566 ], [ %.019343304, %bb.ai ], [ %.019343304, %bb.ae ], [ %.019343304, %.preheader2986.3 ], [ %.019343304, %.preheader2986.2 ], [ %.019343304, %.preheader2986.1 ], [ %.019343304, %.preheader2986 ]
  %.71931 = phi i32 [ 0, %.loopexit ], [ %.61930, %bb.iw ], [ %.61930, %RSTRING_PTR.exit2566 ], [ %.41928, %bb.ai ], [ %.21926, %bb.ae ], [ %.61930, %.preheader2986.3 ], [ %.61930, %.preheader2986.2 ], [ %.61930, %.preheader2986.1 ], [ %.61930, %.preheader2986 ]
  %.41923 = phi i32 [ -1, %.loopexit ], [ %.019193307, %bb.iw ], [ %.019193307, %RSTRING_PTR.exit2566 ], [ %.019193307, %bb.ai ], [ %.019193307, %bb.ae ], [ %.019193307, %.preheader2986.3 ], [ %.019193307, %.preheader2986.2 ], [ %.019193307, %.preheader2986.1 ], [ %.019193307, %.preheader2986 ]
  %.31917 = phi i64 [ %i.eup, %.loopexit ], [ %i.bpa, %bb.iw ], [ %i.bom, %RSTRING_PTR.exit2566 ], [ %i.er, %bb.ai ], [ %i.du, %bb.ae ], [ %.119153344, %.preheader2986 ], [ %i.bon, %.preheader2986.1 ], [ %i.bor, %.preheader2986.2 ], [ %i.bov, %.preheader2986.3 ] ; 2 uses
  %.21911 = phi ptr [ %spec.select, %.loopexit ], [ %i.bnz, %bb.iw ], [ %i.c, %RSTRING_PTR.exit2566 ], [ %i.eq, %bb.ai ], [ %i.dt, %bb.ae ], [ %i.bnz, %.preheader2986.3 ], [ %i.bnz, %.preheader2986.2 ], [ %i.bnz, %.preheader2986.1 ], [ %i.bnz, %.preheader2986 ]
end_hunk_0
begin_hunk_1_@rb_strftime_with_timespec:bb.a

vector.body4863:                                  ; preds = %pred.store.continue4913, %vector.ph4860
  %index4864 = phi i64 [ 0, %vector.ph4860 ], [ %index.next4914, %pred.store.continue4913 ] ; 17 uses
  %next.gep4865 = getelementptr i8, ptr %.36, i64 %index4864 ; 2 uses
  %i.ews = getelementptr i8, ptr %.36, i64 %index4864
  %next.gep4866 = getelementptr i8, ptr %i.ews, i64 1
  %i.ewt = getelementptr i8, ptr %.36, i64 %index4864
  %next.gep4867 = getelementptr i8, ptr %i.ewt, i64 2
  %i.ewu = getelementptr i8, ptr %.36, i64 %index4864
  %next.gep4868 = getelementptr i8, ptr %i.ewu, i64 3
  %i.ewv = getelementptr i8, ptr %.36, i64 %index4864
  %next.gep4869 = getelementptr i8, ptr %i.ewv, i64 4
  %i.eww = getelementptr i8, ptr %.36, i64 %index4864
  %next.gep4870 = getelementptr i8, ptr %i.eww, i64 5
  %i.ewx = getelementptr i8, ptr %.36, i64 %index4864
  %next.gep4871 = getelementptr i8, ptr %i.ewx, i64 6
  %i.ewy = getelementptr i8, ptr %.36, i64 %index4864
  %next.gep4872 = getelementptr i8, ptr %i.ewy, i64 7
  %i.ewz = getelementptr i8, ptr %.36, i64 %index4864
  %next.gep4873 = getelementptr i8, ptr %i.ewz, i64 8
  %i.exa = getelementptr i8, ptr %.36, i64 %index4864
  %next.gep4874 = getelementptr i8, ptr %i.exa, i64 9
  %i.exb = getelementptr i8, ptr %.36, i64 %index4864
  %next.gep4875 = getelementptr i8, ptr %i.exb, i64 10
  %i.exc = getelementptr i8, ptr %.36, i64 %index4864
  %next.gep4876 = getelementptr i8, ptr %i.exc, i64 11
  %i.exd = getelementptr i8, ptr %.36, i64 %index4864
  %next.gep4877 = getelementptr i8, ptr %i.exd, i64 12
  %i.exe = getelementptr i8, ptr %.36, i64 %index4864
  %next.gep4878 = getelementptr i8, ptr %i.exe, i64 13
  %i.exf = getelementptr i8, ptr %.36, i64 %index4864
  %next.gep4879 = getelementptr i8, ptr %i.exf, i64 14
  %i.exg = getelementptr i8, ptr %.36, i64 %index4864
  %next.gep4880 = getelementptr i8, ptr %i.exg, i64 15
  %wide.load4881 = load <16 x i8>, ptr %next.gep4865, align 1, !tbaa !16 ; 17 uses
  %i.exh = sext <16 x i8> %wide.load4881 to <16 x i32>
  %i.exi = add nsw <16 x i32> %i.exh, splat (i32 -65)
  %i.exj = icmp ult <16 x i32> %i.exi, splat (i32 26) ; 16 uses
  %i.exk = extractelement <16 x i1> %i.exj, i64 0
  br i1 %i.exk, label %pred.store.if4882, label %pred.store.continue4883

pred.store.if4882:                                ; preds = %vector.body4863
  %i.exl = extractelement <16 x i8> %wide.load4881, i64 0
  %i.exm = or i8 %i.exl, 32
  store i8 %i.exm, ptr %next.gep4865, align 1, !tbaa !16
  br label %pred.store.continue4883

pred.store.continue4883:                          ; preds = %pred.store.if4882, %vector.body4863
  %i.exn = extractelement <16 x i1> %i.exj, i64 1
  br i1 %i.exn, label %pred.store.if4884, label %pred.store.continue4885

pred.store.if4884:                                ; preds = %pred.store.continue4883
  %i.exo = extractelement <16 x i8> %wide.load4881, i64 1
  %i.exp = or i8 %i.exo, 32
  store i8 %i.exp, ptr %next.gep4866, align 1, !tbaa !16
  br label %pred.store.continue4885

pred.store.continue4885:                          ; preds = %pred.store.if4884, %pred.store.continue4883
  %i.exq = extractelement <16 x i1> %i.exj, i64 2
  br i1 %i.exq, label %pred.store.if4886, label %pred.store.continue4887

pred.store.if4886:                                ; preds = %pred.store.continue4885
  %i.exr = extractelement <16 x i8> %wide.load4881, i64 2
  %i.exs = or i8 %i.exr, 32
  store i8 %i.exs, ptr %next.gep4867, align 1, !tbaa !16
  br label %pred.store.continue4887

pred.store.continue4887:                          ; preds = %pred.store.if4886, %pred.store.continue4885
  %i.ext = extractelement <16 x i1> %i.exj, i64 3
  br i1 %i.ext, label %pred.store.if4888, label %pred.store.continue4889

pred.store.if4888:                                ; preds = %pred.store.continue4887
  %i.exu = extractelement <16 x i8> %wide.load4881, i64 3
  %i.exv = or i8 %i.exu, 32
  store i8 %i.exv, ptr %next.gep4868, align 1, !tbaa !16
  br label %pred.store.continue4889

pred.store.continue4889:                          ; preds = %pred.store.if4888, %pred.store.continue4887
  %i.exw = extractelement <16 x i1> %i.exj, i64 4
  br i1 %i.exw, label %pred.store.if4890, label %pred.store.continue4891

pred.store.if4890:                                ; preds = %pred.store.continue4889
  %i.exx = extractelement <16 x i8> %wide.load4881, i64 4
  %i.exy = or i8 %i.exx, 32
  store i8 %i.exy, ptr %next.gep4869, align 1, !tbaa !16
  br label %pred.store.continue4891

pred.store.continue4891:                          ; preds = %pred.store.if4890, %pred.store.continue4889
  %i.exz = extractelement <16 x i1> %i.exj, i64 5
  br i1 %i.exz, label %pred.store.if4892, label %pred.store.continue4893

pred.store.if4892:                                ; preds = %pred.store.continue4891
  %i.eya = extractelement <16 x i8> %wide.load4881, i64 5
  %i.eyb = or i8 %i.eya, 32
  store i8 %i.eyb, ptr %next.gep4870, align 1, !tbaa !16
  br label %pred.store.continue4893

pred.store.continue4893:                          ; preds = %pred.store.if4892, %pred.store.continue4891
  %i.eyc = extractelement <16 x i1> %i.exj, i64 6
  br i1 %i.eyc, label %pred.store.if4894, label %pred.store.continue4895

pred.store.if4894:                                ; preds = %pred.store.continue4893
  %i.eyd = extractelement <16 x i8> %wide.load4881, i64 6
  %i.eye = or i8 %i.eyd, 32
  store i8 %i.eye, ptr %next.gep4871, align 1, !tbaa !16
  br label %pred.store.continue4895

pred.store.continue4895:                          ; preds = %pred.store.if4894, %pred.store.continue4893
  %i.eyf = extractelement <16 x i1> %i.exj, i64 7
  br i1 %i.eyf, label %pred.store.if4896, label %pred.store.continue4897

pred.store.if4896:                                ; preds = %pred.store.continue4895
  %i.eyg = extractelement <16 x i8> %wide.load4881, i64 7
  %i.eyh = or i8 %i.eyg, 32
  store i8 %i.eyh, ptr %next.gep4872, align 1, !tbaa !16
  br label %pred.store.continue4897

pred.store.continue4897:                          ; preds = %pred.store.if4896, %pred.store.continue4895
  %i.eyi = extractelement <16 x i1> %i.exj, i64 8
  br i1 %i.eyi, label %pred.store.if4898, label %pred.store.continue4899

pred.store.if4898:                                ; preds = %pred.store.continue4897
  %i.eyj = extractelement <16 x i8> %wide.load4881, i64 8
  %i.eyk = or i8 %i.eyj, 32
  store i8 %i.eyk, ptr %next.gep4873, align 1, !tbaa !16
  br label %pred.store.continue4899

pred.store.continue4899:                          ; preds = %pred.store.if4898, %pred.store.continue4897
  %i.eyl = extractelement <16 x i1> %i.exj, i64 9
  br i1 %i.eyl, label %pred.store.if4900, label %pred.store.continue4901

pred.store.if4900:                                ; preds = %pred.store.continue4899
  %i.eym = extractelement <16 x i8> %wide.load4881, i64 9
  %i.eyn = or i8 %i.eym, 32
  store i8 %i.eyn, ptr %next.gep4874, align 1, !tbaa !16
  br label %pred.store.continue4901

pred.store.continue4901:                          ; preds = %pred.store.if4900, %pred.store.continue4899
  %i.eyo = extractelement <16 x i1> %i.exj, i64 10
  br i1 %i.eyo, label %pred.store.if4902, label %pred.store.continue4903

pred.store.if4902:                                ; preds = %pred.store.continue4901
  %i.eyp = extractelement <16 x i8> %wide.load4881, i64 10
  %i.eyq = or i8 %i.eyp, 32
  store i8 %i.eyq, ptr %next.gep4875, align 1, !tbaa !16
  br label %pred.store.continue4903

pred.store.continue4903:                          ; preds = %pred.store.if4902, %pred.store.continue4901
  %i.eyr = extractelement <16 x i1> %i.exj, i64 11
  br i1 %i.eyr, label %pred.store.if4904, label %pred.store.continue4905

pred.store.if4904:                                ; preds = %pred.store.continue4903
  %i.eys = extractelement <16 x i8> %wide.load4881, i64 11
  %i.eyt = or i8 %i.eys, 32
  store i8 %i.eyt, ptr %next.gep4876, align 1, !tbaa !16
  br label %pred.store.continue4905

pred.store.continue4905:                          ; preds = %pred.store.if4904, %pred.store.continue4903
  %i.eyu = extractelement <16 x i1> %i.exj, i64 12
  br i1 %i.eyu, label %pred.store.if4906, label %pred.store.continue4907

pred.store.if4906:                                ; preds = %pred.store.continue4905
  %i.eyv = extractelement <16 x i8> %wide.load4881, i64 12
  %i.eyw = or i8 %i.eyv, 32
  store i8 %i.eyw, ptr %next.gep4877, align 1, !tbaa !16
  br label %pred.store.continue4907

pred.store.continue4907:                          ; preds = %pred.store.if4906, %pred.store.continue4905
  %i.eyx = extractelement <16 x i1> %i.exj, i64 13
  br i1 %i.eyx, label %pred.store.if4908, label %pred.store.continue4909

pred.store.if4908:                                ; preds = %pred.store.continue4907
  %i.eyy = extractelement <16 x i8> %wide.load4881, i64 13
  %i.eyz = or i8 %i.eyy, 32
  store i8 %i.eyz, ptr %next.gep4878, align 1, !tbaa !16
  br label %pred.store.continue4909

pred.store.continue4909:                          ; preds = %pred.store.if4908, %pred.store.continue4907
  %i.eza = extractelement <16 x i1> %i.exj, i64 14
  br i1 %i.eza, label %pred.store.if4910, label %pred.store.continue4911

pred.store.if4910:                                ; preds = %pred.store.continue4909
  %i.ezb = extractelement <16 x i8> %wide.load4881, i64 14
  %i.ezc = or i8 %i.ezb, 32
  store i8 %i.ezc, ptr %next.gep4879, align 1, !tbaa !16
  br label %pred.store.continue4911

pred.store.continue4911:                          ; preds = %pred.store.if4910, %pred.store.continue4909
  %i.ezd = extractelement <16 x i1> %i.exj, i64 15
  br i1 %i.ezd, label %pred.store.if4912, label %pred.store.continue4913

pred.store.if4912:                                ; preds = %pred.store.continue4911
  %i.eze = extractelement <16 x i8> %wide.load4881, i64 15
  %i.ezf = or i8 %i.eze, 32
  store i8 %i.ezf, ptr %next.gep4880, align 1, !tbaa !16
  br label %pred.store.continue4913

pred.store.continue4913:                          ; preds = %pred.store.if4912, %pred.store.continue4911
  %index.next4914 = add nuw i64 %index4864, 16    ; 2 uses
  %i.ezg = icmp eq i64 %index.next4914, %n.vec4862
  br i1 %i.ezg, label %middle.block4915, label %vector.body4863, !llvm.loop !95

middle.block4915:                                 ; preds = %pred.store.continue4913
  %cmp.n4916 = icmp eq i64 %.319172963, %n.vec4862
  br i1 %cmp.n4916, label %case_conv.exit2868, label %vec.epilog.iter.check4921

vec.epilog.iter.check4921:                        ; preds = %middle.block4915
  %min.epilog.iters.check4922 = icmp eq i64 %n.mod.vf4861, 0
  br i1 %min.epilog.iters.check4922, label %.preheader20.i2859.preheader, label %vec.epilog.ph4923, !prof !25

vec.epilog.ph4923:                                ; preds = %vector.main.loop.iter.check4858, %vec.epilog.iter.check4921
  %vec.epilog.resume.val4917 = phi i64 [ %n.vec4862, %vec.epilog.iter.check4921 ], [ 0, %vector.main.loop.iter.check4858 ]
  %n.vec4925 = and i64 %.319172963, -4            ; 3 uses
  %i.ezh = and i64 %.319172963, 3
  %i.ezi = getelementptr i8, ptr %.36, i64 %n.vec4925 ; 2 uses
  br label %vec.epilog.vector.body4926

vec.epilog.vector.body4926:                       ; preds = %pred.store.continue4940, %vec.epilog.ph4923
  %index4927 = phi i64 [ %vec.epilog.resume.val4917, %vec.epilog.ph4923 ], [ %index.next4941, %pred.store.continue4940 ] ; 5 uses
  %next.gep4928 = getelementptr i8, ptr %.36, i64 %index4927 ; 2 uses
  %i.ezj = getelementptr i8, ptr %.36, i64 %index4927
  %next.gep4929 = getelementptr i8, ptr %i.ezj, i64 1
  %i.ezk = getelementptr i8, ptr %.36, i64 %index4927
  %next.gep4930 = getelementptr i8, ptr %i.ezk, i64 2
  %i.ezl = getelementptr i8, ptr %.36, i64 %index4927
  %next.gep4931 = getelementptr i8, ptr %i.ezl, i64 3
  %wide.load4932 = load <4 x i8>, ptr %next.gep4928, align 1, !tbaa !16 ; 5 uses
  %i.ezm = sext <4 x i8> %wide.load4932 to <4 x i32>
  %i.ezn = add nsw <4 x i32> %i.ezm, splat (i32 -65)
  %i.ezo = icmp ult <4 x i32> %i.ezn, splat (i32 26) ; 4 uses
  %i.ezp = extractelement <4 x i1> %i.ezo, i64 0
  br i1 %i.ezp, label %pred.store.if4933, label %pred.store.continue4934

pred.store.if4933:                                ; preds = %vec.epilog.vector.body4926
  %i.ezq = extractelement <4 x i8> %wide.load4932, i64 0
  %i.ezr = or i8 %i.ezq, 32
  store i8 %i.ezr, ptr %next.gep4928, align 1, !tbaa !16
  br label %pred.store.continue4934

pred.store.continue4934:                          ; preds = %pred.store.if4933, %vec.epilog.vector.body4926
  %i.ezs = extractelement <4 x i1> %i.ezo, i64 1
  br i1 %i.ezs, label %pred.store.if4935, label %pred.store.continue4936

pred.store.if4935:                                ; preds = %pred.store.continue4934
  %i.ezt = extractelement <4 x i8> %wide.load4932, i64 1
  %i.ezu = or i8 %i.ezt, 32
  store i8 %i.ezu, ptr %next.gep4929, align 1, !tbaa !16
  br label %pred.store.continue4936

pred.store.continue4936:                          ; preds = %pred.store.if4935, %pred.store.continue4934
  %i.ezv = extractelement <4 x i1> %i.ezo, i64 2
  br i1 %i.ezv, label %pred.store.if4937, label %pred.store.continue4938

pred.store.if4937:                                ; preds = %pred.store.continue4936
  %i.ezw = extractelement <4 x i8> %wide.load4932, i64 2
  %i.ezx = or i8 %i.ezw, 32
  store i8 %i.ezx, ptr %next.gep4930, align 1, !tbaa !16
  br label %pred.store.continue4938

pred.store.continue4938:                          ; preds = %pred.store.if4937, %pred.store.continue4936
  %i.ezy = extractelement <4 x i1> %i.ezo, i64 3
  br i1 %i.ezy, label %pred.store.if4939, label %pred.store.continue4940

pred.store.if4939:                                ; preds = %pred.store.continue4938
  %i.ezz = extractelement <4 x i8> %wide.load4932, i64 3
  %i.faa = or i8 %i.ezz, 32
  store i8 %i.faa, ptr %next.gep4931, align 1, !tbaa !16
  br label %pred.store.continue4940

pred.store.continue4940:                          ; preds = %pred.store.if4939, %pred.store.continue4938
  %index.next4941 = add nuw i64 %index4927, 4     ; 2 uses
  %i.fab = icmp eq i64 %index.next4941, %n.vec4925
  br i1 %i.fab, label %vec.epilog.middle.block4942, label %vec.epilog.vector.body4926, !llvm.loop !96

vec.epilog.middle.block4942:                      ; preds = %pred.store.continue4940
  %cmp.n4943 = icmp eq i64 %.319172963, %n.vec4925
  br i1 %cmp.n4943, label %case_conv.exit2868, label %.preheader20.i2859.preheader

.preheader20.i2859.preheader:                     ; preds = %iter.check4919, %vec.epilog.iter.check4921, %vec.epilog.middle.block4942
  %.114.i2860.ph = phi i64 [ %.319172963, %iter.check4919 ], [ %i.ewq, %vec.epilog.iter.check4921 ], [ %i.ezh, %vec.epilog.middle.block4942 ]
  %.1.i2861.ph = phi ptr [ %.36, %iter.check4919 ], [ %i.ewr, %vec.epilog.iter.check4921 ], [ %i.ezi, %vec.epilog.middle.block4942 ]
  br label %.preheader20.i2859

iter.check:                                       ; preds = %ruby_nonempty_memcpy.exit2858
  %min.iters.check = icmp ult i64 %.319172963, 4
  br i1 %min.iters.check, label %.preheader.i2864.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check4790 = icmp ult i64 %.319172963, 16
  br i1 %min.iters.check4790, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.319172963, 12
  %n.vec = and i64 %.319172963, -16               ; 4 uses
  %i.fac = and i64 %.319172963, 15
  %i.fad = getelementptr i8, ptr %.36, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue4835, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue4835 ] ; 17 uses
  %next.gep = getelementptr i8, ptr %.36, i64 %index ; 2 uses
  %i.fae = getelementptr i8, ptr %.36, i64 %index
  %next.gep4791 = getelementptr i8, ptr %i.fae, i64 1
  %i.faf = getelementptr i8, ptr %.36, i64 %index
  %next.gep4792 = getelementptr i8, ptr %i.faf, i64 2
  %i.fag = getelementptr i8, ptr %.36, i64 %index
  %next.gep4793 = getelementptr i8, ptr %i.fag, i64 3
  %i.fah = getelementptr i8, ptr %.36, i64 %index
  %next.gep4794 = getelementptr i8, ptr %i.fah, i64 4
  %i.fai = getelementptr i8, ptr %.36, i64 %index
  %next.gep4795 = getelementptr i8, ptr %i.fai, i64 5
  %i.faj = getelementptr i8, ptr %.36, i64 %index
  %next.gep4796 = getelementptr i8, ptr %i.faj, i64 6
  %i.fak = getelementptr i8, ptr %.36, i64 %index
  %next.gep4797 = getelementptr i8, ptr %i.fak, i64 7
  %i.fal = getelementptr i8, ptr %.36, i64 %index
  %next.gep4798 = getelementptr i8, ptr %i.fal, i64 8
  %i.fam = getelementptr i8, ptr %.36, i64 %index
  %next.gep4799 = getelementptr i8, ptr %i.fam, i64 9
  %i.fan = getelementptr i8, ptr %.36, i64 %index
  %next.gep4800 = getelementptr i8, ptr %i.fan, i64 10
  %i.fao = getelementptr i8, ptr %.36, i64 %index
  %next.gep4801 = getelementptr i8, ptr %i.fao, i64 11
  %i.fap = getelementptr i8, ptr %.36, i64 %index
  %next.gep4802 = getelementptr i8, ptr %i.fap, i64 12
  %i.faq = getelementptr i8, ptr %.36, i64 %index
  %next.gep4803 = getelementptr i8, ptr %i.faq, i64 13
  %i.far = getelementptr i8, ptr %.36, i64 %index
  %next.gep4804 = getelementptr i8, ptr %i.far, i64 14
  %i.fas = getelementptr i8, ptr %.36, i64 %index
  %next.gep4805 = getelementptr i8, ptr %i.fas, i64 15
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !16 ; 17 uses
  %i.fat = sext <16 x i8> %wide.load to <16 x i32>
  %i.fau = add nsw <16 x i32> %i.fat, splat (i32 -97)
  %i.fav = icmp ult <16 x i32> %i.fau, splat (i32 26) ; 16 uses
  %i.faw = extractelement <16 x i1> %i.fav, i64 0
  br i1 %i.faw, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.fax = extractelement <16 x i8> %wide.load, i64 0
  %i.fay = and i8 %i.fax, 95
  store i8 %i.fay, ptr %next.gep, align 1, !tbaa !16
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.faz = extractelement <16 x i1> %i.fav, i64 1
  br i1 %i.faz, label %pred.store.if4806, label %pred.store.continue4807

pred.store.if4806:                                ; preds = %pred.store.continue
  %i.fba = extractelement <16 x i8> %wide.load, i64 1
  %i.fbb = and i8 %i.fba, 95
  store i8 %i.fbb, ptr %next.gep4791, align 1, !tbaa !16
  br label %pred.store.continue4807

pred.store.continue4807:                          ; preds = %pred.store.if4806, %pred.store.continue
  %i.fbc = extractelement <16 x i1> %i.fav, i64 2
  br i1 %i.fbc, label %pred.store.if4808, label %pred.store.continue4809

pred.store.if4808:                                ; preds = %pred.store.continue4807
  %i.fbd = extractelement <16 x i8> %wide.load, i64 2
  %i.fbe = and i8 %i.fbd, 95
  store i8 %i.fbe, ptr %next.gep4792, align 1, !tbaa !16
  br label %pred.store.continue4809

pred.store.continue4809:                          ; preds = %pred.store.if4808, %pred.store.continue4807
  %i.fbf = extractelement <16 x i1> %i.fav, i64 3
  br i1 %i.fbf, label %pred.store.if4810, label %pred.store.continue4811

pred.store.if4810:                                ; preds = %pred.store.continue4809
  %i.fbg = extractelement <16 x i8> %wide.load, i64 3
  %i.fbh = and i8 %i.fbg, 95
  store i8 %i.fbh, ptr %next.gep4793, align 1, !tbaa !16
  br label %pred.store.continue4811

pred.store.continue4811:                          ; preds = %pred.store.if4810, %pred.store.continue4809
  %i.fbi = extractelement <16 x i1> %i.fav, i64 4
  br i1 %i.fbi, label %pred.store.if4812, label %pred.store.continue4813

pred.store.if4812:                                ; preds = %pred.store.continue4811
  %i.fbj = extractelement <16 x i8> %wide.load, i64 4
  %i.fbk = and i8 %i.fbj, 95
  store i8 %i.fbk, ptr %next.gep4794, align 1, !tbaa !16
  br label %pred.store.continue4813

pred.store.continue4813:                          ; preds = %pred.store.if4812, %pred.store.continue4811
  %i.fbl = extractelement <16 x i1> %i.fav, i64 5
  br i1 %i.fbl, label %pred.store.if4814, label %pred.store.continue4815

pred.store.if4814:                                ; preds = %pred.store.continue4813
  %i.fbm = extractelement <16 x i8> %wide.load, i64 5
  %i.fbn = and i8 %i.fbm, 95
  store i8 %i.fbn, ptr %next.gep4795, align 1, !tbaa !16
  br label %pred.store.continue4815

pred.store.continue4815:                          ; preds = %pred.store.if4814, %pred.store.continue4813
  %i.fbo = extractelement <16 x i1> %i.fav, i64 6
  br i1 %i.fbo, label %pred.store.if4816, label %pred.store.continue4817

pred.store.if4816:                                ; preds = %pred.store.continue4815
  %i.fbp = extractelement <16 x i8> %wide.load, i64 6
  %i.fbq = and i8 %i.fbp, 95
  store i8 %i.fbq, ptr %next.gep4796, align 1, !tbaa !16
  br label %pred.store.continue4817

pred.store.continue4817:                          ; preds = %pred.store.if4816, %pred.store.continue4815
  %i.fbr = extractelement <16 x i1> %i.fav, i64 7
  br i1 %i.fbr, label %pred.store.if4818, label %pred.store.continue4819

pred.store.if4818:                                ; preds = %pred.store.continue4817
  %i.fbs = extractelement <16 x i8> %wide.load, i64 7
  %i.fbt = and i8 %i.fbs, 95
  store i8 %i.fbt, ptr %next.gep4797, align 1, !tbaa !16
  br label %pred.store.continue4819

pred.store.continue4819:                          ; preds = %pred.store.if4818, %pred.store.continue4817
  %i.fbu = extractelement <16 x i1> %i.fav, i64 8
  br i1 %i.fbu, label %pred.store.if4820, label %pred.store.continue4821

pred.store.if4820:                                ; preds = %pred.store.continue4819
  %i.fbv = extractelement <16 x i8> %wide.load, i64 8
  %i.fbw = and i8 %i.fbv, 95
  store i8 %i.fbw, ptr %next.gep4798, align 1, !tbaa !16
  br label %pred.store.continue4821

pred.store.continue4821:                          ; preds = %pred.store.if4820, %pred.store.continue4819
  %i.fbx = extractelement <16 x i1> %i.fav, i64 9
  br i1 %i.fbx, label %pred.store.if4822, label %pred.store.continue4823

pred.store.if4822:                                ; preds = %pred.store.continue4821
  %i.fby = extractelement <16 x i8> %wide.load, i64 9
  %i.fbz = and i8 %i.fby, 95
  store i8 %i.fbz, ptr %next.gep4799, align 1, !tbaa !16
  br label %pred.store.continue4823

pred.store.continue4823:                          ; preds = %pred.store.if4822, %pred.store.continue4821
  %i.fca = extractelement <16 x i1> %i.fav, i64 10
  br i1 %i.fca, label %pred.store.if4824, label %pred.store.continue4825

pred.store.if4824:                                ; preds = %pred.store.continue4823
  %i.fcb = extractelement <16 x i8> %wide.load, i64 10
  %i.fcc = and i8 %i.fcb, 95
  store i8 %i.fcc, ptr %next.gep4800, align 1, !tbaa !16
  br label %pred.store.continue4825

pred.store.continue4825:                          ; preds = %pred.store.if4824, %pred.store.continue4823
  %i.fcd = extractelement <16 x i1> %i.fav, i64 11
  br i1 %i.fcd, label %pred.store.if4826, label %pred.store.continue4827

pred.store.if4826:                                ; preds = %pred.store.continue4825
  %i.fce = extractelement <16 x i8> %wide.load, i64 11
  %i.fcf = and i8 %i.fce, 95
  store i8 %i.fcf, ptr %next.gep4801, align 1, !tbaa !16
  br label %pred.store.continue4827

pred.store.continue4827:                          ; preds = %pred.store.if4826, %pred.store.continue4825
  %i.fcg = extractelement <16 x i1> %i.fav, i64 12
  br i1 %i.fcg, label %pred.store.if4828, label %pred.store.continue4829

pred.store.if4828:                                ; preds = %pred.store.continue4827
  %i.fch = extractelement <16 x i8> %wide.load, i64 12
  %i.fci = and i8 %i.fch, 95
  store i8 %i.fci, ptr %next.gep4802, align 1, !tbaa !16
  br label %pred.store.continue4829

pred.store.continue4829:                          ; preds = %pred.store.if4828, %pred.store.continue4827
  %i.fcj = extractelement <16 x i1> %i.fav, i64 13
  br i1 %i.fcj, label %pred.store.if4830, label %pred.store.continue4831

pred.store.if4830:                                ; preds = %pred.store.continue4829
  %i.fck = extractelement <16 x i8> %wide.load, i64 13
  %i.fcl = and i8 %i.fck, 95
  store i8 %i.fcl, ptr %next.gep4803, align 1, !tbaa !16
  br label %pred.store.continue4831

pred.store.continue4831:                          ; preds = %pred.store.if4830, %pred.store.continue4829
  %i.fcm = extractelement <16 x i1> %i.fav, i64 14
  br i1 %i.fcm, label %pred.store.if4832, label %pred.store.continue4833

pred.store.if4832:                                ; preds = %pred.store.continue4831
  %i.fcn = extractelement <16 x i8> %wide.load, i64 14
  %i.fco = and i8 %i.fcn, 95
  store i8 %i.fco, ptr %next.gep4804, align 1, !tbaa !16
  br label %pred.store.continue4833

pred.store.continue4833:                          ; preds = %pred.store.if4832, %pred.store.continue4831
  %i.fcp = extractelement <16 x i1> %i.fav, i64 15
  br i1 %i.fcp, label %pred.store.if4834, label %pred.store.continue4835

pred.store.if4834:                                ; preds = %pred.store.continue4833
  %i.fcq = extractelement <16 x i8> %wide.load, i64 15
  %i.fcr = and i8 %i.fcq, 95
  store i8 %i.fcr, ptr %next.gep4805, align 1, !tbaa !16
  br label %pred.store.continue4835

pred.store.continue4835:                          ; preds = %pred.store.if4834, %pred.store.continue4833
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fcs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fcs, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %pred.store.continue4835
  %cmp.n = icmp eq i64 %.319172963, %n.vec
  br i1 %cmp.n, label %case_conv.exit2868, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.i2864.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec4838 = and i64 %.319172963, -4            ; 3 uses
  %i.fct = and i64 %.319172963, 3
  %i.fcu = getelementptr i8, ptr %.36, i64 %n.vec4838 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue4852, %vec.epilog.ph
  %index4839 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next4853, %pred.store.continue4852 ] ; 5 uses
  %next.gep4840 = getelementptr i8, ptr %.36, i64 %index4839 ; 2 uses
  %i.fcv = getelementptr i8, ptr %.36, i64 %index4839
  %next.gep4841 = getelementptr i8, ptr %i.fcv, i64 1
  %i.fcw = getelementptr i8, ptr %.36, i64 %index4839
  %next.gep4842 = getelementptr i8, ptr %i.fcw, i64 2
  %i.fcx = getelementptr i8, ptr %.36, i64 %index4839
  %next.gep4843 = getelementptr i8, ptr %i.fcx, i64 3
  %wide.load4844 = load <4 x i8>, ptr %next.gep4840, align 1, !tbaa !16 ; 5 uses
  %i.fcy = sext <4 x i8> %wide.load4844 to <4 x i32>
  %i.fcz = add nsw <4 x i32> %i.fcy, splat (i32 -97)
  %i.fda = icmp ult <4 x i32> %i.fcz, splat (i32 26) ; 4 uses
  %i.fdb = extractelement <4 x i1> %i.fda, i64 0
  br i1 %i.fdb, label %pred.store.if4845, label %pred.store.continue4846

pred.store.if4845:                                ; preds = %vec.epilog.vector.body
  %i.fdc = extractelement <4 x i8> %wide.load4844, i64 0
  %i.fdd = and i8 %i.fdc, 95
  store i8 %i.fdd, ptr %next.gep4840, align 1, !tbaa !16
  br label %pred.store.continue4846

pred.store.continue4846:                          ; preds = %pred.store.if4845, %vec.epilog.vector.body
  %i.fde = extractelement <4 x i1> %i.fda, i64 1
  br i1 %i.fde, label %pred.store.if4847, label %pred.store.continue4848

pred.store.if4847:                                ; preds = %pred.store.continue4846
  %i.fdf = extractelement <4 x i8> %wide.load4844, i64 1
  %i.fdg = and i8 %i.fdf, 95
  store i8 %i.fdg, ptr %next.gep4841, align 1, !tbaa !16
  br label %pred.store.continue4848

pred.store.continue4848:                          ; preds = %pred.store.if4847, %pred.store.continue4846
  %i.fdh = extractelement <4 x i1> %i.fda, i64 2
  br i1 %i.fdh, label %pred.store.if4849, label %pred.store.continue4850

pred.store.if4849:                                ; preds = %pred.store.continue4848
  %i.fdi = extractelement <4 x i8> %wide.load4844, i64 2
  %i.fdj = and i8 %i.fdi, 95
  store i8 %i.fdj, ptr %next.gep4842, align 1, !tbaa !16
  br label %pred.store.continue4850

pred.store.continue4850:                          ; preds = %pred.store.if4849, %pred.store.continue4848
  %i.fdk = extractelement <4 x i1> %i.fda, i64 3
  br i1 %i.fdk, label %pred.store.if4851, label %pred.store.continue4852

pred.store.if4851:                                ; preds = %pred.store.continue4850
  %i.fdl = extractelement <4 x i8> %wide.load4844, i64 3
  %i.fdm = and i8 %i.fdl, 95
  store i8 %i.fdm, ptr %next.gep4843, align 1, !tbaa !16
  br label %pred.store.continue4852

pred.store.continue4852:                          ; preds = %pred.store.if4851, %pred.store.continue4850
  %index.next4853 = add nuw i64 %index4839, 4     ; 2 uses
  %i.fdn = icmp eq i64 %index.next4853, %n.vec4838
  br i1 %i.fdn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !98

vec.epilog.middle.block:                          ; preds = %pred.store.continue4852
  %cmp.n4854 = icmp eq i64 %.319172963, %n.vec4838
  br i1 %cmp.n4854, label %case_conv.exit2868, label %.preheader.i2864.preheader

.preheader.i2864.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.013.i2865.ph = phi i64 [ %.319172963, %iter.check ], [ %i.fac, %vec.epilog.iter.check ], [ %i.fct, %vec.epilog.middle.block ]
  %.0.i2866.ph = phi ptr [ %.36, %iter.check ], [ %i.fad, %vec.epilog.iter.check ], [ %i.fcu, %vec.epilog.middle.block ]
  br label %.preheader.i2864

.preheader.i2864:                                 ; preds = %.preheader.i2864.preheader, %bb.sm
  %.013.i2865 = phi i64 [ %i.fdu, %bb.sm ], [ %.013.i2865.ph, %.preheader.i2864.preheader ]
  %.0.i2866 = phi ptr [ %i.fdt, %bb.sm ], [ %.0.i2866.ph, %.preheader.i2864.preheader ] ; 3 uses
  %i.fdo = load i8, ptr %.0.i2866, align 1, !tbaa !16 ; 2 uses
  %i.fdp = sext i8 %i.fdo to i32
  %i.fdq = add nsw i32 %i.fdp, -123
  %i.fdr = icmp ult i32 %i.fdq, -26
  br i1 %i.fdr, label %bb.sm, label %bb.sl

bb.sl:                                            ; preds = %.preheader.i2864
  %i.fds = and i8 %i.fdo, 95
  store i8 %i.fds, ptr %.0.i2866, align 1, !tbaa !16
  br label %bb.sm

bb.sm:                                            ; preds = %bb.sl, %.preheader.i2864
  %i.fdt = getelementptr i8, ptr %.0.i2866, i64 1 ; 2 uses
  %i.fdu = add i64 %.013.i2865, -1                ; 2 uses
  %.not19.i2867 = icmp eq i64 %i.fdu, 0
  br i1 %.not19.i2867, label %case_conv.exit2868, label %.preheader.i2864, !llvm.loop !99

.preheader20.i2859:                               ; preds = %.preheader20.i2859.preheader, %bb.so
  %.114.i2860 = phi i64 [ %i.feb, %bb.so ], [ %.114.i2860.ph, %.preheader20.i2859.preheader ]
  %.1.i2861 = phi ptr [ %i.fea, %bb.so ], [ %.1.i2861.ph, %.preheader20.i2859.preheader ] ; 3 uses
  %i.fdv = load i8, ptr %.1.i2861, align 1, !tbaa !16 ; 2 uses
  %i.fdw = sext i8 %i.fdv to i32
  %i.fdx = add nsw i32 %i.fdw, -91
  %i.fdy = icmp ult i32 %i.fdx, -26
  br i1 %i.fdy, label %bb.so, label %bb.sn

bb.sn:                                            ; preds = %.preheader20.i2859
  %i.fdz = or i8 %i.fdv, 32
  store i8 %i.fdz, ptr %.1.i2861, align 1, !tbaa !16
  br label %bb.so

bb.so:                                            ; preds = %bb.sn, %.preheader20.i2859
  %i.fea = getelementptr i8, ptr %.1.i2861, i64 1 ; 2 uses
  %i.feb = add i64 %.114.i2860, -1                ; 2 uses
  %.not17.i2862 = icmp eq i64 %i.feb, 0
  br i1 %.not17.i2862, label %case_conv.exit2868, label %.preheader20.i2859, !llvm.loop !100

bb.sp:                                            ; preds = %ruby_nonempty_memcpy.exit2858
  %i.fec = getelementptr i8, ptr %.36, i64 %.319172963
  br label %case_conv.exit2868

case_conv.exit2868:                               ; preds = %bb.so, %bb.sm, %middle.block4915, %vec.epilog.middle.block4942, %middle.block, %vec.epilog.middle.block, %case_conv.exit2831, %case_conv.exit2704, %case_conv.exit2664, %case_conv.exit2644, %case_conv.exit2624, %case_conv.exit2594, %case_conv.exit2515, %case_conv.exit2495, %case_conv.exit, %bb.ik, %bb.sp, %RSTRING_PTR.exit2805, %RSTRING_PTR.exit2795, %RSTRING_PTR.exit2781, %RSTRING_PTR.exit2728, %RSTRING_PTR.exit2742, %RSTRING_PTR.exit2438, %RSTRING_PTR.exit2440, %.critedge, %buffer_size_check.exit2839, %bb.qo, %bb.qs, %buffer_size_check.exit2712, %buffer_size_check.exit2672, %buffer_size_check.exit2652, %buffer_size_check.exit2632, %buffer_size_check.exit2602, %bb.ii, %bb.ig, %bb.ic, %RSTRING_PTR.exit2544, %RSTRING_PTR.exit2555, %buffer_size_check.exit2523, %buffer_size_check.exit2503, %RSTRING_PTR.exit2435, %buffer_size_check.exit2365, %RSTRING_PTR.exit2762, %RSTRING_PTR.exit2752, %RSTRING_PTR.exit2692, %RSTRING_PTR.exit2682, %RSTRING_PTR.exit2612, %bb.js, %bb.jh, %RSTRING_PTR.exit2534, %RSTRING_PTR.exit2483, %RSTRING_PTR.exit2470, %RSTRING_PTR.exit2460, %RSTRING_PTR.exit2450, %RSTRING_PTR.exit2425, %RSTRING_PTR.exit2415, %RSTRING_PTR.exit2405, %RSTRING_PTR.exit2395, %RSTRING_PTR.exit2385, %RSTRING_PTR.exit2375, %bb.aa
  %.31942 = phi i64 [ %.219412959, %bb.sp ], [ %.21941, %.critedge ], [ %.019393345, %bb.aa ], [ %.019393345, %buffer_size_check.exit2365 ], [ %.219412959, %middle.block ], [ %.019393345, %RSTRING_PTR.exit2375 ], [ %.019393345, %RSTRING_PTR.exit2385 ], [ %.019393345, %RSTRING_PTR.exit2395 ], [ %.019393345, %RSTRING_PTR.exit2405 ], [ %.019393345, %RSTRING_PTR.exit2415 ], [ %.019393345, %RSTRING_PTR.exit2425 ], [ %.019393345, %RSTRING_PTR.exit2435 ], [ %.019393345, %case_conv.exit2704 ], [ %.019393345, %RSTRING_PTR.exit2450 ], [ %.019393345, %RSTRING_PTR.exit2460 ], [ %.019393345, %RSTRING_PTR.exit2470 ], [ %.019393345, %RSTRING_PTR.exit2483 ], [ %.019393345, %buffer_size_check.exit2503 ], [ %.019393345, %case_conv.exit ], [ %.019393345, %buffer_size_check.exit2523 ], [ %.019393345, %case_conv.exit2495 ], [ %.019393345, %RSTRING_PTR.exit2534 ], [ %.019393345, %RSTRING_PTR.exit2544 ], [ %.019393345, %RSTRING_PTR.exit2555 ], [ %.019393345, %bb.ic ], [ %.019393345, %bb.ii ], [ %.019393345, %bb.ig ], [ %.019393345, %bb.jh ], [ %.019393345, %bb.js ], [ %.019393345, %buffer_size_check.exit2602 ], [ %.019393345, %case_conv.exit2515 ], [ %.019393345, %RSTRING_PTR.exit2612 ], [ %.019393345, %buffer_size_check.exit2632 ], [ %.019393345, %case_conv.exit2594 ], [ %.019393345, %buffer_size_check.exit2652 ], [ %.019393345, %case_conv.exit2624 ], [ %.019393345, %buffer_size_check.exit2672 ], [ %.019393345, %case_conv.exit2644 ], [ %.019393345, %RSTRING_PTR.exit2682 ], [ %.019393345, %RSTRING_PTR.exit2692 ], [ %.019393345, %buffer_size_check.exit2712 ], [ %.019393345, %case_conv.exit2664 ], [ %.019393345, %RSTRING_PTR.exit2438 ], [ %.019393345, %RSTRING_PTR.exit2752 ], [ %.019393345, %RSTRING_PTR.exit2762 ], [ %.019393345, %RSTRING_PTR.exit2728 ], [ %.019393345, %bb.qo ], [ %.019393345, %bb.qs ], [ %.019393345, %buffer_size_check.exit2839 ], [ %.019393345, %RSTRING_PTR.exit2440 ], [ %.019393345, %RSTRING_PTR.exit2742 ], [ %.019393345, %RSTRING_PTR.exit2781 ], [ %.019393345, %RSTRING_PTR.exit2795 ], [ %.019393345, %RSTRING_PTR.exit2805 ], [ %.019393345, %bb.ik ], [ %.019393345, %case_conv.exit2831 ], [ %.219412959, %middle.block4915 ], [ %.219412959, %vec.epilog.middle.block ], [ %.219412959, %bb.sm ], [ %.219412959, %vec.epilog.middle.block4942 ], [ %.219412959, %bb.so ]
  %.37 = phi ptr [ %i.fec, %bb.sp ], [ %i.bl, %.critedge ], [ %i.db, %bb.aa ], [ %i.nw, %buffer_size_check.exit2365 ], [ %i.fad, %middle.block ], [ %i.ps, %RSTRING_PTR.exit2375 ], [ %i.rm, %RSTRING_PTR.exit2385 ], [ %i.tj, %RSTRING_PTR.exit2395 ], [ %i.vd, %RSTRING_PTR.exit2405 ], [ %i.wy, %RSTRING_PTR.exit2415 ], [ %i.ys, %RSTRING_PTR.exit2425 ], [ %i.aar, %RSTRING_PTR.exit2435 ], [ %i.dql, %case_conv.exit2704 ], [ %i.aex, %RSTRING_PTR.exit2450 ], [ %i.agx, %RSTRING_PTR.exit2460 ], [ %i.air, %RSTRING_PTR.exit2470 ], [ %i.akt, %RSTRING_PTR.exit2483 ], [ %i.aty, %buffer_size_check.exit2503 ], [ %i.mw, %case_conv.exit ], [ %i.bdf, %buffer_size_check.exit2523 ], [ %i.asy, %case_conv.exit2495 ], [ %i.bfc, %RSTRING_PTR.exit2534 ], [ %i.bgw, %RSTRING_PTR.exit2544 ], [ %i.bjg, %RSTRING_PTR.exit2555 ], [ %i.bmm, %bb.ic ], [ %i.bnm, %bb.ii ], [ %i.bna, %bb.ig ], [ %i.bql, %bb.jh ], [ %i.brw, %bb.js ], [ %i.cbb, %buffer_size_check.exit2602 ], [ %i.bcf, %case_conv.exit2515 ], [ %i.ccw, %RSTRING_PTR.exit2612 ], [ %i.cmb, %buffer_size_check.exit2632 ], [ %i.cab, %case_conv.exit2594 ], [ %i.cvi, %buffer_size_check.exit2652 ], [ %i.clb, %case_conv.exit2624 ], [ %i.dep, %buffer_size_check.exit2672 ], [ %i.cui, %case_conv.exit2644 ], [ %i.dgk, %RSTRING_PTR.exit2682 ], [ %i.dig, %RSTRING_PTR.exit2692 ], [ %i.drl, %buffer_size_check.exit2712 ], [ %i.ddp, %case_conv.exit2664 ], [ %i.abv, %RSTRING_PTR.exit2438 ], [ %i.dyn, %RSTRING_PTR.exit2752 ], [ %i.eah, %RSTRING_PTR.exit2762 ], [ %i.dth, %RSTRING_PTR.exit2728 ], [ %.32, %bb.qo ], [ %.33, %bb.qs ], [ %i.etm, %buffer_size_check.exit2839 ], [ %i.add, %RSTRING_PTR.exit2440 ], [ %i.dvq, %RSTRING_PTR.exit2742 ], [ %i.edj, %RSTRING_PTR.exit2781 ], [ %i.eft, %RSTRING_PTR.exit2795 ], [ %i.ehk, %RSTRING_PTR.exit2805 ], [ %i.bl, %bb.ik ], [ %i.esm, %case_conv.exit2831 ], [ %i.ewr, %middle.block4915 ], [ %i.fcu, %vec.epilog.middle.block ], [ %i.fdt, %bb.sm ], [ %i.ezi, %vec.epilog.middle.block4942 ], [ %i.fea, %bb.so ] ; 2 uses
  %.5 = phi ptr [ %.42965, %bb.sp ], [ %.4, %.critedge ], [ %i.bo, %bb.aa ], [ %i.bo, %buffer_size_check.exit2365 ], [ %.42965, %middle.block ], [ %i.bo, %RSTRING_PTR.exit2375 ], [ %i.bo, %RSTRING_PTR.exit2385 ], [ %i.bo, %RSTRING_PTR.exit2395 ], [ %i.bo, %RSTRING_PTR.exit2405 ], [ %i.bo, %RSTRING_PTR.exit2415 ], [ %i.bo, %RSTRING_PTR.exit2425 ], [ %i.bo, %RSTRING_PTR.exit2435 ], [ %i.bo, %case_conv.exit2704 ], [ %i.bo, %RSTRING_PTR.exit2450 ], [ %i.bo, %RSTRING_PTR.exit2460 ], [ %i.bo, %RSTRING_PTR.exit2470 ], [ %i.bo, %RSTRING_PTR.exit2483 ], [ %i.bo, %buffer_size_check.exit2503 ], [ %i.bo, %case_conv.exit ], [ %i.bo, %buffer_size_check.exit2523 ], [ %i.bo, %case_conv.exit2495 ], [ %i.bo, %RSTRING_PTR.exit2534 ], [ %i.bo, %RSTRING_PTR.exit2544 ], [ %i.bo, %RSTRING_PTR.exit2555 ], [ %i.bo, %bb.ic ], [ %i.bo, %bb.ii ], [ %i.bo, %bb.ig ], [ %i.bo, %bb.jh ], [ %i.bo, %bb.js ], [ %i.bo, %buffer_size_check.exit2602 ], [ %i.bo, %case_conv.exit2515 ], [ %i.bo, %RSTRING_PTR.exit2612 ], [ %i.bo, %buffer_size_check.exit2632 ], [ %i.bo, %case_conv.exit2594 ], [ %i.bo, %buffer_size_check.exit2652 ], [ %i.bo, %case_conv.exit2624 ], [ %i.bo, %buffer_size_check.exit2672 ], [ %i.bo, %case_conv.exit2644 ], [ %i.bo, %RSTRING_PTR.exit2682 ], [ %i.bo, %RSTRING_PTR.exit2692 ], [ %i.bo, %buffer_size_check.exit2712 ], [ %i.bo, %case_conv.exit2664 ], [ %i.bo, %RSTRING_PTR.exit2438 ], [ %i.bo, %RSTRING_PTR.exit2752 ], [ %i.bo, %RSTRING_PTR.exit2762 ], [ %i.bo, %RSTRING_PTR.exit2728 ], [ %i.bo, %bb.qo ], [ %i.bo, %bb.qs ], [ %i.bo, %buffer_size_check.exit2839 ], [ %i.bo, %RSTRING_PTR.exit2440 ], [ %i.bo, %RSTRING_PTR.exit2742 ], [ %i.bo, %RSTRING_PTR.exit2781 ], [ %i.bo, %RSTRING_PTR.exit2795 ], [ %i.bo, %RSTRING_PTR.exit2805 ], [ %i.bo, %bb.ik ], [ %i.bo, %case_conv.exit2831 ], [ %.42965, %middle.block4915 ], [ %.42965, %vec.epilog.middle.block ], [ %.42965, %bb.sm ], [ %.42965, %vec.epilog.middle.block4942 ], [ %.42965, %bb.so ]
  %i.fed = getelementptr i8, ptr %.5, i64 1       ; 3 uses
  %i.fee = icmp ult ptr %i.fed, %i.r
  br i1 %i.fee, label %bb.i, label %ruby_nonempty_memcpy.exit._crit_edge, !llvm.loop !101

ruby_nonempty_memcpy.exit._crit_edge:             ; preds = %case_conv.exit2868, %bb.h
  %.38 = phi ptr [ %i.ab, %bb.h ], [ %.37, %case_conv.exit2868 ]
  %.6 = phi ptr [ %1, %bb.h ], [ %i.fed, %case_conv.exit2868 ]
  %.not2322 = icmp eq ptr %.6, %i.r
  br i1 %.not2322, label %ruby_nonempty_memcpy.exit._crit_edge.thread, label %.loopexit2998

ruby_nonempty_memcpy.exit._crit_edge.thread:      ; preds = %ruby_nonempty_memcpy.exit, %ruby_nonempty_memcpy.exit._crit_edge
  %.384081 = phi ptr [ %.38, %ruby_nonempty_memcpy.exit._crit_edge ], [ %i.bl, %ruby_nonempty_memcpy.exit ]
  %i.fef = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.feg = ptrtoint ptr %.384081 to i64
  %i.feh = ptrtoint ptr %i.fef to i64
  %i.fei = sub i64 %i.feg, %i.feh                 ; 2 uses
  call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.fei) #11
  %i.fej = call i64 @rb_str_resize(i64 noundef %0, i64 noundef %i.fei) #11 ; 0 uses
  br label %.loopexit2998

.loopexit2998:                                    ; preds = %bb.hz, %bb.if, %bb.ih, %bb.qt, %bb.mw, %bb.lt, %bb.le, %bb.kp, %bb.jt, %bb.fj, %bb.eu, %bb.aj, %RSTRING_PTR.exit, %ruby_nonempty_memcpy.exit._crit_edge, %ruby_nonempty_memcpy.exit._crit_edge.thread
  %.0 = phi i64 [ 0, %ruby_nonempty_memcpy.exit._crit_edge ], [ 0, %RSTRING_PTR.exit ], [ %0, %ruby_nonempty_memcpy.exit._crit_edge.thread ], [ 0, %bb.aj ], [ 0, %bb.eu ], [ 0, %bb.fj ], [ 0, %bb.jt ], [ 0, %bb.kp ], [ 0, %bb.le ], [ 0, %bb.lt ], [ 0, %bb.mw ], [ 0, %bb.qt ], [ 0, %bb.ih ], [ 0, %bb.if ], [ 0, %bb.hz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_strftime_timespec(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @rb_enc_str_new_static(ptr noundef null, i64 noundef 0, ptr noundef %2) #11 ; 2 uses
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !11
  %i.d = and i64 %i.c, -3145729
  store i64 %i.d, ptr %i.b, align 8, !tbaa !11
  %i.e = shl i64 %1, 20                           ; 3 uses
  %i.f = icmp ult i64 %i.e, %1
  %i.g = icmp eq i64 %i.e, 0
  %spec.store.select.i = select i1 %i.g, i64 1024, i64 %i.e
  %.0.i = select i1 %i.f, i64 %1, i64 %spec.store.select.i
  %i.h = tail call fastcc i64 @rb_strftime_with_timespec(i64 noundef %i.a, ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef 4, ptr noundef %5, i32 noundef %6, i64 noundef %.0.i)
  ret i64 %i.h
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_str_capacity(i64 noundef) local_unnamed_addr #3

declare nonnull ptr @rb_usascii_encoding() local_unnamed_addr #2

declare nonnull ptr @rb_ascii8bit_encoding() local_unnamed_addr #2

declare ptr @rb_locale_encoding() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @resize_buffer(i64 noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !17
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = shl i64 %4, 1
  %i.f = add i64 %i.d, %i.e
  %i.g = tail call i64 @rb_str_capacity(i64 noundef %0) #12
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.g, %bb.a ], [ %i.i, %bb.b ]  ; 6 uses
  %i.h = icmp ult i64 %.0, %i.f
  %i.i = shl i64 %.0, 1
  br i1 %i.h, label %bb.b, label %bb.c, !llvm.loop !20

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ult i64 %.0, %i.d
  %i.k = icmp ugt i64 %.0, %5
  %or.cond = or i1 %i.j, %i.k
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @rb_str_set_len(i64 noundef %0, i64 noundef %i.d) #11
  %i.l = sub nuw i64 %.0, %i.d
  tail call void @rb_str_modify_expand(i64 noundef %0, i64 noundef %i.l) #11
  %i.m = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !11
  %i.o = and i64 %i.n, 8192
  %.not.i = icmp eq i64 %i.o, 0
  %i.p = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.d, %bb.e
  %i.r = phi ptr [ %i.q, %bb.e ], [ %i.p, %bb.d ] ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 %.0
  store ptr %i.s, ptr %3, align 8, !tbaa !17
  store ptr %i.r, ptr %2, align 8, !tbaa !17
  %i.t = getelementptr i8, ptr %i.r, i64 %i.d
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %RSTRING_PTR.exit
  %.025 = phi ptr [ %i.t, %RSTRING_PTR.exit ], [ null, %bb.c ]
  ret ptr %.025
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @buffer_size_check(ptr nofree noundef readnone captures(address_is_null) %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = sub i64 0, %2
  %i.b = getelementptr i8, ptr %1, i64 %i.a
  %i.c = tail call i64 @rb_enc_str_new(ptr noundef %i.b, i64 noundef %2, ptr noundef %3) #11
  tail call void @rb_syserr_fail_str(i32 noundef 34, i64 noundef %i.c) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare void @rb_str_set_len(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_catf(i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @rb_funcall(i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @format_value(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 10
  br i1 %i.h, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.i = tail call i64 @rb_Integer(i64 noundef %0) #11
  br label %bb.b

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %rbimpl_RB_TYPE_P_fastpath.exit
  %.0 = phi i64 [ %0, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread ]
  %i.j = tail call i64 @rb_big2str(i64 noundef %.0, i32 noundef 10) #11
  ret i64 %i.j
}

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ruby_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @rb_time_zone_abbreviation(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_conv_enc_opts(i64 noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_new_cstr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @rb_str_format(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_fstring_new(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @rb_string_value_cstr(ptr noundef) local_unnamed_addr #2

declare i64 @ruby_scan_digits(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_str_resize(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @rb_str_modify_expand(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_enc_str_new(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @rb_syserr_fail_str(i32 noundef, i64 noundef) local_unnamed_addr #6

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_Integer(i64 noundef) local_unnamed_addr #2

declare i64 @rb_big2str(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_num2long(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 306783380) i32 @iso8601wknum(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  %1 = alloca %struct.tm, align 8                 ; 9 uses
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.a, align 8, !tbaa !102 ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 28
  %.val33 = load i32, ptr %i.b, align 4, !tbaa !104 ; 2 uses
  %i.c = icmp eq i32 %.val, 0
  %.neg = sub i32 1, %.val
  %spec.select.i.neg34 = select i1 %i.c, i32 -6, i32 %.neg
  %i.d = add i32 %.val33, 7
  %i.e = add i32 %i.d, %spec.select.i.neg34       ; 2 uses
  %i.f = sdiv i32 %i.e, 7
  %spec.store.select.i = tail call range(i32 0, 306783379) i32 @llvm.smax.i32(i32 %i.f, i32 0) ; 3 uses
  %i.g = srem i32 %.val33, 7
  %i.h = sub i32 %.val, %i.g                      ; 3 uses
  %i.i = icmp slt i32 %i.h, 0
  %i.j = add nsw i32 %i.h, 7
  %spec.select = select i1 %i.i, i32 %i.j, i32 %i.h ; 3 uses
  switch i32 %spec.select, label %bb.f [
    i32 0, label %bb.c
    i32 2, label %bb.b
    i32 3, label %bb.b
    i32 4, label %bb.b
    i32 5, label %bb.c
    i32 6, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.k = add nuw nsw i32 %spec.store.select.i, 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.l = icmp slt i32 %i.e, 7
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !tbaa.struct !105
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !106
  %i.o = add i32 %i.n, -1                         ; 3 uses
  store i32 %i.o, ptr %i.m, align 4, !tbaa !106
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 11, ptr %i.p, align 8, !tbaa !107
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 31, ptr %i.q, align 4, !tbaa !108
  %i.r = icmp eq i32 %spec.select, 0
  %i.s = add nsw i32 %spec.select, -1
  %i.t = select i1 %i.r, i32 6, i32 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i32 %i.t, ptr %i.u, align 8, !tbaa !102
  %i.v = sext i32 %i.o to i64
  %i.w = add nsw i64 %i.v, 1900                   ; 2 uses
  %i.x = and i32 %i.o, 3
  %i.y = icmp ne i32 %i.x, 0
  %i.z = srem i64 %i.w, 100
  %.not.i = icmp eq i64 %i.z, 0
  %or.cond.i = or i1 %i.y, %.not.i
  br i1 %or.cond.i, label %bb.e, label %isleap.exit

bb.e:                                             ; preds = %bb.d
  %i.aa = srem i64 %i.w, 400
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = or disjoint i32 %i.ac, 364
  br label %isleap.exit

isleap.exit:                                      ; preds = %bb.d, %bb.e
  %i.ae = phi i32 [ 365, %bb.d ], [ %i.ad, %bb.e ]
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !104
  %i.ag = call fastcc i32 @iso8601wknum(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %isleap.exit, %bb.b, %bb.a
  %.0 = phi i32 [ %spec.store.select.i, %bb.a ], [ %i.k, %bb.b ], [ %i.ag, %isleap.exit ], [ %spec.store.select.i, %bb.c ] ; 2 uses
  %i.ah = getelementptr i8, ptr %0, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !107
  %i.aj = icmp eq i32 %i.ai, 11
  br i1 %i.aj, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr i8, ptr %0, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !108 ; 3 uses
  %i.am = icmp eq i32 %.val, 1
  %i.an = add i32 %i.al, -29
  %i.ao = icmp ult i32 %i.an, 3
  %or.cond3 = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %or.cond3, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = icmp eq i32 %.val, 2
  %i.aq = and i32 %i.al, -2
  %or.cond5 = icmp eq i32 %i.aq, 30
  %or.cond = select i1 %i.ap, i1 %or.cond5, i1 false
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = icmp eq i32 %.val, 3
  %i.as = icmp eq i32 %i.al, 31
  %or.cond7 = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond7, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.f
  %.2 = phi i32 [ %.0, %bb.f ], [ 1, %bb.j ], [ %.0, %bb.i ]
  ret i32 %.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"RBasic", !13, i64 0, !13, i64 8}
!13 = !{!"long", !9, i64 0}
!14 = !{!15, !13, i64 16}
!15 = !{!"RString", !12, i64 0, !13, i64 16, !9, i64 24}
!16 = !{!9, !9, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 omnipotent char", !19, i64 0}
!19 = !{!"any pointer", !9, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21, !23, !24}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"branch_weights", i32 4, i32 12}
!26 = distinct !{!26, !21, !23, !24}
!27 = distinct !{!27, !21, !23, !24}
!28 = distinct !{!28, !21, !23, !24}
!29 = distinct !{!29, !21, !24, !23}
!30 = distinct !{!30, !21, !24, !23}
!31 = !{!32, !13, i64 0}
!32 = !{!"timespec", !13, i64 0, !13, i64 8}
!33 = !{!13, !13, i64 0}
!34 = distinct !{!34, !21}
!35 = !{!36, !13, i64 0}
!36 = !{!"vtm", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 33, !8, i64 33, !8, i64 34, !8, i64 34, !8, i64 36, !8, i64 36, !8, i64 37, !8, i64 37, !8, i64 37}
!37 = distinct !{!37, !21, !23, !24}
!38 = distinct !{!38, !21, !23, !24}
!39 = distinct !{!39, !21, !23, !24}
!40 = distinct !{!40, !21, !23, !24}
!41 = distinct !{!41, !21, !24, !23}
!42 = distinct !{!42, !21, !24, !23}
!43 = distinct !{!43, !21, !23, !24}
!44 = distinct !{!44, !21, !23, !24}
!45 = distinct !{!45, !21, !23, !24}
!46 = distinct !{!46, !21, !23, !24}
!47 = distinct !{!47, !21, !24, !23}
!48 = distinct !{!48, !21, !24, !23}
!49 = !{!36, !13, i64 16}
!50 = !{!36, !13, i64 24}
!51 = distinct !{!51, !21}
!52 = distinct !{!52, !21, !23, !24}
!53 = distinct !{!53, !21, !23, !24}
!54 = distinct !{!54, !21, !23, !24}
!55 = distinct !{!55, !21, !23, !24}
!56 = distinct !{!56, !21, !24, !23}
!57 = distinct !{!57, !21, !24, !23}
!58 = distinct !{!58, !21, !23, !24}
!59 = distinct !{!59, !21, !23, !24}
!60 = distinct !{!60, !21, !23, !24}
!61 = distinct !{!61, !21, !23, !24}
!62 = distinct !{!62, !21, !24, !23}
!63 = distinct !{!63, !21, !24, !23}
!64 = distinct !{!64, !21, !23, !24}
!65 = distinct !{!65, !21, !23, !24}
!66 = distinct !{!66, !21, !23, !24}
!67 = distinct !{!67, !21, !23, !24}
!68 = distinct !{!68, !21, !24, !23}
!69 = distinct !{!69, !21, !24, !23}
!70 = distinct !{!70, !21, !23, !24}
!71 = distinct !{!71, !21, !23, !24}
!72 = distinct !{!72, !21, !23, !24}
!73 = distinct !{!73, !21, !23, !24}
!74 = distinct !{!74, !21, !24, !23}
!75 = distinct !{!75, !21, !24, !23}
!76 = distinct !{!76, !21, !23, !24}
!77 = distinct !{!77, !21, !23, !24}
!78 = distinct !{!78, !21, !23, !24}
!79 = distinct !{!79, !21, !23, !24}
!80 = distinct !{!80, !21, !24, !23}
!81 = distinct !{!81, !21, !24, !23}
!82 = !{!32, !13, i64 8}
!83 = distinct !{!83, !21}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = distinct !{!86, !21}
!87 = distinct !{!87, !21}
!88 = distinct !{!88, !85}
!89 = distinct !{!89, !21, !23, !24}
!90 = distinct !{!90, !21, !23, !24}
!91 = distinct !{!91, !21, !23, !24}
!92 = distinct !{!92, !21, !23, !24}
!93 = distinct !{!93, !21, !24, !23}
!94 = distinct !{!94, !21, !24, !23}
!95 = distinct !{!95, !21, !23, !24}
!96 = distinct !{!96, !21, !23, !24}
!97 = distinct !{!97, !21, !23, !24}
!98 = distinct !{!98, !21, !23, !24}
!99 = distinct !{!99, !21, !24, !23}
!100 = distinct !{!100, !21, !24, !23}
!101 = distinct !{!101, !21}
!102 = !{!103, !8, i64 24}
!103 = !{!"tm", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !13, i64 40, !18, i64 48}
!104 = !{!103, !8, i64 28}
!105 = !{i64 0, i64 4, !7, i64 4, i64 4, !7, i64 8, i64 4, !7, i64 12, i64 4, !7, i64 16, i64 4, !7, i64 20, i64 4, !7, i64 24, i64 4, !7, i64 28, i64 4, !7, i64 32, i64 4, !7, i64 40, i64 8, !33, i64 48, i64 8, !17}
!106 = !{!103, !8, i64 20}
!107 = !{!103, !8, i64 16}
!108 = !{!103, !8, i64 12}
end_hunk_1
