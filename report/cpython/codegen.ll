inline.NumInlined: 724
inline.NumDeleted: 94
begin_hunk_0_@codegen_sync_comprehension_generator:bb.a
  %i.fh = icmp eq i32 %i.fg, -1
  br i1 %i.fh, label %.critedge236, label %bb.bg

bb.av:                                            ; preds = %bb.z
  %i.fi = load i32, ptr %6, align 8, !tbaa !23
  %i.fj = icmp eq i32 %i.fi, 25
  br i1 %i.fj, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  %i.fk = getelementptr i8, ptr %6, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !24
  %i.fm = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef %i.fl)
  %i.fn = icmp eq i32 %i.fm, -1
  br i1 %i.fn, label %.critedge236, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fo = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.fp = add i32 %.1211, 1
  %i.fq = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.fo, i32 noundef 109, i32 noundef %i.fp, i64 %.sroa.014.4.insert.insert, i64 %.sroa.19.12.insert.insert) #10
  %i.fr = icmp eq i32 %i.fq, -1
  br i1 %i.fr, label %.critedge236, label %bb.bg

bb.ay:                                            ; preds = %bb.av
  %i.fs = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef nonnull %6)
  %i.ft = icmp eq i32 %i.fs, -1
  br i1 %i.ft, label %.critedge236, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fu = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.fv = add i32 %.1211, 1
  %i.fw = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.fu, i32 noundef 107, i32 noundef %i.fv, i64 %.sroa.014.4.insert.insert, i64 %.sroa.19.12.insert.insert) #10
  %i.fx = icmp eq i32 %i.fw, -1
  br i1 %i.fx, label %.critedge236, label %bb.bg

bb.ba:                                            ; preds = %bb.z
  %i.fy = icmp eq ptr %7, null
  %i.fz = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef nonnull %6)
  %i.ga = icmp eq i32 %i.fz, -1                   ; 2 uses
  br i1 %i.fy, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.ga, label %.critedge236, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gb = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.gc = add i32 %.1211, 1
  %i.gd = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.gb, i32 noundef 67, i32 noundef %i.gc, i64 %.sroa.014.4.insert.insert, i64 %.sroa.19.12.insert.insert) #10
  %i.ge = icmp eq i32 %i.gd, -1
  br i1 %i.ge, label %.critedge236, label %bb.bg

bb.bd:                                            ; preds = %bb.ba
  br i1 %i.ga, label %.critedge236, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gf = tail call fastcc i32 @codegen_visit_expr(ptr noundef %0, ptr noundef nonnull %7)
  %i.gg = icmp eq i32 %i.gf, -1
  br i1 %i.gg, label %.critedge236, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gh = load i32, ptr %i.cq, align 8, !tbaa !18
  %i.gi = getelementptr i8, ptr %7, i64 48
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !20
  %i.gk = load i32, ptr %i.cu, align 4, !tbaa !21
  %i.gl = getelementptr i8, ptr %7, i64 52
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !22
  %.sroa.014.0.insert.ext28 = zext i32 %i.gh to i64
  %.sroa.014.4.insert.ext32 = zext i32 %i.gj to i64
  %.sroa.014.4.insert.shift33 = shl nuw i64 %.sroa.014.4.insert.ext32, 32
  %.sroa.014.4.insert.insert35 = or disjoint i64 %.sroa.014.4.insert.shift33, %.sroa.014.0.insert.ext28 ; 2 uses
  %.sroa.19.8.insert.ext49 = zext i32 %i.gk to i64
  %.sroa.19.12.insert.ext53 = zext i32 %i.gm to i64
  %.sroa.19.12.insert.shift54 = shl nuw i64 %.sroa.19.12.insert.ext53, 32
  %.sroa.19.12.insert.insert56 = or disjoint i64 %.sroa.19.12.insert.shift54, %.sroa.19.8.insert.ext49 ; 2 uses
  %i.gn = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.go = add i32 %.1211, 1
  %i.gp = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.gn, i32 noundef 98, i32 noundef %i.go, i64 %.sroa.014.4.insert.insert35, i64 %.sroa.19.12.insert.insert56) #10
  %i.gq = icmp eq i32 %i.gp, -1
  br i1 %i.gq, label %.critedge236, label %bb.bg

default.unreachable268:                           ; preds = %bb.z
  unreachable

bb.bg:                                            ; preds = %bb.y, %bb.bc, %bb.bf, %bb.ax, %bb.az, %bb.as, %bb.au, %bb.am, %bb.ap
  %.sroa.014.0 = phi i64 [ %.sroa.014.4.insert.insert, %bb.am ], [ %.sroa.014.4.insert.insert, %bb.ap ], [ %.sroa.014.4.insert.insert, %bb.as ], [ %.sroa.014.4.insert.insert, %bb.au ], [ %.sroa.014.4.insert.insert, %bb.ax ], [ %.sroa.014.4.insert.insert, %bb.az ], [ %.sroa.014.4.insert.insert, %bb.bc ], [ %.sroa.014.4.insert.insert35, %bb.bf ], [ %.sroa.014.4.insert.insert, %bb.y ]
  %.sroa.19.0 = phi i64 [ %.sroa.19.12.insert.insert, %bb.am ], [ %.sroa.19.12.insert.insert, %bb.ap ], [ %.sroa.19.12.insert.insert, %bb.as ], [ %.sroa.19.12.insert.insert, %bb.au ], [ %.sroa.19.12.insert.insert, %bb.ax ], [ %.sroa.19.12.insert.insert, %bb.az ], [ %.sroa.19.12.insert.insert, %bb.bc ], [ %.sroa.19.12.insert.insert56, %bb.bf ], [ %.sroa.19.12.insert.insert, %bb.y ]
  %i.gr = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.gs = tail call i32 @_PyInstructionSequence_UseLabel(ptr noundef %i.gr, i32 noundef %i.e) #10
  %i.gt = icmp eq i32 %i.gs, -1
  br i1 %i.gt, label %.critedge236, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.bi, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gu = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.gv = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.gu, i32 noundef 257, i32 noundef %.sroa.0105.4247, i64 %.sroa.014.0, i64 %.sroa.19.0) #10
  %i.gw = icmp eq i32 %i.gv, -1
  br i1 %i.gw, label %.critedge236, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gx = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.gy = tail call i32 @_PyInstructionSequence_UseLabel(ptr noundef %i.gx, i32 noundef %i.h) #10
  %i.gz = icmp eq i32 %i.gy, -1
  br i1 %i.gz, label %.critedge236, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ha = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.hb = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.ha, i32 noundef 9, i32 noundef 0, i64 -1, i64 -1) #10
  %i.hc = icmp eq i32 %i.hb, -1
  br i1 %i.hc, label %.critedge236, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hd = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.he = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.hd, i32 noundef 30, i32 noundef 0, i64 -1, i64 -1) #10
  %i.hf = icmp eq i32 %i.he, -1
  br i1 %i.hf, label %.critedge236, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bh
  br label %.critedge236

.critedge236:                                     ; preds = %.lr.ph, %bb.b, %bb.f, %.thread249, %bb.m, %bb.n, %.critedge, %bb.bm, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.al, %bb.ab, %codegen_comprehension_generator.exit, %.critedge.thread, %bb.k, %bb.c, %bb.a
  %.14 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.ab ], [ -1, %bb.n ], [ -1, %.critedge ], [ -1, %bb.f ], [ -1, %.thread249 ], [ -1, %bb.m ], [ -1, %bb.k ], [ -1, %codegen_comprehension_generator.exit ], [ -1, %bb.be ], [ -1, %bb.bf ], [ 0, %bb.bm ], [ -1, %bb.bg ], [ -1, %bb.bi ], [ -1, %bb.bj ], [ -1, %bb.bk ], [ -1, %bb.am ], [ -1, %bb.bl ], [ -1, %bb.an ], [ -1, %bb.ao ], [ -1, %bb.ap ], [ -1, %bb.ar ], [ -1, %bb.as ], [ -1, %bb.at ], [ -1, %bb.au ], [ -1, %bb.aw ], [ -1, %bb.ax ], [ -1, %bb.ay ], [ -1, %bb.az ], [ -1, %bb.bb ], [ -1, %bb.bc ], [ -1, %bb.bd ], [ -1, %bb.ak ], [ -1, %bb.aj ], [ -1, %bb.ai ], [ -1, %bb.ah ], [ -1, %bb.ag ], [ -1, %bb.af ], [ -1, %bb.ae ], [ -1, %bb.ad ], [ -1, %bb.ac ], [ -1, %bb.al ], [ -1, %.critedge.thread ], [ -1, %.lr.ph ]
  ret i32 %.14
}

declare i32 @_PyCompile_RevertInlinedComprehensionScopes(ptr noundef, i64, i64, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @restore_inlined_comprehension_locals(ptr noundef %0, i64 %1, i64 %2, ptr nofree noundef nonnull readonly captures(none) %3) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !305
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !50  ; 2 uses
  %i.c = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.d = trunc i64 %.val to i32
  %i.e = add i32 %i.d, 1
  %i.f = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.c, i32 noundef 117, i32 noundef %i.e, i64 %1, i64 %2) #10
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %._crit_edge21, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %.019 = add i64 %.val, -1                       ; 2 uses
  %i.h = icmp sgt i64 %.019, -1
  br i1 %i.h, label %.lr.ph, label %._crit_edge21

.preheader:                                       ; preds = %bb.b
  %.0 = add nsw i64 %.020, -1
  %i.i = icmp sgt i64 %.020, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge21, !llvm.loop !317

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %.020 = phi i64 [ %.0, %.preheader ], [ %.019, %.preheader.preheader ] ; 3 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !305
  %i.k = tail call ptr @PyList_GetItem(ptr noundef %i.j, i64 noundef %.020) #10 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %._crit_edge21, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = tail call ptr @_PyCompile_Metadata(ptr noundef %0) #10
  %i.n = getelementptr i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64
  %i.p = tail call fastcc i32 @codegen_addop_name(ptr noundef %0, i64 %1, i64 %2, i32 noundef 266, ptr noundef %i.o, ptr noundef nonnull %i.k)
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %._crit_edge, label %.preheader, !llvm.loop !317

._crit_edge:                                      ; preds = %bb.b
  br label %._crit_edge21, !llvm.loop !317

._crit_edge21:                                    ; preds = %.lr.ph, %.preheader, %.preheader.preheader, %._crit_edge, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ -1, %._crit_edge ], [ 0, %.preheader.preheader ], [ 0, %.preheader ], [ -1, %.lr.ph ]
  ret i32 %.1
}

declare ptr @PyList_GetItem(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @_PyUnicode_EqualToASCIIString(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @_PyCompile_GetRefType(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @PyType_IsSubtype(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @PySlice_New(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @unpack_helper(ptr noundef %0, i64 %1, i64 %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %3, align 8, !tbaa !31     ; 6 uses
  %.not52 = icmp sgt i64 %i.b, 0
  br i1 %.not52, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.b
  %i.c = getelementptr i8, ptr %3, i64 16
  br label %.outer

.outer:                                           ; preds = %.thread60, %.lr.ph
  %.03454.ph = phi i64 [ %i.x, %.thread60 ], [ 0, %.lr.ph ]
  %i.d = phi i1 [ false, %.thread60 ], [ true, %.lr.ph ]
  %i.e = phi i1 [ true, %.thread60 ], [ false, %.lr.ph ]
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.j
  %.03454 = phi i64 [ %i.w, %bb.j ], [ %.03454.ph, %.outer ] ; 6 uses
  %i.f = getelementptr [8 x i8], ptr %i.c, i64 %.03454
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.h = load i32, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.i = icmp ne i32 %i.h, 25
  %or.cond = or i1 %i.i, %i.e
  br i1 %or.cond, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp samesign ugt i64 %.03454, 255
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = xor i64 %.03454, -1
  %i.l = add nsw i64 %i.b, %i.k                   ; 2 uses
  %i.m = icmp sgt i64 %i.l, 8388606
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = tail call i32 (ptr, i64, i64, ptr, ...) @_PyCompile_Error(ptr noundef %0, i64 %1, i64 %2, ptr noundef nonnull @.str.296) #10
  br label %.thread46

bb.g:                                             ; preds = %bb.e
  %i.o = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.p = shl nsw i64 %i.l, 8
  %i.q = or disjoint i64 %i.p, %.03454
  %i.r = trunc i64 %i.q to i32
  %i.s = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.o, i32 noundef 118, i32 noundef %i.r, i64 %1, i64 %2) #10
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %.thread46, label %.thread60

bb.h:                                             ; preds = %bb.c
  %i.u = icmp eq i32 %i.h, 25
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = tail call i32 (ptr, i64, i64, ptr, ...) @_PyCompile_Error(ptr noundef %0, i64 %1, i64 %2, ptr noundef nonnull @.str.297) #10
  br label %.thread46

bb.j:                                             ; preds = %bb.h
  %i.w = add nuw nsw i64 %.03454, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !318

.thread60:                                        ; preds = %bb.g
  %i.x = add nuw nsw i64 %.03454, 1               ; 2 uses
  %exitcond.not62 = icmp eq i64 %i.x, %i.b
  br i1 %exitcond.not62, label %._crit_edge.thread64, label %.outer, !llvm.loop !318

._crit_edge:                                      ; preds = %bb.j
  br i1 %i.d, label %._crit_edge.thread, label %._crit_edge.thread64

._crit_edge.thread:                               ; preds = %bb.a, %bb.b, %._crit_edge
  %i.y = phi i64 [ %i.b, %._crit_edge ], [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.z = tail call ptr @_PyCompile_InstrSequence(ptr noundef %0) #10
  %i.aa = trunc i64 %i.y to i32
  %i.ab = tail call i32 @_PyInstructionSequence_Addop(ptr noundef %i.z, i32 noundef 119, i32 noundef %i.aa, i64 %1, i64 %2) #10
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %.thread46, label %._crit_edge.thread64

._crit_edge.thread64:                             ; preds = %.thread60, %._crit_edge.thread, %._crit_edge
  br label %.thread46

.thread46:                                        ; preds = %bb.g, %bb.i, %bb.f, %._crit_edge.thread, %._crit_edge.thread64
  %.3 = phi i32 [ 0, %._crit_edge.thread64 ], [ -1, %._crit_edge.thread ], [ %i.n, %bb.f ], [ %i.v, %bb.i ], [ -1, %bb.g ]
  ret i32 %.3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

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
!11 = !{!12, !14, i64 16}
!12 = !{!"", !13, i64 0, !8, i64 8, !14, i64 16, !8, i64 24}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"long", !9, i64 0}
!15 = !{!12, !8, i64 24}
!16 = !{!12, !13, i64 0}
!17 = !{!12, !8, i64 8}
!18 = !{!19, !8, i64 40}
!19 = !{!"_expr", !8, i64 0, !9, i64 8, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52}
!20 = !{!19, !8, i64 48}
!21 = !{!19, !8, i64 44}
!22 = !{!19, !8, i64 52}
!23 = !{!19, !8, i64 0}
!24 = !{!9, !9, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 _ZTS7_object", !13, i64 0}
!27 = distinct !{null}
!28 = distinct !{null}
!29 = distinct !{null}
!30 = distinct !{null}
!31 = !{!32, !14, i64 0}
!32 = !{!"", !14, i64 0, !33, i64 8, !9, i64 16}
!33 = !{!"any p2 pointer", !13, i64 0}
!34 = !{!35, !26, i64 24}
!35 = !{!"", !26, i64 0, !26, i64 8, !26, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !26, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !8, i64 88}
!36 = !{!37, !37, i64 0}
!37 = !{!"p1 _ZTS5_stmt", !13, i64 0}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!41, !26, i64 16}
!41 = !{!"_symtable_entry", !42, i64 0, !26, i64 16, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48, !26, i64 56, !26, i64 64, !8, i64 72, !44, i64 80, !8, i64 88, !8, i64 92, !8, i64 92, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 100, !8, i64 100, !8, i64 100, !8, i64 100, !8, i64 100, !8, i64 100, !8, i64 100, !8, i64 101, !8, i64 101, !8, i64 101, !8, i64 101, !8, i64 101, !8, i64 101, !8, i64 104, !45, i64 108, !46, i64 128, !47, i64 136}
!42 = !{!"_object", !9, i64 0, !43, i64 8}
!43 = !{!"p1 _ZTS11_typeobject", !13, i64 0}
!44 = !{!"p1 omnipotent char", !13, i64 0}
!45 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!46 = !{!"p1 _ZTS15_symtable_entry", !13, i64 0}
!47 = !{!"p1 _ZTS8symtable", !13, i64 0}
!48 = !{!41, !46, i64 128}
!49 = !{!41, !26, i64 32}
!50 = !{!51, !14, i64 16}
!51 = !{!"PyVarObject", !42, i64 0, !14, i64 16}
!52 = distinct !{!52, !39}
!53 = !{!54, !55, i64 24}
!54 = !{!"", !51, i64 0, !55, i64 24, !14, i64 32}
!55 = !{!"p2 _ZTS7_object", !33, i64 0}
!56 = !{!57, !8, i64 64}
!57 = !{!"_stmt", !8, i64 0, !9, i64 8, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76}
!58 = !{!57, !8, i64 72}
!59 = !{!57, !8, i64 68}
!60 = !{!57, !8, i64 76}
!61 = !{!35, !26, i64 48}
!62 = !{!41, !8, i64 72}
!63 = !{!14, !14, i64 0}
!64 = !{!35, !26, i64 32}
!65 = !{!57, !8, i64 0}
!66 = distinct !{!66, !39}
!67 = !{!68, !68, i64 0}
!68 = !{!"p1 _ZTS5_expr", !13, i64 0}
!69 = distinct !{null}
!70 = distinct !{null, null}
!71 = distinct !{null}
!72 = distinct !{!72, !39}
!73 = distinct !{!73, !39}
!74 = !{!75, !14, i64 16}
!75 = !{!"", !42, i64 0, !14, i64 16, !14, i64 24, !76, i64 32}
!76 = !{!"_PyUnicodeObject_state", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!77 = !{!35, !26, i64 40}
!78 = distinct !{null}
!79 = distinct !{!79, !39}
!80 = distinct !{!80, !39}
!81 = distinct !{null}
!82 = distinct !{!82, !39}
!83 = distinct !{!83, !39}
!84 = distinct !{null}
!85 = distinct !{!85, !39}
!86 = distinct !{!86, !39}
!87 = !{!88, !13, i64 16}
!88 = !{!"", !26, i64 0, !8, i64 8, !13, i64 16, !14, i64 24, !14, i64 32}
!89 = distinct !{null, null}
!90 = !{!91, !91, i64 0}
!91 = !{!"p1 _ZTS11_match_case", !13, i64 0}
!92 = !{!93, !94, i64 0}
!93 = !{!"_match_case", !94, i64 0, !68, i64 8, !13, i64 16}
!94 = !{!"p1 _ZTS8_pattern", !13, i64 0}
!95 = !{!96, !8, i64 0}
!96 = !{!"_pattern", !8, i64 0, !9, i64 8, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52}
!97 = distinct !{!97, !39}
!98 = !{!96, !8, i64 40}
!99 = !{!96, !8, i64 48}
!100 = !{!96, !8, i64 44}
!101 = !{!96, !8, i64 52}
!102 = !{!88, !26, i64 0}
!103 = !{!93, !68, i64 8}
!104 = !{!88, !8, i64 8}
!105 = distinct !{!105, !39}
!106 = !{!88, !14, i64 24}
!107 = distinct !{!107, !39}
!108 = !{!93, !13, i64 16}
!109 = distinct !{!109, !39}
!110 = distinct !{!110, !39}
!111 = distinct !{null}
!112 = distinct !{null}
!113 = distinct !{null}
!114 = !{!42, !43, i64 8}
!115 = !{!116, !14, i64 168}
!116 = !{!"_typeobject", !51, i64 0, !44, i64 24, !14, i64 32, !14, i64 40, !13, i64 48, !14, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !14, i64 168, !44, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !14, i64 208, !13, i64 216, !13, i64 224, !117, i64 232, !118, i64 240, !119, i64 248, !43, i64 256, !26, i64 264, !13, i64 272, !13, i64 280, !14, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !26, i64 336, !26, i64 344, !26, i64 352, !13, i64 360, !26, i64 368, !13, i64 376, !8, i64 384, !13, i64 392, !13, i64 400, !9, i64 408, !120, i64 410}
!117 = !{!"p1 _ZTS11PyMethodDef", !13, i64 0}
!118 = !{!"p1 _ZTS11PyMemberDef", !13, i64 0}
!119 = !{!"p1 _ZTS11PyGetSetDef", !13, i64 0}
!120 = !{!"short", !9, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"p1 _ZTS6_alias", !13, i64 0}
!123 = !{!124, !26, i64 0}
!124 = !{!"_alias", !26, i64 0, !26, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28}
!125 = !{!124, !26, i64 8}
!126 = distinct !{!126, !39}
!127 = distinct !{!127, !39}
!128 = !{!120, !120, i64 0}
!129 = distinct !{!129, !39, !130}
!130 = !{!"llvm.loop.peeled.count", i32 1}
!131 = !{!13, !13, i64 0}
!132 = distinct !{null}
!133 = distinct !{null}
!134 = distinct !{null}
!135 = distinct !{null}
!136 = distinct !{null}
!137 = distinct !{!137, !39}
!138 = distinct !{!138, !39}
!139 = !{!140, !13, i64 48}
!140 = !{!"_arguments", !13, i64 0, !13, i64 8, !141, i64 16, !13, i64 24, !13, i64 32, !141, i64 40, !13, i64 48}
!141 = !{!"p1 _ZTS4_arg", !13, i64 0}
!142 = distinct !{null, null}
!143 = distinct !{!143, !39}
!144 = !{!140, !13, i64 24}
!145 = !{!140, !13, i64 32}
!146 = distinct !{null}
!147 = !{!35, !14, i64 64}
!148 = distinct !{!148, !39}
!149 = !{!46, !46, i64 0}
!150 = !{!140, !13, i64 8}
!151 = !{!141, !141, i64 0}
!152 = !{!153, !26, i64 0}
!153 = !{!"_arg", !26, i64 0, !68, i64 8, !26, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36}
!154 = !{!153, !68, i64 8}
!155 = distinct !{!155, !39}
!156 = !{!140, !13, i64 0}
!157 = !{!140, !141, i64 16}
end_hunk_0
