inline.NumInlined: 165
inline.NumDeleted: 73
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN2cv5utils5trace7details6RegionD2Ev:bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #21
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #8

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

declare noundef i32 @_ZN2cv3hal11normHammingEPKhS2_i(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN2cv3hal11normHammingEPKhS2_ii(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv16BatchDistInvokerD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv16BatchDistInvokerclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !43   ; 3 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !162
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i.i = icmp ugt i32 %i.d, 264
  store i64 %i.e, ptr %i.g, align 8, !tbaa !165
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i32 %i.d, 0
  %i.i = shl nuw nsw i64 %i.e, 2
  %i.j = select i1 %i.h, i64 -1, i64 %i.i
  %i.k = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #22 ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !162
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

_ZN2cv10AutoBufferIiLm264EEC2Em.exit:             ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.f, %bb.a ], [ %i.k, %bb.b ] ; 3 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !66     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !68
  %i.p = icmp slt i32 %i.m, %i.o
  br i1 %i.p, label %.lr.ph50, label %._crit_edge

.lr.ph50:                                         ; preds = %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.x = sext i32 %i.m to i64
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %.loopexit
  %.pre55 = load ptr, ptr %2, align 8, !tbaa !162
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit
  %i.y = phi ptr [ %.pre55, %._crit_edge.loopexit ], [ %i.l, %_ZN2cv10AutoBufferIiLm264EEC2Em.exit ] ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.y, %i.f
  %i.z = icmp eq ptr %i.y, null
  %or.cond.i = or i1 %.not.i.i40, %i.z
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  call void @_ZdaPv(ptr noundef nonnull %i.y) #20
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit

_ZN2cv10AutoBufferIiLm264EED2Ev.exit:             ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  ret void

bb.d:                                             ; preds = %.lr.ph50, %.loopexit
  %indvars.iv52.a = phi i64 [ %i.x, %.lr.ph50 ], [ %indvars.iv.next53, %.loopexit ] ; 6 uses
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !81
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !71  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !166
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !86
  %i.ag = mul i64 %i.af, %indvars.iv52.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !75  ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !166
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  %i.am = load i64, ptr %i.al, align 8, !tbaa !86
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !43
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !37
  %i.ar = load i32, ptr %i.s, align 8, !tbaa !78
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = load ptr, ptr %i.t, align 8, !tbaa !76  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !166
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 128
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !86
  %i.ay = mul i64 %i.ax, %indvars.iv52.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ay
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ba = phi ptr [ %i.az, %bb.e ], [ %i.l, %bb.d ]
  %i.bb = load ptr, ptr %i.u, align 8, !tbaa !79  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !166 ; 2 uses
  %.not = icmp eq ptr %i.bd, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 128
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !86
  %i.bg = mul i64 %i.bf, %indvars.iv52.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bg
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bi = phi ptr [ %i.bh, %bb.g ], [ null, %bb.f ]
  invoke void %i.aa(ptr noundef %i.ah, ptr noundef %i.ak, i64 noundef %i.am, i32 noundef %i.ao, i32 noundef %i.aq, ptr noundef %i.ba, ptr noundef %i.bi)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bj = load i32, ptr %i.s, align 8, !tbaa !78
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr %i.v, align 8, !tbaa !77  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !166
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !86
  %i.bq = mul i64 %i.bp, %indvars.iv52.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bq ; 3 uses
  %i.bs = load ptr, ptr %i.t, align 8, !tbaa !76  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !166
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !86
  %i.bx = mul i64 %i.bw, %indvars.iv52.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bx ; 4 uses
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !43 ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph48, label %.loopexit

.lr.ph48:                                         ; preds = %bb.j, %bb.o
  %i.cd = phi i32 [ %i.dh, %bb.o ], [ %i.cb, %bb.j ]
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %bb.o ], [ 0, %bb.j ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.a
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !42 ; 3 uses
  %i.cg = load i32, ptr %i.s, align 8, !tbaa !78  ; 3 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr [4 x i8], ptr %i.by, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 -4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !42
  %i.cl = icmp slt i32 %i.cf, %i.ck
  br i1 %i.cl, label %bb.k, label %bb.o

bb.k:                                             ; preds = %.lr.ph48
  %i.cm = add i32 %i.cg, -2                       ; 2 uses
  %i.cn = icmp sgt i32 %i.cg, 1
  br i1 %i.cn, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.k
  %3 = zext nneg i32 %i.cm to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ %3, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 6 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !42
  %i.cq = icmp sgt i32 %i.cp, %i.cf
  br i1 %i.cq, label %bb.l, label %.critedge.loopexit.split.loop.exit65

bb.l:                                             ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !42
  %4 = add nuw nsw i64 %indvars.iv, 1             ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %4
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !42
  %i.cu = load i32, ptr %i.co, align 4, !tbaa !42
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %4
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !42
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.cw = icmp sgt i64 %indvars.iv, 0
  br i1 %i.cw, label %.lr.ph, label %.critedge, !llvm.loop !167

bb.m:                                             ; preds = %bb.h
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %2, align 8, !tbaa !162   ; 3 uses
  %.not.i.i41 = icmp eq ptr %i.cy, %i.f
  %i.cz = icmp eq ptr %i.cy, null
  %or.cond.i42 = or i1 %.not.i.i41, %i.cz
  br i1 %or.cond.i42, label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit43, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.cy) #20
  br label %_ZN2cv10AutoBufferIiLm264EED2Ev.exit43

_ZN2cv10AutoBufferIiLm264EED2Ev.exit43:           ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  resume { ptr, i32 } %i.cx

.critedge.loopexit.split.loop.exit65:             ; preds = %.lr.ph
  %5 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %.critedge.loopexit.split.loop.exit65, %bb.k
  %.0.lcssa = phi i32 [ %i.cm, %bb.k ], [ %5, %.critedge.loopexit.split.loop.exit65 ], [ -1, %bb.l ]
  %i.da = load i32, ptr %i.w, align 4, !tbaa !80
  %i.db = trunc nuw nsw i64 %indvars.iv.a to i32
  %i.dc = add nsw i32 %i.da, %i.db
  %i.dd = add nsw i32 %.0.lcssa, 1
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.de
  store i32 %i.dc, ptr %i.df, align 4, !tbaa !42
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.de
  store i32 %i.cf, ptr %i.dg, align 4, !tbaa !42
  %.pre = load i32, ptr %i.ca, align 8, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %.lr.ph48
  %i.dh = phi i32 [ %.pre, %.critedge ], [ %i.cd, %.lr.ph48 ] ; 2 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = icmp slt i64 %indvars.iv.next.a, %i.di
  br i1 %i.dj, label %.lr.ph48, label %.loopexit, !llvm.loop !168

.loopexit:                                        ; preds = %bb.o, %bb.j, %bb.i
  %indvars.iv.next53 = add nsw i64 %indvars.iv52.a, 1 ; 2 uses
  %i.dk = load i32, ptr %i.n, align 4, !tbaa !68
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp slt i64 %indvars.iv.next53, %i.dl
  br i1 %i.dm, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !169
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!6, !6, i64 0}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = !{!17, !18, i64 8}
!17 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !18, i64 8, !19, i64 16}
!18 = !{!"any pointer", !6, i64 0}
!19 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!22 = distinct !{!22, !"_ZNK2cv11_InputArray6getMatEi"}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!25 = distinct !{!25, !"_ZNK2cv11_InputArray6getMatEi"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!28 = distinct !{!28, !"_ZNK2cv11_InputArray6getMatEi"}
!29 = !{!30, !5, i64 0}
!30 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !32, i64 56, !33, i64 64, !34, i64 72, !36, i64 128}
!31 = !{!"p1 omnipotent char", !18, i64 0}
!32 = !{!"p1 _ZTSN2cv12MatAllocatorE", !18, i64 0}
!33 = !{!"p1 _ZTSN2cv8UMatDataE", !18, i64 0}
!34 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !35, i64 4, !5, i64 8, !6, i64 12}
!35 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!36 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!37 = !{!30, !5, i64 12}
!38 = !{!39, !31, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !40, i64 0, !41, i64 8, !6, i64 16}
!40 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !31, i64 0}
!41 = !{!"long", !6, i64 0}
!42 = !{!5, !5, i64 0}
!43 = !{!30, !5, i64 8}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!46 = distinct !{!46, !"_ZNK2cv11_InputArray6getMatEi"}
!47 = !{!34, !5, i64 0}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!50 = distinct !{!50, !"_ZNK2cv11_InputArray6getMatEi"}
!51 = !{!52, !52, i64 0}
!52 = !{!"double", !6, i64 0}
!53 = !{!54}
!54 = distinct !{!54, !55, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!55 = distinct !{!55, !"_ZN2cv7Scalar_IdE3allEd"}
!56 = !{!57}
!57 = distinct !{!57, !58, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!58 = distinct !{!58, !"_ZN2cv7Scalar_IdE3allEd"}
!59 = !{!19, !5, i64 0}
!60 = !{!19, !5, i64 4}
!61 = !{!17, !5, i64 0}
!62 = !{!30, !5, i64 4}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !11}
!66 = !{!67, !5, i64 0}
!67 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!68 = !{!67, !5, i64 4}
!69 = !{!70, !70, i64 0}
!70 = !{!"vtable pointer", !7, i64 0}
!71 = !{!72, !74, i64 8}
!72 = !{!"_ZTSN2cv16BatchDistInvokerE", !73, i64 0, !74, i64 8, !74, i64 16, !74, i64 24, !74, i64 32, !74, i64 40, !5, i64 48, !5, i64 52, !18, i64 56}
!73 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!74 = !{!"p1 _ZTSN2cv3MatE", !18, i64 0}
!75 = !{!72, !74, i64 16}
!76 = !{!72, !74, i64 24}
!77 = !{!72, !74, i64 32}
!78 = !{!72, !5, i64 48}
!79 = !{!72, !74, i64 40}
!80 = !{!72, !5, i64 52}
!81 = !{!72, !18, i64 56}
!82 = !{!83, !5, i64 8}
!83 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !84, i64 0, !5, i64 8}
!84 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !18, i64 0}
!85 = !{!40, !31, i64 0}
!86 = !{!41, !41, i64 0}
!87 = !{!39, !41, i64 8}
!88 = !{!89}
!89 = distinct !{!89, !90}
!90 = distinct !{!90, !"LVerDomain"}
!91 = !{!92}
!92 = distinct !{!92, !90}
!93 = distinct !{!93, !11, !94, !95}
!94 = !{!"llvm.loop.isvectorized", i32 1}
end_hunk_0
