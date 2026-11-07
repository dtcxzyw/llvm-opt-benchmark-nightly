Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/RuntimeJSONUtils?download=true
inline.NumInlined: 1616
inline.NumDeleted: 784
begin_hunk_0_@_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer11operationJAEv:bb.a
  %.not.i22 = icmp ult i32 %i.co, %i.cp
  br i1 %.not.i22, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit24, label %bb.p, !prof !51

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.ci, i64 noundef 0, i64 noundef 2) #10
  %.pre.i23 = load i32, ptr %i.n, align 8, !tbaa !21
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit24

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit24: ; preds = %bb.o, %bb.p
  %i.cq = phi i32 [ %.pre.i23, %bb.p ], [ %i.co, %bb.o ]
  %i.cr = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.cs = zext i32 %i.cq to i64
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.cs
  store i16 44, ptr %i.ct, align 1
  %i.cu = load i32, ptr %i.n, align 8, !tbaa !21
  %i.cv = add i32 %i.cu, 1                        ; 3 uses
  store i32 %i.cv, ptr %i.n, align 8, !tbaa !21
  %i.cw = load ptr, ptr %i.cj, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i.i25 = load i64, ptr %i.cw, align 8, !tbaa !24
  %i.cx = and i64 %.sroa.0.0.copyload.i.i.i25, 281474976710655
  %.not.i26 = icmp eq i64 %i.cx, 0
  br i1 %.not.i26, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit34, label %bb.q

bb.q:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit24
  %i.cy = load i32, ptr %i.p, align 4, !tbaa !22
  %.not.i.i27 = icmp ult i32 %i.cv, %i.cy
  br i1 %.not.i.i27, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i29, label %bb.r, !prof !51

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.ci, i64 noundef 0, i64 noundef 2) #10
  %.pre.i.i28 = load i32, ptr %i.n, align 8, !tbaa !21
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i29

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i29: ; preds = %bb.r, %bb.q
  %i.cz = phi i32 [ %.pre.i.i28, %bb.r ], [ %i.cv, %bb.q ]
  %i.da = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.db = zext i32 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.db
  store i16 10, ptr %i.dc, align 1
  %i.dd = load i32, ptr %i.n, align 8, !tbaa !21
  %i.de = add i32 %i.dd, 1
  store i32 %i.de, ptr %i.n, align 8, !tbaa !21
  %i.df = load i32, ptr %i.h, align 8, !tbaa !95
  %.not4.i30 = icmp eq i32 %i.df, 0
  br i1 %.not4.i30, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit34, label %.lr.ph.i31

.lr.ph.i31:                                       ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i29, %.lr.ph.i31
  %.03.i32 = phi i32 [ %i.dj, %.lr.ph.i31 ], [ 0, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i29 ]
  %i.dg = load ptr, ptr %i.cj, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i2.i33 = load i64, ptr %i.dg, align 8, !tbaa !24
  %i.dh = and i64 %.sroa.0.0.copyload.i.i2.i33, 281474976710655
  %i.di = inttoptr i64 %i.dh to ptr
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.di, ptr noundef nonnull align 8 dereferenceable(16) %i.m) #10
  %i.dj = add nuw i32 %.03.i32, 1                 ; 2 uses
  %i.dk = load i32, ptr %i.h, align 8, !tbaa !95
  %i.dl = icmp ult i32 %i.dj, %i.dk
  br i1 %i.dl, label %.lr.ph.i31, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit34, !llvm.loop !0

_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit34: ; preds = %.lr.ph.i31, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i29, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit24, %bb.n
  %i.dm = load ptr, ptr %i.z, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i35 = load i64, ptr %i.dm, align 8, !tbaa !24
  %i.dn = and i64 %.sroa.0.0.copyload.i.i35, 281474976710655
  %i.do = inttoptr i64 %i.dn to ptr               ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load atomic i32, ptr %i.dp monotonic, align 4
  %i.dr = add i32 %i.dq, -1
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dt = zext i32 %i.dr to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dt
  %.sroa.0.0.copyload.i37 = load i32, ptr %i.du, align 4, !tbaa !7 ; 2 uses
  %i.dv = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78
  %.not.i.i.i.i38 = icmp eq i32 %.sroa.0.0.copyload.i37, 0
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = zext i32 %.sroa.0.0.copyload.i37 to i64
  %i.dy = add i64 %i.dw, %i.dx
  %i.dz = or i64 %i.dy, -281474976710656
  %i.ea = select i1 %.not.i.i.i.i38, i64 -281474976710656, i64 %i.dz
  %i.eb = load ptr, ptr %i.ck, align 8, !tbaa !102
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !104
  %i.ec = load ptr, ptr %i.cl, align 8, !tbaa !20
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.cm
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !102
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 128
  store i32 %i.g, ptr %i.f, align 8, !tbaa !81
  store ptr %i.ef, ptr %i.cn, align 8, !tbaa !50
  store ptr %i.e, ptr %i.d, align 8, !tbaa !49
  %i.eg = uitofp i64 %.01173 to double
  %i.eh = bitcast double %i.eg to i64
  %i.ei = tail call fastcc i32 @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer12operationStrENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 %i.eh) ; 2 uses
  %.mask = and i32 %i.ei, 255
  %i.ej = icmp eq i32 %.mask, 0
  br i1 %i.ej, label %.critedge, label %bb.s, !prof !68

bb.s:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit34
  %.not71 = icmp samesign ult i32 %i.ei, 256
  br i1 %.not71, label %bb.t, label %bb.u, !prof !68

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14appendToOutputENS0_8SymbolIDE(ptr noundef nonnull align 8 dereferenceable(176) %0, i32 19)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ek = add nuw i64 %.01173, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ek, %i.bn
  br i1 %exitcond.not, label %bb.v, label %bb.n, !llvm.loop !210

bb.v:                                             ; preds = %bb.u
  store i32 %i.i, ptr %i.h, align 8, !tbaa !95
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i.i41 = load i64, ptr %i.em, align 8, !tbaa !24
  %i.en = and i64 %.sroa.0.0.copyload.i.i.i41, 281474976710655
  %.not.i42 = icmp eq i64 %i.en, 0
  br i1 %.not.i42, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit50, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eo = load i32, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.ep = load i32, ptr %i.p, align 4, !tbaa !22
  %.not.i.i43 = icmp ult i32 %i.eo, %i.ep
  br i1 %.not.i.i43, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i45, label %bb.x, !prof !51

bb.x:                                             ; preds = %bb.w
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.eq, i64 noundef 0, i64 noundef 2) #10
  %.pre.i.i44 = load i32, ptr %i.n, align 8, !tbaa !21
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i45

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i45: ; preds = %bb.x, %bb.w
  %i.er = phi i32 [ %.pre.i.i44, %bb.x ], [ %i.eo, %bb.w ]
  %i.es = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.et = zext i32 %i.er to i64
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.es, i64 %i.et
  store i16 10, ptr %i.eu, align 1
  %i.ev = load i32, ptr %i.n, align 8, !tbaa !21
  %i.ew = add i32 %i.ev, 1
  store i32 %i.ew, ptr %i.n, align 8, !tbaa !21
  %i.ex = load i32, ptr %i.h, align 8, !tbaa !95
  %.not4.i46 = icmp eq i32 %i.ex, 0
  br i1 %.not4.i46, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit50, label %.lr.ph.i47

.lr.ph.i47:                                       ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i45, %.lr.ph.i47
  %.03.i48 = phi i32 [ %i.fb, %.lr.ph.i47 ], [ 0, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i45 ]
  %i.ey = load ptr, ptr %i.el, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i2.i49 = load i64, ptr %i.ey, align 8, !tbaa !24
  %i.ez = and i64 %.sroa.0.0.copyload.i.i2.i49, 281474976710655
  %i.fa = inttoptr i64 %i.ez to ptr
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.fa, ptr noundef nonnull align 8 dereferenceable(16) %i.m) #10
  %i.fb = add nuw i32 %.03.i48, 1                 ; 2 uses
  %i.fc = load i32, ptr %i.h, align 8, !tbaa !95
  %i.fd = icmp ult i32 %i.fb, %i.fc
  br i1 %i.fd, label %.lr.ph.i47, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit50, !llvm.loop !0

_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit50: ; preds = %.lr.ph.i47, %.critedge19.thread, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i45, %bb.v
  %i.fe = load i32, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.ff = load i32, ptr %i.p, align 4, !tbaa !22
  %.not.i51 = icmp ult i32 %i.fe, %i.ff
  br i1 %.not.i51, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit53, label %bb.y, !prof !51

bb.y:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit50
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.fg, i64 noundef 0, i64 noundef 2) #10
  %.pre.i52 = load i32, ptr %i.n, align 8, !tbaa !21
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit53

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit53: ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit50, %bb.y
  %i.fh = phi i32 [ %.pre.i52, %bb.y ], [ %i.fe, %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit50 ]
  %i.fi = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.fj = zext i32 %i.fh to i64
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.fi, i64 %i.fj
  store i16 93, ptr %i.fk, align 1
  %i.fl = load i32, ptr %i.n, align 8, !tbaa !21
  %i.fm = add i32 %i.fl, 1
  store i32 %i.fm, ptr %i.n, align 8, !tbaa !21
  br label %.critedge

.critedge:                                        ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit34, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit53, %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit, %bb.b
  %.4 = phi i32 [ %i.l, %bb.b ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_8JSObjectEEENS0_6HandleIT_EEPS5_.exit ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit53 ], [ 0, %_ZN6hermes2vm22getArrayLikeLength_RJSENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeE.exit ], [ 0, %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit34 ]
  %i.fn = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.fo = zext i32 %i.g to i64
  %i.fp = load ptr, ptr %i.fn, align 8, !tbaa !20
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fo
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !102
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 128
  store i32 %i.g, ptr %i.f, align 8, !tbaa !81
  %i.ft = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !50
  store ptr %i.e, ptr %i.d, align 8, !tbaa !49
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef i32 @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer11operationJOEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 align 2 !guid !213 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !41   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !81   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 11 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !95   ; 4 uses
  %i.j = add i32 %i.i, 1                          ; 2 uses
  %i.k = icmp ugt i32 %i.j, 511
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef i32 @_ZN6hermes2vm7Runtime18raiseStackOverflowENS1_17StackOverflowKindE(ptr noundef nonnull align 8 dereferenceable(9816) %i.a, i32 noundef 3) #10
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  store i32 %i.j, ptr %i.h, align 8, !tbaa !95
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 24 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 32 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 9 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !22
  %.not.i = icmp ult i32 %i.o, %i.q
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit, label %bb.d, !prof !51

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.r, i64 noundef 0, i64 noundef 2) #10
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !21
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit: ; preds = %bb.c, %bb.d
  %i.s = phi i32 [ %.pre.i, %bb.d ], [ %i.o, %bb.c ]
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.u = zext i32 %i.s to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.t, i64 %i.u
  store i16 123, ptr %i.v, align 1
  %i.w = load i32, ptr %i.n, align 8, !tbaa !21
  %i.x = add i32 %i.w, 1                          ; 9 uses
  store i32 %i.x, ptr %i.n, align 8, !tbaa !21
  %i.y = zext i32 %i.x to i64                     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !24
  %i.ab = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %.not.i42 = icmp eq i64 %i.ab, 0
  br i1 %.not.i42, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit
  %i.ac = load i32, ptr %i.p, align 4, !tbaa !22
  %.not.i.i = icmp ult i32 %i.x, %i.ac
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i, label %bb.f, !prof !51

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.ad, i64 noundef 0, i64 noundef 2) #10
  %.pre.i.i = load i32, ptr %i.n, align 8, !tbaa !21
  %.pre146 = zext i32 %.pre.i.i to i64
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i: ; preds = %bb.f, %bb.e
  %.pre-phi147 = phi i64 [ %.pre146, %bb.f ], [ %i.y, %bb.e ]
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %.pre-phi147
  store i16 10, ptr %i.af, align 1
  %i.ag = load i32, ptr %i.n, align 8, !tbaa !21
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.n, align 8, !tbaa !21
  %i.ai = load i32, ptr %i.h, align 8, !tbaa !95
  %.not4.i = icmp eq i32 %i.ai, 0
  br i1 %.not4.i, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i, %.lr.ph.i
  %.03.i = phi i32 [ %i.am, %.lr.ph.i ], [ 0, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i ]
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i2.i = load i64, ptr %i.aj, align 8, !tbaa !24
  %i.ak = and i64 %.sroa.0.0.copyload.i.i2.i, 281474976710655
  %i.al = inttoptr i64 %i.ak to ptr
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.m) #10
  %i.am = add nuw i32 %.03.i, 1                   ; 2 uses
  %i.an = load i32, ptr %i.h, align 8, !tbaa !95
  %i.ao = icmp ult i32 %i.am, %i.an
  br i1 %i.ao, label %.lr.ph.i, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit, !llvm.loop !0

_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit: ; preds = %.lr.ph.i, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !52
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !104 ; 3 uses
  %i.as = icmp ugt i64 %i.ar, -844424930131969
  %i.at = and i64 %i.ar, 281474976710655
  %i.au = icmp ne i64 %i.at, 0
  %i.av = and i1 %i.as, %i.au
  br i1 %i.av, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i43 = load i64, ptr %i.ax, align 8, !tbaa !24
  %i.ay = and i64 %.sroa.0.0.copyload.i.i43, 281474976710655
  %i.az = inttoptr i64 %i.ay to ptr               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load atomic i32, ptr %i.ba monotonic, align 4
  %i.bc = add i32 %i.bb, -1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.be = zext i32 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  %.sroa.0.0.copyload.i = load i32, ptr %i.bf, align 4, !tbaa !7 ; 2 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78 ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i, 0
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = zext i32 %.sroa.0.0.copyload.i to i64
  %i.bj = add i64 %i.bh, %i.bi
  %i.bk = or i64 %i.bj, -281474976710656
  %i.bl = select i1 %.not.i.i.i.i, i64 -281474976710656, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !102 ; 3 uses
  store i64 %i.bl, ptr %i.bn, align 8, !tbaa !104
  %i.bo = and i64 %i.bl, 281474976710655
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = and i32 %i.br, 128
  %.not132 = icmp eq i32 %i.bs, 0
  br i1 %.not132, label %bb.h, label %bb.j, !prof !51

bb.h:                                             ; preds = %bb.g
  %i.bt = tail call ptr @_ZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsE(ptr nonnull %i.bn, ptr noundef nonnull align 8 dereferenceable(9816) %i.bg, i32 2) #10 ; 2 uses
  %.not133 = icmp eq ptr %i.bt, inttoptr (i64 -1 to ptr)
  br i1 %.not133, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.i.i.i46 = load i64, ptr %i.bt, align 8, !tbaa !24
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.bu = tail call { i32, i64 } @_ZN6hermes2vm27enumerableOwnProperties_RJSERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEENS0_27EnumerableOwnPropertiesKindE(ptr noundef nonnull align 8 dereferenceable(9816) %i.bg, ptr nonnull %i.bn, i32 noundef 0) #10 ; 2 uses
  %i.bv = extractvalue { i32, i64 } %i.bu, 0
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = extractvalue { i32, i64 } %i.bu, 1
  br label %bb.l

bb.l:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit, %bb.k, %bb.i
  %.sink167 = phi i64 [ %i.bx, %bb.k ], [ %.sroa.0.0.copyload.i.i.i46, %bb.i ], [ %i.ar, %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bz = or i64 %.sink167, -281474976710656
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !102
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !104
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 2 uses
  %i.cc = zext i32 %i.g to i64                    ; 2 uses
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !102
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 128
  store i32 %i.g, ptr %i.f, align 8, !tbaa !81
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 200 ; 2 uses
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !50
  store ptr %i.e, ptr %i.d, align 8, !tbaa !49
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.cj = and i64 %.sink167, 281474976710655
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !123 ; 3 uses
  %.not39137.not = icmp eq i32 %i.cm, 0
  br i1 %.not39137.not, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %bb.l
  store i32 %i.i, ptr %i.h, align 8, !tbaa !95
  br label %bb.bd

.lr.ph:                                           ; preds = %bb.l
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.az, %.lr.ph
  %.033141.ph = phi i1 [ true, %bb.az ], [ false, %.lr.ph ] ; 2 uses
  %.038138.ph = phi i32 [ %i.ki, %bb.az ], [ 0, %.lr.ph ]
  br label %bb.m

bb.m:                                             ; preds = %.outer, %bb.ay
  %.038138 = phi i32 [ %1, %bb.ay ], [ %.038138.ph, %.outer ] ; 5 uses
  %i.ct = load i32, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.cu = zext i32 %i.ct to i64                   ; 2 uses
  br i1 %.033141.ph, label %bb.n, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit62

bb.n:                                             ; preds = %bb.m
  %i.cv = load i32, ptr %i.p, align 4, !tbaa !22
  %.not.i50 = icmp ult i32 %i.ct, %i.cv
  br i1 %.not.i50, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit52, label %bb.o, !prof !51

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.cn, i64 noundef 0, i64 noundef 2) #10
  %.pre.i51 = load i32, ptr %i.n, align 8, !tbaa !21
  %.pre145 = zext i32 %.pre.i51 to i64
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit52

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit52: ; preds = %bb.n, %bb.o
  %.pre-phi = phi i64 [ %i.cu, %bb.n ], [ %.pre145, %bb.o ]
  %i.cw = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %.pre-phi
  store i16 44, ptr %i.cx, align 1
  %i.cy = load i32, ptr %i.n, align 8, !tbaa !21
  %i.cz = add i32 %i.cy, 1                        ; 3 uses
  store i32 %i.cz, ptr %i.n, align 8, !tbaa !21
  %i.da = load ptr, ptr %i.z, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i.i53 = load i64, ptr %i.da, align 8, !tbaa !24
  %i.db = and i64 %.sroa.0.0.copyload.i.i.i53, 281474976710655
  %.not.i54 = icmp eq i64 %i.db, 0
  br i1 %.not.i54, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit62, label %bb.p

bb.p:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit52
  %i.dc = load i32, ptr %i.p, align 4, !tbaa !22
  %.not.i.i55 = icmp ult i32 %i.cz, %i.dc
  br i1 %.not.i.i55, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i57, label %bb.q, !prof !51

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.cn, i64 noundef 0, i64 noundef 2) #10
  %.pre.i.i56 = load i32, ptr %i.n, align 8, !tbaa !21
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i57

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i57: ; preds = %bb.q, %bb.p
  %i.dd = phi i32 [ %.pre.i.i56, %bb.q ], [ %i.cz, %bb.p ]
  %i.de = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.df = zext i32 %i.dd to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %i.df
  store i16 10, ptr %i.dg, align 1
  %i.dh = load i32, ptr %i.n, align 8, !tbaa !21
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr %i.n, align 8, !tbaa !21
  %i.dj = load i32, ptr %i.h, align 8, !tbaa !95
  %.not4.i58 = icmp eq i32 %i.dj, 0
  br i1 %.not4.i58, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit62, label %.lr.ph.i59

.lr.ph.i59:                                       ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i57, %.lr.ph.i59
  %.03.i60 = phi i32 [ %i.dn, %.lr.ph.i59 ], [ 0, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i57 ]
  %i.dk = load ptr, ptr %i.z, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i2.i61 = load i64, ptr %i.dk, align 8, !tbaa !24
  %i.dl = and i64 %.sroa.0.0.copyload.i.i2.i61, 281474976710655
  %i.dm = inttoptr i64 %i.dl to ptr
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %i.m) #10
  %i.dn = add nuw i32 %.03.i60, 1                 ; 2 uses
  %i.do = load i32, ptr %i.h, align 8, !tbaa !95
  %i.dp = icmp ult i32 %i.dn, %i.do
  br i1 %i.dp, label %.lr.ph.i59, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit62, !llvm.loop !0

_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit62: ; preds = %.lr.ph.i59, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i57, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit52, %bb.m
  %i.dq = load ptr, ptr %i.ci, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i63 = load i64, ptr %i.dq, align 8, !tbaa !24
  %i.dr = and i64 %.sroa.0.0.copyload.i.i63, 281474976710655
  %i.ds = inttoptr i64 %i.dr to ptr               ; 3 uses
  %i.dt = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 20
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !125 ; 2 uses
  %.not.i64 = icmp uge i32 %.038138, %i.dv
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = icmp ult i32 %.038138, %i.dx
  %or.cond.i = select i1 %.not.i64, i1 %i.dy, i1 false
  br i1 %or.cond.i, label %bb.r, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread

bb.r:                                             ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit62
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 28
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.dz, align 4, !tbaa !7
  %i.ea = ptrtoint ptr %i.dt to i64               ; 6 uses
  %i.eb = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.ec = add i64 %i.eb, %i.ea
  %i.ed = inttoptr i64 %i.ec to ptr               ; 2 uses
  %i.ee = sub nuw i32 %.038138, %i.dv             ; 4 uses
  %i.ef = icmp ult i32 %i.ee, 4096
  br i1 %i.ef, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eg = add i32 %i.ee, -4096
  %i.eh = lshr i32 %i.eg, 10
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ed, i64 16392
  %i.ej = zext nneg i32 %i.eh to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !127
  %i.em = zext i32 %i.el to i64
  %i.en = add i64 %i.em, %i.ea
  %i.eo = inttoptr i64 %i.en to ptr
  %i.ep = and i32 %i.ee, 1023
  br label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit: ; preds = %bb.r, %bb.s
  %.sink8.i.i = phi ptr [ %i.eo, %bb.s ], [ %i.ed, %bb.r ]
  %.sink7.i.i = phi i32 [ %i.ep, %bb.s ], [ %i.ee, %bb.r ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.sink8.i.i, i64 8
  %i.er = zext nneg i32 %.sink7.i.i to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.er
  %.sroa.0.0.i.i = load i32, ptr %i.es, align 4, !tbaa !7 ; 9 uses
  %i.et = trunc i32 %.sroa.0.0.i.i to i8
  %i.eu = and i8 %i.et, 15
  switch i8 %i.eu, label %default.unreachable [
    i8 0, label %bb.t
    i8 8, label %bb.t
    i8 1, label %bb.u
    i8 9, label %bb.u
    i8 2, label %bb.v
    i8 10, label %bb.v
    i8 3, label %bb.w
    i8 11, label %bb.w
    i8 4, label %bb.x
    i8 12, label %bb.x
    i8 5, label %bb.y
    i8 13, label %bb.y
    i8 6, label %bb.z
    i8 14, label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread
    i8 7, label %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread
    i8 15, label %bb.aa
  ]

bb.t:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %.not.i.i.i.i.i = icmp eq i32 %.sroa.0.0.i.i, 0
  %i.ev = zext i32 %.sroa.0.0.i.i to i64
  %i.ew = add i64 %i.ev, %i.ea
  %i.ex = or i64 %i.ew, -281474976710656
  %i.ey = select i1 %.not.i.i.i.i.i, i64 -281474976710656, i64 %i.ex
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.u:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.ez = and i32 %.sroa.0.0.i.i, -8
  %i.fa = zext i32 %i.ez to i64
  %i.fb = add i64 %i.fa, %i.ea
  %i.fc = or i64 %i.fb, -562949953421312
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.v:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.fd = and i32 %.sroa.0.0.i.i, -8
  %i.fe = zext i32 %i.fd to i64
  %i.ff = add i64 %i.fe, %i.ea
  %i.fg = or i64 %i.ff, -844424930131968
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.w:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.fh = and i32 %.sroa.0.0.i.i, -8
  %i.fi = zext i32 %i.fh to i64
  %i.fj = add i64 %i.fi, %i.ea
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !134 ; 2 uses
  %i.fn = fcmp uno double %i.fm, 0.000000e+00
  %i.fo = bitcast double %i.fm to i64
  %spec.select.i.i = select i1 %i.fn, i64 9221120237041090560, i64 %i.fo, !prof !68
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.x:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.fp = ashr i32 %.sroa.0.0.i.i, 3
  %i.fq = sitofp i32 %i.fp to double
  %i.fr = bitcast double %i.fq to i64
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.y:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.fs = lshr i32 %.sroa.0.0.i.i, 3
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = or disjoint i64 %i.ft, -1266637395197952
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

bb.z:                                             ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %i.fv = icmp ugt i32 %.sroa.0.0.i.i, 15
  %i.fw = zext i1 %i.fv to i64
  %i.fx = or disjoint i64 %i.fw, -1407374883553280
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit

_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread: ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit62, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread

bb.aa:                                            ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread

default.unreachable:                              ; preds = %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  unreachable

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.thread: ; preds = %bb.aa, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit
  %.sroa.05.0.i.ph = phi i64 [ -1688849860263936, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit ], [ -1970324836974592, %_ZNK6hermes2vm9ArrayImpl2atERNS0_7RuntimeEj.exit.thread ], [ -1548112371908608, %bb.aa ]
  %i.fy = load ptr, ptr %i.co, align 8, !tbaa !102
  store i64 %.sroa.05.0.i.ph, ptr %i.fy, align 8, !tbaa !104
  br label %bb.ab

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit: ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  %.sroa.05.0.i = phi i64 [ %i.ey, %bb.t ], [ %i.fc, %bb.u ], [ %i.fg, %bb.v ], [ %spec.select.i.i, %bb.w ], [ %i.fr, %bb.x ], [ %i.fu, %bb.y ], [ %i.fx, %bb.z ] ; 2 uses
  %i.fz = load ptr, ptr %i.co, align 8            ; 2 uses
  store i64 %.sroa.05.0.i, ptr %i.fz, align 8, !tbaa !104
  %.mask.i = and i64 %.sroa.05.0.i, -281474976710656
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer11operationJOEv:bb.a
  %.sroa.0.0.copyload.i.i.i2.i.i = load i64, ptr %i.gt, align 8, !tbaa !24
  %i.gu = and i64 %.sroa.0.0.copyload.i.i.i2.i.i, 281474976710655
  %i.gv = inttoptr i64 %i.gu to ptr
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !130
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.af, %bb.ad
  %.0.i.sink.i.i = phi ptr [ %i.gh, %bb.ad ], [ %i.gq, %bb.af ], [ %i.gr, %bb.ah ], [ %i.gs, %bb.ai ], [ %i.gx, %bb.aj ]
  %i.gy = and i64 %i.gi, 1073741823
  %i.gz = getelementptr inbounds nuw i8, ptr %.0.i.sink.i.i, i64 %i.gy
  tail call void @_ZN6hermes18quoteStringForJSONIN4llvh11SmallVectorIDsLj32EEEcEEvRT_NS1_8ArrayRefIT0_EE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr %i.gz, i64 %.sroa.7.8.extract.shift.i)
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

bb.ak:                                            ; preds = %bb.ac
  %.not.i1.i = icmp samesign ult i32 %.sroa.3.8.extract.trunc.i, 1073741824
  br i1 %.not.i1.i, label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.sroa.0.0.copyload.i.i.i.i2.i = load i64, ptr %i.gh, align 8, !tbaa !24
  %i.ha = and i64 %.sroa.0.0.copyload.i.i.i.i2.i, 281474976710655
  %i.hb = inttoptr i64 %i.ha to ptr               ; 5 uses
  %i.hc = load i32, ptr %i.hb, align 4            ; 2 uses
  %i.hd = icmp ugt i32 %i.hc, 150994943
  br i1 %i.hd, label %bb.am, label %bb.an, !prof !68

bb.am:                                            ; preds = %bb.al
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !71
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.an:                                            ; preds = %bb.al
  %.mask.i.i.i.i.i.i.i.i.i3.i = and i32 %i.hc, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i3.i, label %bb.aq [
    i32 117440512, label %bb.ao
    i32 50331648, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.ap:                                            ; preds = %bb.an
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

bb.aq:                                            ; preds = %bb.an
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %.sroa.0.0.copyload.i.i.i2.i5.i = load i64, ptr %i.hi, align 8, !tbaa !24
  %i.hj = and i64 %.sroa.0.0.copyload.i.i.i2.i5.i, 281474976710655
  %i.hk = inttoptr i64 %i.hj to ptr
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !71
  br label %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i

_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i: ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.ak
  %.0.i.sink.i4.i = phi ptr [ %i.gh, %bb.ak ], [ %i.hf, %bb.am ], [ %i.hg, %bb.ao ], [ %i.hh, %bb.ap ], [ %i.hm, %bb.aq ]
  %i.hn = and i64 %i.gi, 1073741823
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i4.i, i64 %i.hn
  tail call void @_ZN6hermes18quoteStringForJSONIN4llvh11SmallVectorIDsLj32EEEDsEEvRT_NS1_8ArrayRefIT0_EE(ptr noundef nonnull align 8 dereferenceable(80) %i.m, ptr %i.ho, i64 %.sroa.7.8.extract.shift.i)
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit

_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit: ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.i, %_ZNK6hermes2vm10StringView15castToChar16PtrEv.exit.i
  %i.hp = load i32, ptr %i.n, align 8, !tbaa !21  ; 2 uses
  %i.hq = load i32, ptr %i.p, align 4, !tbaa !22
  %.not.i66 = icmp ult i32 %i.hp, %i.hq
  br i1 %.not.i66, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68, label %bb.ar, !prof !51

bb.ar:                                            ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.cn, i64 noundef 0, i64 noundef 2) #10
  %.pre.i67 = load i32, ptr %i.n, align 8, !tbaa !21
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68: ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit, %bb.ar
  %i.hr = phi i32 [ %.pre.i67, %bb.ar ], [ %i.hp, %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer14operationQuoteENS0_10StringViewE.exit ]
  %i.hs = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.ht = zext i32 %i.hr to i64
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.hs, i64 %i.ht
  store i16 58, ptr %i.hu, align 1
  %i.hv = load i32, ptr %i.n, align 8, !tbaa !21
  %i.hw = add i32 %i.hv, 1                        ; 3 uses
  store i32 %i.hw, ptr %i.n, align 8, !tbaa !21
  %i.hx = load ptr, ptr %i.z, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i69 = load i64, ptr %i.hx, align 8, !tbaa !24
  %i.hy = and i64 %.sroa.0.0.copyload.i.i69, 281474976710655
  %.not = icmp eq i64 %i.hy, 0
  br i1 %.not, label %bb.au, label %bb.as

bb.as:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68
  %i.hz = load i32, ptr %i.p, align 4, !tbaa !22
  %.not.i70 = icmp ult i32 %i.hw, %i.hz
  br i1 %.not.i70, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit72, label %bb.at, !prof !51

bb.at:                                            ; preds = %bb.as
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.cn, i64 noundef 0, i64 noundef 2) #10
  %.pre.i71 = load i32, ptr %i.n, align 8, !tbaa !21
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit72

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit72: ; preds = %bb.as, %bb.at
  %i.ia = phi i32 [ %.pre.i71, %bb.at ], [ %i.hw, %bb.as ]
  %i.ib = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.ic = zext i32 %i.ia to i64
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %i.ic
  store i16 32, ptr %i.id, align 1
  %i.ie = load i32, ptr %i.n, align 8, !tbaa !21
  %i.if = add i32 %i.ie, 1
  store i32 %i.if, ptr %i.n, align 8, !tbaa !21
  br label %bb.au

bb.au:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit72, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit68
  %i.ig = load ptr, ptr %i.cp, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i73 = load i64, ptr %i.ig, align 8, !tbaa !24
  %i.ih = and i64 %.sroa.0.0.copyload.i.i73, 281474976710655
  %i.ii = inttoptr i64 %i.ih to ptr               ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.ik = load atomic i32, ptr %i.ij monotonic, align 4
  %i.il = add i32 %i.ik, -1
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.in = zext i32 %i.il to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %i.in
  %.sroa.0.0.copyload.i75 = load i32, ptr %i.io, align 4, !tbaa !7 ; 2 uses
  %i.ip = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78 ; 2 uses
  %.not.i.i.i.i76 = icmp eq i32 %.sroa.0.0.copyload.i75, 0
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = zext i32 %.sroa.0.0.copyload.i75 to i64
  %i.is = add i64 %i.iq, %i.ir
  %i.it = or i64 %i.is, -281474976710656
  %i.iu = select i1 %.not.i.i.i.i76, i64 -281474976710656, i64 %i.it
  %i.iv = load ptr, ptr %i.cq, align 8, !tbaa !102
  store i64 %i.iu, ptr %i.iv, align 8, !tbaa !104
  %i.iw = load ptr, ptr %i.ci, align 8, !tbaa !52
  %.sroa.0.0.copyload.i77 = load i64, ptr %i.iw, align 8, !tbaa !24
  %i.ix = load ptr, ptr %i.cr, align 8, !tbaa !102
  store i64 %.sroa.0.0.copyload.i77, ptr %i.ix, align 8, !tbaa !104
  %.sroa.04.0.copyload = load ptr, ptr %i.cr, align 8
  %i.iy = tail call noundef i32 @_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE9push_backERNS0_13MutableHandleIS3_EERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noundef nonnull align 8 dereferenceable(9816) %i.ip, ptr %.sroa.04.0.copyload)
  %i.iz = icmp eq i32 %i.iy, 0
  br i1 %i.iz, label %.critedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ja = load ptr, ptr %i.cb, align 8, !tbaa !20
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.cc
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !102
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 128
  store i32 %i.g, ptr %i.f, align 8, !tbaa !81
  store ptr %i.jd, ptr %i.ch, align 8, !tbaa !50
  store ptr %i.e, ptr %i.d, align 8, !tbaa !49
  %i.je = load ptr, ptr %i.co, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i.i81 = load i64, ptr %i.je, align 8, !tbaa !24
  %i.jf = tail call fastcc i32 @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer12operationStrENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(176) %0, i64 %.sroa.0.0.copyload.i.i.i81) ; 2 uses
  %i.jg = load ptr, ptr %i.cs, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i82 = load i64, ptr %i.jg, align 8, !tbaa !24
  %i.jh = and i64 %.sroa.0.0.copyload.i.i82, 281474976710655
  %i.ji = inttoptr i64 %i.jh to ptr               ; 2 uses
  %i.jj = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78 ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 4 ; 2 uses
  %i.jl = load atomic i32, ptr %i.jk monotonic, align 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jn = add i32 %i.jl, -1                       ; 2 uses
  %i.jo = zext i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jm, i64 %i.jo ; 2 uses
  %.sroa.0.0.copyload.i83 = load i32, ptr %i.jp, align 4, !tbaa !7 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jj, i64 1632
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !136
  %i.js = ptrtoint ptr %i.jp to i64
  %i.jt = and i64 %i.js, 1125899902648320
  %i.ju = inttoptr i64 %i.jt to ptr
  %i.jv = icmp ne ptr %i.jr, %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jj, i64 8489
  %i.jx = load i8, ptr %i.jw, align 1, !range !135
  %i.jy = trunc nuw i8 %i.jx to i1
  %or.cond.i.i.i = select i1 %i.jv, i1 %i.jy, i1 false, !prof !137
  br i1 %or.cond.i.i.i, label %bb.aw, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit, !prof !137

bb.aw:                                            ; preds = %bb.av
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jj, i64 856
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(8112) %i.jz, i32 %.sroa.0.0.copyload.i83) #10
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit: ; preds = %bb.av, %bb.aw
  store atomic i32 %i.jn, ptr %i.jk monotonic, align 4
  %i.ka = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78
  %.not.i.i.i.i84 = icmp eq i32 %.sroa.0.0.copyload.i83, 0
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = zext i32 %.sroa.0.0.copyload.i83 to i64
  %i.kd = add i64 %i.kb, %i.kc
  %i.ke = or i64 %i.kd, -281474976710656
  %i.kf = select i1 %.not.i.i.i.i84, i64 -281474976710656, i64 %i.ke
  %i.kg = load ptr, ptr %i.ci, align 8, !tbaa !102
  store i64 %i.kf, ptr %i.kg, align 8, !tbaa !104
  %.mask = and i32 %i.jf, 255
  %i.kh = icmp eq i32 %.mask, 0
  br i1 %i.kh, label %.critedge, label %bb.ax, !prof !68

bb.ax:                                            ; preds = %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit
  %.not134 = icmp samesign ult i32 %i.jf, 256
  br i1 %.not134, label %bb.ay, label %bb.az, !prof !68

bb.ay:                                            ; preds = %bb.ax
  tail call void @_ZN4llvh15SmallVectorImplIDsE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 noundef %i.cu)
  %1 = add nuw i32 %.038138, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %1, %i.cm
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !212

bb.az:                                            ; preds = %bb.ax
  %i.ki = add nuw i32 %.038138, 1                 ; 2 uses
  %exitcond.not.a = icmp eq i32 %i.ki, %i.cm
  br i1 %exitcond.not.a, label %._crit_edge.thread168, label %.outer, !llvm.loop !212

._crit_edge.thread168:                            ; preds = %bb.az
  store i32 %i.i, ptr %i.h, align 8, !tbaa !95
  br label %bb.ba

._crit_edge:                                      ; preds = %bb.ay
  store i32 %i.i, ptr %i.h, align 8, !tbaa !95
  br i1 %.033141.ph, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %._crit_edge.thread168, %._crit_edge
  %i.kj = load ptr, ptr %i.z, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i.i85 = load i64, ptr %i.kj, align 8, !tbaa !24
  %i.kk = and i64 %.sroa.0.0.copyload.i.i.i85, 281474976710655
  %.not.i86 = icmp eq i64 %i.kk, 0
  %.pre144 = load i32, ptr %i.n, align 8, !tbaa !21 ; 3 uses
  br i1 %.not.i86, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kl = load i32, ptr %i.p, align 4, !tbaa !22
  %.not.i.i87 = icmp ult i32 %.pre144, %i.kl
  br i1 %.not.i.i87, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i89, label %bb.bc, !prof !51

bb.bc:                                            ; preds = %bb.bb
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.km, i64 noundef 0, i64 noundef 2) #10
  %.pre.i.i88 = load i32, ptr %i.n, align 8, !tbaa !21
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i89

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i89: ; preds = %bb.bc, %bb.bb
  %i.kn = phi i32 [ %.pre.i.i88, %bb.bc ], [ %.pre144, %bb.bb ]
  %i.ko = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.kp = zext i32 %i.kn to i64
  %i.kq = getelementptr inbounds nuw [2 x i8], ptr %i.ko, i64 %i.kp
  store i16 10, ptr %i.kq, align 1
  %i.kr = load i32, ptr %i.n, align 8, !tbaa !21
  %i.ks = add i32 %i.kr, 1                        ; 2 uses
  store i32 %i.ks, ptr %i.n, align 8, !tbaa !21
  %i.kt = load i32, ptr %i.h, align 8, !tbaa !95
  %.not4.i90 = icmp eq i32 %i.kt, 0
  br i1 %.not4.i90, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i89, %.lr.ph.i91
  %.03.i92 = phi i32 [ %i.kx, %.lr.ph.i91 ], [ 0, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i89 ]
  %i.ku = load ptr, ptr %i.z, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i2.i93 = load i64, ptr %i.ku, align 8, !tbaa !24
  %i.kv = and i64 %.sroa.0.0.copyload.i.i2.i93, 281474976710655
  %i.kw = inttoptr i64 %i.kv to ptr
  tail call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.kw, ptr noundef nonnull align 8 dereferenceable(16) %i.m) #10
  %i.kx = add nuw i32 %.03.i92, 1                 ; 2 uses
  %i.ky = load i32, ptr %i.h, align 8, !tbaa !95
  %i.kz = icmp ult i32 %i.kx, %i.ky
  br i1 %i.kz, label %.lr.ph.i91, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94.loopexit, !llvm.loop !0

bb.bd:                                            ; preds = %._crit_edge.thread, %._crit_edge
  %i.la = load i32, ptr %i.n, align 8, !tbaa !21  ; 4 uses
  %i.lb = icmp ult i32 %i.x, %i.la
  br i1 %i.lb, label %.sink.split.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lc = icmp ugt i32 %i.x, %i.la
  br i1 %i.lc, label %bb.bf, label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94

bb.bf:                                            ; preds = %bb.be
  %i.ld = load i32, ptr %i.p, align 4, !tbaa !22
  %i.le = icmp ugt i32 %i.x, %i.ld
  br i1 %i.le, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.lf, i64 noundef %i.y, i64 noundef 2) #10
  %.pre.i95 = load i32, ptr %i.n, align 8, !tbaa !21
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pre-phi.i.in = phi i32 [ %.pre.i95, %bb.bg ], [ %i.la, %bb.bf ] ; 2 uses
  %.not13.i = icmp eq i32 %i.x, %.pre-phi.i.in
  br i1 %.not13.i, label %.sink.split.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bh
  %.pre-phi.i = zext i32 %.pre-phi.i.in to i64    ; 2 uses
  %i.lg = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.lh = getelementptr [2 x i8], ptr %i.lg, i64 %.pre-phi.i
  %i.li = sub nsw i64 %i.y, %.pre-phi.i
  %i.lj = shl nsw i64 %i.li, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %i.lh, i8 0, i64 %i.lj, i1 false), !tbaa !132
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.preheader.i, %bb.bh, %bb.bd
  store i32 %i.x, ptr %i.n, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94

_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94.loopexit: ; preds = %.lr.ph.i91
  %.pre143 = load i32, ptr %i.n, align 8, !tbaa !21
  br label %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94

_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94: ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94.loopexit, %.sink.split.i, %bb.be, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i89, %bb.ba
  %i.lk = phi i32 [ %.pre143, %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94.loopexit ], [ %i.x, %.sink.split.i ], [ %i.la, %bb.be ], [ %i.ks, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit.i89 ], [ %.pre144, %bb.ba ] ; 2 uses
  %i.ll = load i32, ptr %i.p, align 4, !tbaa !22
  %.not.i96 = icmp ult i32 %i.lk, %i.ll
  br i1 %.not.i96, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit98, label %bb.bi, !prof !51

bb.bi:                                            ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %i.lm, i64 noundef 0, i64 noundef 2) #10
  %.pre.i97 = load i32, ptr %i.n, align 8, !tbaa !21
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit98

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit98: ; preds = %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94, %bb.bi
  %i.ln = phi i32 [ %.pre.i97, %bb.bi ], [ %i.lk, %_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer6indentEv.exit94 ]
  %i.lo = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.lp = zext i32 %i.ln to i64
  %i.lq = getelementptr inbounds nuw [2 x i8], ptr %i.lo, i64 %i.lp
  store i16 125, ptr %i.lq, align 1
  %i.lr = load i32, ptr %i.n, align 8, !tbaa !21
  %i.ls = add i32 %i.lr, 1
  store i32 %i.ls, ptr %i.n, align 8, !tbaa !21
  br label %.critedge

.critedge:                                        ; preds = %bb.au, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit, %bb.j, %bb.h, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit98, %bb.b
  %.9 = phi i32 [ %i.l, %bb.b ], [ 0, %bb.h ], [ 0, %bb.j ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit98 ], [ 0, %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit ], [ 0, %bb.au ]
  %i.lt = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.lu = zext i32 %i.g to i64
  %i.lv = load ptr, ptr %i.lt, align 8, !tbaa !20
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %i.lu
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !102
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 128
  store i32 %i.g, ptr %i.f, align 8, !tbaa !81
  %i.lz = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  store ptr %i.ly, ptr %i.lz, align 8, !tbaa !50
  store ptr %i.e, ptr %i.d, align 8, !tbaa !49
  ret i32 %.9
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6hermes2vm12_GLOBAL__N_115JSONStringifyer17popValueFromStackEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) unnamed_addr #0 align 2 !guid !215 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !tbaa !24
  %i.c = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !77, !align !78 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = add i32 %i.g, -1                         ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 1632
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !136
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = and i64 %i.n, 1125899902648320
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = icmp ne ptr %i.m, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8489
  %i.s = load i8, ptr %i.r, align 1, !range !135
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i.i.i = select i1 %i.q, i1 %i.t, i1 false, !prof !137
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit, !prof !137

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i32, ptr %i.k, align 4, !tbaa !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 856
  tail call void @_ZN6hermes2vm7HadesGC28snapshotWriteBarrierInternalENS0_13HermesValue32E(ptr noundef nonnull align 8 dereferenceable(8112) %i.u, i32 %.sroa.0.0.copyload.i) #10
  br label %_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit

_ZN6hermes2vm16ArrayStorageBaseINS0_13HermesValue32EE8pop_backERNS0_7RuntimeE.exit: ; preds = %bb.a, %bb.b
  store atomic i32 %i.i, ptr %i.f monotonic, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes18quoteStringForJSONIN4llvh11SmallVectorIDsLj32EEEcEEvRT_NS1_8ArrayRefIT0_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat !guid !217 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 37 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 20 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !22
  %.not.i = icmp ult i32 %i.b, %i.d
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit, label %bb.b, !prof !51

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 2) #10
  %.pre.i = load i32, ptr %i.a, align 8, !tbaa !21
  br label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit

_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i32 [ %.pre.i, %bb.b ], [ %i.b, %bb.a ]
  %i.g = load ptr, ptr %0, align 8, !tbaa !20
  %i.h = zext i32 %i.f to i64
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %i.h
  store i16 34, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !21
  %i.k = add i32 %i.j, 1                          ; 3 uses
  store i32 %i.k, ptr %i.a, align 8, !tbaa !21
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit
  %i.m = phi i32 [ %i.k, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit ], [ %i.dg, %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit41 ] ; 2 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !22
  %.not.i33 = icmp ult i32 %i.m, %i.n
  br i1 %.not.i33, label %_ZN4llvh23SmallVectorTemplateBaseIDsLb1EE9push_backERKDs.exit35, label %bb.c, !prof !51

bb.c:                                             ; preds = %._crit_edge
end_hunk_1
