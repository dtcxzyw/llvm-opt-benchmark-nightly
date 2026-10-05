Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/blend?download=true
inline.NumInlined: 69
inline.NumDeleted: 41
begin_hunk_0_@_ZN2cv16ParallelLoopBodyD2Ev
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !40
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #16
  unreachable
}

declare noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind writable sret(%"class.cv::Mat") align 8, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv18BlendLinearInvokerIhED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv18BlendLinearInvokerIhEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !42
  %i.d = lshr i32 %i.c, 5
  %i.e = and i32 %i.d, 127
  %i.f = add nuw nsw i32 %i.e, 1                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !43
  %i.i = mul i32 %i.f, %i.h                       ; 2 uses
  %i.j = load i32, ptr %1, align 4, !tbaa !30     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !31
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %.lr.ph35, label %._crit_edge36.split

.lr.ph35:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = icmp sgt i32 %i.i, 0
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge36.split

.lr.ph.preheader:                                 ; preds = %.lr.ph35
  %i.s = sext i32 %i.j to i64
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.lr.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %.lr.ph35, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %i.s, %.lr.ph.preheader ], [ %indvars.iv.next39, %._crit_edge ] ; 6 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !20   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.x = load i64, ptr %i.w, align 8, !tbaa !41
  %i.y = mul i64 %i.x, %indvars.iv38
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.y
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !21  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 128
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !41
  %i.af = mul i64 %i.ae, %indvars.iv38
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.af
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !44
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !41
  %i.am = mul i64 %i.al, %indvars.iv38
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.am
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !19  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 128
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !41
  %i.at = mul i64 %i.as, %indvars.iv38
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at
  %i.av = load ptr, ptr %i.q, align 8, !tbaa !22  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !44
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !41
  %i.ba = mul i64 %i.az, %indvars.iv38
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ba
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32
  %i.bd = udiv i32 %i.bc, %i.f
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.be
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !46 ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.be
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !46 ; 2 uses
  %i.bj = fadd float %i.bg, %i.bi
  %i.bk = fadd float %i.bj, f0x3727C5AC
  %i.bl = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !14
  %i.bn = uitofp i8 %i.bm to float
  %i.bo = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !14
  %i.bq = uitofp i8 %i.bp to float
  %i.br = fmul float %i.bi, %i.bq
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bg, float %i.br)
  %i.bt = fdiv float %i.bs, %i.bk
  %i.bu = insertelement <4 x float> poison, float %i.bt, i64 0
  %i.bv = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.bu)
  %i.bw = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 0)
  %i.bx = tail call i32 @llvm.umin.i32(i32 %i.bw, i32 255)
  %i.by = trunc nuw i32 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !71

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next39 = add nsw i64 %indvars.iv38, 1 ; 2 uses
  %i.ca = load i32, ptr %i.k, align 4, !tbaa !31
  %i.cb = sext i32 %i.ca to i64
  %i.cc = icmp slt i64 %indvars.iv.next39, %i.cb
  br i1 %i.cc, label %.lr.ph, label %._crit_edge36.split, !llvm.loop !72
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.x86.sse.cvtss2si(<4 x float>) #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv18BlendLinearInvokerIfED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv18BlendLinearInvokerIfEclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !42
  %i.d = lshr i32 %i.c, 5
  %i.e = and i32 %i.d, 127
  %i.f = add nuw nsw i32 %i.e, 1                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !43
  %i.i = mul i32 %i.f, %i.h                       ; 2 uses
  %i.j = load i32, ptr %1, align 4, !tbaa !30     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !31   ; 2 uses
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %.lr.ph35, label %._crit_edge36.split

.lr.ph35:                                         ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.s = load i64, ptr %i.r, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  %i.y = load i64, ptr %i.x, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !37 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !41
  %i.ap = icmp sgt i32 %i.i, 0
  br i1 %i.ap, label %.lr.ph.preheader, label %._crit_edge36.split

.lr.ph.preheader:                                 ; preds = %.lr.ph35
  %i.aq = sext i32 %i.j to i64
  %wide.trip.count41 = sext i32 %i.l to i64
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %.lr.ph

._crit_edge36.split:                              ; preds = %._crit_edge, %.lr.ph35, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv38 = phi i64 [ %i.aq, %.lr.ph.preheader ], [ %indvars.iv.next39, %._crit_edge ] ; 6 uses
  %i.ar = mul i64 %i.s, %indvars.iv38
  %i.as = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ar
  %i.at = mul i64 %i.y, %indvars.iv38
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.at
  %i.av = mul i64 %i.ac, %indvars.iv38
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.av
  %i.ax = mul i64 %i.ai, %indvars.iv38
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ax
  %i.az = mul i64 %i.ao, %indvars.iv38
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.az
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.bb = trunc nuw nsw i64 %indvars.iv to i32
  %i.bc = udiv i32 %i.bb, %i.f
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !46 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bd
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !46 ; 2 uses
  %i.bi = fadd float %i.bf, %i.bh
  %i.bj = fadd float %i.bi, f0x3727C5AC
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !46
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !46
  %i.bo = fmul float %i.bh, %i.bn
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bf, float %i.bo)
  %i.bq = fdiv float %i.bp, %i.bj
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv
  store float %i.bq, ptr %i.br, align 4, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next39 = add nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge36.split, label %.lr.ph, !llvm.loop !74
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !11, i64 8, !4, i64 16}
!13 = !{!12, !9, i64 0}
!14 = !{!4, !4, i64 0}
!15 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!16 = !{!"p1 _ZTSN2cv3MatE", !8, i64 0}
!17 = !{!"_ZTSN2cv18BlendLinearInvokerIhEE", !15, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!18 = !{!17, !16, i64 8}
!19 = !{!17, !16, i64 16}
!20 = !{!17, !16, i64 24}
!21 = !{!17, !16, i64 32}
!22 = !{!17, !16, i64 40}
!23 = !{!"p1 _ZTSN2cv12MatAllocatorE", !8, i64 0}
!24 = !{!"p1 _ZTSN2cv8UMatDataE", !8, i64 0}
!25 = !{!"_ZTSN2cv10DataLayoutE", !4, i64 0}
!26 = !{!"_ZTSN2cv8MatShapeE", !5, i64 0, !25, i64 4, !5, i64 8, !4, i64 12}
!27 = !{!"_ZTSN2cv7MatStepE", !4, i64 0}
!28 = !{!"_ZTSN2cv3MatE", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !23, i64 56, !24, i64 64, !26, i64 72, !27, i64 128}
!29 = !{!"_ZTSN2cv5RangeE", !5, i64 0, !5, i64 4}
!30 = !{!29, !5, i64 0}
!31 = !{!29, !5, i64 4}
!32 = !{!"_ZTSN2cv18BlendLinearInvokerIfEE", !15, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!33 = !{!32, !16, i64 8}
!34 = !{!32, !16, i64 16}
!35 = !{!32, !16, i64 24}
!36 = !{!32, !16, i64 32}
!37 = !{!32, !16, i64 40}
!38 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !8, i64 0}
!39 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !38, i64 0, !5, i64 8}
!40 = !{!39, !5, i64 8}
!41 = !{!11, !11, i64 0}
!42 = !{!28, !5, i64 0}
!43 = !{!28, !5, i64 12}
!44 = !{!28, !9, i64 24}
!45 = !{!"float", !4, i64 0}
!46 = !{!45, !45, i64 0}
!47 = !{!"llvm.loop.mustprogress"}
!48 = distinct !{!48, i1 false, !"_ZNK2cv11_InputArray6getMatEi"}
!49 = distinct !{!49, !48, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!50 = distinct !{!50, i1 false, !"_ZNK2cv11_InputArray6getMatEi"}
!51 = distinct !{!51, !50, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!52 = distinct !{!52, i1 false, !"_ZNK2cv11_InputArray6getMatEi"}
!53 = distinct !{!53, !52, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!54 = distinct !{!54, i1 false, !"_ZNK2cv11_InputArray6getMatEi"}
!55 = distinct !{!55, !54, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!56 = distinct !{!56, i1 false, !"_ZNK2cv11_InputArray6getMatEi"}
!57 = distinct !{!57, !56, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!58 = !{!"_ZTSN2cv5Size_IiEE", !5, i64 0, !5, i64 4}
!59 = !{!"_ZTSN2cv11_InputArrayE", !5, i64 0, !8, i64 8, !58, i64 16}
!60 = !{!59, !8, i64 8}
!61 = !{!49}
!62 = !{!51}
!63 = !{!53}
!64 = !{!55}
!65 = !{!57}
!66 = !{!"vtable pointer", !3, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!28, !5, i64 8}
!69 = !{!10, !9, i64 0}
!70 = !{!12, !11, i64 8}
!71 = distinct !{!71, !47}
!72 = distinct !{!72, !47}
!73 = distinct !{!73, !47}
!74 = distinct !{!74, !47}
end_hunk_0
