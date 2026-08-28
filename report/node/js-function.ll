Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/js-function?download=true
inline.NumInlined: 2359
inline.NumDeleted: 1001
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2v88internal10JSFunction23TraceOptimizationStatusEPKcz:bb.a
  %i.i = icmp eq i8 %char0, 0
  call void @_ZdaPv(ptr noundef nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  %i.j = load i64, ptr %0, align 8
  %i.k = inttoptr i64 %i.j to ptr
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.2, ptr noundef %i.k) #14
  br label %bb.d

bb.c:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14, !noalias !11
  %.sroa.0.0.copyload.i.i.i.i10 = load i64, ptr %0, align 8, !noalias !11
  %i.l = add i64 %.sroa.0.0.copyload.i.i.i.i10, 31
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load atomic volatile i64, ptr %i.m monotonic, align 8, !noalias !11
  store i64 %i.n, ptr %2, align 8, !noalias !11
  call void @_ZNK2v88internal18SharedFunctionInfo13DebugNameCStrEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14, !noalias !11
  %i.o = load ptr, ptr %6, align 8
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.3, ptr noundef %i.o) #14
  %i.p = load ptr, ptr %6, align 8                ; 2 uses
  %.not.i11 = icmp eq ptr %i.p, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit13, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i12

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i12: ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.p) #15
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit13

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit13: ; preds = %bb.c, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit13, %bb.b
  %.sroa.0.0.copyload.i.i.i.i14 = load i64, ptr %0, align 8
  %i.q = add i64 %.sroa.0.0.copyload.i.i.i.i14, 31
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i64, ptr %i.r monotonic, align 8 ; 2 uses
  %i.t = add i64 %i.s, 15
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = load atomic volatile i64, ptr %i.u acquire, align 8
  %.not.i.i.i = icmp eq i64 %i.v, 446676598784
  br i1 %.not.i.i.i, label %.sink.split60, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add i64 %i.s, 7
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.i.i, label %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit

_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.i.i: ; preds = %bb.e
  %i.aa = add nsw i64 %i.y, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %i.ad = add i64 %i.ac, 11
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load atomic volatile i16, ptr %i.ae monotonic, align 2
  %i.ag = add i16 %i.af, -177
  %i.ah = icmp ult i16 %i.ag, -4
  br i1 %i.ah, label %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit, label %.sink.split60

_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit: ; preds = %bb.e, %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.i.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8
  %i.ai = add i64 %.sroa.0.0.copyload.i.i.i, 47
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = add i64 %i.ak, 7
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = add i64 %i.an, -1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8
  %i.ar = add i64 %i.aq, 11
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load atomic volatile i16, ptr %i.as monotonic, align 2
  %i.au = icmp eq i16 %i.at, 269
  br i1 %i.au, label %bb.f, label %.sink.split60

bb.f:                                             ; preds = %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit
  %i.av = call i16 @_ZNK2v88internal10JSFunction13GetActiveTierENS0_17IsolateForSandboxE(ptr noundef nonnull align 8 dereferenceable(8) %0) ; 2 uses
  %.not = icmp samesign ult i16 %i.av, 256
  br i1 %.not, label %bb.g, label %_ZNOSt8optionalIN2v88internal8CodeKindEE5valueEv.exit

bb.g:                                             ; preds = %bb.f
  call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNOSt8optionalIN2v88internal8CodeKindEE5valueEv.exit: ; preds = %bb.f
  %.sroa.037.0.extract.trunc = trunc i16 %i.av to i8
  %i.aw = call noundef ptr @_ZN2v88internal16CodeKindToStringENS0_8CodeKindE(i8 noundef zeroext %.sroa.037.0.extract.trunc) #14
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.3, ptr noundef %i.aw) #14
  %i.ax = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 10688
  %i.az = load i64, ptr %0, align 8
  %i.ba = add i64 %i.az, 23
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i32, ptr %i.bb monotonic, align 4
  %i.bd = lshr i32 %i.bc, 8
  %i.be = load ptr, ptr %i.ay, align 8
  %i.bf = zext nneg i32 %i.bd to i64
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bf ; 2 uses
  %i.bh = load atomic i64, ptr %i.bg monotonic, align 8
  %i.bi = icmp ugt i64 %i.bh, -281474976710657
  br i1 %i.bi, label %bb.h, label %_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i, !prof !5

bb.h:                                             ; preds = %_ZNOSt8optionalIN2v88internal8CodeKindEE5valueEv.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.33) #13
  unreachable

_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i: ; preds = %_ZNOSt8optionalIN2v88internal8CodeKindEE5valueEv.exit
  %i.bj = load atomic i64, ptr %i.bg monotonic, align 8 ; 2 uses
  %i.bk = call noundef ptr @_ZNK2v88internal7Isolate18embedded_blob_codeEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.d) #14, !noalias !14 ; 2 uses
  %i.bl = call noundef i32 @_ZNK2v88internal7Isolate23embedded_blob_code_sizeEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.d) #14, !noalias !14 ; 0 uses
  %i.bm = call noundef ptr @_ZNK2v88internal7Isolate18embedded_blob_dataEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.d) #14, !noalias !14 ; 2 uses
  %i.bn = call noundef i32 @_ZNK2v88internal7Isolate23embedded_blob_data_sizeEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.d) #14, !noalias !14 ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 1308
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bq
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = icmp eq i64 %i.bj, %i.bs
  br i1 %i.bt, label %.sink.split, label %_ZNK2v88internal10JSFunction17IsMaglevRequestedEPNS0_7IsolateE.exit

_ZNK2v88internal10JSFunction17IsMaglevRequestedEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 1320
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = zext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bw
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = icmp eq i64 %i.bj, %i.by
  br i1 %i.bz, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %_ZNK2v88internal10JSFunction17IsMaglevRequestedEPNS0_7IsolateE.exit
  %i.ca = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 10688
  %i.cc = load i64, ptr %0, align 8
  %i.cd = add i64 %i.cc, 23
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = load atomic volatile i32, ptr %i.ce monotonic, align 4
  %i.cg = lshr i32 %i.cf, 8
  %i.ch = load ptr, ptr %i.cb, align 8
  %i.ci = zext nneg i32 %i.cg to i64
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.ci ; 2 uses
  %i.ck = load atomic i64, ptr %i.cj monotonic, align 8
  %i.cl = icmp ugt i64 %i.ck, -281474976710657
  br i1 %i.cl, label %bb.j, label %_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i15, !prof !5

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.33) #13
  unreachable

_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i15: ; preds = %bb.i
  %i.cm = load atomic i64, ptr %i.cj monotonic, align 8 ; 2 uses
  %i.cn = call noundef ptr @_ZNK2v88internal7Isolate18embedded_blob_codeEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.d) #14, !noalias !17 ; 2 uses
  %i.co = call noundef i32 @_ZNK2v88internal7Isolate23embedded_blob_code_sizeEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.d) #14, !noalias !17 ; 0 uses
  %i.cp = call noundef ptr @_ZNK2v88internal7Isolate18embedded_blob_dataEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.d) #14, !noalias !17 ; 2 uses
  %i.cq = call noundef i32 @_ZNK2v88internal7Isolate23embedded_blob_data_sizeEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.d) #14, !noalias !17 ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 1332
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.ct
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = icmp eq i64 %i.cm, %i.cv
  br i1 %i.cw, label %.sink.split, label %_ZNK2v88internal10JSFunction19IsTurbofanRequestedEPNS0_7IsolateE.exit

_ZNK2v88internal10JSFunction19IsTurbofanRequestedEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i15
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cp, i64 1344
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cz
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = icmp eq i64 %i.cm, %i.db
  br i1 %i.dc, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %_ZNK2v88internal10JSFunction19IsTurbofanRequestedEPNS0_7IsolateE.exit, %_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i15, %_ZNK2v88internal10JSFunction17IsMaglevRequestedEPNS0_7IsolateE.exit, %_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i
  %.str.6.sink = phi ptr [ @.str.5, %_ZNK2v88internal10JSFunction17IsMaglevRequestedEPNS0_7IsolateE.exit ], [ @.str.5, %_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i ], [ @.str.6, %_ZN2v88internal15JSDispatchTable13GetEntrypointENS_4base11StrongAliasINS0_24JSDispatchHandleAliasTagEjEE.exit.i15 ], [ @.str.6, %_ZNK2v88internal10JSFunction19IsTurbofanRequestedEPNS0_7IsolateE.exit ]
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull %.str.6.sink) #14
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %_ZNK2v88internal10JSFunction19IsTurbofanRequestedEPNS0_7IsolateE.exit
  %.sroa.0.0.copyload.i.i.i17 = load i64, ptr %0, align 8
  %i.dd = add i64 %.sroa.0.0.copyload.i.i.i17, 47
  %i.de = inttoptr i64 %i.dd to ptr
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = add i64 %i.df, 7
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load i64, ptr %i.dh, align 8            ; 2 uses
  %i.dj = add i64 %i.di, 23
  %i.dk = inttoptr i64 %i.dj to ptr
  %i.dl = load i64, ptr %i.dk, align 8
  %i.dm = add i64 %i.dl, 31
  %i.dn = inttoptr i64 %i.dm to ptr
  %i.do = load i64, ptr %i.dn, align 8            ; 2 uses
  %i.dp = add i64 %i.do, 7
  %i.dq = inttoptr i64 %i.dp to ptr               ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %.lr.ph, label %.sink.split60

.lr.ph:                                           ; preds = %bb.k, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store i64 %i.do, ptr %7, align 8
  %i.dt = trunc nuw nsw i64 %indvars.iv to i32
  %i.du = call noundef zeroext i8 @_ZNK2v88internal16FeedbackMetadata7GetKindENS0_12FeedbackSlotE(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 %i.dt) #14
  %i.dv = icmp eq i8 %i.du, 25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br i1 %i.dv, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph
  %i.dw = shl i64 %indvars.iv, 3
  %narrow = add i64 %i.dw, 47
  %8 = and i64 %narrow, 4294967295
  %i.dx = add i64 %i.di, %8
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = load atomic volatile i64, ptr %i.dy monotonic, align 8 ; 2 uses
  %i.ea = and i64 %i.dz, 4294967295
  %i.eb = icmp eq i64 %i.ea, 3
  br i1 %i.eb, label %.sink.split59, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ec = and i64 %i.dz, -3
  %i.ed = add i64 %i.ec, 7
  %i.ee = inttoptr i64 %i.ed to ptr
  %i.ef = load atomic volatile i64, ptr %i.ee acquire, align 8 ; 2 uses
  %i.eg = add i64 %i.ef, 67
  %i.eh = inttoptr i64 %i.eg to ptr
  %i.ei = load atomic volatile i32, ptr %i.eh monotonic, align 4
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.8, i32 noundef %i.ei) #14
  %i.ej = add i64 %i.ef, 51
  %i.ek = inttoptr i64 %i.ej to ptr
  %i.el = load atomic volatile i32, ptr %i.ek monotonic, align 4
  %i.em = and i32 %i.el, 15
  %i.en = icmp eq i32 %i.em, 11
  %.str.9..str.10 = select i1 %i.en, ptr @.str.9, ptr @.str.10
  br label %.sink.split59

.sink.split59:                                    ; preds = %bb.m, %bb.l
  %.str.7.sink = phi ptr [ %.str.9..str.10, %bb.m ], [ @.str.7, %bb.l ]
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull %.str.7.sink) #14
  br label %bb.n

bb.n:                                             ; preds = %.sink.split59, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eo = load i32, ptr %i.dq, align 4
  %i.ep = sext i32 %i.eo to i64
  %i.eq = icmp slt i64 %indvars.iv.next, %i.ep
  br i1 %i.eq, label %.lr.ph, label %.sink.split60, !llvm.loop !20

.sink.split60:                                    ; preds = %bb.n, %bb.k, %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit, %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.i.i, %bb.d
  %.str.4.sink = phi ptr [ @.str.4, %_ZNK2v88internal10JSFunction19has_feedback_vectorEv.exit ], [ @.str.4, %bb.d ], [ @.str.4, %_ZNK2v88internal18SharedFunctionInfo11is_compiledEv.exit.i.i ], [ @.str.11, %bb.k ], [ @.str.11, %bb.n ]
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull %.str.4.sink) #14
  br label %bb.o

bb.o:                                             ; preds = %.sink.split60, %bb.a
  ret void
}

declare void @_ZN2v88internal6PrintFEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #3

declare void @_ZN2v84base2OS6VPrintEPKcP13__va_list_tag(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal10JSFunction13DebugNameCStrEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.1", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %1, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, 31
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  store i64 %i.c, ptr %2, align 8
  call void @_ZNK2v88internal18SharedFunctionInfo13DebugNameCStrEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

declare noundef ptr @_ZN2v88internal16CodeKindToStringENS0_8CodeKindE(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i16 0, 272) i16 @_ZNK2v88internal10JSFunction13GetActiveTierENS0_17IsolateForSandboxE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %0, align 8
  %i.a = add i64 %.sroa.0.0.copyload.i.i.i, 31
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 15
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit, label %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread

_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit: ; preds = %bb.a
  %i.h = add nsw i64 %i.f, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.k = add i64 %i.j, 11
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i16, ptr %i.l monotonic, align 2
  %i.n = icmp eq i16 %i.m, 144
  br i1 %i.n, label %.critedge, label %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread

_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread: ; preds = %bb.a, %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit
  %i.o = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 10688
  %i.q = load i64, ptr %0, align 8
  %i.r = add i64 %i.q, 23
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i32, ptr %i.s monotonic, align 4
  %i.u = lshr i32 %i.t, 8
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = zext nneg i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %i.y = load atomic i64, ptr %i.x monotonic, align 8
  %i.z = icmp ugt i64 %i.y, -281474976710657
  br i1 %i.z, label %bb.b, label %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit, !prof !5

bb.b:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.33) #13
  unreachable

_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit: ; preds = %_ZNK2v88internal18SharedFunctionInfo14HasAsmWasmDataEv.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = load atomic i64, ptr %i.aa monotonic, align 8
  %i.ac = lshr i64 %i.ab, 16
  %i.ad = or i64 %i.ac, 1
  %i.ae = add nuw nsw i64 %i.ad, 89
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = icmp eq i16 %i.ag, 105
  br i1 %i.ah, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal10JSFunction4codeENS0_17IsolateForSandboxE.exit
  %i.ai = tail call i32 @_ZNK2v88internal10JSFunction20GetAttachedCodeKindsENS0_17IsolateForSandboxE(ptr noundef nonnull readonly align 8 dereferenceable(8) %0) ; 5 uses
  %i.aj = and i32 %i.ai, 512
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.d, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread.i

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %0, align 8
  %i.al = add i64 %.sroa.0.0.copyload.i.i.i.i, 31
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i64, ptr %i.am monotonic, align 8
  %i.ao = add i64 %i.an, 7
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i64, ptr %i.ap acquire, align 8 ; 2 uses
  %i.ar = and i64 %i.aq, 1
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread.i, label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.i

_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.i: ; preds = %bb.d
  %i.at = add nsw i64 %i.aq, -1
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = load atomic volatile i64, ptr %i.au monotonic, align 8
  %i.aw = add i64 %i.av, 11
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = load atomic volatile i16, ptr %i.ax monotonic, align 2
  %.off.i.i.i = add i16 %i.ay, -184
  %switch.i.i.i = icmp ult i16 %.off.i.i.i, 3
  %i.az = or disjoint i32 %i.ai, 512
  %spec.select.i = select i1 %switch.i.i.i, i32 %i.az, i32 %i.ai
  br label %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread.i

_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread.i: ; preds = %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.i, %bb.d, %bb.c
  %.sroa.08.0.i = phi i32 [ %i.ai, %bb.d ], [ %spec.select.i, %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.i ], [ %i.ai, %bb.c ] ; 5 uses
  %i.ba = and i32 %.sroa.08.0.i, 1024
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.e, label %_ZN2v88internal12_GLOBAL__N_113HighestTierOfENS_4base5FlagsINS0_12CodeKindFlagEiiEEPNS0_8CodeKindE.exit

bb.e:                                             ; preds = %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread.i
  %.sroa.0.0.copyload.i.i.i1.i = load i64, ptr %0, align 8
  %i.bc = add i64 %.sroa.0.0.copyload.i.i.i1.i, 31
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8
  %i.bf = add i64 %i.be, 7
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load atomic volatile i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = trunc i64 %i.bh to i1
  br i1 %i.bi, label %_ZNK2v88internal18SharedFunctionInfo15HasBaselineCodeEv.exit.i, label %_ZNK2v88internal10JSFunction21GetAvailableCodeKindsENS0_17IsolateForSandboxE.exit

_ZNK2v88internal18SharedFunctionInfo15HasBaselineCodeEv.exit.i: ; preds = %bb.e
  %i.bj = add nsw i64 %i.bh, -1
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load atomic volatile i64, ptr %i.bk monotonic, align 8
  %i.bm = add i64 %i.bl, 11
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load atomic volatile i16, ptr %i.bn monotonic, align 2
  %i.bp = icmp eq i16 %i.bo, 185
  %i.bq = or disjoint i32 %.sroa.08.0.i, 1024
  br i1 %i.bp, label %_ZN2v88internal12_GLOBAL__N_113HighestTierOfENS_4base5FlagsINS0_12CodeKindFlagEiiEEPNS0_8CodeKindE.exit, label %_ZNK2v88internal10JSFunction21GetAvailableCodeKindsENS0_17IsolateForSandboxE.exit

_ZNK2v88internal10JSFunction21GetAvailableCodeKindsENS0_17IsolateForSandboxE.exit: ; preds = %_ZNK2v88internal18SharedFunctionInfo15HasBaselineCodeEv.exit.i, %bb.e
  %.not = icmp eq i32 %.sroa.08.0.i, 0
  br i1 %.not, label %.critedge, label %_ZN2v88internal12_GLOBAL__N_113HighestTierOfENS_4base5FlagsINS0_12CodeKindFlagEiiEEPNS0_8CodeKindE.exit.thread12

_ZN2v88internal12_GLOBAL__N_113HighestTierOfENS_4base5FlagsINS0_12CodeKindFlagEiiEEPNS0_8CodeKindE.exit.thread12: ; preds = %_ZNK2v88internal10JSFunction21GetAvailableCodeKindsENS0_17IsolateForSandboxE.exit
  %i.br = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.08.0.i, i1 true)
  %i.bs = trunc nuw nsw i32 %i.br to i16
  %i.bt = xor i16 %i.bs, 31
  br label %.critedge

_ZN2v88internal12_GLOBAL__N_113HighestTierOfENS_4base5FlagsINS0_12CodeKindFlagEiiEEPNS0_8CodeKindE.exit: ; preds = %_ZNK2v88internal18SharedFunctionInfo15HasBaselineCodeEv.exit.i, %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread.i
  %.sroa.08.1.i.ph = phi i32 [ %.sroa.08.0.i, %_ZNK2v88internal18SharedFunctionInfo16HasBytecodeArrayEv.exit.thread.i ], [ %i.bq, %_ZNK2v88internal18SharedFunctionInfo15HasBaselineCodeEv.exit.i ]
  %i.bu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.sroa.08.1.i.ph, i1 true)
  %i.bv = trunc nuw nsw i32 %i.bu to i16
  %i.bw = xor i16 %i.bv, 31
  br label %.critedge

end_hunk_0
