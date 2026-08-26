Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86?download=true
inline.NumInlined: 29
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4ncnn8LSTM_x86D2Ev:bb.a
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef %i.w)
          to label %_ZN4ncnn3MatD2Ev.exit3 unwind label %bb.m, !inline_history !19

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
  tail call void @__clang_call_terminate(ptr %i.ab) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit3:                           ; preds = %bb.h, %_ZN4ncnn3MatD2Ev.exit4, %bb.j, %bb.k, %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 944
  store i64 0, ptr %i.ad, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 816
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
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 840
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
  tail call void @__clang_call_terminate(ptr %i.aq) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit2:                           ; preds = %bb.n, %_ZN4ncnn3MatD2Ev.exit3, %bb.p, %bb.q, %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 872
  store i64 0, ptr %i.as, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 744
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
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 768
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
  tail call void @__clang_call_terminate(ptr %i.bf) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit1:                           ; preds = %bb.t, %_ZN4ncnn3MatD2Ev.exit2, %bb.v, %bb.w, %bb.x
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 800
  store i64 0, ptr %i.bh, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 672
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
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 696
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
  tail call void @__clang_call_terminate(ptr %i.bu) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.z, %_ZN4ncnn3MatD2Ev.exit1, %bb.ab, %bb.ac, %bb.ad
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 728
  store i64 0, ptr %i.bw, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bi, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bv, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn4LSTMD2Ev(ptr noundef nonnull align 8 dead_on_return(664) dereferenceable(664) %0) #9
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4ncnn8LSTM_x86D0Ev(ptr noundef nonnull align 8 dereferenceable(1024) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4ncnn8LSTM_x86D2Ev(ptr noundef nonnull align 8 dead_on_return(1024) dereferenceable(1024) %0) #9
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 1024) #20
  ret void
}

declare noundef i32 @_ZN4ncnn4LSTM10load_paramERKNS_9ParamDictE(ptr noundef nonnull align 8 dereferenceable(664), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare noundef i32 @_ZN4ncnn4LSTM10load_modelERKNS_8ModelBinE(ptr noundef nonnull align 8 dereferenceable(664), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn8LSTM_x8615create_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load i32, ptr %i.d, align 8, !tbaa !21
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i32 @_ZN4ncnn8LSTM_x8620create_pipeline_int8ERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load i32, ptr %i.g, align 8, !tbaa !37
  %i.i = icmp eq i32 %i.h, 2                      ; 2 uses
  %i.j = select i1 %i.i, i32 2, i32 1             ; 4 uses
  store i32 %i.j, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.l = load i32, ptr %i.k, align 4, !tbaa !39   ; 2 uses
  %i.m = sdiv i32 %i.l, 2
  %2 = select i1 %i.i, i32 %i.m, i32 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !40   ; 2 uses
  %i.p = sdiv i32 %2, %i.o
  %i.q = sdiv i32 %i.p, 4                         ; 2 uses
  store i32 %i.q, ptr %i.b, align 4, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 664
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.r, i32 noundef %i.q, i32 noundef %i.o, i32 noundef %i.j, i64 noundef 16, i32 noundef 4, ptr noundef null)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.t = load i32, ptr %i.n, align 4, !tbaa !40
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.s, i32 noundef %i.t, i32 noundef 1, i32 noundef %i.j, i64 noundef 16, i32 noundef 4, ptr noundef null)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.w = load i32, ptr %i.v, align 8, !tbaa !41
  %i.x = load i32, ptr %i.n, align 4, !tbaa !40
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.u, i32 noundef %i.w, i32 noundef %i.x, i32 noundef %i.j, i64 noundef 16, i32 noundef 4, ptr noundef null)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !42
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.c, i32 %i.z)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZN4ncnn8LSTM_x8615create_pipelineERKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull %0, ptr nonnull %i.b)
  %i.aa = load i8, ptr %1, align 8, !tbaa !44, !range !45, !noundef !46
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %.not.i7 = icmp eq ptr %i.ae, null
  br i1 %.not.i7, label %_ZN4ncnn3Mat7releaseEv.exit9, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = atomicrmw add ptr %i.ae, i32 -1 acq_rel, align 4
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.f, label %_ZN4ncnn3Mat7releaseEv.exit9

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !17 ; 3 uses
  %.not3.i8 = icmp eq ptr %i.ai, null
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i8, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.aj), !inline_history !19
  br label %_ZN4ncnn3Mat7releaseEv.exit9

bb.h:                                             ; preds = %bb.f
  %.not.i10 = icmp eq ptr %i.aj, null
  br i1 %.not.i10, label %_ZN4ncnn3Mat7releaseEv.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.aj) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit9

_ZN4ncnn3Mat7releaseEv.exit9:                     ; preds = %bb.i, %bb.h, %bb.d, %bb.e, %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %i.ao, align 8, !tbaa !20
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ac, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.an, i8 0, i64 20, i1 false)
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !11 ; 2 uses
  %.not.i4 = icmp eq ptr %i.ar, null
  br i1 %.not.i4, label %_ZN4ncnn3Mat7releaseEv.exit6, label %bb.j

bb.j:                                             ; preds = %_ZN4ncnn3Mat7releaseEv.exit9
  %i.as = atomicrmw add ptr %i.ar, i32 -1 acq_rel, align 4
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %bb.k, label %_ZN4ncnn3Mat7releaseEv.exit6

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !17 ; 3 uses
  %.not3.i5 = icmp eq ptr %i.av, null
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i5, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef %i.aw), !inline_history !19
  br label %_ZN4ncnn3Mat7releaseEv.exit6

bb.m:                                             ; preds = %bb.k
  %.not.i11 = icmp eq ptr %i.aw, null
  br i1 %.not.i11, label %_ZN4ncnn3Mat7releaseEv.exit6, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.aw) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit6

_ZN4ncnn3Mat7releaseEv.exit6:                     ; preds = %bb.n, %bb.m, %_ZN4ncnn3Mat7releaseEv.exit9, %bb.j, %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 0, ptr %i.bb, align 8, !tbaa !20
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ap, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ba, i8 0, i64 20, i1 false)
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.be, null
  br i1 %.not.i, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4ncnn3Mat7releaseEv.exit6
  %i.bf = atomicrmw add ptr %i.be, i32 -1 acq_rel, align 4
  %i.bg = icmp eq i32 %i.bf, 1
  br i1 %i.bg, label %bb.p, label %_ZN4ncnn3Mat7releaseEv.exit

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.bi, null
  %i.bj = load ptr, ptr %i.bc, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef %i.bj), !inline_history !19
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.r:                                             ; preds = %bb.p
  %.not.i13 = icmp eq ptr %i.bj, null
  br i1 %.not.i13, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.bj) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.s, %bb.r, %_ZN4ncnn3Mat7releaseEv.exit6, %bb.o, %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 0, ptr %i.bo, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bc, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bn, i8 0, i64 20, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %_ZN4ncnn3Mat7releaseEv.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.b
  ret i32 0
}

declare noundef i32 @_ZN4ncnn5Layer16destroy_pipelineERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn8LSTM_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.ncnn::Mat", align 16        ; 23 uses
  %5 = alloca %"class.ncnn::Mat", align 16        ; 23 uses
  %6 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %7 = alloca %"class.ncnn::Mat", align 16        ; 15 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 17 uses
  %9 = alloca %"class.ncnn::Mat", align 8         ; 17 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 24 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %16 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %17 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %18 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %19 = alloca %"class.ncnn::Mat", align 8        ; 24 uses
  %20 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %21 = alloca %"class.ncnn::Mat", align 8        ; 15 uses
  %22 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %23 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %24 = alloca %"class.ncnn::Mat", align 8        ; 17 uses
  %25 = alloca %"class.ncnn::Mat", align 8        ; 24 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZNK4ncnn8LSTM_x8612forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %bb.lp

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !47     ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load i32, ptr %i.e, align 8, !tbaa !48   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !37
  %i.i = icmp eq i32 %i.h, 2                      ; 2 uses
  %i.j = select i1 %i.i, i32 2, i32 1             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnn4LSTMD2Ev:bb.a
  br i1 %.not3.i11, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  invoke void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef %i.al)
          to label %_ZN4ncnn3MatD2Ev.exit3 unwind label %bb.s, !inline_history !19

bb.q:                                             ; preds = %bb.o
  %.not.i31 = icmp eq ptr %i.al, null
  br i1 %.not.i31, label %_ZN4ncnn3MatD2Ev.exit3, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @free(ptr noundef nonnull %i.al) #9
  br label %_ZN4ncnn3MatD2Ev.exit3

bb.s:                                             ; preds = %bb.p
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit3:                           ; preds = %bb.n, %_ZN4ncnn3MatD2Ev.exit4, %bb.p, %bb.q, %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 0, ptr %i.as, align 8, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.ae, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ar, i8 0, i64 20, i1 false)
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !11 ; 2 uses
  %.not.i14 = icmp eq ptr %i.av, null
  br i1 %.not.i14, label %_ZN4ncnn3MatD2Ev.exit2, label %bb.t

bb.t:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit3
  %i.aw = atomicrmw add ptr %i.av, i32 -1 acq_rel, align 4
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %bb.u, label %_ZN4ncnn3MatD2Ev.exit2

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !17 ; 3 uses
  %.not3.i15 = icmp eq ptr %i.az, null
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i15, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef %i.ba)
          to label %_ZN4ncnn3MatD2Ev.exit2 unwind label %bb.y, !inline_history !19

bb.w:                                             ; preds = %bb.u
  %.not.i29 = icmp eq ptr %i.ba, null
  br i1 %.not.i29, label %_ZN4ncnn3MatD2Ev.exit2, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @free(ptr noundef nonnull %i.ba) #9
  br label %_ZN4ncnn3MatD2Ev.exit2

bb.y:                                             ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit2:                           ; preds = %bb.t, %_ZN4ncnn3MatD2Ev.exit3, %bb.v, %bb.w, %bb.x
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 0, ptr %i.bh, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.at, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bg, i8 0, i64 20, i1 false)
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !11 ; 2 uses
  %.not.i18 = icmp eq ptr %i.bk, null
  br i1 %.not.i18, label %_ZN4ncnn3MatD2Ev.exit1, label %bb.z

bb.z:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit2
  %i.bl = atomicrmw add ptr %i.bk, i32 -1 acq_rel, align 4
  %i.bm = icmp eq i32 %i.bl, 1
  br i1 %i.bm, label %bb.aa, label %_ZN4ncnn3MatD2Ev.exit1

bb.aa:                                            ; preds = %bb.z
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !17 ; 3 uses
  %.not3.i19 = icmp eq ptr %i.bo, null
  %i.bp = load ptr, ptr %i.bi, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i19, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  invoke void %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef %i.bp)
          to label %_ZN4ncnn3MatD2Ev.exit1 unwind label %bb.ae, !inline_history !19

bb.ac:                                            ; preds = %bb.aa
  %.not.i27 = icmp eq ptr %i.bp, null
  br i1 %.not.i27, label %_ZN4ncnn3MatD2Ev.exit1, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  tail call void @free(ptr noundef nonnull %i.bp) #9
  br label %_ZN4ncnn3MatD2Ev.exit1

bb.ae:                                            ; preds = %bb.ab
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  tail call void @__clang_call_terminate(ptr %i.bu) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit1:                           ; preds = %bb.z, %_ZN4ncnn3MatD2Ev.exit2, %bb.ab, %bb.ac, %bb.ad
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %i.bw, align 8, !tbaa !20
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bi, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bv, i8 0, i64 20, i1 false)
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !11 ; 2 uses
  %.not.i22 = icmp eq ptr %i.bz, null
  br i1 %.not.i22, label %_ZN4ncnn3MatD2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit1
  %i.ca = atomicrmw add ptr %i.bz, i32 -1 acq_rel, align 4
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %bb.ag, label %_ZN4ncnn3MatD2Ev.exit

bb.ag:                                            ; preds = %bb.af
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !17 ; 3 uses
  %.not3.i23 = icmp eq ptr %i.cd, null
  %i.ce = load ptr, ptr %i.bx, align 8, !tbaa !18 ; 3 uses
  br i1 %.not3.i23, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !9
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  invoke void %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef %i.ce)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.ak, !inline_history !19

bb.ai:                                            ; preds = %bb.ag
  %.not.i26 = icmp eq ptr %i.ce, null
  br i1 %.not.i26, label %_ZN4ncnn3MatD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @free(ptr noundef nonnull %i.ce) #9
  br label %_ZN4ncnn3MatD2Ev.exit

bb.ak:                                            ; preds = %bb.ah
  %i.ci = landingpad { ptr, i32 }
          catch ptr null
  %i.cj = extractvalue { ptr, i32 } %i.ci, 0
  tail call void @__clang_call_terminate(ptr %i.cj) #19
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.af, %_ZN4ncnn3MatD2Ev.exit1, %bb.ah, %bb.ai, %bb.aj
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 0, ptr %i.cl, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bx, i8 0, i64 28, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ck, i8 0, i64 20, i1 false)
  tail call void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #9
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN4ncnn5LayerD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn8LSTM_x8620create_pipeline_int8ERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load i32, ptr %i.e, align 8, !tbaa !37
  %i.g = icmp eq i32 %i.f, 2                      ; 2 uses
  %i.h = select i1 %i.g, i32 2, i32 1             ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.j = load i32, ptr %i.i, align 4, !tbaa !39   ; 2 uses
  %i.k = sdiv i32 %i.j, 2
  %2 = select i1 %i.g, i32 %i.k, i32 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.m = load i32, ptr %i.l, align 4, !tbaa !40   ; 5 uses
  %i.n = sdiv i32 %2, %i.m
  %i.o = sdiv i32 %i.n, 4                         ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.y = load i32, ptr %i.x, align 8, !tbaa !41   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.z = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %i.o, ptr %i.a, align 4, !tbaa !38
  store i32 %i.y, ptr %i.b, align 4, !tbaa !38
  store i32 %i.h, ptr %i.c, align 4, !tbaa !38
  store i32 %i.m, ptr %i.d, align 4, !tbaa !38
  %i.aa = add nsw i32 %i.y, %i.o
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.u, i32 noundef %i.aa, i32 noundef %i.m, i32 noundef range(i32 1, 3) %i.h, i64 noundef 4, i32 noundef 4, ptr noundef null)
  tail call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.v, i32 noundef 8, i32 noundef %i.m, i32 noundef range(i32 1, 3) %i.h, i64 noundef 4, ptr noundef null)
  tail call void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %i.w, i32 noundef %i.m, i32 noundef 1, i32 noundef range(i32 1, 3) %i.h, i64 noundef 16, i32 noundef 4, ptr noundef null)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !42
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.z, i32 %i.ac)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @_ZN4ncnnL26lstm_transform_weight_int8ERKNS_3MatES2_S2_S2_S2_RS0_S3_S3_iiiiRKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull align 8 dereferenceable(72) %i.p, ptr nonnull align 8 dereferenceable(72) %i.r, ptr nonnull align 8 dereferenceable(72) %i.t, ptr nonnull align 8 dereferenceable(72) %i.q, ptr nonnull align 8 dereferenceable(72) %i.s, ptr nonnull align 8 dereferenceable(72) %i.u, ptr nonnull align 8 dereferenceable(72) %i.w, ptr nonnull align 8 dereferenceable(72) %i.v, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ad = load i8, ptr %1, align 8, !tbaa !44, !range !45, !noundef !46
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !11 ; 2 uses
  %.not.i14 = icmp eq ptr %i.ag, null
  br i1 %.not.i14, label %_ZN4ncnn3Mat7releaseEv.exit16, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = atomicrmw add ptr %i.ag, i32 -1 acq_rel, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.d, label %_ZN4ncnn3Mat7releaseEv.exit16

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !17 ; 3 uses
  %.not3.i15 = icmp eq ptr %i.ak, null
  %i.al = load ptr, ptr %i.p, align 8, !tbaa !18  ; 3 uses
  br i1 %.not3.i15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef %i.al), !inline_history !19
  br label %_ZN4ncnn3Mat7releaseEv.exit16

bb.f:                                             ; preds = %bb.d
  %.not.i17 = icmp eq ptr %i.al, null
  br i1 %.not.i17, label %_ZN4ncnn3Mat7releaseEv.exit16, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.al) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit16

_ZN4ncnn3Mat7releaseEv.exit16:                    ; preds = %bb.g, %bb.f, %bb.b, %bb.c, %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 0, ptr %i.aq, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.p, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ap, i8 0, i64 20, i1 false)
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !11 ; 2 uses
  %.not.i11 = icmp eq ptr %i.as, null
  br i1 %.not.i11, label %_ZN4ncnn3Mat7releaseEv.exit13, label %bb.h

bb.h:                                             ; preds = %_ZN4ncnn3Mat7releaseEv.exit16
  %i.at = atomicrmw add ptr %i.as, i32 -1 acq_rel, align 4
  %i.au = icmp eq i32 %i.at, 1
  br i1 %i.au, label %bb.i, label %_ZN4ncnn3Mat7releaseEv.exit13

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !17 ; 3 uses
  %.not3.i12 = icmp eq ptr %i.aw, null
  %i.ax = load ptr, ptr %i.t, align 8, !tbaa !18  ; 3 uses
  br i1 %.not3.i12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef %i.ax), !inline_history !19
  br label %_ZN4ncnn3Mat7releaseEv.exit13

bb.k:                                             ; preds = %bb.i
  %.not.i18 = icmp eq ptr %i.ax, null
  br i1 %.not.i18, label %_ZN4ncnn3Mat7releaseEv.exit13, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.ax) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit13

_ZN4ncnn3Mat7releaseEv.exit13:                    ; preds = %bb.l, %bb.k, %_ZN4ncnn3Mat7releaseEv.exit16, %bb.h, %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 0, ptr %i.bc, align 8, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.t, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bb, i8 0, i64 20, i1 false)
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !11 ; 2 uses
  %.not.i8 = icmp eq ptr %i.be, null
  br i1 %.not.i8, label %_ZN4ncnn3Mat7releaseEv.exit10, label %bb.m

bb.m:                                             ; preds = %_ZN4ncnn3Mat7releaseEv.exit13
  %i.bf = atomicrmw add ptr %i.be, i32 -1 acq_rel, align 4
  %i.bg = icmp eq i32 %i.bf, 1
  br i1 %i.bg, label %bb.n, label %_ZN4ncnn3Mat7releaseEv.exit10

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !17 ; 3 uses
  %.not3.i9 = icmp eq ptr %i.bi, null
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !18  ; 3 uses
  br i1 %.not3.i9, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef %i.bj), !inline_history !19
  br label %_ZN4ncnn3Mat7releaseEv.exit10

bb.p:                                             ; preds = %bb.n
  %.not.i20 = icmp eq ptr %i.bj, null
  br i1 %.not.i20, label %_ZN4ncnn3Mat7releaseEv.exit10, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef nonnull %i.bj) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit10

_ZN4ncnn3Mat7releaseEv.exit10:                    ; preds = %bb.q, %bb.p, %_ZN4ncnn3Mat7releaseEv.exit13, %bb.m, %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 0, ptr %i.bo, align 8, !tbaa !20
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 600
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.r, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bn, i8 0, i64 20, i1 false)
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !11 ; 2 uses
  %.not.i5 = icmp eq ptr %i.bq, null
  br i1 %.not.i5, label %_ZN4ncnn3Mat7releaseEv.exit7, label %bb.r

bb.r:                                             ; preds = %_ZN4ncnn3Mat7releaseEv.exit10
  %i.br = atomicrmw add ptr %i.bq, i32 -1 acq_rel, align 4
  %i.bs = icmp eq i32 %i.br, 1
  br i1 %i.bs, label %bb.s, label %_ZN4ncnn3Mat7releaseEv.exit7

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !17 ; 3 uses
  %.not3.i6 = icmp eq ptr %i.bu, null
  %i.bv = load ptr, ptr %i.q, align 8, !tbaa !18  ; 3 uses
  br i1 %.not3.i6, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !9
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef %i.bv), !inline_history !19
  br label %_ZN4ncnn3Mat7releaseEv.exit7

bb.u:                                             ; preds = %bb.s
  %.not.i22 = icmp eq ptr %i.bv, null
  br i1 %.not.i22, label %_ZN4ncnn3Mat7releaseEv.exit7, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef nonnull %i.bv) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit7

_ZN4ncnn3Mat7releaseEv.exit7:                     ; preds = %bb.v, %bb.u, %_ZN4ncnn3Mat7releaseEv.exit10, %bb.r, %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i64 0, ptr %i.ca, align 8, !tbaa !20
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.q, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bz, i8 0, i64 20, i1 false)
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.cc, null
  br i1 %.not.i, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.w

bb.w:                                             ; preds = %_ZN4ncnn3Mat7releaseEv.exit7
  %i.cd = atomicrmw add ptr %i.cc, i32 -1 acq_rel, align 4
  %i.ce = icmp eq i32 %i.cd, 1
  br i1 %i.ce, label %bb.x, label %_ZN4ncnn3Mat7releaseEv.exit

bb.x:                                             ; preds = %bb.w
end_hunk_1
