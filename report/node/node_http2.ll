Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/node_http2?download=true
inline.NumInlined: 6691
inline.NumDeleted: 2431
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN4node5http212Http2Session18HandleHeadersFrameEPK13nghttp2_frame:bb.a
  store i64 %i.dw, ptr %i.du, align 8
  store i32 0, ptr %i.dr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.dx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 176
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 200
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8            ; 4 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %_ZNK4node10BaseObject6objectEv.exit, label %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i

_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i: ; preds = %"_ZN4node5http211Http2Stream15TransferHeadersIZNS0_12Http2Session18HandleHeadersFrameEPK13nghttp2_frameE3$_0EEvOT_.exit.thread"
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 11
  %i.eh = load i8, ptr %i.eg, align 1
  %i.ei = and i8 %i.eh, 3
  %i.ej = icmp eq i8 %i.ei, 2
  br i1 %i.ej, label %bb.r, label %_ZNK4node10BaseObject6objectEv.exit

bb.r:                                             ; preds = %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i
  %i.ek = load i64, ptr %i.ee, align 8
  %i.el = ptrtoint ptr %i.ec to i64
  %i.em = add i64 %i.el, 560
  %i.en = inttoptr i64 %i.em to ptr               ; 3 uses
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = icmp eq ptr %i.eo, %i.eq
  br i1 %i.er, label %bb.s, label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i, !prof !55

bb.s:                                             ; preds = %bb.r
  %i.es = call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.ec) #34
  br label %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i

_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i = phi ptr [ %i.es, %bb.s ], [ %i.eo, %bb.r ] ; 3 uses
  %i.et = ptrtoint ptr %.0.i.i.i.i to i64
  %i.eu = add i64 %i.et, 8
  %i.ev = inttoptr i64 %i.eu to ptr
  store ptr %i.ev, ptr %i.en, align 8
  store i64 %i.ek, ptr %.0.i.i.i.i, align 8
  br label %_ZNK4node10BaseObject6objectEv.exit

_ZNK4node10BaseObject6objectEv.exit:              ; preds = %"_ZN4node5http211Http2Stream15TransferHeadersIZNS0_12Http2Session18HandleHeadersFrameEPK13nghttp2_frameE3$_0EEvOT_.exit.thread", %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i
  %.sroa.0.0.i.i = phi ptr [ %.0.i.i.i.i, %_ZN4node17PersistentToLocal4WeakIN2v86ObjectEEENS2_5LocalIT_EEPNS2_7IsolateERKNS2_14PersistentBaseIS5_EE.exit.i.i ], [ %i.ee, %_ZNK2v814PersistentBaseINS_6ObjectEE6IsWeakEv.exit.i.i ], [ null, %"_ZN4node5http211Http2Stream15TransferHeadersIZNS0_12Http2Session18HandleHeadersFrameEPK13nghttp2_frameE3$_0EEvOT_.exit.thread" ]
  %i.ew = ptrtoint ptr %.sroa.0.0.i.i to i64
  store i64 %i.ew, ptr %8, align 16
  %i.ex = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ey = load i32, ptr %i.a, align 4
  %i.ez = call ptr @_ZN2v87Integer3NewEPNS_7IsolateEi(ptr noundef %i.g, i32 noundef %i.ey) #34
  %i.fa = ptrtoint ptr %i.ez to i64
  store i64 %i.fa, ptr %i.ex, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.an, i64 236
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = call ptr @_ZN2v87Integer3NewEPNS_7IsolateEi(ptr noundef %i.g, i32 noundef %i.fd) #34
  %i.ff = ptrtoint ptr %i.fe to i64
  store i64 %i.ff, ptr %i.fb, align 16
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = zext i8 %i.fi to i32
  %i.fk = call ptr @_ZN2v87Integer3NewEPNS_7IsolateEi(ptr noundef %i.g, i32 noundef %i.fj) #34
  %i.fl = ptrtoint ptr %i.fk to i64
  store i64 %i.fl, ptr %i.fg, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.fn = load ptr, ptr %i.bb, align 8
  %i.fo = load i64, ptr %6, align 8
  %i.fp = call ptr @_ZN2v85Array3NewEPNS_7IsolateEPNS_5LocalINS_5ValueEEEm(ptr noundef %i.g, ptr noundef %i.fn, i64 noundef %i.fo) #34
  %i.fq = ptrtoint ptr %i.fp to i64
  store i64 %i.fq, ptr %i.fm, align 16
  %i.fr = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.fs = load ptr, ptr %i.bj, align 8
  %i.ft = call ptr @_ZN2v85Array3NewEPNS_7IsolateEPNS_5LocalINS_5ValueEEEm(ptr noundef %i.g, ptr noundef %i.fs, i64 noundef %.255) #34
  %i.fu = ptrtoint ptr %i.ft to i64
  store i64 %i.fu, ptr %i.fr, align 8
  %i.fv = load ptr, ptr %i.b, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 176
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 3008
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = call ptr @_ZNK4node14PrincipalRealm32http2session_on_headers_functionEv(ptr noundef nonnull align 8 dereferenceable(864) %i.fz) #34
  %i.gb = call ptr @_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_8FunctionEEEiPNS2_INS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.ga, i32 noundef 6, ptr noundef nonnull %8) #34 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  %i.gc = load ptr, ptr %i.bj, align 8            ; 3 uses
  %i.gd = icmp ne ptr %i.gc, null
  %i.ge = icmp ne ptr %i.gc, %.ptr2.i.i18
  %i.gf = and i1 %i.gd, %i.ge
  br i1 %i.gf, label %bb.t, label %_ZN4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm32EED2Ev.exit

bb.t:                                             ; preds = %_ZNK4node10BaseObject6objectEv.exit
  call void @free(ptr noundef nonnull %i.gc) #34
  br label %_ZN4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm32EED2Ev.exit

_ZN4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm32EED2Ev.exit: ; preds = %_ZNK4node10BaseObject6objectEv.exit, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  %i.gg = load ptr, ptr %i.bb, align 8            ; 3 uses
  %i.gh = icmp ne ptr %i.gg, null
  %i.gi = icmp ne ptr %i.gg, %.ptr2.i.i
  %i.gj = and i1 %i.gh, %i.gi
  br i1 %i.gj, label %bb.u, label %_ZN4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm64EED2Ev.exit

bb.u:                                             ; preds = %_ZN4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm32EED2Ev.exit
  call void @free(ptr noundef nonnull %i.gg) #34
  br label %_ZN4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm64EED2Ev.exit

_ZN4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm64EED2Ev.exit: ; preds = %_ZN4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm32EED2Ev.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.v

bb.v:                                             ; preds = %_ZN4node16MaybeStackBufferIN2v85LocalINS1_5ValueEEELm64EED2Ev.exit, %bb.c
  call void @_ZN4node10BaseObject17decrease_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.an) #34
  br label %_ZN4node17BaseObjectPtrImplINS_5http211Http2StreamELb0EED2Ev.exit

_ZN4node17BaseObjectPtrImplINS_5http211Http2StreamELb0EED2Ev.exit: ; preds = %_ZN4node5DebugIJRiEEEvPNS_9AsyncWrapEPKcDpOT_.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @_ZN2v87Context4ExitEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.copyload.i.i.i) #34
  %i.gk = icmp eq ptr %i.g, null
  br i1 %i.gk, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.w, !prof !55

bb.w:                                             ; preds = %_ZN4node17BaseObjectPtrImplINS_5http211Http2StreamELb0EED2Ev.exit
  %i.gl = load ptr, ptr %i.j, align 8
  store ptr %i.k, ptr %i.j, align 8
  store ptr %i.gl, ptr %i.l, align 8
  %i.gm = load i32, ptr %i.p, align 8
  %i.gn = add nsw i32 %i.gm, -1
  store i32 %i.gn, ptr %i.p, align 8
  %i.go = load ptr, ptr %i.m, align 8
  %.not.i = icmp eq ptr %i.go, %i.n
  br i1 %.not.i, label %_ZN2v811HandleScopeD2Ev.exit, label %bb.x, !prof !58

bb.x:                                             ; preds = %bb.w
  store ptr %i.n, ptr %i.m, align 8
  call void @_ZN2v811HandleScope16DeleteExtensionsEPNS_7IsolateE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %i.g) #34
  br label %_ZN2v811HandleScopeD2Ev.exit

_ZN2v811HandleScopeD2Ev.exit:                     ; preds = %_ZN4node17BaseObjectPtrImplINS_5http211Http2StreamELb0EED2Ev.exit, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node5http212Http2Session19HandleSettingsFrameEPK13nghttp2_frame(ptr noundef nonnull align 8 dereferenceable(841) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca [2 x %"class.v8::Local.485"], align 16 ; 5 uses
  %3 = alloca %"class.v8::HandleScope", align 8   ; 6 uses
  %4 = alloca %"class.v8::Local.485", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2512
  %i.h = zext i32 %i.b to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !range !57, !noundef !59
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4node27UnconditionalAsyncWrapDebugIJEEEvPNS_9AsyncWrapEPKcDpOT_(ptr noundef nonnull %0, ptr noundef nonnull @.str.128) #39
  br label %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit

_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.m = load i8, ptr %i.l, align 1
  %i.n = and i8 %i.m, 1
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.k

bb.c:                                             ; preds = %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = load i8, ptr %i.p, align 4
  %i.r = and i8 %i.q, -3
  store i8 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %.not32 = icmp eq i64 %i.t, 0
  br i1 %.not32, label %.loopexit38, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %.not42 = icmp eq i64 %i.x, 0
  br i1 %.not42, label %.loopexit38, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.loopexit
  %.041 = phi i64 [ 0, %.lr.ph ], [ %i.ai, %.loopexit ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.041 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, 6
  br i1 %i.ab, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %5 = load <2 x i32>, ptr %i.z, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.i
  %.02940 = phi i64 [ 0, %bb.f ], [ %i.ah, %bb.i ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.02940
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = and i32 %i.ad, 65535
  %i.af = icmp eq i32 %i.ae, %i.aa
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.02940
  store <2 x i32> %5, ptr %i.ag, align 8
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ah = add nuw i64 %.02940, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %i.t
  br i1 %exitcond.not, label %.loopexit, label %bb.g, !llvm.loop !180

.loopexit:                                        ; preds = %bb.i, %bb.h, %bb.e
  %i.ai = add nuw i64 %.041, 1                    ; 2 uses
  %exitcond44.not = icmp eq i64 %i.ai, %i.x
  br i1 %exitcond44.not, label %.loopexit38, label %bb.e, !llvm.loop !181

.loopexit38:                                      ; preds = %.loopexit, %bb.d, %bb.c
  %i.aj = load ptr, ptr %i.o, align 8
  %i.ak = load i8, ptr %i.aj, align 4
  %i.al = and i8 %i.ak, 1
  %.not33 = icmp eq i8 %i.al, 0
  br i1 %.not33, label %_ZN4node17BaseObjectPtrImplINS_5http213Http2SettingsELb0EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %.loopexit38
  %i.am = load ptr, ptr %i.c, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 176
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 3008
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call ptr @_ZNK4node14PrincipalRealm33http2session_on_settings_functionEv(ptr noundef nonnull align 8 dereferenceable(864) %i.aq) #34
  %i.as = tail call ptr @_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_8FunctionEEEiPNS2_INS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.ar, i32 noundef 0, ptr noundef null) #34 ; 0 uses
  br label %_ZN4node17BaseObjectPtrImplINS_5http213Http2SettingsELb0EED2Ev.exit

bb.k:                                             ; preds = %_ZN4node5DebugIJEEEvPNS_9AsyncWrapEPKcDpOT_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 4 uses
  %i.av = load ptr, ptr %i.at, align 8, !noalias !184
  %i.aw = load ptr, ptr %i.au, align 8, !noalias !184 ; 3 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN4node5http212Http2Session11PopSettingsEv.exit.thread, label %_ZN4node17BaseObjectPtrImplINS_5http213Http2SettingsELb0EED2Ev.exit.i.i

_ZN4node17BaseObjectPtrImplINS_5http213Http2SettingsELb0EED2Ev.exit.i.i: ; preds = %bb.k
  %i.ay = load i64, ptr %i.aw, align 8, !noalias !184 ; 2 uses
  %i.az = inttoptr i64 %i.ay to ptr               ; 5 uses
  store ptr null, ptr %i.aw, align 8, !noalias !184
  %.pre.i = load ptr, ptr %i.au, align 8, !noalias !184 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !184
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 -8
  %.not.i.i2.i = icmp eq ptr %.pre.i, %i.bc
  %i.bd = load ptr, ptr %.pre.i, align 8, !noalias !184 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bd, null     ; 2 uses
  br i1 %.not.i.i2.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_ZN4node17BaseObjectPtrImplINS_5http213Http2SettingsELb0EED2Ev.exit.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZSt10destroy_atIN4node17BaseObjectPtrImplINS0_5http213Http2SettingsELb0EEEEvPT_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_ZN4node10BaseObject17decrease_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bd) #34, !noalias !184
  %.pre.i.i.i = load ptr, ptr %i.au, align 8, !noalias !184
  br label %_ZSt10destroy_atIN4node17BaseObjectPtrImplINS0_5http213Http2SettingsELb0EEEEvPT_.exit.i.i.i

_ZSt10destroy_atIN4node17BaseObjectPtrImplINS0_5http213Http2SettingsELb0EEEEvPT_.exit.i.i.i: ; preds = %bb.m, %bb.l
  %i.be = phi ptr [ %.pre.i, %bb.l ], [ %.pre.i.i.i, %bb.m ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  br label %_ZN4node5http212Http2Session11PopSettingsEv.exit

bb.n:                                             ; preds = %_ZN4node17BaseObjectPtrImplINS_5http213Http2SettingsELb0EED2Ev.exit.i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt5dequeIN4node17BaseObjectPtrImplINS0_5http213Http2SettingsELb0EEESaIS4_EE16_M_pop_front_auxEv.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4node10BaseObject17decrease_refcountEv(ptr noundef nonnull align 8 dereferenceable(48) %i.bd) #34, !noalias !184
  br label %_ZNSt5dequeIN4node17BaseObjectPtrImplINS0_5http213Http2SettingsELb0EEESaIS4_EE16_M_pop_front_auxEv.exit.i.i.i

_ZNSt5dequeIN4node17BaseObjectPtrImplINS0_5http213Http2SettingsELb0EEESaIS4_EE16_M_pop_front_auxEv.exit.i.i.i: ; preds = %bb.o, %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !184
  tail call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef 512) #37, !noalias !184
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !184
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  store ptr %i.bk, ptr %i.bi, align 8, !noalias !184
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !184 ; 3 uses
  store ptr %i.bl, ptr %i.bg, align 8, !noalias !184
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 512
  store ptr %i.bm, ptr %i.ba, align 8, !noalias !184
  br label %_ZN4node5http212Http2Session11PopSettingsEv.exit

_ZN4node5http212Http2Session11PopSettingsEv.exit: ; preds = %_ZSt10destroy_atIN4node17BaseObjectPtrImplINS0_5http213Http2SettingsELb0EEEEvPT_.exit.i.i.i, %_ZNSt5dequeIN4node17BaseObjectPtrImplINS0_5http213Http2SettingsELb0EEESaIS4_EE16_M_pop_front_auxEv.exit.i.i.i
  %storemerge.i.i.i = phi ptr [ %i.bf, %_ZSt10destroy_atIN4node17BaseObjectPtrImplINS0_5http213Http2SettingsELb0EEEEvPT_.exit.i.i.i ], [ %i.bl, %_ZNSt5dequeIN4node17BaseObjectPtrImplINS0_5http213Http2SettingsELb0EEESaIS4_EE16_M_pop_front_auxEv.exit.i.i.i ]
  store ptr %storemerge.i.i.i, ptr %i.au, align 8, !noalias !184
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !noalias !184
  %i.bp = add i64 %i.bo, -248
  store i64 %i.bp, ptr %i.bn, align 8, !noalias !184
  %.not37 = icmp eq i64 %i.ay, 0
  br i1 %.not37, label %_ZN4node5http212Http2Session11PopSettingsEv.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZN4node5http212Http2Session11PopSettingsEv.exit
  %i.bq = tail call i64 @uv_hrtime() #34
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = sub i64 %i.bq, %i.bs
  %i.bu = uitofp i64 %i.bt to double
  %i.bv = fdiv double %i.bu, 1.000000e+06
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.bw = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 176
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 200
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %.sroa.0.0.i.v.i = add i64 %i.cc, 672
  store i64 %.sroa.0.0.i.v.i, ptr %2, align 16
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = tail call ptr @_ZN2v86Number3NewEPNS_7IsolateEd(ptr noundef %i.cb, double noundef %i.bv) #34
  %i.cf = ptrtoint ptr %i.ce to i64
  store i64 %i.cf, ptr %i.cd, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %i.ch = load ptr, ptr %i.bw, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 176
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 200
  %i.cl = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.cm = load ptr, ptr %i.cg, align 8            ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = load i64, ptr %i.cm, align 8
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = add i64 %i.cp, 560
  %i.cr = inttoptr i64 %i.cq to ptr               ; 3 uses
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = icmp eq ptr %i.cs, %i.cu
  br i1 %i.cv, label %bb.r, label %_ZN2v89LocalBaseINS_8FunctionEE3NewEPNS_7IsolateEm.exit.i.i, !prof !55

bb.r:                                             ; preds = %bb.q
  %i.cw = tail call noundef ptr @_ZN2v811HandleScope6ExtendEPNS_7IsolateE(ptr noundef %i.cl) #34
  br label %_ZN2v89LocalBaseINS_8FunctionEE3NewEPNS_7IsolateEm.exit.i.i

_ZN2v89LocalBaseINS_8FunctionEE3NewEPNS_7IsolateEm.exit.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi ptr [ %i.cw, %bb.r ], [ %i.cs, %bb.q ] ; 3 uses
  %i.cx = ptrtoint ptr %.0.i.i.i.i to i64
  %i.cy = add i64 %i.cx, 8
  %i.cz = inttoptr i64 %i.cy to ptr
  store ptr %i.cz, ptr %i.cr, align 8
  store i64 %i.co, ptr %.0.i.i.i.i, align 8
  br label %bb.u

_ZN4node5http212Http2Session11PopSettingsEv.exit.thread: ; preds = %bb.k, %_ZN4node5http212Http2Session11PopSettingsEv.exit
  %i.da = load ptr, ptr %i.c, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 176
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 200
  %i.de = load ptr, ptr %i.dd, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = add i64 %i.df, 560
  %i.dh = inttoptr i64 %i.dg to ptr               ; 5 uses
  store ptr %i.de, ptr %3, align 8
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8 ; 3 uses
  %i.dk = load ptr, ptr %i.dj, align 8            ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.dk, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 4 uses
  %i.dn = load i32, ptr %i.dm, align 8
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dm, align 8
  %i.dp = load ptr, ptr %i.c, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 176
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 3008
  %i.dt = load ptr, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 192
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.du, align 8 ; 2 uses
  tail call void @_ZN2v87Context5EnterEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.copyload.i.i.i) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.dv = tail call ptr @_ZN2v87Integer3NewEPNS_7IsolateEi(ptr noundef %i.de, i32 noundef -505) #34
  %i.dw = ptrtoint ptr %i.dv to i64
  store i64 %i.dw, ptr %4, align 8
  %i.dx = load ptr, ptr %i.c, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 176
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 3008
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = tail call ptr @_ZNK4node14PrincipalRealm30http2session_on_error_functionEv(ptr noundef nonnull align 8 dereferenceable(864) %i.eb) #34
  %i.ed = call ptr @_ZN4node9AsyncWrap12MakeCallbackEN2v85LocalINS1_8FunctionEEEiPNS2_INS1_5ValueEEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %i.ec, i32 noundef 1, ptr noundef nonnull %4) #34 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @_ZN2v87Context4ExitEv(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.copyload.i.i.i) #34
  %i.ee = icmp eq ptr %i.de, null
  br i1 %i.ee, label %.thread, label %bb.s, !prof !55

bb.s:                                             ; preds = %_ZN4node5http212Http2Session11PopSettingsEv.exit.thread
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.eg = load ptr, ptr %i.dh, align 8
  store ptr %i.di, ptr %i.dh, align 8
  store ptr %i.eg, ptr %i.ef, align 8
  %i.eh = load i32, ptr %i.dm, align 8
  %i.ei = add nsw i32 %i.eh, -1
end_hunk_0
