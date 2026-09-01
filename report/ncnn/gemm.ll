Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm?download=true
inline.NumInlined: 63
inline.NumDeleted: 32
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN4ncnn4GemmD2Ev:bb.a

bb.m:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit2:                           ; preds = %bb.h, %_ZN4ncnn3MatD2Ev.exit3, %bb.j, %bb.k, %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 496
  store i64 0, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.p, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ac, i8 0, i64 20, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %.not.i8 = icmp eq ptr %i.ag, null
  br i1 %.not.i8, label %_ZN4ncnn3MatD2Ev.exit1, label %bb.n

bb.n:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit2
  %i.ah = atomicrmw add ptr %i.ag, i32 -1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.o, label %_ZN4ncnn3MatD2Ev.exit1

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !17 ; 3 uses
  %.not3.i9 = icmp eq ptr %i.ak, null
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i9, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef %i.al)
          to label %_ZN4ncnn3MatD2Ev.exit1 unwind label %bb.s, !inline_history !19

bb.q:                                             ; preds = %bb.o
  %.not.i17 = icmp eq ptr %i.al, null
  br i1 %.not.i17, label %_ZN4ncnn3MatD2Ev.exit1, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.al) #13
  br label %_ZN4ncnn3MatD2Ev.exit1

bb.s:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit1:                           ; preds = %bb.n, %_ZN4ncnn3MatD2Ev.exit2, %bb.p, %bb.q, %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i64 0, ptr %i.as, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ae, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ar, i8 0, i64 20, i1 false)
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %.not.i12 = icmp eq ptr %i.av, null
  br i1 %.not.i12, label %_ZN4ncnn3MatD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit1
  %i.aw = atomicrmw add ptr %i.av, i32 -1 acq_rel, align 4
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %bb.u, label %_ZN4ncnn3MatD2Ev.exit

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !17 ; 3 uses
  %.not3.i13 = icmp eq ptr %i.az, null
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i13, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef %i.ba)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.y, !inline_history !19

bb.w:                                             ; preds = %bb.u
  %.not.i16 = icmp eq ptr %i.ba, null
  br i1 %.not.i16, label %_ZN4ncnn3MatD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.ba) #13
  br label %_ZN4ncnn3MatD2Ev.exit

bb.y:                                             ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.t, %_ZN4ncnn3MatD2Ev.exit1, %bb.v, %bb.w, %bb.x
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 0, ptr %i.bh, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.at, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bg, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #13
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn4GemmD0Ev(ptr noundef nonnull align 8 dereferenceable(580) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4ncnn4GemmD2Ev(ptr noundef nonnull align 8 dead_on_return(580) dereferenceable(580) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 584) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -1, 1) i32 @_ZN4ncnn4Gemm10load_paramERKNS_9ParamDictE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(580) initializes((208, 284)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call fast noundef nofpclass(nan inf) float @_ZNK4ncnn9ParamDict3getEif(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, float noundef nofpclass(nan inf) 1.000000e+00)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  store float %i.a, ptr %i.b, align 8, !tbaa !21
  %i.c = tail call fast noundef nofpclass(nan inf) float @_ZNK4ncnn9ParamDict3getEif(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1, float noundef nofpclass(nan inf) 1.000000e+00)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 212
  store float %i.c, ptr %i.d, align 4, !tbaa !38
  %i.e = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2, i32 noundef 0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 %i.e, ptr %i.f, align 8, !tbaa !39
  %i.g = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 3, i32 noundef 0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 %i.g, ptr %i.h, align 4, !tbaa !40
  %i.i = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 4, i32 noundef 0)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store i32 %i.i, ptr %i.j, align 8, !tbaa !41
  %i.k = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 5, i32 noundef 0)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 2 uses
  store i32 %i.k, ptr %i.l, align 4, !tbaa !42
  %i.m = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 6, i32 noundef 0)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  store i32 %i.m, ptr %i.n, align 8, !tbaa !43
  %i.o = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 7, i32 noundef 0)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  store i32 %i.o, ptr %i.p, align 4, !tbaa !44
  %i.q = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 8, i32 noundef 0)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  store i32 %i.q, ptr %i.r, align 8, !tbaa !45
  %i.s = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 9, i32 noundef 0)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 3 uses
  store i32 %i.s, ptr %i.t, align 4, !tbaa !46
  %i.u = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 10, i32 noundef 0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store i32 %i.u, ptr %i.v, align 8, !tbaa !47
  %i.w = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 11, i32 noundef 0)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i32 %i.w, ptr %i.x, align 4, !tbaa !48
  %i.y = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 12, i32 noundef 0)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 %i.y, ptr %i.z, align 8, !tbaa !49
  %i.aa = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 13, i32 noundef 0)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !50
  %i.ac = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 14, i32 noundef 0)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !51
  %i.ae = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 18, i32 noundef 0)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !52
  %i.ag = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 20, i32 noundef 0)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !53
  %i.ai = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 21, i32 noundef 0)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 276
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !54
  %i.ak = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 22, i32 noundef 0)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !55
  %i.am = load i32, ptr %i.j, align 8, !tbaa !41  ; 2 uses
  %i.an = icmp eq i32 %i.am, 1                    ; 2 uses
  br i1 %i.an, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.ao = load i32, ptr %i.p, align 4, !tbaa !44
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = load i32, ptr %i.t, align 4, !tbaa !46
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !56
  %i.at = tail call i64 @fwrite(ptr nonnull @.str, i64 63, i64 1, ptr %i.as) #20 ; 0 uses
  %i.au = load ptr, ptr @stderr, align 8, !tbaa !56
  %fputc22 = tail call i32 @fputc(i32 10, ptr %i.au) ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.av = load i32, ptr %i.l, align 4, !tbaa !42  ; 2 uses
  %i.aw = icmp eq i32 %i.av, 1                    ; 3 uses
  br i1 %i.aw, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ax = load i32, ptr %i.r, align 8, !tbaa !45
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = load i32, ptr %i.t, align 4, !tbaa !46
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !56
  %i.bc = tail call i64 @fwrite(ptr nonnull @.str.2, i64 63, i64 1, ptr %i.bb) #20 ; 0 uses
  %i.bd = load ptr, ptr @stderr, align 8, !tbaa !56
  %fputc21 = tail call i32 @fputc(i32 10, ptr %i.bd) ; 0 uses
  br label %.thread

bb.i:                                             ; preds = %bb.g, %bb.e
  %i.be = load i32, ptr %i.n, align 8, !tbaa !43  ; 2 uses
  %2 = icmp eq i32 %i.be, 1                       ; 3 uses
  br i1 %2, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bf = load i32, ptr %i.v, align 8, !tbaa !47
  %i.bg = add i32 %i.bf, -5
  %or.cond = icmp ult i32 %i.bg, -6
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bh = load ptr, ptr @stderr, align 8, !tbaa !56
  %i.bi = tail call i64 @fwrite(ptr nonnull @.str.3, i64 66, i64 1, ptr %i.bh) #20 ; 0 uses
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !56
  %fputc = tail call i32 @fputc(i32 10, ptr %i.bj) ; 0 uses
  br label %.thread

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bk = icmp eq i32 %i.am, 0
  br i1 %i.bk, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %brmerge.not = and i1 %i.aw, %2
  br i1 %brmerge.not, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bl, align 8, !tbaa !58
  br label %.thread

bb.o:                                             ; preds = %bb.l
  br i1 %i.an, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bm = icmp eq i32 %i.av, 0
  br i1 %i.bm, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  br i1 %2, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bn, align 8, !tbaa !58
  br label %.thread

bb.s:                                             ; preds = %bb.p
  %i.bo = icmp eq i32 %i.be, 0
  %or.cond28 = and i1 %i.aw, %i.bo
  br i1 %or.cond28, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bp, align 8, !tbaa !58
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.q, %bb.r, %bb.n, %bb.o, %bb.s, %bb.t, %bb.k, %bb.h, %bb.d
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.h ], [ -1, %bb.k ], [ 0, %bb.t ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.m ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.q ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZN4ncnn4Gemm10load_modelERKNS_8ModelBinE(ptr nofree noundef nonnull align 8 dereferenceable(580) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %3 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %4 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %5 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %6 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %7 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %8 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %9 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %10 = alloca %"class.ncnn::Mat", align 16       ; 15 uses
  %11 = alloca %"class.ncnn::Mat", align 16       ; 15 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.av

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = load i32, ptr %i.d, align 8, !tbaa !39
  %i.f = icmp eq i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  br i1 %i.f, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.i = load i32, ptr %i.h, align 4, !tbaa !46
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.k = load i32, ptr %i.j, align 4, !tbaa !44
  %i.l = load ptr, ptr %1, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.i, i32 noundef %i.k, i32 noundef 0)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !11   ; 2 uses
  %.not.i218 = icmp eq ptr %i.p, null
  br i1 %.not.i218, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = atomicrmw add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11   ; 2 uses
  %.not.i.i219 = icmp eq ptr %i.s, null
  br i1 %.not.i.i219, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = atomicrmw add ptr %i.s, i32 -1 acq_rel, align 4
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17   ; 3 uses
  %.not3.i.i220 = icmp eq ptr %i.w, null
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i.i220, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef %i.x)
          to label %bb.k unwind label %bb.r, !inline_history !59

bb.i:                                             ; preds = %bb.g
  %.not.i18.i221 = icmp eq ptr %i.x, null
  br i1 %.not.i18.i221, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.x) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.e, %bb.h, %bb.j, %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !11  ; 2 uses
  %i.ah = load <2 x ptr>, ptr %2, align 16, !tbaa !60
  store <2 x ptr> %i.ah, ptr %i.g, align 8, !tbaa !60
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load i64, ptr %i.ai, align 16, !tbaa !61
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !61
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !62
  store i32 %i.al, ptr %i.ac, align 8, !tbaa !62
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aq = load <4 x i32>, ptr %i.ap, align 8, !tbaa !63
  store <4 x i32> %i.aq, ptr %i.ad, align 8, !tbaa !63
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !64
  store i32 %i.as, ptr %i.ae, align 8, !tbaa !64
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.au = load i64, ptr %i.at, align 16, !tbaa !20
  store i64 %i.au, ptr %i.af, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit38, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = atomicrmw add ptr %i.ag, i32 -1 acq_rel, align 4
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %bb.m, label %_ZN4ncnn3MatD2Ev.exit38

bb.m:                                             ; preds = %bb.l
  %i.ax = load ptr, ptr %i.am, align 16, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.ax, null
  %i.ay = load ptr, ptr %2, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef %i.ay)
          to label %_ZN4ncnn3MatD2Ev.exit38 unwind label %bb.q, !inline_history !19

bb.o:                                             ; preds = %bb.m
  %.not.i158 = icmp eq ptr %i.ay, null
  br i1 %.not.i158, label %_ZN4ncnn3MatD2Ev.exit38, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.ay) #13
  br label %_ZN4ncnn3MatD2Ev.exit38

bb.q:                                             ; preds = %bb.n
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #18
  unreachable

_ZN4ncnn3MatD2Ev.exit38:                          ; preds = %bb.l, %bb.k, %bb.n, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.au

bb.r:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %i.o, align 8, !tbaa !11  ; 2 uses
  %.not.i39 = icmp eq ptr %i.bf, null
  br i1 %.not.i39, label %_ZN4ncnn3MatD2Ev.exit37, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = atomicrmw add ptr %i.bf, i32 -1 acq_rel, align 4
  %i.bh = icmp eq i32 %i.bg, 1
  br i1 %i.bh, label %bb.t, label %_ZN4ncnn3MatD2Ev.exit37

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bj = load ptr, ptr %i.bi, align 16, !tbaa !17 ; 3 uses
  %.not3.i40 = icmp eq ptr %i.bj, null
  %i.bk = load ptr, ptr %2, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i40, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef %i.bk)
          to label %_ZN4ncnn3MatD2Ev.exit37 unwind label %bb.x, !inline_history !19

bb.v:                                             ; preds = %bb.t
  %.not.i156 = icmp eq ptr %i.bk, null
  br i1 %.not.i156, label %_ZN4ncnn3MatD2Ev.exit37, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.bk) #13
  br label %_ZN4ncnn3MatD2Ev.exit37
end_hunk_0
