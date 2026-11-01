Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/batch_distance?download=true
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !31   ; 3 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.f, ptr %2, align 8, !tbaa !167
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not.i.i = icmp ugt i32 %i.d, 264
  store i64 %i.e, ptr %i.g, align 8, !tbaa !168
  br i1 %.not.i.i, label %bb.b, label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i32 %i.d, 0
  %i.i = shl nuw nsw i64 %i.e, 2
  %i.j = select i1 %i.h, i64 -1, i64 %i.i
  %i.k = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #22 ; 2 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !167
  br label %_ZN2cv10AutoBufferIiLm264EEC2Em.exit

_ZN2cv10AutoBufferIiLm264EEC2Em.exit:             ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.f, %bb.a ], [ %i.k, %bb.b ] ; 3 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !33     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !34
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
  %.pre55 = load ptr, ptr %2, align 8, !tbaa !167
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
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !45
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !38  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !169
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !49
  %i.ag = mul i64 %i.af, %indvars.iv52.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !39  ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !169
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  %i.am = load i64, ptr %i.al, align 8, !tbaa !49
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !31
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !25
  %i.ar = load i32, ptr %i.s, align 8, !tbaa !42
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = load ptr, ptr %i.t, align 8, !tbaa !40  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !169
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 128
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !49
  %i.ay = mul i64 %i.ax, %indvars.iv52.a
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ay
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ba = phi ptr [ %i.az, %bb.e ], [ %i.l, %bb.d ]
  %i.bb = load ptr, ptr %i.u, align 8, !tbaa !43  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !169 ; 2 uses
  %.not = icmp eq ptr %i.bd, null
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 128
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !49
  %i.bg = mul i64 %i.bf, %indvars.iv52.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bg
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bi = phi ptr [ %i.bh, %bb.g ], [ null, %bb.f ]
  invoke void %i.aa(ptr noundef %i.ah, ptr noundef %i.ak, i64 noundef %i.am, i32 noundef %i.ao, i32 noundef %i.aq, ptr noundef %i.ba, ptr noundef %i.bi)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bj = load i32, ptr %i.s, align 8, !tbaa !42
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr %i.v, align 8, !tbaa !41  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !169
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !49
  %i.bq = mul i64 %i.bp, %indvars.iv52.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bq ; 3 uses
  %i.bs = load ptr, ptr %i.t, align 8, !tbaa !40  ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !169
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !49
  %i.bx = mul i64 %i.bw, %indvars.iv52.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bx ; 4 uses
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !31 ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph48, label %.loopexit

.lr.ph48:                                         ; preds = %bb.j, %bb.o
  %i.cd = phi i32 [ %i.dh, %bb.o ], [ %i.cb, %bb.j ]
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %bb.o ], [ 0, %bb.j ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.a
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !30 ; 3 uses
  %i.cg = load i32, ptr %i.s, align 8, !tbaa !42  ; 3 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr [4 x i8], ptr %i.by, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 -4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !30
  %i.cl = icmp slt i32 %i.cf, %i.ck
  br i1 %i.cl, label %bb.k, label %bb.o

bb.k:                                             ; preds = %.lr.ph48
  %i.cm = add nsw i32 %i.cg, -2                   ; 2 uses
  %i.cn = icmp sgt i32 %i.cg, 1
  br i1 %i.cn, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.044 = phi i32 [ %6, %bb.l ], [ %i.cm, %bb.k ] ; 5 uses
  %3 = zext nneg i32 %.044 to i64                 ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %3 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !30
  %i.cq = icmp sgt i32 %i.cp, %i.cf
  br i1 %i.cq, label %bb.l, label %.critedge

bb.l:                                             ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %3
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !30
  %4 = add nuw nsw i32 %.044, 1
  %5 = zext nneg i32 %4 to i64                    ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %5
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !30
  %i.cu = load i32, ptr %i.co, align 4, !tbaa !30
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %5
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !30
  %6 = add nsw i32 %.044, -1
  %i.cw = icmp sgt i32 %.044, 0
  br i1 %i.cw, label %.lr.ph, label %.critedge, !llvm.loop !162

bb.m:                                             ; preds = %bb.h
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %2, align 8, !tbaa !167   ; 3 uses
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

.critedge:                                        ; preds = %.lr.ph, %bb.l, %bb.k
  %.0.lcssa = phi i32 [ %i.cm, %bb.k ], [ -1, %bb.l ], [ %.044, %.lr.ph ]
  %i.da = load i32, ptr %i.w, align 4, !tbaa !44
  %i.db = trunc nuw nsw i64 %indvars.iv.a to i32
  %i.dc = add nsw i32 %i.da, %i.db
  %i.dd = add nsw i32 %.0.lcssa, 1
  %i.de = sext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.de
  store i32 %i.dc, ptr %i.df, align 4, !tbaa !30
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.de
  store i32 %i.cf, ptr %i.dg, align 4, !tbaa !30
  %.pre = load i32, ptr %i.ca, align 8, !tbaa !31
  br label %bb.o

bb.o:                                             ; preds = %.critedge, %.lr.ph48
  %i.dh = phi i32 [ %.pre, %.critedge ], [ %i.cd, %.lr.ph48 ] ; 2 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = icmp slt i64 %indvars.iv.next.a, %i.di
  br i1 %i.dj, label %.lr.ph48, label %.loopexit, !llvm.loop !163

.loopexit:                                        ; preds = %bb.o, %bb.j, %bb.i
  %indvars.iv.next53 = add nsw i64 %indvars.iv52.a, 1 ; 2 uses
  %i.dk = load i32, ptr %i.n, align 4, !tbaa !34
  %i.dl = sext i32 %i.dk to i64
  %i.dm = icmp slt i64 %indvars.iv.next53, %i.dl
  br i1 %i.dm, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !164
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

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !15}
!1 = distinct !{!1, !15}
!2 = distinct !{!2, !15}
!3 = distinct !{!3, !15}
!4 = distinct !{!4, !15}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"float", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!9, !9, i64 0}
!17 = !{!"any pointer", !9, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!"p1 _ZTSN2cv12MatAllocatorE", !17, i64 0}
!20 = !{!"p1 _ZTSN2cv8UMatDataE", !17, i64 0}
!21 = !{!"_ZTSN2cv10DataLayoutE", !9, i64 0}
!22 = !{!"_ZTSN2cv8MatShapeE", !10, i64 0, !21, i64 4, !10, i64 8, !9, i64 12}
!23 = !{!"_ZTSN2cv7MatStepE", !9, i64 0}
!24 = !{!"_ZTSN2cv3MatE", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !19, i64 56, !20, i64 64, !22, i64 72, !23, i64 128}
!25 = !{!24, !10, i64 12}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!27 = !{!"long", !9, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !27, i64 8, !9, i64 16}
!29 = !{!28, !18, i64 0}
!30 = !{!10, !10, i64 0}
!31 = !{!24, !10, i64 8}
!32 = !{!"_ZTSN2cv5RangeE", !10, i64 0, !10, i64 4}
!33 = !{!32, !10, i64 0}
!34 = !{!32, !10, i64 4}
!35 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!36 = !{!"p1 _ZTSN2cv3MatE", !17, i64 0}
!37 = !{!"_ZTSN2cv16BatchDistInvokerE", !35, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !10, i64 48, !10, i64 52, !17, i64 56}
!38 = !{!37, !36, i64 8}
!39 = !{!37, !36, i64 16}
!40 = !{!37, !36, i64 24}
!41 = !{!37, !36, i64 32}
!42 = !{!37, !10, i64 48}
!43 = !{!37, !36, i64 40}
!44 = !{!37, !10, i64 52}
!45 = !{!37, !17, i64 56}
!46 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !17, i64 0}
!47 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !46, i64 0, !10, i64 8}
!48 = !{!47, !10, i64 8}
!49 = !{!27, !27, i64 0}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = distinct !{!53, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!54 = distinct !{!54, !53, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!55 = distinct !{!55, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!56 = distinct !{!56, !55, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!57 = distinct !{!57, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!58 = distinct !{!58, !57, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!59 = distinct !{!59, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!60 = distinct !{!60, !59, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!61 = distinct !{!61, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!62 = distinct !{!62, !61, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!63 = distinct !{!63, i1 true, !"_ZN2cv7Scalar_IdE3allEd"}
!64 = distinct !{!64, !63, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!65 = distinct !{!65, i1 true, !"_ZN2cv7Scalar_IdE3allEd"}
!66 = distinct !{!66, !65, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!67 = distinct !{!67, !15}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15}
!70 = !{!"_ZTSN2cv5Size_IiEE", !10, i64 0, !10, i64 4}
!71 = !{!"_ZTSN2cv11_InputArrayE", !10, i64 0, !17, i64 8, !70, i64 16}
!72 = !{!71, !17, i64 8}
!73 = !{!54}
!74 = !{!56}
!75 = !{!58}
!76 = !{!24, !10, i64 0}
!77 = !{!60}
!78 = !{!22, !10, i64 0}
!79 = !{!62}
!80 = !{!"double", !9, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!64}
!83 = !{!66}
!84 = !{!70, !10, i64 0}
!85 = !{!70, !10, i64 4}
!86 = !{!71, !10, i64 0}
!87 = !{!24, !10, i64 4}
!88 = !{!"vtable pointer", !8, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!26, !18, i64 0}
!91 = !{!28, !27, i64 8}
!92 = distinct !{!92, i1 false, !"LVerDomain"}
!93 = distinct !{!93, !92}
!94 = distinct !{!94, !92}
end_hunk_0
