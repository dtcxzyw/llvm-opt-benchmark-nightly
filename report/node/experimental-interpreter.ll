Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/experimental-interpreter?download=true
inline.NumInlined: 1567
inline.NumDeleted: 747
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE14NewEmptyThreadEi:bb.a
bb.aa:                                            ; preds = %bb.z
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.co, i64 noundef %i.cq) #8
  %.pre.i.i.i.i.i.i31 = load i64, ptr %i.ct, align 8
  br label %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i28

_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i28: ; preds = %bb.aa, %bb.z
  %i.cx = phi i64 [ %.pre.i.i.i.i.i.i31, %bb.aa ], [ %i.cu, %bb.z ] ; 2 uses
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = add i64 %i.cx, %i.cq
  store i64 %i.cz, ptr %i.ct, align 8
  %.pre.i29 = load i32, ptr %i.d, align 8         ; 2 uses
  %.pre5.i30 = sext i32 %.pre.i29 to i64
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE33NewCaptureClockArrayUninitializedEv.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE33NewCaptureClockArrayUninitializedEv.exit.i: ; preds = %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i28, %bb.w
  %.pre-phi.i23 = phi i64 [ %i.ci, %bb.w ], [ %.pre5.i30, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i28 ]
  %i.da = phi i32 [ %i.ch, %bb.w ], [ %.pre.i29, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i28 ]
  %.0.i.i.i24 = phi ptr [ %i.ck, %bb.w ], [ %i.cy, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i28 ] ; 2 uses
  %.not5.i.i.i.i25 = icmp eq i32 %i.da, 0
  br i1 %.not5.i.i.i.i25, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE20NewCaptureClockArrayEm.exit, label %.lr.ph.i.i.i.preheader.i26

.lr.ph.i.i.i.preheader.i26:                       ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE33NewCaptureClockArrayUninitializedEv.exit.i
  %.idx.i27 = shl nsw i64 %.pre-phi.i23, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %.0.i.i.i24, i8 0, i64 %.idx.i27, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE20NewCaptureClockArrayEm.exit

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE20NewCaptureClockArrayEm.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE33NewCaptureClockArrayUninitializedEv.exit.i, %.lr.ph.i.i.i.preheader.i26
  %i.db = load i8, ptr %i.aa, align 8, !range !9, !noundef !10
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE23NewLookaroundClockArrayEm.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE20NewCaptureClockArrayEm.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 3 uses
  %i.dl = ashr exact i64 %i.dk, 5                 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8            ; 4 uses
  %.not.i.i.i32 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i32, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i64, ptr %i.do, align 8
  %.not5.i.i.i33 = icmp ult i64 %i.dp, %i.dl
  br i1 %.not5.i.i.i33, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = load ptr, ptr %i.dn, align 8
  store ptr %i.dq, ptr %i.dm, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE36NewLookaroundClockArrayUninitializedEv.exit.i

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.dr = load ptr, ptr %i.dd, align 8            ; 3 uses
  %i.ds = icmp ult i64 %i.dl, 2305843009213693951
  br i1 %i.ds, label %bb.ag, label %bb.af, !prof !11

bb.af:                                            ; preds = %bb.ae
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dt = ashr exact i64 %i.dk, 2                 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 3 uses
  %i.dx = load i64, ptr %i.dw, align 8            ; 2 uses
  %i.dy = sub i64 %i.dv, %i.dx
  %i.dz = icmp ugt i64 %i.dt, %i.dy
  br i1 %i.dz, label %bb.ah, label %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i38, !prof !12

bb.ah:                                            ; preds = %bb.ag
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.dr, i64 noundef %i.dt) #8
  %.pre.i.i.i.i.i.i44 = load i64, ptr %i.dw, align 8
  br label %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i38

_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i38: ; preds = %bb.ah, %bb.ag
  %i.ea = phi i64 [ %.pre.i.i.i.i.i.i44, %bb.ah ], [ %i.dx, %bb.ag ] ; 2 uses
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = add i64 %i.ea, %i.dt
  store i64 %i.ec, ptr %i.dw, align 8
  %.pre.i39 = load ptr, ptr %i.de, align 8        ; 2 uses
  %.pre5.i40 = load ptr, ptr %i.dg, align 8       ; 2 uses
  %.pre6.i41 = ptrtoint ptr %.pre.i39 to i64
  %.pre7.i42 = ptrtoint ptr %.pre5.i40 to i64
  %.pre9.i43 = sub i64 %.pre6.i41, %.pre7.i42
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE36NewLookaroundClockArrayUninitializedEv.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE36NewLookaroundClockArrayUninitializedEv.exit.i: ; preds = %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i38, %bb.ad
  %.pre-phi10.i34 = phi i64 [ %i.dk, %bb.ad ], [ %.pre9.i43, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i38 ]
  %i.ed = phi ptr [ %i.dh, %bb.ad ], [ %.pre5.i40, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i38 ]
  %i.ee = phi ptr [ %i.df, %bb.ad ], [ %.pre.i39, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i38 ]
  %.0.i.i.i35 = phi ptr [ %i.dn, %bb.ad ], [ %i.eb, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i38 ] ; 3 uses
  %.not5.i.i.i.i36 = icmp eq ptr %i.ee, %i.ed
  br i1 %.not5.i.i.i.i36, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE23NewLookaroundClockArrayEm.exit, label %.lr.ph.i.i.i.preheader.i37

.lr.ph.i.i.i.preheader.i37:                       ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE36NewLookaroundClockArrayUninitializedEv.exit.i
  %i.ef = ashr exact i64 %.pre-phi10.i34, 2
  %i.eg = and i64 %i.ef, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %.0.i.i.i35, i8 0, i64 %i.eg, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE23NewLookaroundClockArrayEm.exit

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE23NewLookaroundClockArrayEm.exit: ; preds = %.lr.ph.i.i.i.preheader.i37, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE36NewLookaroundClockArrayUninitializedEv.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE20NewCaptureClockArrayEm.exit
  %i.eh = phi ptr [ null, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE20NewCaptureClockArrayEm.exit ], [ %.0.i.i.i35, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE36NewLookaroundClockArrayUninitializedEv.exit.i ], [ %.0.i.i.i35, %.lr.ph.i.i.i.preheader.i37 ]
  store i32 %2, ptr %0, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bj, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.0.i.i.i14, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i.i24, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.eh, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.en, align 8
  br label %bb.ap

bb.ai:                                            ; preds = %bb.a
  br i1 %.not.i.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eo = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ep = load i64, ptr %i.eo, align 8
  %.not5.i.i.i46 = icmp ult i64 %i.ep, %i.f
  br i1 %.not5.i.i.i46, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eq = load ptr, ptr %i.h, align 8
  store ptr %i.eq, ptr %i.g, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE29NewRegisterArrayUninitializedEv.exit.i47

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.er = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.es = icmp sgt i32 %i.e, -1
  br i1 %i.es, label %bb.an, label %bb.am, !prof !11

bb.am:                                            ; preds = %bb.al
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.et = shl nuw nsw i64 %i.f, 2
  %i.eu = add nuw nsw i64 %i.et, 4
  %i.ev = and i64 %i.eu, 17179869176              ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 3 uses
  %i.ez = load i64, ptr %i.ey, align 8            ; 2 uses
  %i.fa = sub i64 %i.ex, %i.ez
  %i.fb = icmp ugt i64 %i.ev, %i.fa
  br i1 %i.fb, label %bb.ao, label %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i53, !prof !12

bb.ao:                                            ; preds = %bb.an
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.er, i64 noundef %i.ev) #8
  %.pre.i.i.i.i.i.i56 = load i64, ptr %i.ey, align 8
  br label %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i53

_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i53: ; preds = %bb.ao, %bb.an
  %i.fc = phi i64 [ %.pre.i.i.i.i.i.i56, %bb.ao ], [ %i.ez, %bb.an ] ; 2 uses
  %i.fd = inttoptr i64 %i.fc to ptr
  %i.fe = add i64 %i.fc, %i.ev
  store i64 %i.fe, ptr %i.ey, align 8
  %.pre.i54 = load i32, ptr %i.d, align 8         ; 2 uses
  %.pre5.i55 = sext i32 %.pre.i54 to i64
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE29NewRegisterArrayUninitializedEv.exit.i47

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE29NewRegisterArrayUninitializedEv.exit.i47: ; preds = %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i53, %bb.ak
  %.pre-phi.i48 = phi i64 [ %i.f, %bb.ak ], [ %.pre5.i55, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i53 ]
  %i.ff = phi i32 [ %i.e, %bb.ak ], [ %.pre.i54, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i53 ]
  %.0.i.i.i49 = phi ptr [ %i.h, %bb.ak ], [ %i.fd, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i53 ] ; 2 uses
  %.not5.i.i.i.i50 = icmp eq i32 %i.ff, 0
  br i1 %.not5.i.i.i.i50, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16NewRegisterArrayEi.exit57, label %.lr.ph.i.i.i.preheader.i51

.lr.ph.i.i.i.preheader.i51:                       ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE29NewRegisterArrayUninitializedEv.exit.i47
  %.idx.i52 = shl nsw i64 %.pre-phi.i48, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0.i.i.i49, i8 -1, i64 %.idx.i52, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16NewRegisterArrayEi.exit57

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16NewRegisterArrayEi.exit57: ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE29NewRegisterArrayUninitializedEv.exit.i47, %.lr.ph.i.i.i.preheader.i51
  store i32 %2, ptr %0, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i49, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fh, i8 0, i64 36, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16NewRegisterArrayEi.exit57, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE23NewLookaroundClockArrayEm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21RunActiveThreadsToEndEv(ptr noundef nonnull align 8 dereferenceable(424) %0) unnamed_addr #0 align 2 {
bb.a:
  %.sroa.4.i = alloca <{ [4 x i8], ptr, ptr, ptr, ptr, ptr }>, align 8 ; 4 uses
  %.sroa.12.i = alloca <{ [4 x i8], ptr, ptr, ptr, ptr, ptr }>, align 8 ; 4 uses
  %1 = alloca %"class.v8::internal::StackLimitCheck", align 8 ; 8 uses
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16RunActiveThreadsEv(ptr noundef nonnull align 8 dereferenceable(424) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 393 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %i.ad = load i8, ptr %i.a, align 1, !range !9, !noundef !10 ; 3 uses
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = load i32, ptr %i.b, align 8             ; 4 uses
  br i1 %i.ae, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 2147483648
  br i1 %i.ai, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.d
  %i.aj = trunc nuw nsw i64 %i.ah to i32
  %.not = icmp samesign ugt i32 %i.af, %i.aj
  br i1 %.not, label %.critedge, label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.ak = icmp sgt i32 %i.af, -1
  br i1 %i.ak, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.al = load i64, ptr %i.c, align 8             ; 2 uses
  %i.am = icmp ult i64 %i.al, 2147483648
  br i1 %i.am, label %_ZNK2v84base6VectorIKhE6lengthEv.exit14, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit14:          ; preds = %bb.g
  %i.an = trunc nuw nsw i64 %i.al to i32
  %i.ao = icmp samesign ult i32 %i.af, %i.an
  br i1 %i.ao, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit14, %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %.val = load i8, ptr %i.d, align 8, !range !9, !noundef !10
  %i.ap = trunc nuw i8 %.val to i1
  br i1 %i.ap, label %bb.j, label %.critedge13

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %i.e, align 4
  %.not27 = icmp eq i32 %i.aq, 0
  br i1 %.not27, label %.critedge, label %.critedge13

.critedge13:                                      ; preds = %bb.i, %bb.j
  %i.ar = load i8, ptr %i.f, align 8, !range !9, !noundef !10
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.k, label %_ZSt4fillIPbbEvT_S1_RKT0_.exit

bb.k:                                             ; preds = %.critedge13
  %i.at = load i32, ptr %i.g, align 4             ; 2 uses
  %.not5.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not5.i.i.i, label %_ZSt4fillIPbbEvT_S1_RKT0_.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.k
  %i.au = sext i32 %i.at to i64
  %i.av = load ptr, ptr %i.h, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 0, i64 %i.au, i1 false)
  %.pre = load i8, ptr %i.a, align 1, !range !9
  br label %_ZSt4fillIPbbEvT_S1_RKT0_.exit

_ZSt4fillIPbbEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.preheader.i.i.i, %bb.k, %.critedge13
  %i.aw = phi i8 [ %.pre, %.lr.ph.preheader.i.i.i ], [ %i.ad, %bb.k ], [ %i.ad, %.critedge13 ]
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = load i32, ptr %i.b, align 8             ; 3 uses
  br i1 %i.ax, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZSt4fillIPbbEvT_S1_RKT0_.exit
  %i.az = add nsw i32 %i.ay, -1                   ; 3 uses
  store i32 %i.az, ptr %i.b, align 8
  %i.ba = sext i32 %i.az to i64
  %i.bb = load ptr, ptr %i.i, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1
  br label %bb.m

bb.l:                                             ; preds = %_ZSt4fillIPbbEvT_S1_RKT0_.exit
  %i.be = sext i32 %i.ay to i64
  %i.bf = load ptr, ptr %i.i, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  %i.bh = load i8, ptr %i.bg, align 1
  %i.bi = add nsw i32 %i.ay, 1                    ; 2 uses
  store i32 %i.bi, ptr %i.b, align 8
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %i.bj = phi i32 [ %i.az, %.thread ], [ %i.bi, %bb.l ]
  %.in = phi i8 [ %i.bd, %.thread ], [ %i.bh, %bb.l ]
  %i.bk = zext i8 %.in to i16                     ; 2 uses
  %i.bl = and i32 %i.bj, 63
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.n, label %bb.z

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.bn = load ptr, ptr %0, align 8               ; 7 uses
  store ptr %i.bn, ptr %1, align 8
  %i.bo = load i32, ptr %i.j, align 8
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bq = call noundef zeroext i1 @_ZNK2v88internal15StackLimitCheck15JsHasOverflowedEm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #8
  br i1 %i.bq, label %.thread24, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = load ptr, ptr %1, align 8
  %i.bs = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bu = load atomic volatile i64, ptr %i.bt monotonic, align 8
  %i.bv = icmp ult i64 %i.bs, %i.bu
  br i1 %i.bv, label %.thread24, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16HandleInterruptsEv.exit

bb.q:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 560 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 568 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 576 ; 4 uses
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 8
  %.sroa.014.0.copyload.i = load i64, ptr %i.k, align 8
  %i.cd = load ptr, ptr %0, align 8               ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 560 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 568
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = icmp eq ptr %i.cf, %i.ch
  br i1 %i.ci, label %bb.r, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i, !prof !12

bb.r:                                             ; preds = %bb.q
  %i.cj = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.cd) #8
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i: ; preds = %bb.r, %bb.q
  %.0.i.i = phi ptr [ %i.cj, %bb.r ], [ %i.cf, %bb.q ] ; 3 uses
  %i.ck = ptrtoint ptr %.0.i.i to i64
  %i.cl = add i64 %i.ck, 8
  %i.cm = inttoptr i64 %i.cl to ptr
  store ptr %i.cm, ptr %i.ce, align 8
  store i64 %.sroa.014.0.copyload.i, ptr %.0.i.i, align 8
  %.sroa.013.0.copyload.i = load i64, ptr %i.l, align 8
  %i.cn = load ptr, ptr %0, align 8               ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 560 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 568
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = icmp eq ptr %i.cp, %i.cr
  br i1 %i.cs, label %bb.s, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !12

bb.s:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i
  %i.ct = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.cn) #8
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.s, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i
  %.0.i.i.i = phi ptr [ %i.ct, %bb.s ], [ %i.cp, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i ] ; 4 uses
  %i.cu = ptrtoint ptr %.0.i.i.i to i64
  %i.cv = add i64 %i.cu, 8
  %i.cw = inttoptr i64 %i.cv to ptr
  store ptr %i.cw, ptr %i.co, align 8
  store i64 %.sroa.013.0.copyload.i, ptr %.0.i.i.i, align 8
  %i.cx = call noundef zeroext i1 @_ZNK2v88internal15StackLimitCheck15JsHasOverflowedEm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #8
  br i1 %i.cx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.cy = load ptr, ptr %0, align 8
  %i.cz = call i64 @_ZN2v88internal7Isolate13StackOverflowEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.cy) #8 ; 0 uses
  br label %.thread.i

bb.u:                                             ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.da = load ptr, ptr %1, align 8
  %i.db = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dd = load atomic volatile i64, ptr %i.dc monotonic, align 8
  %i.de = icmp ult i64 %i.db, %i.dd
  br i1 %i.de, label %.preheader52.i, label %.thread.i

.preheader52.i:                                   ; preds = %bb.u, %bb.v
  %.sroa.04.0.i.in.i = phi ptr [ %i.dm, %bb.v ], [ %i.l, %bb.u ]
  %.sroa.04.0.i.i = load i64, ptr %.sroa.04.0.i.in.i, align 8
  %i.df = add i64 %.sroa.04.0.i.i, -1
  %i.dg = inttoptr i64 %i.df to ptr               ; 2 uses
  %i.dh = load atomic volatile i64, ptr %i.dg monotonic, align 8
  %i.di = add i64 %i.dh, 11
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load atomic volatile i16, ptr %i.dj monotonic, align 2
  %i.dl = and i16 %i.dk, 9
  switch i16 %i.dl, label %bb.v [
    i16 8, label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i.loopexit
    i16 0, label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i
  ]

bb.v:                                             ; preds = %.preheader52.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  br label %.preheader52.i

_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i.loopexit: ; preds = %.preheader52.i
  br label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i: ; preds = %.preheader52.i, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i.loopexit
  %.1.ph.i.i = phi i1 [ true, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i.loopexit ], [ false, %.preheader52.i ] ; 2 uses
  %i.dn = load ptr, ptr %0, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = call i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %i.do, i32 noundef 2) #8
  %i.dq = load ptr, ptr %0, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 912
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = icmp eq i64 %i.dp, %i.ds
  br i1 %i.dt, label %bb.x, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i, %bb.w
  %.sroa.04.0.i21.in.i = phi ptr [ %i.eb, %bb.w ], [ %.0.i.i.i, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i ]
  %.sroa.04.0.i21.i = load i64, ptr %.sroa.04.0.i21.in.i, align 8
  %i.du = add i64 %.sroa.04.0.i21.i, -1
  %i.dv = inttoptr i64 %i.du to ptr               ; 2 uses
  %i.dw = load atomic volatile i64, ptr %i.dv monotonic, align 8
  %i.dx = add i64 %i.dw, 11
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = load atomic volatile i16, ptr %i.dy monotonic, align 2
  %i.ea = and i16 %i.dz, 9
  switch i16 %i.ea, label %bb.w [
    i16 8, label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24.i
    i16 0, label %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24_crit_edge.i
  ]

._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24_crit_edge.i: ; preds = %.preheader.i
  br i1 %.1.ph.i.i, label %bb.x, label %.thread56.i

bb.w:                                             ; preds = %.preheader.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  br label %.preheader.i

_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24.i: ; preds = %.preheader.i
  br i1 %.1.ph.i.i, label %.thread56.i, label %bb.x

bb.x:                                             ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24.i, %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24_crit_edge.i, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i
  %.2.i = phi i32 [ -2, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24.i ], [ -2, %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24_crit_edge.i ], [ -1, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i ] ; 2 uses
  %i.ec = icmp eq ptr %i.bn, null
  br i1 %i.ec, label %.thread24, label %.thread.i, !prof !16

.thread56.i:                                      ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24.i, %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24_crit_edge.i
  %i.ed = load i64, ptr %.0.i.i, align 8          ; 2 uses
  store i64 %i.ed, ptr %i.k, align 8
  %i.ee = add i64 %i.ed, -1
  %i.ef = inttoptr i64 %i.ee to ptr               ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = lshr i64 %i.ei, 32
  %i.ek = trunc nuw i64 %i.ej to i32
  %i.el = ashr i32 %i.ek, 3
  %i.em = sext i32 %i.el to i64
  store ptr %i.eg, ptr %i.n, align 8
  store i64 %i.em, ptr %.sroa.46.0..sroa_idx.i, align 8
  %i.en = load i64, ptr %.0.i.i.i, align 8        ; 2 uses
  store i64 %i.en, ptr %i.l, align 8
  %i.eo = call fastcc { ptr, i64 } @_ZN2v88internal12_GLOBAL__N_117ToCharacterVectorIhEENS_4base6VectorIKT_EENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSC_2EEEE(i64 %i.en, ptr noundef nonnull align 1 dereferenceable(1) %i.m) ; 2 uses
  %i.ep = extractvalue { ptr, i64 } %i.eo, 0
  %i.eq = extractvalue { ptr, i64 } %i.eo, 1
  store ptr %i.ep, ptr %i.i, align 8
  store i64 %i.eq, ptr %i.c, align 8
  %i.er = icmp eq ptr %i.bn, null
  br i1 %i.er, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16HandleInterruptsEv.exit, label %.thread.i, !prof !16

.thread.i:                                        ; preds = %.thread56.i, %bb.x, %bb.u, %bb.t
  %.250.i = phi i32 [ %.2.i, %bb.x ], [ undef, %bb.u ], [ -1, %bb.t ], [ undef, %.thread56.i ]
  %cond48.i = phi i1 [ false, %bb.x ], [ true, %bb.u ], [ false, %bb.t ], [ true, %.thread56.i ]
  store ptr %i.bx, ptr %i.bw, align 8
  %i.es = load i32, ptr %i.ca, align 8
  %i.et = add nsw i32 %i.es, -1
  store i32 %i.et, ptr %i.ca, align 8
  %i.eu = load ptr, ptr %i.by, align 8
  %.not.i.i = icmp eq ptr %i.eu, %i.bz
  br i1 %.not.i.i, label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, label %bb.y, !prof !11

bb.y:                                             ; preds = %.thread.i
  store ptr %i.bz, ptr %i.by, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.bn) #8
  br label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i

_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i: ; preds = %bb.y, %.thread.i
  br i1 %cond48.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16HandleInterruptsEv.exit, label %.thread24

.thread24:                                        ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, %bb.o, %bb.p, %bb.x
  %.3.i.ph = phi i32 [ %.2.i, %bb.x ], [ -2, %bb.p ], [ -1, %bb.o ], [ %.250.i, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %.critedge

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16HandleInterruptsEv.exit: ; preds = %bb.p, %.thread56.i, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.z

bb.z:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16HandleInterruptsEv.exit, %bb.m
  %i.ev = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %.lr.ph60.i, label %.loopexit

.lr.ph60.i:                                       ; preds = %bb.z
  %i.ex = zext nneg i32 %i.ev to i64
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, %.lr.ph60.i
  %indvars.iv63.i = phi i64 [ %i.ex, %.lr.ph60.i ], [ %indvars.iv.next64.i, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i ] ; 2 uses
  %indvars.iv.next64.i = add nsw i64 %indvars.iv63.i, -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  %.val.i = load ptr, ptr %i.o, align 8
  %i.ey = getelementptr inbounds nuw [56 x i8], ptr %.val.i, i64 %indvars.iv.next64.i ; 7 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.ey, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.12.i, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.12.0..sroa_idx.i, i64 44, i1 false)
  %i.ez = sext i32 %.sroa.0.0.copyload.i to i64   ; 2 uses
  %i.fa = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ez ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = icmp eq i32 %i.fc, 4
  br i1 %i.fd, label %bb.ab, label %.thread.i15

.thread.i15:                                      ; preds = %bb.aa
  %i.fe = add nsw i32 %.sroa.0.0.copyload.i, 1
  br label %.lr.ph.preheader.i

bb.ab:                                            ; preds = %bb.aa
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fg = load i32, ptr %i.ff, align 4            ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %..lr.ph.preheader.i_crit_edge, label %._crit_edge.i

..lr.ph.preheader.i_crit_edge:                    ; preds = %bb.ab
  %i.fi = add nsw i32 %.sroa.0.0.copyload.i, 1    ; 2 uses
  %i.fj = add nsw i32 %i.fg, %i.fi
  %.pre29 = sext i32 %i.fi to i64
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %..lr.ph.preheader.i_crit_edge, %.thread.i15
  %.pre-phi = phi i64 [ %.pre29, %..lr.ph.preheader.i_crit_edge ], [ %i.ez, %.thread.i15 ]
  %i.fk = phi i32 [ %i.fj, %..lr.ph.preheader.i_crit_edge ], [ %i.fe, %.thread.i15 ] ; 3 uses
  %i.fl = sext i32 %i.fk to i64
  br label %.lr.ph.i

bb.ac:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fm = icmp slt i64 %indvars.iv.next.i, %i.fl
  br i1 %i.fm, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !75

.lr.ph.i:                                         ; preds = %bb.ac, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %.pre-phi, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ac ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.i ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %.sroa.3.0.copyload.i = load i16, ptr %.sroa.3.0..sroa_idx.i, align 4
  %.not.i = icmp ugt i16 %.sroa.3.0.copyload.i, %i.bk
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 6
  %.sroa.42.0.copyload.i = load i16, ptr %.sroa.42.0..sroa_idx.i, align 2
  %.not21.i = icmp ult i16 %.sroa.42.0.copyload.i, %i.bk
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not21.i
  br i1 %or.cond.i, label %bb.ac, label %.thread50.i

.thread50.i:                                      ; preds = %.lr.ph.i
  %i.fo = load ptr, ptr %i.q, align 8             ; 3 uses
  %i.fp = load i32, ptr %i.r, align 4             ; 3 uses
  %i.fq = load i32, ptr %i.s, align 8             ; 3 uses
  %i.fr = icmp slt i32 %i.fp, %i.fq
  br i1 %i.fr, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.thread50.i
  %i.fs = load ptr, ptr %i.p, align 8
  %i.ft = add nsw i32 %i.fp, 1
  store i32 %i.ft, ptr %i.r, align 4
  %i.fu = sext i32 %i.fp to i64
  %i.fv = getelementptr inbounds [56 x i8], ptr %i.fs, i64 %i.fu ; 3 uses
  store i32 %i.fk, ptr %i.fv, align 8
  %.sroa.12.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.12.0..sroa_idx30.i, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.12.i, i64 44, i1 false)
  %.sroa.1231.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  store i32 0, ptr %.sroa.1231.0..sroa_idx36.i, align 8
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i

bb.ae:                                            ; preds = %.thread50.i
  %i.fw = shl nsw i32 %i.fq, 1
  %i.fx = or disjoint i32 %i.fw, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.4.i, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.12.0..sroa_idx.i, i64 44, i1 false)
  %i.fy = icmp sgt i32 %i.fq, -1
  br i1 %i.fy, label %bb.ag, label %bb.af, !prof !11

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.fz = zext nneg i32 %i.fx to i64
  %i.ga = mul nuw nsw i64 %i.fz, 56               ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.gc = load i64, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 3 uses
  %i.ge = load i64, ptr %i.gd, align 8            ; 2 uses
  %i.gf = sub i64 %i.gc, %i.ge
  %i.gg = icmp ugt i64 %i.ga, %i.gf
  br i1 %i.gg, label %bb.ah, label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i, !prof !12

bb.ah:                                            ; preds = %bb.ag
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.fo, i64 noundef %i.ga) #8
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.gd, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %i.gh = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.ah ], [ %i.ge, %bb.ag ] ; 2 uses
  %i.gi = inttoptr i64 %i.gh to ptr               ; 3 uses
  %i.gj = add i64 %i.gh, %i.ga
  store i64 %i.gj, ptr %i.gd, align 8
  %i.gk = load i32, ptr %i.r, align 4             ; 3 uses
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %bb.ai, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i

bb.ai:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i
  %i.gm = load ptr, ptr %i.p, align 8
  %i.gn = zext nneg i32 %i.gk to i64
  %i.go = mul nuw nsw i64 %i.gn, 56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gi, ptr align 1 %i.gm, i64 %i.go, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.r, align 4
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i: ; preds = %bb.ai, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i
  %i.gp = phi i32 [ %i.gk, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i ], [ %.pre.i.i.i.i, %bb.ai ] ; 2 uses
  store ptr %i.gi, ptr %i.p, align 8
  store i32 %i.fx, ptr %i.s, align 8
  %i.gq = add nsw i32 %i.gp, 1
  store i32 %i.gq, ptr %i.r, align 4
  %i.gr = sext i32 %i.gp to i64
  %i.gs = getelementptr inbounds [56 x i8], ptr %i.gi, i64 %i.gr ; 3 uses
  store i32 %i.fk, ptr %i.gs, align 8
  %.sroa.4.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4.0..sroa_idx.i16, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.4.i, i64 44, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i

._crit_edge.i:                                    ; preds = %bb.ac, %bb.ab
  %.sroa.4.sroa.4.0..sroa.12.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.sroa.4.sroa.4.0.copyload = load ptr, ptr %.sroa.4.sroa.4.0..sroa.12.0..sroa_idx.i.sroa_idx, align 8 ; 3 uses
  %.sroa.4.sroa.5.0..sroa.12.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %.sroa.4.sroa.5.0.copyload = load ptr, ptr %.sroa.4.sroa.5.0..sroa.12.0..sroa_idx.i.sroa_idx, align 8 ; 3 uses
  %.sroa.4.sroa.6.0..sroa.12.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %.sroa.4.sroa.6.0.copyload = load ptr, ptr %.sroa.4.sroa.6.0..sroa.12.0..sroa_idx.i.sroa_idx, align 8 ; 3 uses
  %.sroa.4.sroa.7.0..sroa.12.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %.sroa.4.sroa.7.0.copyload = load ptr, ptr %.sroa.4.sroa.7.0..sroa.12.0..sroa_idx.i.sroa_idx, align 8 ; 3 uses
  %.sroa.4.sroa.8.0..sroa.12.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %.sroa.4.sroa.8.0.copyload = load ptr, ptr %.sroa.4.sroa.8.0..sroa.12.0..sroa_idx.i.sroa_idx, align 8 ; 3 uses
  %i.gt = load i32, ptr %i.t, align 8             ; 2 uses
  %i.gu = sext i32 %i.gt to i64                   ; 2 uses
  %i.gv = icmp ult i32 %i.gt, 4
  br i1 %i.gv, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i
  %i.gw = load ptr, ptr %i.u, align 8             ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load i64, ptr %i.gx, align 8
  %.not7.i.i.i = icmp ugt i64 %i.gy, %i.gu
  br i1 %.not7.i.i.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.4.0.copyload, i64 8
  store i64 %i.gu, ptr %i.gz, align 8
  %i.ha = load ptr, ptr %i.u, align 8
  store ptr %i.ha, ptr %.sroa.4.sroa.4.0.copyload, align 8
  store ptr %.sroa.4.sroa.4.0.copyload, ptr %i.u, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i: ; preds = %bb.al, %bb.ak, %._crit_edge.i
  %i.hb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1611), align 1, !range !9, !noundef !10
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.am, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i

bb.am:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i
  %i.hd = load i32, ptr %i.v, align 4             ; 2 uses
  %i.he = sext i32 %i.hd to i64                   ; 2 uses
  %i.hf = icmp ult i32 %i.hd, 2
  br i1 %i.hf, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hg = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i1.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load i64, ptr %i.hh, align 8
  %.not7.i.i2.i = icmp ugt i64 %i.hi, %i.he
  br i1 %.not7.i.i2.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.6.0.copyload, i64 8
  store i64 %i.he, ptr %i.hj, align 8
  %i.hk = load ptr, ptr %i.w, align 8
  store ptr %i.hk, ptr %.sroa.4.sroa.6.0.copyload, align 8
  store ptr %.sroa.4.sroa.6.0.copyload, ptr %i.w, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i: ; preds = %bb.ap, %bb.ao, %bb.am
  %i.hl = load i32, ptr %i.t, align 8             ; 2 uses
  %i.hm = sext i32 %i.hl to i64                   ; 2 uses
  %i.hn = icmp ult i32 %i.hl, 2
  br i1 %i.hn, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i
  %i.ho = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not.i.i3.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i3.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load i64, ptr %i.hp, align 8
  %.not7.i.i4.i = icmp ugt i64 %i.hq, %i.hm
  br i1 %.not7.i.i4.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.7.0.copyload, i64 8
  store i64 %i.hm, ptr %i.hr, align 8
  %i.hs = load ptr, ptr %i.x, align 8
  store ptr %i.hs, ptr %.sroa.4.sroa.7.0.copyload, align 8
  store ptr %.sroa.4.sroa.7.0.copyload, ptr %i.x, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i: ; preds = %bb.as, %bb.ar, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeQuantifierClockArrayEPm.exit.i
  %i.ht = load i8, ptr %i.y, align 8, !range !9, !noundef !10
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i
  %i.hv = load ptr, ptr %i.z, align 8
  %i.hw = load ptr, ptr %i.aa, align 8
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = ashr exact i64 %i.hz, 5                 ; 5 uses
  %i.ib = and i64 %i.ia, 2305843009213693950
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.id = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i5.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load i64, ptr %i.ie, align 8
  %.not7.i.i6.i = icmp ugt i64 %i.if, %i.ia
  br i1 %.not7.i.i6.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.8.0.copyload, i64 8
  store i64 %i.ia, ptr %i.ig, align 8
  %i.ih = load ptr, ptr %i.ab, align 8
  store ptr %i.ih, ptr %.sroa.4.sroa.8.0.copyload, align 8
  store ptr %.sroa.4.sroa.8.0.copyload, ptr %i.ab, align 8
  %.pre.i = load ptr, ptr %i.z, align 8
  %.pre9.i = load ptr, ptr %i.aa, align 8
  %.pre10.i = ptrtoint ptr %.pre.i to i64
  %.pre11.i = ptrtoint ptr %.pre9.i to i64
  %.pre13.i = sub i64 %.pre10.i, %.pre11.i
  %.pre15.i = ashr exact i64 %.pre13.i, 5
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i: ; preds = %bb.aw, %bb.av, %bb.at
  %.pre-phi16.i = phi i64 [ %i.ia, %bb.at ], [ %i.ia, %bb.av ], [ %.pre15.i, %bb.aw ] ; 3 uses
  %i.ii = and i64 %.pre-phi16.i, 4611686018427387900
  %i.ij = icmp eq i64 %i.ii, 0
  br i1 %i.ij, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i
  %i.ik = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.i7.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load i64, ptr %i.il, align 8
  %.not7.i.i8.i = icmp ugt i64 %i.im, %.pre-phi16.i
  br i1 %.not7.i.i8.i, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.5.0.copyload, i64 8
  store i64 %.pre-phi16.i, ptr %i.in, align 8
  %i.io = load ptr, ptr %i.ac, align 8
  store ptr %i.io, ptr %.sroa.4.sroa.5.0.copyload, align 8
  store ptr %.sroa.4.sroa.5.0.copyload, ptr %i.ac, align 8
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i: ; preds = %bb.az, %bb.ay, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE24FreeLookaroundClockArrayEPm.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE21FreeCaptureClockArrayEPm.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE17FreeRegisterArrayEPi.exit.i, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  %i.ip = icmp sgt i64 %indvars.iv63.i, 1
  br i1 %i.ip, label %bb.aa, label %.loopexit, !llvm.loop !76

.loopexit:                                        ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, %bb.z
  store i32 0, ptr %i.e, align 4
  call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16RunActiveThreadsEv(ptr noundef nonnull align 8 dereferenceable(424) %0)
  br label %bb.b

.critedge:                                        ; preds = %bb.j, %bb.c, %_ZNK2v84base6VectorIKhE6lengthEv.exit, %bb.f, %_ZNK2v84base6VectorIKhE6lengthEv.exit14, %.thread24
  %.4 = phi i32 [ %.3.i.ph, %.thread24 ], [ 1, %_ZNK2v84base6VectorIKhE6lengthEv.exit14 ], [ 1, %bb.f ], [ 1, %_ZNK2v84base6VectorIKhE6lengthEv.exit ], [ 1, %bb.c ], [ 1, %bb.j ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterIhE16RunActiveThreadsEv(ptr nofree noundef nonnull align 8 dereferenceable(424) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned char>::InterpreterThread", align 8 ; 25 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 11 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE6RemoveEi.exit.lr.ph

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterIhE17InterpreterThreadEE6RemoveEi.exit.lr.ph: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 6 uses
  %.sroa.1136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.1.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE14NewEmptyThreadEi:bb.a
bb.aa:                                            ; preds = %bb.z
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.co, i64 noundef %i.cq) #8
  %.pre.i.i.i.i.i.i31 = load i64, ptr %i.ct, align 8
  br label %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i28

_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i28: ; preds = %bb.aa, %bb.z
  %i.cx = phi i64 [ %.pre.i.i.i.i.i.i31, %bb.aa ], [ %i.cu, %bb.z ] ; 2 uses
  %i.cy = inttoptr i64 %i.cx to ptr
  %i.cz = add i64 %i.cx, %i.cq
  store i64 %i.cz, ptr %i.ct, align 8
  %.pre.i29 = load i32, ptr %i.d, align 8         ; 2 uses
  %.pre5.i30 = sext i32 %.pre.i29 to i64
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE33NewCaptureClockArrayUninitializedEv.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE33NewCaptureClockArrayUninitializedEv.exit.i: ; preds = %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i28, %bb.w
  %.pre-phi.i23 = phi i64 [ %i.ci, %bb.w ], [ %.pre5.i30, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i28 ]
  %i.da = phi i32 [ %i.ch, %bb.w ], [ %.pre.i29, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i28 ]
  %.0.i.i.i24 = phi ptr [ %i.ck, %bb.w ], [ %i.cy, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i28 ] ; 2 uses
  %.not5.i.i.i.i25 = icmp eq i32 %i.da, 0
  br i1 %.not5.i.i.i.i25, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE20NewCaptureClockArrayEm.exit, label %.lr.ph.i.i.i.preheader.i26

.lr.ph.i.i.i.preheader.i26:                       ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE33NewCaptureClockArrayUninitializedEv.exit.i
  %.idx.i27 = shl nsw i64 %.pre-phi.i23, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %.0.i.i.i24, i8 0, i64 %.idx.i27, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE20NewCaptureClockArrayEm.exit

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE20NewCaptureClockArrayEm.exit: ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE33NewCaptureClockArrayUninitializedEv.exit.i, %.lr.ph.i.i.i.preheader.i26
  %i.db = load i8, ptr %i.aa, align 8, !range !9, !noundef !10
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE23NewLookaroundClockArrayEm.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE20NewCaptureClockArrayEm.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8            ; 2 uses
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 3 uses
  %i.dl = ashr exact i64 %i.dk, 5                 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8            ; 4 uses
  %.not.i.i.i32 = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i32, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i64, ptr %i.do, align 8
  %.not5.i.i.i33 = icmp ult i64 %i.dp, %i.dl
  br i1 %.not5.i.i.i33, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = load ptr, ptr %i.dn, align 8
  store ptr %i.dq, ptr %i.dm, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE36NewLookaroundClockArrayUninitializedEv.exit.i

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.dr = load ptr, ptr %i.dd, align 8            ; 3 uses
  %i.ds = icmp ult i64 %i.dl, 2305843009213693951
  br i1 %i.ds, label %bb.ag, label %bb.af, !prof !11

bb.af:                                            ; preds = %bb.ae
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.dt = ashr exact i64 %i.dk, 2                 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 16 ; 3 uses
  %i.dx = load i64, ptr %i.dw, align 8            ; 2 uses
  %i.dy = sub i64 %i.dv, %i.dx
  %i.dz = icmp ugt i64 %i.dt, %i.dy
  br i1 %i.dz, label %bb.ah, label %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i38, !prof !12

bb.ah:                                            ; preds = %bb.ag
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.dr, i64 noundef %i.dt) #8
  %.pre.i.i.i.i.i.i44 = load i64, ptr %i.dw, align 8
  br label %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i38

_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i38: ; preds = %bb.ah, %bb.ag
  %i.ea = phi i64 [ %.pre.i.i.i.i.i.i44, %bb.ah ], [ %i.dx, %bb.ag ] ; 2 uses
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = add i64 %i.ea, %i.dt
  store i64 %i.ec, ptr %i.dw, align 8
  %.pre.i39 = load ptr, ptr %i.de, align 8        ; 2 uses
  %.pre5.i40 = load ptr, ptr %i.dg, align 8       ; 2 uses
  %.pre6.i41 = ptrtoint ptr %.pre.i39 to i64
  %.pre7.i42 = ptrtoint ptr %.pre5.i40 to i64
  %.pre9.i43 = sub i64 %.pre6.i41, %.pre7.i42
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE36NewLookaroundClockArrayUninitializedEv.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE36NewLookaroundClockArrayUninitializedEv.exit.i: ; preds = %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i38, %bb.ad
  %.pre-phi10.i34 = phi i64 [ %i.dk, %bb.ad ], [ %.pre9.i43, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i38 ]
  %i.ed = phi ptr [ %i.dh, %bb.ad ], [ %.pre5.i40, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i38 ]
  %i.ee = phi ptr [ %i.df, %bb.ad ], [ %.pre.i39, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i38 ]
  %.0.i.i.i35 = phi ptr [ %i.dn, %bb.ad ], [ %i.eb, %_ZN2v88internal13ZoneAllocatorImE8allocateEm.exit.i.i.i38 ] ; 3 uses
  %.not5.i.i.i.i36 = icmp eq ptr %i.ee, %i.ed
  br i1 %.not5.i.i.i.i36, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE23NewLookaroundClockArrayEm.exit, label %.lr.ph.i.i.i.preheader.i37

.lr.ph.i.i.i.preheader.i37:                       ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE36NewLookaroundClockArrayUninitializedEv.exit.i
  %i.ef = ashr exact i64 %.pre-phi10.i34, 2
  %i.eg = and i64 %i.ef, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %.0.i.i.i35, i8 0, i64 %i.eg, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE23NewLookaroundClockArrayEm.exit

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE23NewLookaroundClockArrayEm.exit: ; preds = %.lr.ph.i.i.i.preheader.i37, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE36NewLookaroundClockArrayUninitializedEv.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE20NewCaptureClockArrayEm.exit
  %i.eh = phi ptr [ null, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE20NewCaptureClockArrayEm.exit ], [ %.0.i.i.i35, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE36NewLookaroundClockArrayUninitializedEv.exit.i ], [ %.0.i.i.i35, %.lr.ph.i.i.i.preheader.i37 ]
  store i32 %2, ptr %0, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i, ptr %i.ei, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bj, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.0.i.i.i14, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i.i.i24, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.eh, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.en, align 8
  br label %bb.ap

bb.ai:                                            ; preds = %bb.a
  br i1 %.not.i.i.i, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eo = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ep = load i64, ptr %i.eo, align 8
  %.not5.i.i.i46 = icmp ult i64 %i.ep, %i.f
  br i1 %.not5.i.i.i46, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eq = load ptr, ptr %i.h, align 8
  store ptr %i.eq, ptr %i.g, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE29NewRegisterArrayUninitializedEv.exit.i47

bb.al:                                            ; preds = %bb.aj, %bb.ai
  %i.er = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.es = icmp sgt i32 %i.e, -1
  br i1 %i.es, label %bb.an, label %bb.am, !prof !11

bb.am:                                            ; preds = %bb.al
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.et = shl nuw nsw i64 %i.f, 2
  %i.eu = add nuw nsw i64 %i.et, 4
  %i.ev = and i64 %i.eu, 17179869176              ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.ex = load i64, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 3 uses
  %i.ez = load i64, ptr %i.ey, align 8            ; 2 uses
  %i.fa = sub i64 %i.ex, %i.ez
  %i.fb = icmp ugt i64 %i.ev, %i.fa
  br i1 %i.fb, label %bb.ao, label %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i53, !prof !12

bb.ao:                                            ; preds = %bb.an
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.er, i64 noundef %i.ev) #8
  %.pre.i.i.i.i.i.i56 = load i64, ptr %i.ey, align 8
  br label %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i53

_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i53: ; preds = %bb.ao, %bb.an
  %i.fc = phi i64 [ %.pre.i.i.i.i.i.i56, %bb.ao ], [ %i.ez, %bb.an ] ; 2 uses
  %i.fd = inttoptr i64 %i.fc to ptr
  %i.fe = add i64 %i.fc, %i.ev
  store i64 %i.fe, ptr %i.ey, align 8
  %.pre.i54 = load i32, ptr %i.d, align 8         ; 2 uses
  %.pre5.i55 = sext i32 %.pre.i54 to i64
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE29NewRegisterArrayUninitializedEv.exit.i47

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE29NewRegisterArrayUninitializedEv.exit.i47: ; preds = %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i53, %bb.ak
  %.pre-phi.i48 = phi i64 [ %i.f, %bb.ak ], [ %.pre5.i55, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i53 ]
  %i.ff = phi i32 [ %i.e, %bb.ak ], [ %.pre.i54, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i53 ]
  %.0.i.i.i49 = phi ptr [ %i.h, %bb.ak ], [ %i.fd, %_ZN2v88internal13ZoneAllocatorIiE8allocateEm.exit.i.i.i53 ] ; 2 uses
  %.not5.i.i.i.i50 = icmp eq i32 %i.ff, 0
  br i1 %.not5.i.i.i.i50, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16NewRegisterArrayEi.exit57, label %.lr.ph.i.i.i.preheader.i51

.lr.ph.i.i.i.preheader.i51:                       ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE29NewRegisterArrayUninitializedEv.exit.i47
  %.idx.i52 = shl nsw i64 %.pre-phi.i48, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %.0.i.i.i49, i8 -1, i64 %.idx.i52, i1 false)
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16NewRegisterArrayEi.exit57

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16NewRegisterArrayEi.exit57: ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE29NewRegisterArrayUninitializedEv.exit.i47, %.lr.ph.i.i.i.preheader.i51
  store i32 %2, ptr %0, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i49, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.fh, i8 0, i64 36, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16NewRegisterArrayEi.exit57, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE23NewLookaroundClockArrayEm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21RunActiveThreadsToEndEv(ptr noundef nonnull align 8 dereferenceable(424) %0) unnamed_addr #0 align 2 {
bb.a:
  %.sroa.4.i = alloca <{ [4 x i8], ptr, ptr, ptr, ptr, ptr }>, align 8 ; 4 uses
  %.sroa.12.i = alloca <{ [4 x i8], ptr, ptr, ptr, ptr, ptr }>, align 8 ; 4 uses
  %1 = alloca %"class.v8::internal::StackLimitCheck", align 8 ; 8 uses
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16RunActiveThreadsEv(ptr noundef nonnull align 8 dereferenceable(424) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 393 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.loopexit, %bb.a
  %i.ad = load i8, ptr %i.a, align 1, !range !9, !noundef !10 ; 3 uses
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = load i32, ptr %i.b, align 8             ; 4 uses
  br i1 %i.ae, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %i.c, align 8             ; 2 uses
  %i.ai = icmp ult i64 %i.ah, 2147483648
  br i1 %i.ai, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.d
  %i.aj = trunc nuw nsw i64 %i.ah to i32
  %.not = icmp samesign ugt i32 %i.af, %i.aj
  br i1 %.not, label %.critedge, label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.ak = icmp sgt i32 %i.af, -1
  br i1 %i.ak, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.al = load i64, ptr %i.c, align 8             ; 2 uses
  %i.am = icmp ult i64 %i.al, 2147483648
  br i1 %i.am, label %_ZNK2v84base6VectorIKtE6lengthEv.exit14, label %bb.h, !prof !11

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #9
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit14:          ; preds = %bb.g
  %i.an = trunc nuw nsw i64 %i.al to i32
  %i.ao = icmp samesign ult i32 %i.af, %i.an
  br i1 %i.ao, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit14, %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %.val = load i8, ptr %i.d, align 8, !range !9, !noundef !10
  %i.ap = trunc nuw i8 %.val to i1
  br i1 %i.ap, label %bb.j, label %.critedge13

bb.j:                                             ; preds = %bb.i
  %i.aq = load i32, ptr %i.e, align 4
  %.not27 = icmp eq i32 %i.aq, 0
  br i1 %.not27, label %.critedge, label %.critedge13

.critedge13:                                      ; preds = %bb.i, %bb.j
  %i.ar = load i8, ptr %i.f, align 8, !range !9, !noundef !10
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.k, label %_ZSt4fillIPbbEvT_S1_RKT0_.exit

bb.k:                                             ; preds = %.critedge13
  %i.at = load i32, ptr %i.g, align 4             ; 2 uses
  %.not5.i.i.i = icmp eq i32 %i.at, 0
  br i1 %.not5.i.i.i, label %_ZSt4fillIPbbEvT_S1_RKT0_.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.k
  %i.au = sext i32 %i.at to i64
  %i.av = load ptr, ptr %i.h, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %i.av, i8 0, i64 %i.au, i1 false)
  %.pre = load i8, ptr %i.a, align 1, !range !9
  br label %_ZSt4fillIPbbEvT_S1_RKT0_.exit

_ZSt4fillIPbbEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.preheader.i.i.i, %bb.k, %.critedge13
  %i.aw = phi i8 [ %.pre, %.lr.ph.preheader.i.i.i ], [ %i.ad, %bb.k ], [ %i.ad, %.critedge13 ]
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = load i32, ptr %i.b, align 8             ; 3 uses
  br i1 %i.ax, label %.thread, label %bb.l

.thread:                                          ; preds = %_ZSt4fillIPbbEvT_S1_RKT0_.exit
  %i.az = add nsw i32 %i.ay, -1                   ; 3 uses
  store i32 %i.az, ptr %i.b, align 8
  %i.ba = sext i32 %i.az to i64
  %i.bb = load ptr, ptr %i.i, align 8
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = load i16, ptr %i.bc, align 2
  br label %bb.m

bb.l:                                             ; preds = %_ZSt4fillIPbbEvT_S1_RKT0_.exit
  %i.be = sext i32 %i.ay to i64
  %i.bf = load ptr, ptr %i.i, align 8
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.be
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = add nsw i32 %i.ay, 1                    ; 2 uses
  store i32 %i.bi, ptr %i.b, align 8
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.l
  %i.bj = phi i32 [ %i.az, %.thread ], [ %i.bi, %bb.l ]
  %i.bk = phi i16 [ %i.bd, %.thread ], [ %i.bh, %bb.l ] ; 2 uses
  %i.bl = and i32 %i.bj, 63
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.n, label %bb.z

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.bn = load ptr, ptr %0, align 8               ; 7 uses
  store ptr %i.bn, ptr %1, align 8
  %i.bo = load i32, ptr %i.j, align 8
  %i.bp = icmp eq i32 %i.bo, 1
  br i1 %i.bp, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bq = call noundef zeroext i1 @_ZNK2v88internal15StackLimitCheck15JsHasOverflowedEm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #8
  br i1 %i.bq, label %.thread24, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = load ptr, ptr %1, align 8
  %i.bs = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bu = load atomic volatile i64, ptr %i.bt monotonic, align 8
  %i.bv = icmp ult i64 %i.bs, %i.bu
  br i1 %i.bv, label %.thread24, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16HandleInterruptsEv.exit

bb.q:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 560 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 568 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 576 ; 4 uses
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 8
  %.sroa.014.0.copyload.i = load i64, ptr %i.k, align 8
  %i.cd = load ptr, ptr %0, align 8               ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 560 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 568
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = icmp eq ptr %i.cf, %i.ch
  br i1 %i.ci, label %bb.r, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i, !prof !12

bb.r:                                             ; preds = %bb.q
  %i.cj = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.cd) #8
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i: ; preds = %bb.r, %bb.q
  %.0.i.i = phi ptr [ %i.cj, %bb.r ], [ %i.cf, %bb.q ] ; 3 uses
  %i.ck = ptrtoint ptr %.0.i.i to i64
  %i.cl = add i64 %i.ck, 8
  %i.cm = inttoptr i64 %i.cl to ptr
  store ptr %i.cm, ptr %i.ce, align 8
  store i64 %.sroa.014.0.copyload.i, ptr %.0.i.i, align 8
  %.sroa.013.0.copyload.i = load i64, ptr %i.l, align 8
  %i.cn = load ptr, ptr %0, align 8               ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 560 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 568
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = icmp eq ptr %i.cp, %i.cr
  br i1 %i.cs, label %bb.s, label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !12

bb.s:                                             ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i
  %i.ct = call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.cn) #8
  br label %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.s, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i
  %.0.i.i.i = phi ptr [ %i.ct, %bb.s ], [ %i.cp, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i ] ; 4 uses
  %i.cu = ptrtoint ptr %.0.i.i.i to i64
  %i.cv = add i64 %i.cu, 8
  %i.cw = inttoptr i64 %i.cv to ptr
  store ptr %i.cw, ptr %i.co, align 8
  store i64 %.sroa.013.0.copyload.i, ptr %.0.i.i.i, align 8
  %i.cx = call noundef zeroext i1 @_ZNK2v88internal15StackLimitCheck15JsHasOverflowedEm(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #8
  br i1 %i.cx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.cy = load ptr, ptr %0, align 8
  %i.cz = call i64 @_ZN2v88internal7Isolate13StackOverflowEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.cy) #8 ; 0 uses
  br label %.thread.i

bb.u:                                             ; preds = %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.da = load ptr, ptr %1, align 8
  %i.db = call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dd = load atomic volatile i64, ptr %i.dc monotonic, align 8
  %i.de = icmp ult i64 %i.db, %i.dd
  br i1 %i.de, label %.preheader52.i, label %.thread.i

.preheader52.i:                                   ; preds = %bb.u, %bb.v
  %.sroa.04.0.i.in.i = phi ptr [ %i.dm, %bb.v ], [ %i.l, %bb.u ]
  %.sroa.04.0.i.i = load i64, ptr %.sroa.04.0.i.in.i, align 8
  %i.df = add i64 %.sroa.04.0.i.i, -1
  %i.dg = inttoptr i64 %i.df to ptr               ; 2 uses
  %i.dh = load atomic volatile i64, ptr %i.dg monotonic, align 8
  %i.di = add i64 %i.dh, 11
  %i.dj = inttoptr i64 %i.di to ptr
  %i.dk = load atomic volatile i16, ptr %i.dj monotonic, align 2
  %i.dl = and i16 %i.dk, 9
  switch i16 %i.dl, label %bb.v [
    i16 8, label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i.loopexit
    i16 0, label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i
  ]

bb.v:                                             ; preds = %.preheader52.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  br label %.preheader52.i

_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i.loopexit: ; preds = %.preheader52.i
  br label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i: ; preds = %.preheader52.i, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i.loopexit
  %.1.ph.i.i = phi i1 [ true, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i.loopexit ], [ false, %.preheader52.i ] ; 2 uses
  %i.dn = load ptr, ptr %0, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = call i64 @_ZN2v88internal10StackGuard16HandleInterruptsENS1_14InterruptLevelE(ptr noundef nonnull align 8 dereferenceable(64) %i.do, i32 noundef 2) #8
  %i.dq = load ptr, ptr %0, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 912
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = icmp eq i64 %i.dp, %i.ds
  br i1 %i.dt, label %bb.x, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i, %bb.w
  %.sroa.04.0.i21.in.i = phi ptr [ %i.eb, %bb.w ], [ %.0.i.i.i, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i ]
  %.sroa.04.0.i21.i = load i64, ptr %.sroa.04.0.i21.in.i, align 8
  %i.du = add i64 %.sroa.04.0.i21.i, -1
  %i.dv = inttoptr i64 %i.du to ptr               ; 2 uses
  %i.dw = load atomic volatile i64, ptr %i.dv monotonic, align 8
  %i.dx = add i64 %i.dw, 11
  %i.dy = inttoptr i64 %i.dx to ptr
  %i.dz = load atomic volatile i16, ptr %i.dy monotonic, align 2
  %i.ea = and i16 %i.dz, 9
  switch i16 %i.ea, label %bb.w [
    i16 8, label %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24.i
    i16 0, label %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24_crit_edge.i
  ]

._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24_crit_edge.i: ; preds = %.preheader.i
  br i1 %.1.ph.i.i, label %bb.x, label %.thread56.i

bb.w:                                             ; preds = %.preheader.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  br label %.preheader.i

_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24.i: ; preds = %.preheader.i
  br i1 %.1.ph.i.i, label %.thread56.i, label %bb.x

bb.x:                                             ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24.i, %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24_crit_edge.i, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i
  %.2.i = phi i32 [ -2, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24.i ], [ -2, %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24_crit_edge.i ], [ -1, %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit.i ] ; 2 uses
  %i.ec = icmp eq ptr %i.bn, null
  br i1 %i.ec, label %.thread24, label %.thread.i, !prof !16

.thread56.i:                                      ; preds = %_ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24.i, %._ZN2v88internal6String33IsOneByteRepresentationUnderneathENS0_6TaggedIS1_EE.exit24_crit_edge.i
  %i.ed = load i64, ptr %.0.i.i, align 8          ; 2 uses
  store i64 %i.ed, ptr %i.k, align 8
  %i.ee = add i64 %i.ed, -1
  %i.ef = inttoptr i64 %i.ee to ptr               ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = lshr i64 %i.ei, 32
  %i.ek = trunc nuw i64 %i.ej to i32
  %i.el = ashr i32 %i.ek, 3
  %i.em = sext i32 %i.el to i64
  store ptr %i.eg, ptr %i.n, align 8
  store i64 %i.em, ptr %.sroa.46.0..sroa_idx.i, align 8
  %i.en = load i64, ptr %.0.i.i.i, align 8        ; 2 uses
  store i64 %i.en, ptr %i.l, align 8
  %i.eo = call fastcc { ptr, i64 } @_ZN2v88internal12_GLOBAL__N_117ToCharacterVectorItEENS_4base6VectorIKT_EENS0_6TaggedINS0_6StringEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSC_2EEEE(i64 %i.en, ptr noundef nonnull align 1 dereferenceable(1) %i.m) ; 2 uses
  %i.ep = extractvalue { ptr, i64 } %i.eo, 0
  %i.eq = extractvalue { ptr, i64 } %i.eo, 1
  store ptr %i.ep, ptr %i.i, align 8
  store i64 %i.eq, ptr %i.c, align 8
  %i.er = icmp eq ptr %i.bn, null
  br i1 %i.er, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16HandleInterruptsEv.exit, label %.thread.i, !prof !16

.thread.i:                                        ; preds = %.thread56.i, %bb.x, %bb.u, %bb.t
  %.250.i = phi i32 [ %.2.i, %bb.x ], [ undef, %bb.u ], [ -1, %bb.t ], [ undef, %.thread56.i ]
  %cond48.i = phi i1 [ false, %bb.x ], [ true, %bb.u ], [ false, %bb.t ], [ true, %.thread56.i ]
  store ptr %i.bx, ptr %i.bw, align 8
  %i.es = load i32, ptr %i.ca, align 8
  %i.et = add nsw i32 %i.es, -1
  store i32 %i.et, ptr %i.ca, align 8
  %i.eu = load ptr, ptr %i.by, align 8
  %.not.i.i = icmp eq ptr %i.eu, %i.bz
  br i1 %.not.i.i, label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, label %bb.y, !prof !11

bb.y:                                             ; preds = %.thread.i
  store ptr %i.bz, ptr %i.by, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.bn) #8
  br label %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i

_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i: ; preds = %bb.y, %.thread.i
  br i1 %cond48.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16HandleInterruptsEv.exit, label %.thread24

.thread24:                                        ; preds = %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i, %bb.o, %bb.p, %bb.x
  %.3.i.ph = phi i32 [ %.2.i, %bb.x ], [ -2, %bb.p ], [ -1, %bb.o ], [ %.250.i, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %.critedge

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16HandleInterruptsEv.exit: ; preds = %bb.p, %.thread56.i, %_ZN2v88internal11HandleScope10CloseScopeEPNS0_7IsolateEPmS4_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.z

bb.z:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16HandleInterruptsEv.exit, %bb.m
  %i.ev = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %.lr.ph60.i, label %.loopexit

.lr.ph60.i:                                       ; preds = %bb.z
  %i.ex = zext nneg i32 %i.ev to i64
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, %.lr.ph60.i
  %indvars.iv63.i = phi i64 [ %i.ex, %.lr.ph60.i ], [ %indvars.iv.next64.i, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i ] ; 2 uses
  %indvars.iv.next64.i = add nsw i64 %indvars.iv63.i, -1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.i)
  %.val.i = load ptr, ptr %i.o, align 8
  %i.ey = getelementptr inbounds nuw [56 x i8], ptr %.val.i, i64 %indvars.iv.next64.i ; 7 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.ey, align 8 ; 3 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.12.i, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.12.0..sroa_idx.i, i64 44, i1 false)
  %i.ez = sext i32 %.sroa.0.0.copyload.i to i64   ; 2 uses
  %i.fa = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ez ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4
  %i.fd = icmp eq i32 %i.fc, 4
  br i1 %i.fd, label %bb.ab, label %.thread.i15

.thread.i15:                                      ; preds = %bb.aa
  %i.fe = add nsw i32 %.sroa.0.0.copyload.i, 1
  br label %.lr.ph.preheader.i

bb.ab:                                            ; preds = %bb.aa
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fg = load i32, ptr %i.ff, align 4            ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %..lr.ph.preheader.i_crit_edge, label %._crit_edge.i

..lr.ph.preheader.i_crit_edge:                    ; preds = %bb.ab
  %i.fi = add nsw i32 %.sroa.0.0.copyload.i, 1    ; 2 uses
  %i.fj = add nsw i32 %i.fg, %i.fi
  %.pre29 = sext i32 %i.fi to i64
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %..lr.ph.preheader.i_crit_edge, %.thread.i15
  %.pre-phi = phi i64 [ %.pre29, %..lr.ph.preheader.i_crit_edge ], [ %i.ez, %.thread.i15 ]
  %i.fk = phi i32 [ %i.fj, %..lr.ph.preheader.i_crit_edge ], [ %i.fe, %.thread.i15 ] ; 3 uses
  %i.fl = sext i32 %i.fk to i64
  br label %.lr.ph.i

bb.ac:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fm = icmp slt i64 %indvars.iv.next.i, %i.fl
  br i1 %i.fm, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !126

.lr.ph.i:                                         ; preds = %bb.ac, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %.pre-phi, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.ac ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %indvars.iv.i ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %.sroa.3.0.copyload.i = load i16, ptr %.sroa.3.0..sroa_idx.i, align 4
  %.not.i = icmp ult i16 %i.bk, %.sroa.3.0.copyload.i
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fn, i64 6
  %.sroa.42.0.copyload.i = load i16, ptr %.sroa.42.0..sroa_idx.i, align 2
  %.not21.i = icmp ugt i16 %i.bk, %.sroa.42.0.copyload.i
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not21.i
  br i1 %or.cond.i, label %bb.ac, label %.thread50.i

.thread50.i:                                      ; preds = %.lr.ph.i
  %i.fo = load ptr, ptr %i.q, align 8             ; 3 uses
  %i.fp = load i32, ptr %i.r, align 4             ; 3 uses
  %i.fq = load i32, ptr %i.s, align 8             ; 3 uses
  %i.fr = icmp slt i32 %i.fp, %i.fq
  br i1 %i.fr, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.thread50.i
  %i.fs = load ptr, ptr %i.p, align 8
  %i.ft = add nsw i32 %i.fp, 1
  store i32 %i.ft, ptr %i.r, align 4
  %i.fu = sext i32 %i.fp to i64
  %i.fv = getelementptr inbounds [56 x i8], ptr %i.fs, i64 %i.fu ; 3 uses
  store i32 %i.fk, ptr %i.fv, align 8
  %.sroa.12.0..sroa_idx30.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.12.0..sroa_idx30.i, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.12.i, i64 44, i1 false)
  %.sroa.1231.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  store i32 0, ptr %.sroa.1231.0..sroa_idx36.i, align 8
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i

bb.ae:                                            ; preds = %.thread50.i
  %i.fw = shl nsw i32 %i.fq, 1
  %i.fx = or disjoint i32 %i.fw, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.4.i, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.12.0..sroa_idx.i, i64 44, i1 false)
  %i.fy = icmp sgt i32 %i.fq, -1
  br i1 %i.fy, label %bb.ag, label %bb.af, !prof !11

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.fz = zext nneg i32 %i.fx to i64
  %i.ga = mul nuw nsw i64 %i.fz, 56               ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.gc = load i64, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 3 uses
  %i.ge = load i64, ptr %i.gd, align 8            ; 2 uses
  %i.gf = sub i64 %i.gc, %i.ge
  %i.gg = icmp ugt i64 %i.ga, %i.gf
  br i1 %i.gg, label %bb.ah, label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i, !prof !12

bb.ah:                                            ; preds = %bb.ag
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.fo, i64 noundef %i.ga) #8
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.gd, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i: ; preds = %bb.ah, %bb.ag
  %i.gh = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.ah ], [ %i.ge, %bb.ag ] ; 2 uses
  %i.gi = inttoptr i64 %i.gh to ptr               ; 3 uses
  %i.gj = add i64 %i.gh, %i.ga
  store i64 %i.gj, ptr %i.gd, align 8
  %i.gk = load i32, ptr %i.r, align 4             ; 3 uses
  %i.gl = icmp sgt i32 %i.gk, 0
  br i1 %i.gl, label %bb.ai, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i

bb.ai:                                            ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i
  %i.gm = load ptr, ptr %i.p, align 8
  %i.gn = zext nneg i32 %i.gk to i64
  %i.go = mul nuw nsw i64 %i.gn, 56
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gi, ptr align 1 %i.gm, i64 %i.go, i1 false)
  %.pre.i.i.i.i = load i32, ptr %i.r, align 4
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i: ; preds = %bb.ai, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i
  %i.gp = phi i32 [ %i.gk, %_ZN2v88internal4Zone13AllocateArrayINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEA_S6_EEPT_m.exit.i.i.i.i.i ], [ %.pre.i.i.i.i, %bb.ai ] ; 2 uses
  store ptr %i.gi, ptr %i.p, align 8
  store i32 %i.fx, ptr %i.s, align 8
  %i.gq = add nsw i32 %i.gp, 1
  store i32 %i.gq, ptr %i.r, align 4
  %i.gr = sext i32 %i.gp to i64
  %i.gs = getelementptr inbounds [56 x i8], ptr %i.gi, i64 %i.gr ; 3 uses
  store i32 %i.fk, ptr %i.gs, align 8
  %.sroa.4.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.4.0..sroa_idx.i16, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.4.i, i64 44, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gs, i64 48
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i

._crit_edge.i:                                    ; preds = %bb.ac, %bb.ab
  %.sroa.4.sroa.4.0..sroa.12.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %.sroa.4.sroa.4.0.copyload = load ptr, ptr %.sroa.4.sroa.4.0..sroa.12.0..sroa_idx.i.sroa_idx, align 8 ; 3 uses
  %.sroa.4.sroa.5.0..sroa.12.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %.sroa.4.sroa.5.0.copyload = load ptr, ptr %.sroa.4.sroa.5.0..sroa.12.0..sroa_idx.i.sroa_idx, align 8 ; 3 uses
  %.sroa.4.sroa.6.0..sroa.12.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %.sroa.4.sroa.6.0.copyload = load ptr, ptr %.sroa.4.sroa.6.0..sroa.12.0..sroa_idx.i.sroa_idx, align 8 ; 3 uses
  %.sroa.4.sroa.7.0..sroa.12.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %.sroa.4.sroa.7.0.copyload = load ptr, ptr %.sroa.4.sroa.7.0..sroa.12.0..sroa_idx.i.sroa_idx, align 8 ; 3 uses
  %.sroa.4.sroa.8.0..sroa.12.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %.sroa.4.sroa.8.0.copyload = load ptr, ptr %.sroa.4.sroa.8.0..sroa.12.0..sroa_idx.i.sroa_idx, align 8 ; 3 uses
  %i.gt = load i32, ptr %i.t, align 8             ; 2 uses
  %i.gu = sext i32 %i.gt to i64                   ; 2 uses
  %i.gv = icmp ult i32 %i.gt, 4
  br i1 %i.gv, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i
  %i.gw = load ptr, ptr %i.u, align 8             ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gy = load i64, ptr %i.gx, align 8
  %.not7.i.i.i = icmp ugt i64 %i.gy, %i.gu
  br i1 %.not7.i.i.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.4.0.copyload, i64 8
  store i64 %i.gu, ptr %i.gz, align 8
  %i.ha = load ptr, ptr %i.u, align 8
  store ptr %i.ha, ptr %.sroa.4.sroa.4.0.copyload, align 8
  store ptr %.sroa.4.sroa.4.0.copyload, ptr %i.u, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i: ; preds = %bb.al, %bb.ak, %._crit_edge.i
  %i.hb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1611), align 1, !range !9, !noundef !10
  %i.hc = trunc nuw i8 %i.hb to i1
  br i1 %i.hc, label %bb.am, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i

bb.am:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i
  %i.hd = load i32, ptr %i.v, align 4             ; 2 uses
  %i.he = sext i32 %i.hd to i64                   ; 2 uses
  %i.hf = icmp ult i32 %i.hd, 2
  br i1 %i.hf, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hg = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i1.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load i64, ptr %i.hh, align 8
  %.not7.i.i2.i = icmp ugt i64 %i.hi, %i.he
  br i1 %.not7.i.i2.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.6.0.copyload, i64 8
  store i64 %i.he, ptr %i.hj, align 8
  %i.hk = load ptr, ptr %i.w, align 8
  store ptr %i.hk, ptr %.sroa.4.sroa.6.0.copyload, align 8
  store ptr %.sroa.4.sroa.6.0.copyload, ptr %i.w, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i: ; preds = %bb.ap, %bb.ao, %bb.am
  %i.hl = load i32, ptr %i.t, align 8             ; 2 uses
  %i.hm = sext i32 %i.hl to i64                   ; 2 uses
  %i.hn = icmp ult i32 %i.hl, 2
  br i1 %i.hn, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i
  %i.ho = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not.i.i3.i = icmp eq ptr %i.ho, null
  br i1 %.not.i.i3.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load i64, ptr %i.hp, align 8
  %.not7.i.i4.i = icmp ugt i64 %i.hq, %i.hm
  br i1 %.not7.i.i4.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.7.0.copyload, i64 8
  store i64 %i.hm, ptr %i.hr, align 8
  %i.hs = load ptr, ptr %i.x, align 8
  store ptr %i.hs, ptr %.sroa.4.sroa.7.0.copyload, align 8
  store ptr %.sroa.4.sroa.7.0.copyload, ptr %i.x, align 8
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i: ; preds = %bb.as, %bb.ar, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeQuantifierClockArrayEPm.exit.i
  %i.ht = load i8, ptr %i.y, align 8, !range !9, !noundef !10
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i
  %i.hv = load ptr, ptr %i.z, align 8
  %i.hw = load ptr, ptr %i.aa, align 8
  %i.hx = ptrtoint ptr %i.hv to i64
  %i.hy = ptrtoint ptr %i.hw to i64
  %i.hz = sub i64 %i.hx, %i.hy
  %i.ia = ashr exact i64 %i.hz, 5                 ; 5 uses
  %i.ib = and i64 %i.ia, 2305843009213693950
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.id = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i5.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load i64, ptr %i.ie, align 8
  %.not7.i.i6.i = icmp ugt i64 %i.if, %i.ia
  br i1 %.not7.i.i6.i, label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.8.0.copyload, i64 8
  store i64 %i.ia, ptr %i.ig, align 8
  %i.ih = load ptr, ptr %i.ab, align 8
  store ptr %i.ih, ptr %.sroa.4.sroa.8.0.copyload, align 8
  store ptr %.sroa.4.sroa.8.0.copyload, ptr %i.ab, align 8
  %.pre.i = load ptr, ptr %i.z, align 8
  %.pre9.i = load ptr, ptr %i.aa, align 8
  %.pre10.i = ptrtoint ptr %.pre.i to i64
  %.pre11.i = ptrtoint ptr %.pre9.i to i64
  %.pre13.i = sub i64 %.pre10.i, %.pre11.i
  %.pre15.i = ashr exact i64 %.pre13.i, 5
  br label %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i

_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i: ; preds = %bb.aw, %bb.av, %bb.at
  %.pre-phi16.i = phi i64 [ %i.ia, %bb.at ], [ %i.ia, %bb.av ], [ %.pre15.i, %bb.aw ] ; 3 uses
  %i.ii = and i64 %.pre-phi16.i, 4611686018427387900
  %i.ij = icmp eq i64 %i.ii, 0
  br i1 %i.ij, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i
  %i.ik = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i.i7.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.i7.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.im = load i64, ptr %i.il, align 8
  %.not7.i.i8.i = icmp ugt i64 %i.im, %.pre-phi16.i
  br i1 %.not7.i.i8.i, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.5.0.copyload, i64 8
  store i64 %.pre-phi16.i, ptr %i.in, align 8
  %i.io = load ptr, ptr %i.ac, align 8
  store ptr %i.io, ptr %.sroa.4.sroa.5.0.copyload, align 8
  store ptr %.sroa.4.sroa.5.0.copyload, ptr %i.ac, align 8
  br label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i: ; preds = %bb.az, %bb.ay, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE24FreeLookaroundClockArrayEPm.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE21FreeCaptureClockArrayEPm.exit.i, %_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE17FreeRegisterArrayEPi.exit.i, %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE9ResizeAddERKS5_PNS0_4ZoneE.exit.i.i, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  %i.ip = icmp sgt i64 %indvars.iv63.i, 1
  br i1 %i.ip, label %bb.aa, label %.loopexit, !llvm.loop !127

.loopexit:                                        ; preds = %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE3AddERKS5_PNS0_4ZoneE.exit.i, %bb.z
  store i32 0, ptr %i.e, align 4
  call fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16RunActiveThreadsEv(ptr noundef nonnull align 8 dereferenceable(424) %0)
  br label %bb.b

.critedge:                                        ; preds = %bb.j, %bb.c, %_ZNK2v84base6VectorIKtE6lengthEv.exit, %bb.f, %_ZNK2v84base6VectorIKtE6lengthEv.exit14, %.thread24
  %.4 = phi i32 [ %.3.i.ph, %.thread24 ], [ 1, %_ZNK2v84base6VectorIKtE6lengthEv.exit14 ], [ 1, %bb.f ], [ 1, %_ZNK2v84base6VectorIKtE6lengthEv.exit ], [ 1, %bb.c ], [ 1, %bb.j ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_114NfaInterpreterItE16RunActiveThreadsEv(ptr nofree noundef nonnull align 8 dereferenceable(424) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::(anonymous namespace)::NfaInterpreter<unsigned short>::InterpreterThread", align 8 ; 25 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 11 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.loopexit, label %_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE6RemoveEi.exit.lr.ph

_ZN2v88internal8ZoneListINS0_12_GLOBAL__N_114NfaInterpreterItE17InterpreterThreadEE6RemoveEi.exit.lr.ph: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 6 uses
  %.sroa.1136.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.1.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
end_hunk_1
