Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/rnn?download=true
inline.NumInlined: 11
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4ncnn3RNND2Ev:bb.a

bb.k:                                             ; preds = %bb.i
  %.not.i26 = icmp eq ptr %i.w, null
  br i1 %.not.i26, label %_ZN4ncnn3MatD2Ev.exit3, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.w) #9
  br label %_ZN4ncnn3MatD2Ev.exit3

bb.m:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit3:                           ; preds = %bb.h, %_ZN4ncnn3MatD2Ev.exit4, %bb.j, %bb.k, %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i64 0, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.p, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ac, i8 0, i64 20, i1 false)
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %.not.i9 = icmp eq ptr %i.ag, null
  br i1 %.not.i9, label %_ZN4ncnn3MatD2Ev.exit2, label %bb.n

bb.n:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit3
  %i.ah = atomicrmw add ptr %i.ag, i32 -1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.o, label %_ZN4ncnn3MatD2Ev.exit2

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !17 ; 3 uses
  %.not3.i10 = icmp eq ptr %i.ak, null
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i10, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef %i.al)
          to label %_ZN4ncnn3MatD2Ev.exit2 unwind label %bb.s, !inline_history !19

bb.q:                                             ; preds = %bb.o
  %.not.i24 = icmp eq ptr %i.al, null
  br i1 %.not.i24, label %_ZN4ncnn3MatD2Ev.exit2, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.al) #9
  br label %_ZN4ncnn3MatD2Ev.exit2

bb.s:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit2:                           ; preds = %bb.n, %_ZN4ncnn3MatD2Ev.exit3, %bb.p, %bb.q, %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i64 0, ptr %i.as, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ae, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ar, i8 0, i64 20, i1 false)
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %.not.i13 = icmp eq ptr %i.av, null
  br i1 %.not.i13, label %_ZN4ncnn3MatD2Ev.exit1, label %bb.t

bb.t:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit2
  %i.aw = atomicrmw add ptr %i.av, i32 -1 acq_rel, align 4
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %bb.u, label %_ZN4ncnn3MatD2Ev.exit1

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !17 ; 3 uses
  %.not3.i14 = icmp eq ptr %i.az, null
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i14, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef %i.ba)
          to label %_ZN4ncnn3MatD2Ev.exit1 unwind label %bb.y, !inline_history !19

bb.w:                                             ; preds = %bb.u
  %.not.i22 = icmp eq ptr %i.ba, null
  br i1 %.not.i22, label %_ZN4ncnn3MatD2Ev.exit1, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.ba) #9
  br label %_ZN4ncnn3MatD2Ev.exit1

bb.y:                                             ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit1:                           ; preds = %bb.t, %_ZN4ncnn3MatD2Ev.exit2, %bb.v, %bb.w, %bb.x
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 0, ptr %i.bh, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.at, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bg, i8 0, i64 20, i1 false)
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !11 ; 2 uses
  %.not.i17 = icmp eq ptr %i.bk, null
  br i1 %.not.i17, label %_ZN4ncnn3MatD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit1
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %bb.aa, label %_ZN4ncnn3MatD2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !17 ; 3 uses
  %.not3.i18 = icmp eq ptr %i.bo, null
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i18, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef %i.bp)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ae, !inline_history !19

bb.ac:                                            ; preds = %bb.aa
  %.not.i21 = icmp eq ptr %i.bp, null
  br i1 %.not.i21, label %_ZN4ncnn3MatD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @free(ptr noundef nonnull %i.bp) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ae:                                            ; preds = %bb.ab
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  tail call void @__clang_call_terminate(ptr %i.bu) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.z, %_ZN4ncnn3MatD2Ev.exit1, %bb.ab, %bb.ac, %bb.ad
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 0, ptr %i.bw, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bi, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bv, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #9
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn3RNND0Ev(ptr noundef nonnull align 8 dereferenceable(584) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4ncnn3RNND2Ev(ptr noundef nonnull align 8 dead_on_return(584) dereferenceable(584) %0) #9
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 584) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn3RNN10load_paramERKNS_9ParamDictE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(584) initializes((208, 224)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 0, i32 noundef 0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 %i.a, ptr %i.b, align 8, !tbaa !21
  %i.c = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 1, i32 noundef 0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 %i.c, ptr %i.d, align 4, !tbaa !37
  %i.e = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 2, i32 noundef 0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 %i.e, ptr %i.f, align 8, !tbaa !38
  %i.g = tail call noundef i32 @_ZNK4ncnn9ParamDict3getEii(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef 8, i32 noundef 0)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 %i.g, ptr %i.h, align 4, !tbaa !39
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZN4ncnn3RNN10load_modelERKNS_8ModelBinE(ptr nofree noundef nonnull align 8 dereferenceable(584) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %3 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %4 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %5 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %6 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38
  %i.c = icmp eq i32 %i.b, 2                      ; 2 uses
  %i.d = select i1 %i.c, i32 2, i32 1             ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.f = load i32, ptr %i.e, align 4, !tbaa !37   ; 2 uses
  %i.g = sdiv i32 %i.f, 2
  %7 = select i1 %i.c, i32 %i.g, i32 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  %i.j = sdiv i32 %7, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.k = load ptr, ptr %1, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.j, i32 noundef %i.i, i32 noundef %i.d, i32 noundef 0)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !11   ; 2 uses
  %.not.i105 = icmp eq ptr %i.p, null
  br i1 %.not.i105, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = atomicrmw add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !11   ; 2 uses
  %.not.i.i106 = icmp eq ptr %i.s, null
  br i1 %.not.i.i106, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = atomicrmw add ptr %i.s, i32 -1 acq_rel, align 4
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !17   ; 3 uses
  %.not3.i.i107 = icmp eq ptr %i.w, null
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !18   ; 3 uses
  br i1 %.not3.i.i107, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  invoke void %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef %i.x)
          to label %bb.i unwind label %bb.p, !inline_history !40

bb.g:                                             ; preds = %bb.e
  %.not.i18.i108 = icmp eq ptr %i.x, null
  br i1 %.not.i18.i108, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.x) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.c, %bb.f, %bb.h, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ag = load ptr, ptr %i.o, align 8, !tbaa !11  ; 2 uses
  %i.ah = load <2 x ptr>, ptr %2, align 16, !tbaa !41
  store <2 x ptr> %i.ah, ptr %i.n, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load i64, ptr %i.ai, align 16, !tbaa !42
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !42
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !43
  store i32 %i.al, ptr %i.ac, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !17
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aq = load <4 x i32>, ptr %i.ap, align 8, !tbaa !44
  store <4 x i32> %i.aq, ptr %i.ad, align 8, !tbaa !44
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !45
  store i32 %i.as, ptr %i.ae, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.au = load i64, ptr %i.at, align 16, !tbaa !20
  store i64 %i.au, ptr %i.af, align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %_ZN4ncnn3MatD2Ev.exit26, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = atomicrmw add ptr %i.ag, i32 -1 acq_rel, align 4
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %bb.k, label %_ZN4ncnn3MatD2Ev.exit26

bb.k:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.am, align 16, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.ax, null
  %i.ay = load ptr, ptr %2, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef %i.ay)
          to label %_ZN4ncnn3MatD2Ev.exit26 unwind label %bb.o, !inline_history !19

bb.m:                                             ; preds = %bb.k
  %.not.i80 = icmp eq ptr %i.ay, null
  br i1 %.not.i80, label %_ZN4ncnn3MatD2Ev.exit26, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.ay) #9
  br label %_ZN4ncnn3MatD2Ev.exit26

bb.o:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          catch ptr null
  %i.bd = extractvalue { ptr, i32 } %i.bc, 0
  call void @__clang_call_terminate(ptr %i.bd) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit26:                          ; preds = %bb.j, %bb.i, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  %i.be = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZNK4ncnn3Mat5emptyEv.exit113.thread, label %_ZNK4ncnn3Mat5emptyEv.exit113

_ZNK4ncnn3Mat5emptyEv.exit113:                    ; preds = %_ZN4ncnn3MatD2Ev.exit26
  %i.bg = load i64, ptr %i.af, align 8, !tbaa !20
  %i.bh = load i32, ptr %i.ae, align 8, !tbaa !45
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul i64 %i.bg, %i.bi
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %_ZNK4ncnn3Mat5emptyEv.exit113.thread, label %bb.w

bb.p:                                             ; preds = %bb.f
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %i.o, align 8, !tbaa !11  ; 2 uses
  %.not.i27 = icmp eq ptr %i.bm, null
  br i1 %.not.i27, label %_ZN4ncnn3MatD2Ev.exit25, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = atomicrmw add ptr %i.bm, i32 -1 acq_rel, align 4
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %bb.r, label %_ZN4ncnn3MatD2Ev.exit25

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bq = load ptr, ptr %i.bp, align 16, !tbaa !17 ; 3 uses
  %.not3.i28 = icmp eq ptr %i.bq, null
  %i.br = load ptr, ptr %2, align 16, !tbaa !18   ; 3 uses
  br i1 %.not3.i28, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  invoke void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.bq, ptr noundef %i.br)
          to label %_ZN4ncnn3MatD2Ev.exit25 unwind label %bb.v, !inline_history !19

bb.t:                                             ; preds = %bb.r
  %.not.i78 = icmp eq ptr %i.br, null
  br i1 %.not.i78, label %_ZN4ncnn3MatD2Ev.exit25, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef nonnull %i.br) #9
  br label %_ZN4ncnn3MatD2Ev.exit25

bb.v:                                             ; preds = %bb.s
  %i.bv = landingpad { ptr, i32 }
          catch ptr null
  %i.bw = extractvalue { ptr, i32 } %i.bv, 0
  call void @__clang_call_terminate(ptr %i.bw) #15
  unreachable

_ZN4ncnn3MatD2Ev.exit25:                          ; preds = %bb.q, %bb.p, %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.dg

bb.w:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit113
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.bx = load i32, ptr %i.h, align 8, !tbaa !21
  %i.by = load ptr, ptr %1, align 8, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr dead_on_unwind nonnull writable sret(%"class.ncnn::Mat") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.bx, i32 noundef 1, i32 noundef %i.d, i32 noundef 0)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !11 ; 2 uses
  %.not.i98 = icmp eq ptr %i.cd, null
  br i1 %.not.i98, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ce = atomicrmw add ptr %i.cd, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !11 ; 2 uses
  %.not.i.i99 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i99, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ch = atomicrmw add ptr %i.cg, i32 -1 acq_rel, align 4
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
end_hunk_0
