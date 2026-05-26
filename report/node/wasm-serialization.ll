inline.NumInlined: 2442
inline.NumDeleted: 1339
begin_hunk_0_@_ZN2v88internal4wasm19DeserializeCodeTask13TryPublishingEPNS_11JobDelegateE:bb.a

bb.k:                                             ; preds = %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #25
  br label %_ZSt10destroy_atISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EEEvPT_.exit.i

_ZSt10destroy_atISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EEEvPT_.exit.i: ; preds = %bb.k, %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i.i
  %i.cc = load ptr, ptr %i.f, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  br label %_ZNSt5dequeISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE9pop_frontEv.exit

bb.l:                                             ; preds = %.lr.ph.i
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.l, %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.cg, %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i.i.i ], [ %i.bq, %bb.l ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  call void @_ZN2v88internal4wasm8WasmCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(112) %i.cf) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 112) #25
  br label %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cg, %i.bs
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !62

_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.bn, align 8
  br label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i.i.i

_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i.i.i.i, %bb.l
  %i.ch = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i.i.i.i ], [ %i.bq, %bb.l ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt5dequeISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE16_M_pop_front_auxEv.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #25
  br label %_ZNSt5dequeISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE16_M_pop_front_auxEv.exit.i

_ZNSt5dequeISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE16_M_pop_front_auxEv.exit.i: ; preds = %bb.m, %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i.i.i
  %i.cn = load ptr, ptr %i.j, align 8
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef 504) #25
  %i.co = load ptr, ptr %i.k, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  store ptr %i.cp, ptr %i.k, align 8
  %i.cq = load ptr, ptr %i.cp, align 8            ; 3 uses
  store ptr %i.cq, ptr %i.j, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 504
  store ptr %i.cr, ptr %i.i, align 8
  br label %_ZNSt5dequeISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE9pop_frontEv.exit

_ZNSt5dequeISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE9pop_frontEv.exit: ; preds = %_ZSt10destroy_atISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EEEvPT_.exit.i, %_ZNSt5dequeISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE16_M_pop_front_auxEv.exit.i
  %storemerge.i = phi ptr [ %i.cd, %_ZSt10destroy_atISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EEEvPT_.exit.i ], [ %i.cq, %_ZNSt5dequeISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE16_M_pop_front_auxEv.exit.i ] ; 3 uses
  store ptr %storemerge.i, ptr %i.f, align 8
  %i.cs = load ptr, ptr %i.e, align 8, !noalias !118
  %i.ct = icmp eq ptr %i.cs, %storemerge.i
  br i1 %i.ct, label %_ZN2v88internal4wasm20DeserializationQueue6PopAllEv.exit, label %.lr.ph.i, !llvm.loop !121

_ZN2v88internal4wasm20DeserializationQueue6PopAllEv.exit: ; preds = %_ZNSt5dequeISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE9pop_frontEv.exit, %bb.d, %_ZNSt5dequeISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE9pop_frontEv.exit48
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(88) %i.d) #24
  %i.cu = load ptr, ptr %3, align 16              ; 7 uses
  %i.cv = load ptr, ptr %i.g, align 8             ; 3 uses
  %.not = icmp eq ptr %i.cu, %i.cv                ; 2 uses
  br i1 %.not, label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i20, label %bb.n

bb.n:                                             ; preds = %_ZN2v88internal4wasm20DeserializationQueue6PopAllEv.exit
  %i.cw = load ptr, ptr %i.l, align 8
  store ptr %i.cu, ptr %4, align 8
  store ptr %i.cv, ptr %i.m, align 8
  %i.cx = load ptr, ptr %i.h, align 16            ; 2 uses
  store ptr %i.cx, ptr %i.n, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @_ZN2v88internal4wasm24NativeModuleDeserializer7PublishESt6vectorINS1_19DeserializationUnitESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(144) %i.cw, ptr noundef nonnull %4)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.da, %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i ], [ %i.cu, %bb.n ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZN2v88internal4wasm8WasmCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(112) %i.cz) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef 112) #25
  br label %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i

_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.da, %i.cv
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !62

_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i: ; preds = %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i
  %.not.i.i1.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i1.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i
  %i.db = ptrtoint ptr %i.cx to i64
  %i.dc = ptrtoint ptr %i.cu to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.dd) #25
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i
  %i.de = load ptr, ptr %1, align 8
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = call noundef zeroext i1 %i.df(ptr noundef nonnull align 8 dereferenceable(8) %1) #24 ; 2 uses
  %.pre = load ptr, ptr %3, align 16              ; 3 uses
  %.pre55 = load ptr, ptr %i.g, align 8           ; 2 uses
  %.not4.i.i.i11 = icmp eq ptr %.pre, %.pre55
  br i1 %.not4.i.i.i11, label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i20, label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %bb.p, %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i16
  %.05.i.i.i13 = phi ptr [ %i.dj, %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i16 ], [ %.pre, %bb.p ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.05.i.i.i13, i64 16
  %i.di = load ptr, ptr %i.dh, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i14 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i.i14, label %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i16, label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i15

_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i15: ; preds = %.lr.ph.i.i.i12
  call void @_ZN2v88internal4wasm8WasmCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(112) %i.di) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.di, i64 noundef 112) #25
  br label %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i16

_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i16: ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i15, %.lr.ph.i.i.i12
  %i.dj = getelementptr inbounds nuw i8, ptr %.05.i.i.i13, i64 40 ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.dj, %.pre55
  br i1 %.not.i.i.i17, label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i18, label %.lr.ph.i.i.i12, !llvm.loop !62

_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i18: ; preds = %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i16
  %.pr.i19 = load ptr, ptr %3, align 16
  br label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i20

_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i20: ; preds = %_ZN2v88internal4wasm20DeserializationQueue6PopAllEv.exit, %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i18, %bb.p
  %.1796.shrunk = phi i1 [ %i.dg, %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i18 ], [ %i.dg, %bb.p ], [ false, %_ZN2v88internal4wasm20DeserializationQueue6PopAllEv.exit ] ; 5 uses
  %i.dk = phi ptr [ %.pr.i19, %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i18 ], [ %.pre, %bb.p ], [ %i.cu, %_ZN2v88internal4wasm20DeserializationQueue6PopAllEv.exit ] ; 3 uses
  %.not.i.i1.i21 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i1.i21, label %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EED2Ev.exit22, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i20
  %i.dl = load ptr, ptr %i.h, align 16
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = sub i64 %i.dm, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef %i.do) #25
  br label %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EED2Ev.exit22

_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EED2Ev.exit22: ; preds = %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i20, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.not, label %bb.r, label %bb.c

bb.r:                                             ; preds = %_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EED2Ev.exit22
  store atomic i8 0, ptr %i.a monotonic, align 8
  br i1 %.1796.shrunk, label %select.unfold, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(88) %i.d) #24
  %i.dp = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.dq = load ptr, ptr %i.k, align 8
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = ashr exact i64 %i.dt, 3
  %i.dv = icmp ne ptr %i.dp, null
  %.neg.i.i.i.i = sext i1 %i.dv to i64
  %i.dw = add nsw i64 %i.du, %.neg.i.i.i.i
  %i.dx = mul nsw i64 %i.dw, 21
  %i.dy = load ptr, ptr %i.e, align 8
  %i.dz = load ptr, ptr %i.p, align 8
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = sdiv exact i64 %i.ec, 24
  %i.ee = add nsw i64 %i.dx, %i.ed
  %i.ef = load ptr, ptr %i.i, align 8
  %i.eg = load ptr, ptr %i.f, align 8
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %.neg = sdiv exact i64 %i.ej, -24
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(88) %i.d) #24
  %i.ek = icmp eq i64 %i.ee, %.neg
  br i1 %i.ek, label %select.unfold, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.el = atomicrmw xchg ptr %i.a, i8 1 monotonic, align 1
  %.fr = freeze i8 %i.el
  %i.em = trunc i8 %.fr to i1
  br i1 %i.em, label %select.unfold, label %.critedge.backedge

select.unfold:                                    ; preds = %bb.r, %bb.t, %bb.s, %.thread
  %.210 = phi i1 [ true, %.thread ], [ %.1796.shrunk, %bb.s ], [ %.1796.shrunk, %bb.t ], [ %.1796.shrunk, %bb.r ]
  call void @_ZN2v88internal4wasm16WasmCodeRefScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %select.unfold
  %.3 = phi i1 [ %.210, %select.unfold ], [ false, %bb.a ]
  ret i1 %.3
}

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -24
  %.not = icmp eq ptr %i.b, %i.e
  %i.f = load ptr, ptr %i.b, align 8              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.f, %i.h       ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.k, %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZN2v88internal4wasm8WasmCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(112) %i.j) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 112) #25
  br label %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.h
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !62

_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.b, align 8
  br label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i

_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i: ; preds = %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i.i, %bb.b
  %i.l = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i1.i.i, label %_ZSt10destroy_atISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EEEvPT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #25
  br label %_ZSt10destroy_atISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EEEvPT_.exit

_ZSt10destroy_atISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EEEvPT_.exit: ; preds = %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i, %bb.c
  %i.r = load ptr, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i.i ], [ %i.f, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZN2v88internal4wasm8WasmCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(112) %i.u) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 112) #25
  br label %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v88internal4wasm8WasmCodeEEclEPS3_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %i.h
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !62

_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN2v88internal4wasm19DeserializationUnitEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.b, align 8
  br label %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i.i

_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i.i.i, %bb.d
  %i.w = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exitthread-pre-split.i.i.i ], [ %i.f, %bb.d ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt5dequeISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE16_M_pop_front_auxEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #25
  br label %_ZNSt5dequeISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE16_M_pop_front_auxEv.exit

_ZNSt5dequeISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE16_M_pop_front_auxEv.exit: ; preds = %_ZSt8_DestroyIPN2v88internal4wasm19DeserializationUnitEEvT_S5_.exit.i.i.i, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef 504) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.ag, ptr %i.ae, align 8
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  store ptr %i.ah, ptr %i.ac, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 504
  store ptr %i.ai, ptr %i.c, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt5dequeISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE16_M_pop_front_auxEv.exit, %_ZSt10destroy_atISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EEEvPT_.exit
  %storemerge = phi ptr [ %i.s, %_ZSt10destroy_atISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EEEvPT_.exit ], [ %i.ah, %_ZNSt5dequeISt6vectorIN2v88internal4wasm19DeserializationUnitESaIS4_EESaIS6_EE16_M_pop_front_auxEv.exit ]
  store ptr %storemerge, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2v88internal4wasm19DeserializationUnitESaIS3_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS3_S5_EEEEEvSB_T_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %2, %3
  br i1 %i.a, label %_ZSt4copyISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19DeserializationUnitESt6vectorIS6_SaIS6_EEEEESB_ET0_T_SE_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = sdiv exact i64 %i.d, 40                  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 13 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.l = sub i64 %i.j, %i.k
  %.not = icmp ult i64 %i.l, %i.d
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.n = sub i64 %i.k, %i.m                       ; 5 uses
  %i.o = sdiv exact i64 %i.n, 40                  ; 2 uses
  %i.p = icmp ugt i64 %i.o, %i.e
  br i1 %i.p, label %bb.d, label %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPN2v88internal4wasm19DeserializationUnitESt6vectorIS6_SaIS6_EEEEElEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %.idx = sub i64 0, %i.d
  %i.q = getelementptr inbounds i8, ptr %i.i, i64 %.idx ; 3 uses
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.i, %bb.d ] ; 4 uses
  %.sroa.04.07.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.q, %bb.d ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.08.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.04.07.i.i.i.i.i, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  store i64 %i.t, ptr %i.r, align 8
  store ptr null, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i.i, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  %i.y = icmp eq ptr %i.w, %i.i
  br i1 %i.y, label %_ZSt22__uninitialized_move_aIPN2v88internal4wasm19DeserializationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !122

_ZSt22__uninitialized_move_aIPN2v88internal4wasm19DeserializationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i
  %i.z = load ptr, ptr %i.h, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.d
  store ptr %i.aa, ptr %i.h, align 8
  %i.ab = ptrtoint ptr %i.q to i64
  %i.ac = sub i64 %i.ab, %i.m                     ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPN2v88internal4wasm19DeserializationUnitES4_ET0_T_S6_S5_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZSt22__uninitialized_move_aIPN2v88internal4wasm19DeserializationUnitES4_SaIS3_EET0_T_S7_S6_RT1_.exit
  %i.ae = udiv exact i64 %i.ac, 40
  br label %.lr.ph.i.i.i.i.i43

.lr.ph.i.i.i.i.i43:                               ; preds = %_ZN2v88internal4wasm19DeserializationUnitaSEOS2_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.an, %_ZN2v88internal4wasm19DeserializationUnitaSEOS2_.exit.i.i.i.i.i ], [ %i.ae, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ag, %_ZN2v88internal4wasm19DeserializationUnitaSEOS2_.exit.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.078.i.i.i.i.i = phi ptr [ %i.af, %_ZN2v88internal4wasm19DeserializationUnitaSEOS2_.exit.i.i.i.i.i ], [ %i.q, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40 ; 2 uses
end_hunk_0
