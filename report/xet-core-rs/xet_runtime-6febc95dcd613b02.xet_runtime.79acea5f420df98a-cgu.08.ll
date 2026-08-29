Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_runtime-6febc95dcd613b02.xet_runtime.79acea5f420df98a-cgu.08?download=true
inline.NumInlined: 664
inline.NumDeleted: 341
begin_hunk_0_@_RNvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB2_10XetRuntime3new:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i32 3, ptr %i.ap, align 8
  %i.aq = invoke noundef i32 @_RNvNtCsG258MDvU3F_3std7process2id()
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock6RwLockINtNtCskKLDkoKarTP_4core6option6OptionINtBH_3ArcNtNtNtCsUrhh0HcRih_5tokio7runtime7runtime7RuntimeEEEEE3newCsarFSTFZzLuM_11xet_runtime.exit
  tail call void @llvm.trap()
  unreachable

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsG258MDvU3F_3std4sync9once_lock8OnceLockNtNtNtCsUrhh0HcRih_5tokio7runtime6handle6HandleEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #28
          to label %bb.cz unwind label %bb.ct

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke fastcc void @_RNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native25system_monitor_for_config(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(976) %1)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.52.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.af, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  store i64 1, ptr %i.v, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 1, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 1, ptr %i.at, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 136
  store i32 %i.aq, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 140
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !1280
  %i.au = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 32, 145) 144, i64 noundef 8) #26, !noalias !1280 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.g, label %bb.l, !prof !13

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #27
          to label %.noexc94 unwind label %bb.h

.noexc94:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.v) #28
          to label %.body85 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

.body85:                                          ; preds = %bb.cz, %bb.da, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEB1i_.exit, %bb.m, %bb.k, %bb.h
  %.pn83 = phi { ptr, i32 } [ %.pn79.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEB1i_.exit ], [ %i.aw, %bb.h ], [ %i.bb, %bb.k ], [ %.pn79.pn.pn, %bb.m ], [ %i.ar, %bb.da ], [ %i.ar, %bb.cz ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  %i.ay = load ptr, ptr %i.aj, align 8, !alias.scope !1289, !nonnull !4, !noundef !4
  %i.az = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !noalias !1289
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.j, label %common.resume

bb.j:                                             ; preds = %.body85
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock6RwLockINtNtCskKLDkoKarTP_4core6option6OptionIBx_NtNtNtCsUrhh0HcRih_5tokio7runtime7runtime7RuntimeEEEE9drop_slowCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aj) #32
          to label %common.resume unwind label %bb.ct

bb.k:                                             ; preds = %bb.cw
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body85

bb.l:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.au, ptr noundef nonnull align 8 dereferenceable(144) %i.v, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store ptr %i.au, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  %i.bc = invoke noundef nonnull ptr @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeE9downgradeBO_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ai)
          to label %bb.o unwind label %bb.n       ; 3 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEB1i_.exit: ; preds = %bb.cp, %bb.cm, %.thread153, %bb.cu, %bb.cx, %.split, %bb.q, %bb.cy, %bb.n
  %.pn79.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.io, %bb.cy ], [ %.pn79140, %bb.cx ], [ %eh.lpad-body103, %bb.q ], [ %i.bk, %.split ], [ %i.ih, %bb.cu ], [ %i.hu, %bb.cm ], [ %.pn152, %.thread153 ], [ %i.hz, %bb.cp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  %i.bd = load ptr, ptr %i.ai, align 8, !alias.scope !1296, !nonnull !4, !noundef !4
  %i.be = atomicrmw sub ptr %i.bd, i64 1 release, align 8, !noalias !1296
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.m, label %.body85

bb.m:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEB1i_.exit
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ai) #32
          to label %.body85 unwind label %bb.ct

bb.n:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEB1i_.exit

bb.o:                                             ; preds = %bb.l
  store ptr %i.bc, ptr %i.ae, align 8
  %i.bh = invoke noundef i32 @_RNvNtCsG258MDvU3F_3std7process2id()
          to label %bb.p unwind label %bb.cy      ; 2 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 %i.bh, ptr %i.bi, align 8
  store ptr %i.bc, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.613.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RNvMNtNtCsUrhh0HcRih_5tokio7runtime7builderNtB2_7Builder16new_multi_thread(ptr noalias nofree noundef nonnull sret([216 x i8]) align 8 captures(address) dereferenceable(216) %i.aa)
          to label %bb.r unwind label %.split.thread

.split.thread:                                    ; preds = %bb.p
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.q:                                             ; preds = %.body102
  br i1 %.sroa.024.2.lpad-body, label %bb.cx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEB1i_.exit

.split:                                           ; preds = %bb.bm
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEB1i_.exit

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RINvNtCsG258MDvU3F_3std3env3varReECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 20)
          to label %.noexc98 unwind label %bb.bh

.noexc98:                                         ; preds = %bb.r
  %i.bl = load i64, ptr %i.r, align 8, !range !150, !noundef !4
  %i.bm = trunc nuw i64 %i.bl to i1
  br i1 %i.bm, label %.sink.split.i, label %bb.s

bb.s:                                             ; preds = %.noexc98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !noundef !4 ; 2 uses
  switch i64 %i.br, label %thread-pre-split.i.i [
    i64 0, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.thread76.i
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.bs = load i8, ptr %i.bp, align 1, !alias.scope !1297, !noalias !1300, !noundef !4 ; 2 uses
  switch i8 %i.bs, label %bb.u [
    i8 43, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.thread76.i
    i8 45, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.thread76.i
  ]

thread-pre-split.i.i:                             ; preds = %bb.s
  %.pr.i.i = load i8, ptr %i.bp, align 1, !alias.scope !1297, !noalias !1300
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split.i.i, %bb.t
  %i.bt = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.bs, %bb.t ]
  %cond.i.i = icmp eq i8 %i.bt, 43                ; 2 uses
  %i.bu = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.br, %i.bu      ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.bv = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.bv, label %.preheader.i.i, label %.preheader56.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.u
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5366.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.thread76.i, label %.lr.ph.i.i

.preheader56.i.i:                                 ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i191, i64 1
  %i.bx = add nsw i64 %.sroa.15.1.i.i190, -1      ; 2 uses
  %.not52.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not52.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.preheader56.i.i.preheader

.preheader56.i.i.preheader:                       ; preds = %bb.u, %.preheader56.i.i
  %.sroa.0.1.i.i191 = phi ptr [ %i.bw, %.preheader56.i.i ], [ %.sroa.0.0.i.i, %bb.u ] ; 2 uses
  %.sroa.15.1.i.i190 = phi i64 [ %i.bx, %.preheader56.i.i ], [ %.sroa.15.0.i.i, %bb.u ]
  %.sroa.042.0.i.i189 = phi i64 [ %i.cd, %.preheader56.i.i ], [ 0, %bb.u ] ; 2 uses
  %2 = icmp ugt i64 %.sroa.042.0.i.i189, 1844674407370955161
  br i1 %2, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.thread76.i, label %bb.v, !prof !13

bb.v:                                             ; preds = %.preheader56.i.i.preheader
  %3 = mul nuw i64 %.sroa.042.0.i.i189, 10        ; 2 uses
  %i.by = load i8, ptr %.sroa.0.1.i.i191, align 1, !alias.scope !1297, !noalias !1300, !noundef !4
  %i.bz = zext i8 %i.by to i32
  %i.ca = add nsw i32 %i.bz, -48                  ; 2 uses
  %i.cb = icmp ugt i32 %i.ca, 9
  %i.cc = zext nneg i32 %i.ca to i64
  %i.cd = add i64 %3, %i.cc                       ; 3 uses
  %i.ce = icmp ult i64 %i.cd, %3
  %or.cond.i = select i1 %i.cb, i1 true, i1 %i.ce, !prof !1302
  br i1 %or.cond.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.thread76.i, label %.preheader56.i.i, !prof !1302

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.w
  %.sroa.0.269.i.i = phi ptr [ %i.cl, %bb.w ], [ %.sroa.0.0.i.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.ck, %bb.w ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.cn, %bb.w ], [ 0, %.preheader.i.i ]
  %i.cf = load i8, ptr %.sroa.0.269.i.i, align 1, !alias.scope !1297, !noalias !1300, !noundef !4
  %i.cg = zext i8 %i.cf to i32
  %i.ch = add nsw i32 %i.cg, -48                  ; 2 uses
  %i.ci = icmp ult i32 %i.ch, 10
  br i1 %i.ci, label %bb.w, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.thread76.i

bb.w:                                             ; preds = %.lr.ph.i.i
  %i.cj = mul i64 %.sroa.042.267.i.i, 10
  %i.ck = add nsw i64 %.sroa.15.268.i.i, -1       ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i, i64 1
  %i.cm = zext nneg i32 %i.ch to i64
  %i.cn = add i64 %i.cj, %i.cm                    ; 2 uses
  %.not53.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not53.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

bb.x:                                             ; preds = %bb.at, %bb.an, %bb.am, %bb.ah, %bb.ab, %bb.aa
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #28
          to label %.body.i unwind label %bb.av

_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i: ; preds = %.preheader56.i.i, %bb.w
  %.sroa.1170.0.i = phi i64 [ %i.cn, %bb.w ], [ %i.cd, %.preheader56.i.i ] ; 3 uses
  %.not.i = icmp eq i64 %.sroa.1170.0.i, 0
  br i1 %.not.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.thread76.i, label %bb.y

bb.y:                                             ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 %.sroa.1170.0.i, ptr %i.p, align 8
  %i.cp = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.cq = icmp ult i64 %i.cp, 3
  br i1 %i.cq, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.cr = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threads10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.cr, label %bb.aa [
    i8 0, label %bb.ae
    i8 1, label %bb.ab
    i8 2, label %bb.ab
  ], !prof !351

bb.aa:                                            ; preds = %bb.z
  %i.cs = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threads10___CALLSITE)
          to label %bb.ac unwind label %bb.x      ; 2 uses

bb.ab:                                            ; preds = %bb.z, %bb.ac, %bb.z
  %.sroa.09.0.i = phi i8 [ %i.cs, %bb.ac ], [ %i.cr, %bb.z ], [ %i.cr, %bb.z ]
  %i.ct = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threads10___CALLSITE, align 8, !nonnull !4, !align !5, !noundef !4
  %i.cu = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ct, i8 noundef %.sroa.09.0.i)
          to label %bb.ad unwind label %bb.x

bb.ac:                                            ; preds = %bb.aa
  %i.cv = icmp eq i8 %i.cs, 0
  br i1 %i.cv, label %bb.ae, label %bb.ab

bb.ad:                                            ; preds = %bb.ab
  br i1 %i.cu, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ai, %bb.ad, %bb.ac, %bb.z, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit.i unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ad
  %i.cy = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threads10___CALLSITE, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.p, ptr %i.m, align 8
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.440.0..sroa_idx.i, align 8
  store ptr @50, ptr %i.n, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.da, align 8
  store ptr %i.n, ptr %i.o, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @29, ptr %i.db, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 1, ptr %i.e, align 8
  %.sroa.011.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.o, ptr %.sroa.011.sroa.4.0..sroa_idx.i, align 8
  %.sroa.011.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 1, ptr %.sroa.011.sroa.5.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.cz, ptr %.sroa.4.0..sroa_idx.i, align 8
  invoke void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.cy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %bb.ai unwind label %bb.x

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

.body.i:                                          ; preds = %bb.ar, %bb.aj, %bb.af, %bb.x
  %.pn.i = phi { ptr, i32 } [ %i.co, %bb.x ], [ %i.cw, %bb.af ], [ %i.de, %bb.aj ], [ %i.do, %bb.ar ] ; 2 uses
  %i.dc = load i64, ptr %i.r, align 8, !range !150, !noundef !4
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %.body102, label %bb.aw

bb.aj:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i64.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.df = load i64, ptr %i.r, align 8, !range !150, !noundef !4
  %i.dg = trunc nuw i64 %i.df to i1
  br i1 %i.dg, label %bb.ak, label %.noexc99

bb.ak:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsG258MDvU3F_3std3env8VarErrorEECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(32) %i.r)
          to label %.noexc99 unwind label %bb.bh

.noexc99:                                         ; preds = %bb.ak, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %_RNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threads.exit

_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.thread76.i: ; preds = %bb.v, %.preheader56.i.i.preheader, %.lr.ph.i.i, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i, %.preheader.i.i, %bb.t, %bb.t, %bb.s
  %i.dh = load atomic i64, ptr @_RNvNtCs94TQx44N27d_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.di = icmp ult i64 %i.dh, 4
  br i1 %i.di, label %bb.al, label %bb.aq

bb.al:                                            ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.thread76.i
  %i.dj = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threadss_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.dj, label %bb.am [
    i8 0, label %bb.aq
    i8 1, label %bb.an
    i8 2, label %bb.an
  ], !prof !351

bb.am:                                            ; preds = %bb.al
  %i.dk = invoke noundef i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threadss_10___CALLSITE)
          to label %bb.ao unwind label %bb.x      ; 2 uses

bb.an:                                            ; preds = %bb.al, %bb.ao, %bb.al
  %.sroa.018.0.i = phi i8 [ %i.dk, %bb.ao ], [ %i.dj, %bb.al ], [ %i.dj, %bb.al ]
  %i.dl = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threadss_10___CALLSITE, align 8, !nonnull !4, !align !5, !noundef !4
  %i.dm = invoke noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dl, i8 noundef %.sroa.018.0.i)
          to label %bb.ap unwind label %bb.x

bb.ao:                                            ; preds = %bb.am
  %i.dn = icmp eq i8 %i.dk, 0
  br i1 %i.dn, label %bb.aq, label %bb.an

bb.ap:                                            ; preds = %bb.an
  br i1 %i.dm, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %bb.au, %bb.ap, %bb.ao, %bb.al, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.thread76.i
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i64.i unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.do = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body.i unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsarFSTFZzLuM_11xet_runtime.exit.i64.i: ; preds = %bb.aq
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsarFSTFZzLuM_11xet_runtime.exit67.i unwind label %bb.aj

bb.at:                                            ; preds = %bb.ap
  %i.dq = load ptr, ptr @_RNvNvNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native28get_num_tokio_worker_threadss_10___CALLSITE, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @51, ptr %i.k, align 8
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB5_12BlockingPoolNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop
declare void @_RNvXs2_NtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4poolNtB5_12BlockingPoolNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef) unnamed_addr #12

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsUrhh0HcRih_5tokio3net4addr15to_socket_addrsReECsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtNtCsUrhh0HcRih_5tokio3net4addr6sealedNtB2_10MaybeReadyNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtNtCsUrhh0HcRih_5tokio3net4addr6sealedNtB4_9OneOrMoreNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 4 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsUrhh0HcRih_5tokio3net3tcp8listenerNtB2_11TcpListener9bind_addr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs94TQx44N27d_12tracing_core8callsite10IdentifierINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE12contains_keyBO_ECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCs94TQx44N27d_12tracing_core4span2IdINtB2_10EquivalentBq_E10equivalentCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCs94TQx44N27d_12tracing_core8callsite10IdentifierINtB2_10EquivalentBq_E10equivalentCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCskKLDkoKarTP_4core3any6TypeIdINtB2_10EquivalentBq_E10equivalentCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtNtCsUrhh0HcRih_5tokio7runtime2id2IdINtB2_10EquivalentBq_E10equivalentCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCINvMNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directiveNtBU_9Directive11make_tablesINtNtCsexYYUdYSQU6_5alloc3vec3VecB1T_EE0INtB7_5FnMutTB1T_EE8call_mutCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMNtNtCsexYYUdYSQU6_5alloc2io5errorNtNtNtCskKLDkoKarTP_4core2io5error5Error3newReECsG258MDvU3F_3std(i8 noundef range(i8 0, 44), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCsG258MDvU3F_3std6thread9spawnhookNtB4_15ChildSpawnHooks15inherit_and_run(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCs94TQx44N27d_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCs5ZfSctYBbRf_16tracing_appender6workerINtB2_6WorkerNtNtB4_7rolling19RollingFileAppenderE4workCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(176)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMsa_NtCsjfHCj4Qo55Q_17crossbeam_channel7channelINtB5_8ReceiveruE4recvCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXs_NtCs5ZfSctYBbRf_16tracing_appender7rollingNtB4_19RollingFileAppenderNtNtNtCskKLDkoKarTP_4core2io5write5Write5flush(ptr noalias nofree noundef align 8 dereferenceable(144)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsG258MDvU3F_3std2io5stdio7__eprint(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsUrhh0HcRih_5tokio4time5sleep5sleep(ptr dead_on_unwind noalias nofree noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112), i64 noundef, i32 noundef range(i32 0, 1000000000), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCsUrhh0HcRih_5tokio4time5sleepNtB4_5SleepNtNtNtCskKLDkoKarTP_4core6future6future6Future4poll(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsG258MDvU3F_3std6thread9functions5sleep(i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs3_NtNtCsarFSTFZzLuM_11xet_runtime7logging14system_monitorNtB5_13SystemSampler6sample(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(928)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtNtCsarFSTFZzLuM_11xet_runtime7logging14system_monitorNtB5_13SystemMonitor13output_report(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvNtNtCsarFSTFZzLuM_11xet_runtime7logging4init25run_log_directory_cleanup(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCs94TQx44N27d_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #18

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs942S7uueXw1_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsG_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_NtCs94TQx44N27d_12tracing_core5fieldNtNtCskKLDkoKarTP_4core3fmt9ArgumentsNtB5_5Value6record(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCsarFSTFZzLuM_11xet_runtime7logging14system_monitorNtB5_13SystemMonitor14follow_process(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), i64 noundef, i32 noundef range(i32 0, 1000000000), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCsG258MDvU3F_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_6rwlock16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio7runtime7runtime7RuntimeEEEENtNtB1w_3fmt5Debug3fmtCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtCsG258MDvU3F_3std7process2id() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtNtCsarFSTFZzLuM_11xet_runtime7logging14system_monitorNtB5_13SystemMonitor4stop(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMsK_NtCsexYYUdYSQU6_5alloc4syncINtB5_4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeE7upgradeBP_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeE9downgradeBO_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapNtNtNtCsUrhh0HcRih_5tokio7runtime2id2IdINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6insertB27_(ptr noalias nofree noundef align 8 dereferenceable(48), i64 noundef range(i64 1, 0), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtCsarFSTFZzLuM_11xet_runtime5errorNtB2_12RuntimeErrorINtNtCskKLDkoKarTP_4core7convert4FromINtNtNtCsG258MDvU3F_3std4sync6poison11PoisonErrorINtNtB1y_6rwlock16RwLockWriteGuardINtNtNtNtB1C_11collections4hash3map7HashMapNtNtNtCsUrhh0HcRih_5tokio7runtime2id2IdINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtB4_4core7runtime6native10XetRuntimeEEEEE4fromB4_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsUrhh0HcRih_5tokio7runtime6handleNtB2_6Handle5enter(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsUrhh0HcRih_5tokio7runtime7builderNtB2_7Builder16new_multi_thread(ptr dead_on_unwind noalias nofree noundef writable sret([216 x i8]) align 8 captures(address) dereferenceable(216)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtNtCsUrhh0HcRih_5tokio7runtime7builderNtB2_7Builder14worker_threads(ptr noalias nofree noundef align 8 dereferenceable(216), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMNtNtCsUrhh0HcRih_5tokio7runtime7builderNtB3_7Builder15on_thread_startNCNvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1f_10XetRuntime3new0EB1l_(ptr noalias nofree noundef align 8 dereferenceable(216), ptr noundef nonnull, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMNtNtCsUrhh0HcRih_5tokio7runtime7builderNtB3_7Builder14thread_name_fnNCNvMNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6nativeNtB1e_10XetRuntime3news_0EB1k_(ptr noalias nofree noundef align 8 dereferenceable(216), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsUrhh0HcRih_5tokio7runtime7builderNtB2_7Builder5build(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(216)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock14read_contended(ptr noundef nonnull align 4) unnamed_addr #16

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #10

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #22

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync6rwlock5futexNtB2_6RwLock15write_contended(ptr noundef nonnull align 4) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio7runtime7runtime7RuntimeEEENCNvMse_BZ_BW_3new0ECsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsUrhh0HcRih_5tokio7runtime7runtime7RuntimeEEE3newCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardINtNtNtNtB6_11collections4hash3map7HashMapNtNtCs94TQx44N27d_12tracing_core4span2IdINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2S_5field9SpanMatchEEENCNvMse_BZ_BW_3new0ECsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_6rwlock16RwLockWriteGuardINtNtNtNtB6_11collections4hash3map7HashMapNtNtNtCsUrhh0HcRih_5tokio7runtime2id2IdINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeEEENCNvMse_BZ_BW_3new0EB3t_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i1 noundef zeroext, i8 noundef, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs94TQx44N27d_12tracing_core8metadata11LevelFilterE8grow_oneCs8C3ZpOVqhBL_18tracing_subscriber(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive9DirectiveE8grow_oneBU_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #20

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsG258MDvU3F_3std3env3varReECsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXst_NtCs94TQx44N27d_12tracing_core5fieldINtB5_12DisplayValueRNtNtCsexYYUdYSQU6_5alloc6string6StringENtB5_5Value6recordCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvNtNtCsG258MDvU3F_3std6thread9functions21available_parallelism() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCs94TQx44N27d_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMNtNtCsUrhh0HcRih_5tokio7runtime6handleNtB2_6Handle7metrics(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMNtNtCsUrhh0HcRih_5tokio7runtime7runtimeNtB2_7Runtime7metrics(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime7metrics7runtimeNtB2_14RuntimeMetrics15num_alive_tasks(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMNtNtNtCsUrhh0HcRih_5tokio7runtime7metrics7runtimeNtB2_14RuntimeMetrics18global_queue_depth(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtNtCsUrhh0HcRih_5tokio7runtime4task5errorNtB4_9JoinErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsM_NtNtCsG258MDvU3F_3std3ffi6os_strNtB5_5OsStrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsfaKIfeYzQZw_7reqwest5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCsarFSTFZzLuM_11xet_runtime(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDG0_INtNtNtCskKLDkoKarTP_4core3ops8function2FnTRL1_INtNtNtCsUrhh0HcRih_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2F_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputNtNtB7_6string6StringNtNtBO_6marker4SendNtB1U_4SyncEL_E9drop_slowCsUrhh0HcRih_5tokio(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputuNtNtBO_6marker4SendNtB1A_4SyncEL_E9drop_slowCsUrhh0HcRih_5tokio(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCsarFSTFZzLuM_11xet_runtime5utils10file_paths16TemplatedPathBufEE9drop_slowB1o_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtCsarFSTFZzLuM_11xet_runtime7logging14system_monitor18SystemMonitorErrorEEE9drop_slowB2b_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsUrhh0HcRih_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCskKLDkoKarTP_4core4sync6atomic6AtomicbEE9drop_slowCs5ox3Af2aNoB_10hyper_util(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison6rwlock6RwLockINtNtCskKLDkoKarTP_4core6option6OptionIBx_NtNtNtCsUrhh0HcRih_5tokio7runtime7runtime7RuntimeEEEE9drop_slowCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio7runtime4park5InnerE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsUrhh0HcRih_5tokio7runtime7runtime7RuntimeE9drop_slowCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors2at7ChannelE9drop_slowCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsjfHCj4Qo55Q_17crossbeam_channel7flavors4tick7ChannelE9drop_slowCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime8blocking4pool5InnerE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler14current_thread6HandleENtB6_5Debug3fmtCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtNtNtCsUrhh0HcRih_5tokio7runtime9scheduler12multi_thread6handle6HandleENtB6_5Debug3fmtCsarFSTFZzLuM_11xet_runtime(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtNtCsUrhh0HcRih_5tokio7runtime2id2IdINtNtCsexYYUdYSQU6_5alloc4sync4WeakNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE6removeBO_EB28_(ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsUrhh0HcRih_5tokio7runtime6handleNtB2_6Handle11try_current(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsUrhh0HcRih_5tokio7runtime7runtimeNtB2_7Runtime16shutdown_timeout(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsUrhh0HcRih_5tokio7runtime7runtimeNtB2_7Runtime19shutdown_background(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry7shardedNtB5_8RegistryNtB7_10LookupSpan9span_data(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nounwind }
attributes #27 = { noreturn }
attributes #28 = { cold }
attributes #29 = { cold noreturn nounwind }
attributes #30 = { noinline noreturn }
attributes #31 = { inlinehint }
attributes #32 = { noinline }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!4 = !{}
!5 = !{i64 8}
!6 = !{!7, !9, !11, !12}
!7 = distinct !{!7, !8, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtNtBJ_6format4json10JsonFieldsEE3newCsarFSTFZzLuM_11xet_runtime: argument 0"}
!8 = distinct !{!8, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtNtBJ_6format4json10JsonFieldsEE3newCsarFSTFZzLuM_11xet_runtime"}
!9 = distinct !{!9, !10, !"_RINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtNtB1B_6format4json10JsonFieldsEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!10 = distinct !{!10, !"_RINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtNtB1B_6format4json10JsonFieldsEECsarFSTFZzLuM_11xet_runtime"}
!11 = distinct !{!11, !10, !"_RINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtNtB1B_6format4json10JsonFieldsEECsarFSTFZzLuM_11xet_runtime: argument 1"}
!12 = distinct !{!12, !10, !"_RINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtNtB1B_6format4json10JsonFieldsEECsarFSTFZzLuM_11xet_runtime: argument 2"}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!9, !11, !12}
!15 = !{!9, !11}
!16 = !{!9, !12}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_RNCINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertINtNtNtBc_3fmt9fmt_layer15FormattedFieldsNtNtNtB1D_6format4json10JsonFieldsEE0CsarFSTFZzLuM_11xet_runtime: argument 1"}
!19 = distinct !{!19, !"_RNCINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertINtNtNtBc_3fmt9fmt_layer15FormattedFieldsNtNtNtB1D_6format4json10JsonFieldsEE0CsarFSTFZzLuM_11xet_runtime"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtNtB1G_6format4json10JsonFieldsEECsarFSTFZzLuM_11xet_runtime: argument 1"}
!22 = distinct !{!22, !"_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtNtB1G_6format4json10JsonFieldsEECsarFSTFZzLuM_11xet_runtime"}
!23 = !{!24, !21, !25, !18, !9, !11, !12}
!24 = distinct !{!24, !22, !"_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtNtB1G_6format4json10JsonFieldsEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!25 = distinct !{!25, !19, !"_RNCINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertINtNtNtBc_3fmt9fmt_layer15FormattedFieldsNtNtNtB1D_6format4json10JsonFieldsEE0CsarFSTFZzLuM_11xet_runtime: argument 0"}
!26 = !{!21, !18}
!27 = !{!24, !25, !9, !12}
!28 = !{!24, !21, !25, !18, !9, !12}
!29 = !{!25, !9, !12}
!30 = !{!25, !18, !9, !12}
!31 = !{i64 0, i64 -9223372036854775808}
!32 = !{i64 1, i64 536870913}
!33 = !{!18, !12}
!34 = !{!"branch_weights", !"expected", i32 2144049392, i32 3434256}
!35 = !{!36, !38, !40, !41}
!36 = distinct !{!36, !37, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtNtBJ_6format6pretty6PrettyEE3newCsarFSTFZzLuM_11xet_runtime: argument 0"}
!37 = distinct !{!37, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtNtBJ_6format6pretty6PrettyEE3newCsarFSTFZzLuM_11xet_runtime"}
!38 = distinct !{!38, !39, !"_RINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtNtB1B_6format6pretty6PrettyEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!39 = distinct !{!39, !"_RINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtNtB1B_6format6pretty6PrettyEECsarFSTFZzLuM_11xet_runtime"}
!40 = distinct !{!40, !39, !"_RINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtNtB1B_6format6pretty6PrettyEECsarFSTFZzLuM_11xet_runtime: argument 1"}
!41 = distinct !{!41, !39, !"_RINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtNtB1B_6format6pretty6PrettyEECsarFSTFZzLuM_11xet_runtime: argument 2"}
!42 = !{!38, !40, !41}
!43 = !{!38, !40}
!44 = !{!38, !41}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_RNCINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertINtNtNtBc_3fmt9fmt_layer15FormattedFieldsNtNtNtB1D_6format6pretty6PrettyEE0CsarFSTFZzLuM_11xet_runtime: argument 1"}
!47 = distinct !{!47, !"_RNCINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertINtNtNtBc_3fmt9fmt_layer15FormattedFieldsNtNtNtB1D_6format6pretty6PrettyEE0CsarFSTFZzLuM_11xet_runtime"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtNtB1G_6format6pretty6PrettyEECsarFSTFZzLuM_11xet_runtime: argument 1"}
!50 = distinct !{!50, !"_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtNtB1G_6format6pretty6PrettyEECsarFSTFZzLuM_11xet_runtime"}
!51 = !{!52, !49, !53, !46, !38, !40, !41}
!52 = distinct !{!52, !50, !"_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastINtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtNtB1G_6format6pretty6PrettyEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!53 = distinct !{!53, !47, !"_RNCINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertINtNtNtBc_3fmt9fmt_layer15FormattedFieldsNtNtNtB1D_6format6pretty6PrettyEE0CsarFSTFZzLuM_11xet_runtime: argument 0"}
!54 = !{!49, !46}
!55 = !{!52, !53, !38, !41}
!56 = !{!52, !49, !53, !46, !38, !41}
!57 = !{!53, !38, !41}
!58 = !{!53, !46, !38, !41}
!59 = !{!46, !41}
!60 = !{!61, !63, !65, !66}
!61 = distinct !{!61, !62, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt9fmt_layer7TimingsE3newCsarFSTFZzLuM_11xet_runtime: argument 0"}
!62 = distinct !{!62, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt9fmt_layer7TimingsE3newCsarFSTFZzLuM_11xet_runtime"}
!63 = distinct !{!63, !64, !"_RINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertNtNtNtBa_3fmt9fmt_layer7TimingsECsarFSTFZzLuM_11xet_runtime: argument 0"}
!64 = distinct !{!64, !"_RINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertNtNtNtBa_3fmt9fmt_layer7TimingsECsarFSTFZzLuM_11xet_runtime"}
!65 = distinct !{!65, !64, !"_RINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertNtNtNtBa_3fmt9fmt_layer7TimingsECsarFSTFZzLuM_11xet_runtime: argument 1"}
!66 = distinct !{!66, !64, !"_RINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner6insertNtNtNtBa_3fmt9fmt_layer7TimingsECsarFSTFZzLuM_11xet_runtime: argument 2"}
!67 = !{!63, !65}
!68 = !{!63, !65, !66}
!69 = !{!63, !66}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_RNCINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertNtNtNtBc_3fmt9fmt_layer7TimingsE0CsarFSTFZzLuM_11xet_runtime: argument 1"}
!72 = distinct !{!72, !"_RNCINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertNtNtNtBc_3fmt9fmt_layer7TimingsE0CsarFSTFZzLuM_11xet_runtime"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt9fmt_layer7TimingsECsarFSTFZzLuM_11xet_runtime: argument 1"}
!75 = distinct !{!75, !"_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt9fmt_layer7TimingsECsarFSTFZzLuM_11xet_runtime"}
!76 = !{!77, !74, !78, !71, !63, !65, !66}
!77 = distinct !{!77, !75, !"_RINvMsa_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB8_3BoxDNtNtCskKLDkoKarTP_4core3any3AnyEL_E8downcastNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber3fmt9fmt_layer7TimingsECsarFSTFZzLuM_11xet_runtime: argument 0"}
!78 = distinct !{!78, !72, !"_RNCINvMs1_NtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensionsNtB8_15ExtensionsInner6insertNtNtNtBc_3fmt9fmt_layer7TimingsE0CsarFSTFZzLuM_11xet_runtime: argument 0"}
!79 = !{!74, !71}
!80 = !{!77, !78, !63, !66}
!81 = !{!77, !74, !78, !71, !63, !66}
!82 = !{!78, !63, !66}
!83 = !{!78, !71, !63, !66}
!84 = !{!71, !66}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensions8IdHasherEE3getBO_ECsarFSTFZzLuM_11xet_runtime: argument 0"}
!87 = distinct !{!87, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensions8IdHasherEE3getBO_ECsarFSTFZzLuM_11xet_runtime"}
!88 = !{!89}
!89 = distinct !{!89, !87, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensions8IdHasherEE3getBO_ECsarFSTFZzLuM_11xet_runtime: argument 1"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsarFSTFZzLuM_11xet_runtime: argument 0"}
!92 = distinct !{!92, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsarFSTFZzLuM_11xet_runtime"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!95 = distinct !{!95, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!96 = !{!94, !91, !86}
!97 = !{!98, !99, !89}
!98 = distinct !{!98, !95, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!99 = distinct !{!99, !92, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsarFSTFZzLuM_11xet_runtime: argument 1"}
!100 = !{!101, !94, !98, !91}
!101 = distinct !{!101, !102, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!102 = distinct !{!102, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!103 = !{!104, !94, !98, !91}
!104 = distinct !{!104, !105, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBU_3AnyNtNtBW_6marker4SendNtB2b_4SyncEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0CsarFSTFZzLuM_11xet_runtime: argument 0"}
!105 = distinct !{!105, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBU_3AnyNtNtBW_6marker4SendNtB2b_4SyncEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0CsarFSTFZzLuM_11xet_runtime"}
!106 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensions8IdHasherEE3getBO_ECsarFSTFZzLuM_11xet_runtime: argument 0"}
!109 = distinct !{!109, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensions8IdHasherEE3getBO_ECsarFSTFZzLuM_11xet_runtime"}
!110 = !{!111}
!111 = distinct !{!111, !109, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensions8IdHasherEE3getBO_ECsarFSTFZzLuM_11xet_runtime: argument 1"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsarFSTFZzLuM_11xet_runtime: argument 0"}
!114 = distinct !{!114, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsarFSTFZzLuM_11xet_runtime"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!117 = distinct !{!117, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!118 = !{!116, !113, !108}
!119 = !{!120, !121, !111}
!120 = distinct !{!120, !117, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!121 = distinct !{!121, !114, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsarFSTFZzLuM_11xet_runtime: argument 1"}
!122 = !{!123, !116, !120, !113}
!123 = distinct !{!123, !124, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!124 = distinct !{!124, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!125 = !{!126, !116, !120, !113}
!126 = distinct !{!126, !127, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBU_3AnyNtNtBW_6marker4SendNtB2b_4SyncEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0CsarFSTFZzLuM_11xet_runtime: argument 0"}
!127 = distinct !{!127, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBU_3AnyNtNtBW_6marker4SendNtB2b_4SyncEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0CsarFSTFZzLuM_11xet_runtime"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensions8IdHasherEE3getBO_ECsarFSTFZzLuM_11xet_runtime: argument 0"}
!130 = distinct !{!130, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensions8IdHasherEE3getBO_ECsarFSTFZzLuM_11xet_runtime"}
!131 = !{!132}
!132 = distinct !{!132, !130, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber8registry10extensions8IdHasherEE3getBO_ECsarFSTFZzLuM_11xet_runtime: argument 1"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsarFSTFZzLuM_11xet_runtime: argument 0"}
!135 = distinct !{!135, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsarFSTFZzLuM_11xet_runtime"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!138 = distinct !{!138, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!139 = !{!137, !134, !129}
!140 = !{!141, !142, !132}
!141 = distinct !{!141, !138, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!142 = distinct !{!142, !135, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1o_E0ECsarFSTFZzLuM_11xet_runtime: argument 1"}
!143 = !{!144, !137, !141, !134}
!144 = distinct !{!144, !145, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!145 = distinct !{!145, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!146 = !{!147, !137, !141, !134}
!147 = distinct !{!147, !148, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBU_3AnyNtNtBW_6marker4SendNtB2b_4SyncEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0CsarFSTFZzLuM_11xet_runtime: argument 0"}
!148 = distinct !{!148, !"_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtBU_3AnyNtNtBW_6marker4SendNtB2b_4SyncEL_EEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1q_E0E0CsarFSTFZzLuM_11xet_runtime"}
!149 = !{!"branch_weights", i32 -294967296, i32 6003000}
!150 = !{i64 0, i64 2}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs94TQx44N27d_12tracing_core8callsite10IdentifierINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsarFSTFZzLuM_11xet_runtime: argument 0"}
!153 = distinct !{!153, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs94TQx44N27d_12tracing_core8callsite10IdentifierINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsarFSTFZzLuM_11xet_runtime"}
!154 = !{!155}
!155 = distinct !{!155, !153, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs94TQx44N27d_12tracing_core8callsite10IdentifierINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1K_5field13CallsiteMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsarFSTFZzLuM_11xet_runtime: argument 1"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs94TQx44N27d_12tracing_core8callsite10IdentifierINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1M_5field13CallsiteMatchEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1H_E0ECsarFSTFZzLuM_11xet_runtime: argument 0"}
!158 = distinct !{!158, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs94TQx44N27d_12tracing_core8callsite10IdentifierINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1M_5field13CallsiteMatchEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1H_E0ECsarFSTFZzLuM_11xet_runtime"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!161 = distinct !{!161, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!162 = !{!160, !157, !152}
!163 = !{!164, !165, !155}
!164 = distinct !{!164, !161, !"_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!165 = distinct !{!165, !158, !"_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs94TQx44N27d_12tracing_core8callsite10IdentifierINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1M_5field13CallsiteMatchEEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1H_E0ECsarFSTFZzLuM_11xet_runtime: argument 1"}
!166 = !{!167, !160, !164, !157}
!167 = distinct !{!167, !168, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!168 = distinct !{!168, !"_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse215__mm_loadu_si128"}
!169 = !{!170}
!170 = distinct !{!170, !171, !"_RNvMs9_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCs94TQx44N27d_12tracing_core4span2IdINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2n_5field9SpanMatchEEE5writeCsarFSTFZzLuM_11xet_runtime: argument 0"}
!171 = distinct !{!171, !"_RNvMs9_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCs94TQx44N27d_12tracing_core4span2IdINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2n_5field9SpanMatchEEE5writeCsarFSTFZzLuM_11xet_runtime"}
!172 = !{i8 0, i8 2}
!173 = !{i64 1, i64 0}
!174 = !{i64 0, i64 3}
!175 = !{!176}
!176 = distinct !{!176, !177, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB12_5field9SpanMatchEEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!177 = distinct !{!177, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB12_5field9SpanMatchEEECsarFSTFZzLuM_11xet_runtime"}
!178 = !{i64 0, i64 5}
!179 = !{i64 -1, i64 5}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_RNvMs9_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCs94TQx44N27d_12tracing_core4span2IdINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2n_5field9SpanMatchEEE5writeCsarFSTFZzLuM_11xet_runtime: argument 0"}
!182 = distinct !{!182, !"_RNvMs9_NtNtNtCsG258MDvU3F_3std4sync6poison6rwlockINtB5_6RwLockINtNtNtNtBb_11collections4hash3map7HashMapNtNtCs94TQx44N27d_12tracing_core4span2IdINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB2n_5field9SpanMatchEEE5writeCsarFSTFZzLuM_11xet_runtime"}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB12_5field9SpanMatchEEECsarFSTFZzLuM_11xet_runtime: argument 0"}
!185 = distinct !{!185, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB12_5field9SpanMatchEEECsarFSTFZzLuM_11xet_runtime"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs94TQx44N27d_12tracing_core4span2IdINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsarFSTFZzLuM_11xet_runtime: argument 0"}
!188 = distinct !{!188, !"_RINvMs1_NtCsjqcU1oJFKXj_9hashbrown3mapINtB6_7HashMapNtNtCs94TQx44N27d_12tracing_core4span2IdINtNtNtNtCs8C3ZpOVqhBL_18tracing_subscriber6filter3env9directive8MatchSetNtNtB1x_5field9SpanMatchENtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE3getBO_ECsarFSTFZzLuM_11xet_runtime"}
end_hunk_1
