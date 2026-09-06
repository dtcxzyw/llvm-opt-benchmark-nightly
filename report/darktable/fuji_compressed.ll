Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/fuji_compressed?download=true
inline.NumInlined: 61
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN6LibRaw16fuji_decode_loopEP22fuji_compressed_paramsiPxPjPh:bb.a
  %i.d = and i32 %i.c, -16
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.f = sext i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count23 = zext nneg i32 %2 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.b
  %indvars.iv20 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next21, %bb.b ] ; 4 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv20
  %i.h = load i64, ptr %i.g, align 8, !tbaa !143
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !15
  %i.k = trunc nuw nsw i64 %indvars.iv20 to i32
  invoke void @_ZN6LibRaw17fuji_decode_stripEP22fuji_compressed_paramsixjPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %1, i32 noundef %i.k, i64 noundef %i.h, i32 noundef %i.j, ptr noundef null)
          to label %bb.b unwind label %.split.us

bb.b:                                             ; preds = %.lr.ph.split.us
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %exitcond24.not = icmp eq i64 %indvars.iv.next21, %wide.trip.count23
  br i1 %exitcond24.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !233

.split.us:                                        ; preds = %.lr.ph.split.us
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.n = load i64, ptr %i.m, align 8, !tbaa !143
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !15
  %i.q = mul nsw i64 %indvars.iv, %i.f
  %i.r = getelementptr inbounds i8, ptr %5, i64 %i.q
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  invoke void @_ZN6LibRaw17fuji_decode_stripEP22fuji_compressed_paramsixjPh(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %1, i32 noundef %i.s, i64 noundef %i.n, i32 noundef %i.p, ptr noundef nonnull %i.r)
          to label %bb.f unwind label %.split

.split:                                           ; preds = %.lr.ph.split
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.c

bb.c:                                             ; preds = %.split.us, %.split
  %.us-phi = phi { ptr, i32 } [ %i.t, %.split ], [ %i.l, %.split.us ]
  %i.u = extractvalue { ptr, i32 } %.us-phi, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #14 ; 0 uses
  invoke void @__cxa_rethrow() #15
          to label %bb.h unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.w

bb.f:                                             ; preds = %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !233

._crit_edge:                                      ; preds = %bb.f, %bb.b, %bb.a
  ret void

bb.g:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #16
  unreachable

bb.h:                                             ; preds = %bb.c
  unreachable
}

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw28parse_fuji_compressed_headerEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !102  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 381760 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !142
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !104
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.e, i32 noundef 0), !call_target !125 ; 0 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !102  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !104
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 16), !call_target !132
  %.not = icmp eq i32 %i.n, 16
  br i1 %.not, label %.lr.ph.i.preheader, label %bb.j

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = load i8, ptr %i.a, align 16, !tbaa !16
  %i.q = load i8, ptr %i.o, align 1, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.s = load i8, ptr %i.r, align 2, !tbaa !16    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !16    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.w = load i8, ptr %i.v, align 4, !tbaa !16    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.z = load i8, ptr %i.x, align 1, !tbaa !16
  %i.aa = load i8, ptr %i.y, align 2, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !16
  %i.ae = load i8, ptr %i.ac, align 8, !tbaa !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.ah = load i8, ptr %i.af, align 1, !tbaa !16
  %i.ai = load i8, ptr %i.ag, align 2, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !16
  %i.am = load i8, ptr %i.ak, align 4, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !16  ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.ar = load i8, ptr %i.ap, align 2, !tbaa !16
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  %i.au = load i8, ptr %i.aq, align 1, !tbaa !16
  %i.av = zext i8 %i.au to i32
  %i.aw = or disjoint i32 %i.at, %i.av            ; 3 uses
  %i.ax = zext i8 %i.al to i32
  %i.ay = shl nuw nsw i32 %i.ax, 8
  %i.az = zext i8 %i.am to i32
  %i.ba = or disjoint i32 %i.ay, %i.az            ; 4 uses
  %i.bb = zext i8 %i.ah to i32
  %i.bc = shl nuw nsw i32 %i.bb, 8
  %i.bd = zext i8 %i.ai to i32
  %i.be = or disjoint i32 %i.bc, %i.bd            ; 3 uses
  %i.bf = zext i8 %i.ad to i32
  %i.bg = shl nuw nsw i32 %i.bf, 8                ; 2 uses
  %i.bh = zext i8 %i.ae to i32
  %i.bi = or disjoint i32 %i.bg, %i.bh            ; 4 uses
  %i.bj = zext i8 %i.z to i32
  %i.bk = shl nuw nsw i32 %i.bj, 8
  %i.bl = zext i8 %i.aa to i32
  %i.bm = or disjoint i32 %i.bk, %i.bl            ; 2 uses
  %i.bn = zext i8 %i.p to i32
  %i.bo = shl nuw nsw i32 %i.bn, 8
  %i.bp = zext i8 %i.q to i32
  %i.bq = or disjoint i32 %i.bo, %i.bp
  %i.br = zext nneg i8 %i.s to i32
  %i.bs = zext nneg i8 %i.u to i32
  %i.bt = zext nneg i8 %i.w to i32
  %i.bu = zext nneg i8 %i.ao to i32
  %i.bv = icmp ne i32 %i.bq, 18771
  %i.bw = icmp ugt i8 %i.s, 1
  %or.cond = select i1 %i.bv, i1 true, i1 %i.bw
  %i.bx = add nsw i32 %i.bm, -16387
  %i.by = icmp ult i32 %i.bx, -16381
  %or.cond5 = or i1 %or.cond, %i.by
  br i1 %or.cond5, label %bb.j, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.preheader
  %.lhs.trunc = trunc nuw nsw i32 %i.bm to i16    ; 3 uses
  %i.bz = urem i16 %.lhs.trunc, 6
  %i.ca = udiv exact i16 %.lhs.trunc, 6
  %i.cb = icmp ne i16 %i.bz, 0
  %i.cc = icmp eq i32 %i.ba, 0
  %or.cond7 = or i1 %i.cb, %i.cc
  %i.cd = add nsw i32 %i.be, -16897
  %i.ce = icmp ult i32 %i.cd, -16129
  %or.cond11 = or i1 %i.ce, %or.cond7
  br i1 %or.cond11, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.lhs.trunc105 = trunc nuw nsw i32 %i.be to i16 ; 2 uses
  %i.cf = urem i16 %.lhs.trunc105, 24
  %i.cg = icmp ne i16 %i.cf, 0
  %i.ch = icmp samesign ugt i32 %i.bi, 16896
  %or.cond13 = or i1 %i.ch, %i.cg
  %i.ci = icmp samesign ult i32 %i.bi, %i.ba
  %or.cond78 = or i1 %or.cond13, %i.ci
  br i1 %or.cond78, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.lhs.trunc128 = trunc nuw i32 %i.bi to i16
  %.rhs.trunc = trunc nuw i32 %i.ba to i16
  %i.cj = urem i16 %.lhs.trunc128, %.rhs.trunc
  %.not75 = icmp eq i16 %i.cj, 0
  br i1 %.not75, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.ck = sub nsw i32 %i.bi, %i.be
  %i.cl = icmp ne i32 %i.ba, 768
  %i.cm = icmp ugt i32 %i.ck, 767
  %or.cond15 = or i1 %i.cm, %i.cl
  %i.cn = add i8 %i.ao, -17
  %i.co = icmp ult i8 %i.cn, -16
  %or.cond19 = select i1 %or.cond15, i1 true, i1 %i.co
  br i1 %or.cond19, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.lhs.trunc107 = trunc nuw nsw i32 %i.bg to i16
  %i.cp = udiv i16 %.lhs.trunc107, 768
  %i.cq = zext nneg i8 %i.ao to i16
  %i.cr = icmp eq i16 %i.cp, %i.cq
  %i.cs = add nsw i32 %i.aw, -1
  %i.ct = icmp ult i32 %i.cs, 2731
  %or.cond23.not113 = and i1 %i.cr, %i.ct
  %.zext110 = zext nneg i16 %i.ca to i32
  %.not76 = icmp eq i32 %i.aw, %.zext110
  %or.cond79 = select i1 %or.cond23.not113, i1 %.not76, i1 false
  br i1 %or.cond79, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  switch i8 %i.w, label %bb.j [
    i8 16, label %bb.h
    i8 14, label %bb.h
    i8 12, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g
  %i.cu = and i8 %i.u, -17
  %or.cond29.not = icmp eq i8 %i.cu, 0
  br i1 %or.cond29.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 381884
  store i32 %i.aw, ptr %i.cv, align 4, !tbaa !141
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 381888
  store i32 %i.bu, ptr %i.cw, align 8, !tbaa !140
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 381892
  store i32 768, ptr %i.cx, align 4, !tbaa !93
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 381896
  store i32 %i.bt, ptr %i.cy, align 8, !tbaa !94
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 381900
  store i32 %i.bs, ptr %i.cz, align 4, !tbaa !97
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 381904
  store i32 %i.br, ptr %i.da, align 8, !tbaa !95
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %.lhs.trunc105, ptr %i.dc, align 2, !tbaa !135
  store i16 %.lhs.trunc, ptr %i.db, align 8, !tbaa !234
  %i.dd = load i64, ptr %i.d, align 8, !tbaa !142
  %i.de = add nsw i64 %i.dd, 16
  store i64 %i.de, ptr %i.d, align 8, !tbaa !142
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 768416
  store i64 ptrtoint (ptr @_ZN6LibRaw24fuji_compressed_load_rawEv to i64), ptr %i.df, align 8, !tbaa !235
  %.repack77 = getelementptr inbounds nuw i8, ptr %0, i64 768424
  store i64 0, ptr %.repack77, align 8, !tbaa !235
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.preheader, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.h, %bb.g, %bb.a, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { cold noreturn }
attributes #9 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !17}
!1 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "LibRaw_abstract_datastream", file: !105, line: 95, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS26LibRaw_abstract_datastream")
!2 = distinct !{!2, !17}
!3 = distinct !{!3, !17, !139}
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!"__libc_errno", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!12, !12, i64 0}
!16 = !{!11, !11, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"any pointer", !11, i64 0}
!19 = !{!"short", !11, i64 0}
!20 = !{!"_ZTS22fuji_compressed_params", !11, i64 0, !18, i64 128, !12, i64 136, !12, i64 140, !12, i64 144, !19, i64 148}
!21 = !{!20, !12, i64 144}
!22 = !{!"p1 omnipotent char", !18, i64 0}
!23 = !{!"_ZTS12fuji_q_table", !22, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24}
!24 = !{!23, !22, i64 0}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"branch_weights", i32 16, i32 16}
!28 = !{!23, !12, i64 24}
!29 = !{!23, !12, i64 16}
!30 = !{!23, !12, i64 12}
!31 = !{!23, !12, i64 8}
!32 = !{!23, !12, i64 20}
!33 = !{!20, !12, i64 136}
!34 = !{!"p1 short", !18, i64 0}
!35 = !{!"double", !11, i64 0}
!36 = !{!"_ZTS20libraw_image_sizes_t", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !19, i64 8, !19, i64 10, !19, i64 12, !19, i64 14, !12, i64 16, !35, i64 24, !12, i64 32, !11, i64 36, !19, i64 164, !11, i64 166}
!37 = !{!"_ZTS16libraw_iparams_t", !11, i64 0, !11, i64 4, !11, i64 68, !11, i64 132, !11, i64 196, !11, i64 260, !12, i64 324, !12, i64 328, !12, i64 332, !12, i64 336, !12, i64 340, !12, i64 344, !11, i64 348, !11, i64 384, !11, i64 420, !12, i64 428, !22, i64 432}
!38 = !{!"float", !11, i64 0}
!39 = !{!"_ZTS18libraw_nikonlens_t", !38, i64 0, !11, i64 4, !11, i64 5, !11, i64 6, !11, i64 7}
!40 = !{!"_ZTS16libraw_dnglens_t", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12}
!41 = !{!"long long", !11, i64 0}
!42 = !{!"_ZTS24libraw_makernotes_lens_t", !41, i64 0, !11, i64 8, !19, i64 136, !19, i64 138, !41, i64 144, !19, i64 152, !19, i64 154, !11, i64 156, !19, i64 220, !11, i64 222, !11, i64 238, !38, i64 256, !38, i64 260, !38, i64 264, !38, i64 268, !38, i64 272, !38, i64 276, !38, i64 280, !38, i64 284, !38, i64 288, !38, i64 292, !38, i64 296, !38, i64 300, !38, i64 304, !38, i64 308, !38, i64 312, !41, i64 320, !11, i64 328, !41, i64 456, !11, i64 464, !41, i64 592, !11, i64 600, !19, i64 728, !38, i64 732}
!43 = !{!"_ZTS17libraw_lensinfo_t", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !11, i64 20, !11, i64 148, !11, i64 276, !11, i64 404, !19, i64 532, !39, i64 536, !40, i64 544, !42, i64 560}
!44 = !{!"_ZTS13libraw_area_t", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6}
!45 = !{!"_ZTS25libraw_canon_makernotes_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !12, i64 32, !11, i64 36, !19, i64 52, !19, i64 54, !11, i64 56, !19, i64 58, !19, i64 60, !19, i64 62, !19, i64 64, !19, i64 66, !19, i64 68, !19, i64 70, !19, i64 72, !19, i64 74, !19, i64 76, !19, i64 78, !19, i64 80, !19, i64 82, !12, i64 84, !38, i64 88, !19, i64 92, !19, i64 94, !19, i64 96, !19, i64 98, !12, i64 100, !19, i64 104, !12, i64 108, !12, i64 112, !19, i64 116, !12, i64 120, !44, i64 124, !44, i64 132, !44, i64 140, !44, i64 148, !44, i64 156, !11, i64 164}
!46 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6}
!47 = !{!"_ZTS25libraw_nikon_makernotes_t", !35, i64 0, !19, i64 8, !19, i64 10, !11, i64 12, !11, i64 19, !11, i64 20, !11, i64 21, !11, i64 34, !11, i64 54, !11, i64 58, !11, i64 62, !11, i64 66, !11, i64 67, !11, i64 68, !11, i64 69, !11, i64 70, !11, i64 71, !11, i64 73, !11, i64 74, !11, i64 75, !11, i64 76, !11, i64 77, !11, i64 78, !11, i64 82, !11, i64 86, !19, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !11, i64 112, !11, i64 144, !11, i64 145, !11, i64 146, !12, i64 148, !12, i64 152, !12, i64 156, !11, i64 160, !11, i64 162, !19, i64 170, !46, i64 172, !19, i64 180, !19, i64 182, !19, i64 184, !12, i64 188, !11, i64 192, !11, i64 212, !12, i64 232, !11, i64 236, !12, i64 248, !22, i64 256, !19, i64 264, !19, i64 266, !11, i64 268, !19, i64 270, !35, i64 272, !35, i64 280, !35, i64 288}
!48 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !12, i64 0, !35, i64 8, !11, i64 16, !11, i64 24, !11, i64 88, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !11, i64 168, !11, i64 200, !12, i64 264, !11, i64 268, !11, i64 276, !11, i64 288}
!49 = !{!"_ZTS18libraw_fuji_info_t", !38, i64 0, !19, i64 4, !19, i64 6, !19, i64 8, !19, i64 10, !19, i64 12, !19, i64 14, !19, i64 16, !19, i64 18, !11, i64 20, !11, i64 53, !38, i64 88, !19, i64 92, !19, i64 94, !11, i64 96, !19, i64 100, !12, i64 104, !12, i64 108, !19, i64 112, !11, i64 114, !19, i64 120, !19, i64 122, !19, i64 124, !19, i64 126, !19, i64 128, !12, i64 132, !19, i64 136, !11, i64 138, !11, i64 151, !11, i64 156, !12, i64 164, !19, i64 168, !12, i64 172, !19, i64 176, !11, i64 178, !11, i64 196, !12, i64 324, !12, i64 328, !12, i64 332, !11, i64 336, !12, i64 344}
!50 = !{!"_ZTS27libraw_olympus_makernotes_t", !11, i64 0, !19, i64 6, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !11, i64 64, !11, i64 72, !19, i64 82, !11, i64 84, !19, i64 88, !19, i64 90, !11, i64 92, !11, i64 352, !19, i64 392, !11, i64 394, !11, i64 396, !11, i64 404, !19, i64 416, !19, i64 418, !19, i64 420, !19, i64 422, !35, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !12, i64 452, !19, i64 456, !19, i64 458}
!51 = !{!"_ZTS18libraw_sony_info_t", !19, i64 0, !11, i64 2, !11, i64 3, !12, i64 4, !11, i64 8, !12, i64 12, !11, i64 16, !11, i64 17, !19, i64 18, !11, i64 20, !11, i64 24, !11, i64 25, !19, i64 26, !11, i64 28, !11, i64 38, !11, i64 39, !11, i64 40, !19, i64 48, !11, i64 50, !11, i64 51, !11, i64 52, !19, i64 54, !12, i64 56, !19, i64 60, !11, i64 62, !19, i64 66, !19, i64 68, !19, i64 70, !19, i64 72, !19, i64 74, !19, i64 76, !19, i64 78, !12, i64 80, !38, i64 84, !19, i64 88, !12, i64 92, !12, i64 96, !19, i64 100, !11, i64 102, !12, i64 124, !19, i64 128, !12, i64 132, !11, i64 136, !11, i64 137, !19, i64 138, !19, i64 140, !19, i64 142, !19, i64 144, !19, i64 146, !19, i64 148, !19, i64 150, !19, i64 152, !19, i64 154, !12, i64 156, !19, i64 160, !11, i64 162, !38, i64 180}
!52 = !{!"_ZTS25libraw_kodak_makernotes_t", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !19, i64 8, !19, i64 10, !11, i64 12, !11, i64 48, !11, i64 84, !11, i64 120, !11, i64 156, !11, i64 192, !19, i64 228, !19, i64 230, !19, i64 232, !19, i64 234, !38, i64 236, !38, i64 240}
!53 = !{!"_ZTS29libraw_panasonic_makernotes_t", !19, i64 0, !19, i64 2, !11, i64 4, !12, i64 36, !38, i64 40, !11, i64 44, !19, i64 56, !19, i64 58, !12, i64 60, !12, i64 64}
!54 = !{!"_ZTS26libraw_pentax_makernotes_t", !11, i64 0, !11, i64 4, !11, i64 8, !19, i64 12, !12, i64 16, !12, i64 20, !19, i64 24, !11, i64 26, !19, i64 30, !11, i64 32, !11, i64 33, !19, i64 34}
!55 = !{!"_ZTS22libraw_p1_makernotes_t", !11, i64 0, !11, i64 64, !11, i64 128, !11, i64 384}
!56 = !{!"_ZTS25libraw_ricoh_makernotes_t", !19, i64 0, !11, i64 4, !11, i64 12, !19, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !19, i64 40, !19, i64 42, !19, i64 44, !19, i64 46, !19, i64 48, !19, i64 50, !35, i64 56, !35, i64 64}
!57 = !{!"_ZTS27libraw_samsung_makernotes_t", !11, i64 0, !11, i64 16, !11, i64 32, !11, i64 40, !35, i64 88, !12, i64 96, !11, i64 100}
!58 = !{!"_ZTS24libraw_metadata_common_t", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44, !38, i64 48, !38, i64 52, !38, i64 56, !38, i64 60, !19, i64 64, !11, i64 66, !38, i64 196, !11, i64 200, !12, i64 296}
!59 = !{!"_ZTS19libraw_makernotes_t", !45, i64 0, !47, i64 168, !48, i64 464, !49, i64 848, !50, i64 1200, !51, i64 1664, !52, i64 1848, !53, i64 2092, !54, i64 2160, !55, i64 2196, !56, i64 2648, !57, i64 2720, !58, i64 2856}
!60 = !{!"_ZTS21libraw_shootinginfo_t", !19, i64 0, !19, i64 2, !19, i64 4, !19, i64 6, !19, i64 8, !19, i64 10, !19, i64 12, !11, i64 14, !11, i64 78}
!61 = !{!"_ZTS22libraw_output_params_t", !11, i64 0, !11, i64 16, !11, i64 32, !11, i64 64, !11, i64 112, !38, i64 128, !38, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !22, i64 168, !22, i64 176, !22, i64 184, !22, i64 192, !12, i64 200, !12, i64 204, !12, i64 208, !12, i64 212, !12, i64 216, !12, i64 220, !11, i64 224, !12, i64 240, !12, i64 244, !38, i64 248, !38, i64 252, !12, i64 256, !12, i64 260, !12, i64 264, !12, i64 268, !12, i64 272, !12, i64 276, !12, i64 280, !12, i64 284, !38, i64 288, !38, i64 292, !12, i64 296, !12, i64 300}
!62 = !{!"any p2 pointer", !18, i64 0}
!63 = !{!"p2 omnipotent char", !62, i64 0}
!64 = !{!"_ZTS26libraw_raw_unpack_params_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !38, i64 28, !11, i64 32, !63, i64 40}
!65 = !{!"_ZTS5ph1_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !38, i64 32}
!66 = !{!"_ZTS19libraw_dng_levels_t", !12, i64 0, !11, i64 4, !12, i64 16420, !11, i64 16424, !38, i64 32840, !11, i64 32844, !11, i64 32860, !11, i64 32868, !12, i64 32884, !11, i64 32888, !11, i64 32904, !38, i64 32920, !38, i64 32924, !11, i64 32928}
!67 = !{!"_ZTS18libraw_colordata_t", !11, i64 0, !11, i64 131072, !12, i64 147488, !12, i64 147492, !12, i64 147496, !11, i64 147500, !38, i64 147516, !38, i64 147520, !11, i64 147524, !11, i64 147652, !11, i64 147668, !11, i64 147684, !11, i64 147732, !11, i64 147780, !11, i64 147828, !65, i64 147876, !38, i64 147912, !38, i64 147916, !11, i64 147920, !11, i64 147984, !11, i64 148048, !11, i64 148112, !11, i64 148176, !11, i64 148193, !18, i64 148264, !12, i64 148272, !11, i64 148276, !11, i64 148308, !66, i64 148648, !11, i64 181624, !11, i64 185720, !12, i64 187000, !11, i64 187004, !12, i64 187076, !12, i64 187080}
!68 = !{!"long", !11, i64 0}
!69 = !{!"_ZTS17libraw_gps_info_t", !11, i64 0, !11, i64 12, !11, i64 24, !38, i64 36, !11, i64 40, !11, i64 41, !11, i64 42, !11, i64 43, !11, i64 44}
!70 = !{!"_ZTS17libraw_imgother_t", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !68, i64 16, !12, i64 24, !11, i64 28, !69, i64 156, !11, i64 204, !11, i64 716, !11, i64 780}
!71 = !{!"_ZTS24LibRaw_thumbnail_formats", !11, i64 0}
!72 = !{!"_ZTS18libraw_thumbnail_t", !71, i64 0, !19, i64 4, !19, i64 6, !12, i64 8, !12, i64 12, !22, i64 16}
!73 = !{!"_ZTS23libraw_thumbnail_list_t", !12, i64 0, !11, i64 8}
!74 = !{!"p1 float", !18, i64 0}
!75 = !{!"_ZTS31libraw_internal_output_params_t", !12, i64 0, !12, i64 4, !12, i64 8, !19, i64 12, !19, i64 14}
!76 = !{!"_ZTS16libraw_rawdata_t", !18, i64 0, !34, i64 8, !34, i64 16, !34, i64 24, !74, i64 32, !74, i64 40, !74, i64 48, !34, i64 56, !34, i64 64, !37, i64 72, !36, i64 512, !75, i64 696, !67, i64 712}
!77 = !{!"_ZTS13libraw_data_t", !34, i64 0, !36, i64 8, !37, i64 192, !43, i64 632, !59, i64 1928, !60, i64 5088, !61, i64 5232, !64, i64 5536, !12, i64 5584, !12, i64 5588, !67, i64 5592, !70, i64 192680, !72, i64 193480, !73, i64 193504, !76, i64 193768, !18, i64 381568}
!78 = !{!"p1 _ZTS10LibRaw_TLS", !18, i64 0}
!79 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !18, i64 0}
!80 = !{!"p1 _ZTS8_IO_FILE", !18, i64 0}
!81 = !{!"_ZTS15internal_data_t", !79, i64 0, !80, i64 8, !12, i64 16, !22, i64 24, !41, i64 32, !41, i64 40, !11, i64 48}
!82 = !{!"p1 int", !18, i64 0}
!83 = !{!"_ZTS13output_data_t", !82, i64 0, !82, i64 8}
!84 = !{!"_ZTS15identify_data_t", !12, i64 0, !41, i64 8, !41, i64 16, !12, i64 24, !12, i64 28, !12, i64 32}
!85 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !11, i64 0}
!86 = !{!"_ZTS12pana8_tags_t", !11, i64 0, !11, i64 24, !19, i64 36, !11, i64 38, !11, i64 46, !11, i64 80, !11, i64 114, !19, i64 148, !19, i64 150, !11, i64 152, !11, i64 192, !11, i64 204, !11, i64 224, !11, i64 234}
!87 = !{!"_ZTS15unpacker_data_t", !19, i64 0, !11, i64 2, !11, i64 10, !12, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !85, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !41, i64 144, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !12, i64 180, !12, i64 184, !86, i64 192, !11, i64 440, !12, i64 2488, !12, i64 2492, !19, i64 2496, !19, i64 2498, !12, i64 2500, !12, i64 2504, !12, i64 2508, !12, i64 2512, !12, i64 2516, !12, i64 2520, !12, i64 2524, !11, i64 2528, !19, i64 2608}
!88 = !{!"_ZTS22libraw_internal_data_t", !81, i64 0, !75, i64 64, !83, i64 80, !84, i64 96, !87, i64 136}
!89 = !{!"p1 _ZTS6decode", !18, i64 0}
!90 = !{!"_ZTS13libraw_memmgr", !62, i64 0, !12, i64 8}
!91 = !{!"_ZTS18libraw_callbacks_t", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144}
!92 = !{!"_ZTS6LibRaw", !77, i64 8, !78, i64 381584, !88, i64 381592, !11, i64 384344, !89, i64 433496, !89, i64 433504, !11, i64 433512, !90, i64 768232, !91, i64 768248, !11, i64 768400, !11, i64 768416, !11, i64 768432, !18, i64 768448, !18, i64 768456, !18, i64 768464, !68, i64 768472, !18, i64 768480, !18, i64 768488, !18, i64 768496, !18, i64 768504}
!93 = !{!92, !12, i64 381892}
!94 = !{!92, !12, i64 381896}
!95 = !{!92, !12, i64 381904}
!96 = !{!20, !18, i64 128}
!97 = !{!92, !12, i64 381900}
!98 = !{!20, !19, i64 148}
!99 = !{!20, !12, i64 140}
!100 = !{!"_ZTS21fuji_compressed_block", !12, i64 0, !12, i64 4, !41, i64 8, !12, i64 16, !12, i64 20, !22, i64 24, !12, i64 32, !79, i64 40, !11, i64 48, !11, i64 1392, !34, i64 2736, !11, i64 2744}
!101 = !{!100, !34, i64 2736}
!102 = !{!92, !79, i64 381592}
!103 = !{!"vtable pointer", !10, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_datastream.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "505b914805f57d87ebbd6647c463dab8")
!106 = !DIFile(filename: "src/external/LibRaw/libraw/libraw_types.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "b83e9769365a38f23d349f0ab8a63a99")
!107 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "INT64", file: !106, line: 109, baseType: !107)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!110 = !{!100, !12, i64 16}
!111 = !{!100, !12, i64 32}
!112 = !{!100, !79, i64 40}
!113 = !{!34, !34, i64 0}
!114 = !{!100, !22, i64 24}
end_hunk_0
