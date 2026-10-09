Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/HadesGC?download=true
inline.NumInlined: 3055
inline.NumDeleted: 1337
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6hermes2vm11BaseVisitor10visitArrayINS0_7HadesGC12MarkAcceptorELb0EEEvRT_PcRKNS0_8Metadata9ArrayDataE:bb.a
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = sub nsw i64 %i.ba, %i.bq
  %i.bs = ashr i64 %i.br, 3                       ; 2 uses
  %i.bt = and i64 %i.bs, 63
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = lshr i64 %i.bs, 6
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !55
  %i.by = and i64 %i.bx, %i.bu
  %.not.i.i.i.i27 = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.i27, label %bb.o, label %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_17GCHermesValueBaseINS0_11HermesValueEEELb0EE4implERS4_RS7_j.exit.i

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN6hermes2vm7HadesGC12MarkAcceptor4pushEPNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(1208) %1, ptr noundef %i.bb)
  br label %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_17GCHermesValueBaseINS0_11HermesValueEEELb0EE4implERS4_RS7_j.exit.i

bb.p:                                             ; preds = %bb.j
  %.mask.i.i.i.i = and i64 %i.ay, -140737488355328
  %i.bz = icmp eq i64 %.mask.i.i.i.i, -1266637395197952
  br i1 %i.bz, label %bb.q, label %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_17GCHermesValueBaseINS0_11HermesValueEEELb0EE4implERS4_RS7_j.exit.i

bb.q:                                             ; preds = %bb.p
  %i.ca = trunc i64 %i.ay to i32                  ; 2 uses
  %i.cb = and i32 %i.ca, 268435455                ; 2 uses
  %i.cc = icmp ult i32 %i.ca, 536870910
  %i.cd = load i32, ptr %i.av, align 8
  %.not.i3.i.i.i = icmp ult i32 %i.cb, %i.cd
  %or.cond.i.i.i.i = select i1 %i.cc, i1 %.not.i3.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %bb.r, label %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_17GCHermesValueBaseINS0_11HermesValueEEELb0EE4implERS4_RS7_j.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ce = lshr i32 %i.cb, 6
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = load ptr, ptr %i.aw, align 8, !tbaa !250
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.cf ; 2 uses
  %i.ci = and i64 %i.ay, 63
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = load i64, ptr %i.ch, align 8, !tbaa !55
  %i.cl = or i64 %i.ck, %i.cj
  store i64 %i.cl, ptr %i.ch, align 8, !tbaa !55
  br label %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_17GCHermesValueBaseINS0_11HermesValueEEELb0EE4implERS4_RS7_j.exit.i

_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_17GCHermesValueBaseINS0_11HermesValueEEELb0EE4implERS4_RS7_j.exit.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %.078.i25, i64 %i.au
  %i.cn = add nuw i32 %.010.i24, 1                ; 2 uses
  %exitcond.not.i26 = icmp eq i32 %i.cn, %i.i
  br i1 %exitcond.not.i26, label %_ZN6hermes2vm11BaseVisitor16visitArrayObjectINS0_7HadesGC12MarkAcceptorENS0_13GCPointerBaseELb0EEEvRT_Pcjm.exit, label %bb.j, !llvm.loop !680

bb.s:                                             ; preds = %bb.a
  %i.co = zext i8 %i.k to i64
  %.not.i28 = icmp eq i32 %i.i, 0
  br i1 %.not.i28, label %_ZN6hermes2vm11BaseVisitor16visitArrayObjectINS0_7HadesGC12MarkAcceptorENS0_13GCPointerBaseELb0EEEvRT_Pcjm.exit, label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 1160
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 1144
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.t

bb.t:                                             ; preds = %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_17GCHermesValueBaseINS0_13HermesValue32EEELb0EE4implERS4_RS7_j.exit.i, %.lr.ph.i29
  %.010.i30 = phi i32 [ 0, %.lr.ph.i29 ], [ %i.ep, %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_17GCHermesValueBaseINS0_13HermesValue32EEELb0EE4implERS4_RS7_j.exit.i ]
  %.078.i31 = phi ptr [ %i.d, %.lr.ph.i29 ], [ %i.eo, %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_17GCHermesValueBaseINS0_13HermesValue32EEELb0EE4implERS4_RS7_j.exit.i ] ; 3 uses
  %i.ct = load volatile i32, ptr %.078.i31, align 4, !tbaa !22 ; 5 uses
  %i.cu = and i32 %i.ct, 4
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !344, !nonnull !65
  %i.cx = and i32 %i.ct, -8
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = zext i32 %i.cx to i64
  %i.da = add i64 %i.cy, %i.cz                    ; 3 uses
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = load ptr, ptr %i.cs, align 8, !tbaa !345, !nonnull !65, !align !66
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8048
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !234 ; 2 uses
  %i.df = and i64 %i.da, -4194304
  %i.dg = inttoptr i64 %i.df to ptr               ; 2 uses
  %i.dh = icmp eq ptr %i.de, %i.dg
  br i1 %i.dh, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.di = ptrtoint ptr %.078.i31 to i64           ; 2 uses
  %i.dj = and i64 %i.di, -4194304
  %i.dk = inttoptr i64 %i.dj to ptr               ; 2 uses
  %i.dl = icmp eq ptr %i.de, %i.dk
  br i1 %i.dl, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dm = lshr i64 %i.di, 9
  %i.dn = and i64 %i.dm, 8191
  %i.do = getelementptr inbounds nuw i8, ptr %i.dk, i64 %i.dn
  store atomic i8 1, ptr %i.do monotonic, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 16384 ; 2 uses
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.da, %i.dq
  %i.ds = ashr i64 %i.dr, 3                       ; 2 uses
  %i.dt = and i64 %i.ds, 63
  %i.du = shl nuw i64 1, %i.dt
  %i.dv = lshr i64 %i.ds, 6
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dv
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !55
  %i.dy = and i64 %i.dx, %i.du
  %.not.i.i.i.i35 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i.i.i35, label %bb.y, label %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_17GCHermesValueBaseINS0_13HermesValue32EEELb0EE4implERS4_RS7_j.exit.i

bb.y:                                             ; preds = %bb.x
  tail call void @_ZN6hermes2vm7HadesGC12MarkAcceptor4pushEPNS0_6GCCellE(ptr noundef nonnull align 8 dereferenceable(1208) %1, ptr noundef %i.db)
  br label %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_17GCHermesValueBaseINS0_13HermesValue32EEELb0EE4implERS4_RS7_j.exit.i

bb.z:                                             ; preds = %bb.t
  %i.dz = and i32 %i.ct, 7
  %i.ea = icmp eq i32 %i.dz, 5
  br i1 %i.ea, label %bb.aa, label %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_17GCHermesValueBaseINS0_13HermesValue32EEELb0EE4implERS4_RS7_j.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.eb = lshr i32 %i.ct, 3                       ; 2 uses
  %i.ec = and i32 %i.eb, 268435455                ; 2 uses
  %i.ed = icmp ult i32 %i.ct, -16
  %i.ee = load i32, ptr %i.cp, align 8
  %.not.i3.i.i.i33 = icmp ult i32 %i.ec, %i.ee
  %or.cond.i.i.i.i34 = select i1 %i.ed, i1 %.not.i3.i.i.i33, i1 false
  br i1 %or.cond.i.i.i.i34, label %bb.ab, label %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_17GCHermesValueBaseINS0_13HermesValue32EEELb0EE4implERS4_RS7_j.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.ef = lshr i32 %i.ec, 6
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = load ptr, ptr %i.cq, align 8, !tbaa !250
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.eg ; 2 uses
  %i.ej = and i32 %i.eb, 63
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = shl nuw i64 1, %i.ek
  %i.em = load i64, ptr %i.ei, align 8, !tbaa !55
  %i.en = or i64 %i.em, %i.el
  store i64 %i.en, ptr %i.ei, align 8, !tbaa !55
  br label %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_17GCHermesValueBaseINS0_13HermesValue32EEELb0EE4implERS4_RS7_j.exit.i

_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_17GCHermesValueBaseINS0_13HermesValue32EEELb0EE4implERS4_RS7_j.exit.i: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %i.eo = getelementptr inbounds nuw i8, ptr %.078.i31, i64 %i.co
  %i.ep = add nuw i32 %.010.i30, 1                ; 2 uses
  %exitcond.not.i32 = icmp eq i32 %i.ep, %i.i
  br i1 %exitcond.not.i32, label %_ZN6hermes2vm11BaseVisitor16visitArrayObjectINS0_7HadesGC12MarkAcceptorENS0_13GCPointerBaseELb0EEEvRT_Pcjm.exit, label %bb.t, !llvm.loop !681

bb.ac:                                            ; preds = %bb.a
  %i.eq = zext i8 %i.k to i64
  %.not.i36 = icmp eq i32 %i.i, 0
  br i1 %.not.i36, label %_ZN6hermes2vm11BaseVisitor16visitArrayObjectINS0_7HadesGC12MarkAcceptorENS0_13GCPointerBaseELb0EEEvRT_Pcjm.exit, label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %bb.ac
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 1160
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 1144
  %i.et = load ptr, ptr %i.es, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_10GCSymbolIDELb0EE4implERS4_RS5_j.exit.i, %.lr.ph.i37
  %.09.i = phi i32 [ 0, %.lr.ph.i37 ], [ %i.fh, %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_10GCSymbolIDELb0EE4implERS4_RS5_j.exit.i ]
  %.078.i38 = phi ptr [ %i.d, %.lr.ph.i37 ], [ %i.fg, %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_10GCSymbolIDELb0EE4implERS4_RS5_j.exit.i ] ; 2 uses
  %i.eu = load volatile i32, ptr %.078.i38, align 4, !tbaa !22 ; 3 uses
  %i.ev = and i32 %i.eu, 268435455                ; 2 uses
  %i.ew = icmp ult i32 %i.eu, 536870910
  %i.ex = load i32, ptr %i.er, align 8
  %.not.i.i.i.i39 = icmp ult i32 %i.ev, %i.ex
  %or.cond.i.i.i.i40 = select i1 %i.ew, i1 %.not.i.i.i.i39, i1 false
  br i1 %or.cond.i.i.i.i40, label %bb.ae, label %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_10GCSymbolIDELb0EE4implERS4_RS5_j.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.ey = lshr i32 %i.ev, 6
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.ez ; 2 uses
  %i.fb = and i32 %i.eu, 63
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = shl nuw i64 1, %i.fc
  %i.fe = load i64, ptr %i.fa, align 8, !tbaa !55
  %i.ff = or i64 %i.fe, %i.fd
  store i64 %i.ff, ptr %i.fa, align 8, !tbaa !55
  br label %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_10GCSymbolIDELb0EE4implERS4_RS5_j.exit.i

_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_10GCSymbolIDELb0EE4implERS4_RS5_j.exit.i: ; preds = %bb.ae, %bb.ad
  %i.fg = getelementptr inbounds nuw i8, ptr %.078.i38, i64 %i.eq
  %i.fh = add nuw i32 %.09.i, 1                   ; 2 uses
  %exitcond.not.i41 = icmp eq i32 %i.fh, %i.i
  br i1 %exitcond.not.i41, label %_ZN6hermes2vm11BaseVisitor16visitArrayObjectINS0_7HadesGC12MarkAcceptorENS0_13GCPointerBaseELb0EEEvRT_Pcjm.exit, label %bb.ad, !llvm.loop !682

_ZN6hermes2vm11BaseVisitor16visitArrayObjectINS0_7HadesGC12MarkAcceptorENS0_13GCPointerBaseELb0EEEvRT_Pcjm.exit: ; preds = %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_10GCSymbolIDELb0EE4implERS4_RS5_j.exit.i, %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_17GCHermesValueBaseINS0_13HermesValue32EEELb0EE4implERS4_RS7_j.exit.i, %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_17GCHermesValueBaseINS0_11HermesValueEEELb0EE4implERS4_RS7_j.exit.i, %_ZN6hermes2vm11BaseVisitor18ArrayElementAcceptINS0_7HadesGC12MarkAcceptorENS0_13GCPointerBaseELb0EE4implERS4_RS5_j.exit.i, %bb.ac, %bb.s, %bb.i, %bb.b, %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE6insertIPS4_vEES7_S7_T_S8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !252    ; 4 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !299  ; 3 uses
  %i.g = zext i32 %i.f to i64                     ; 5 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  %i.i = icmp eq ptr %1, %i.h
  %i.j = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.k = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 10 uses
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %4 = ashr exact i64 %i.l, 3                     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !300
  %i.o = zext i32 %i.n to i64
  %i.p = sub nsw i64 %i.o, %i.g
  %i.q = icmp ugt i64 %4, %i.p
  br i1 %i.q, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = add nsw i64 %4, %i.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.s, i64 noundef %i.r, i64 noundef 8) #35
  %.pre7.pre.i = load i32, ptr %i.e, align 8, !tbaa !299
  %.pre59.pre = load ptr, ptr %0, align 8, !tbaa !252
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre59 = phi ptr [ %.pre59.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.pre7.i = phi i32 [ %.pre7.pre.i, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %.not.i.i = icmp eq ptr %2, %3
  br i1 %.not.i.i, label %_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE6appendIPS4_vEEvT_S8_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = zext i32 %.pre7.i to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.pre59, i64 %i.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr align 8 %2, i64 %i.l, i1 false)
  %.pre.i = load i32, ptr %i.e, align 8, !tbaa !299
  %.pre58 = load ptr, ptr %0, align 8, !tbaa !252
  br label %_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE6appendIPS4_vEEvT_S8_.exit

_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE6appendIPS4_vEEvT_S8_.exit: ; preds = %bb.d, %bb.e
  %i.v = phi ptr [ %.pre59, %bb.d ], [ %.pre58, %bb.e ]
  %i.w = phi i32 [ %.pre7.i, %bb.d ], [ %.pre.i, %bb.e ]
  %i.x = trunc i64 %4 to i32
  %i.y = add i32 %i.w, %i.x
  store i32 %i.y, ptr %i.e, align 8, !tbaa !299
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.d
  br label %_ZSt4copyIPPN6hermes2vm6GCCellES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.a
  %.idx49 = sub i64 0, %i.l
  %5 = ashr exact i64 %i.l, 3                     ; 6 uses
  %i.aa = add nsw i64 %5, %i.g                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !300
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp ugt i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.g, label %_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE7reserveEm.exit

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.af, i64 noundef %i.aa, i64 noundef 8) #35
  %.pre = load ptr, ptr %0, align 8, !tbaa !252
  %.pre56.a = load i32, ptr %i.e, align 8, !tbaa !299 ; 2 uses
  %.pre61 = zext i32 %.pre56.a to i64
  br label %_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE7reserveEm.exit

_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE7reserveEm.exit: ; preds = %bb.f, %bb.g
  %.pre-phi = phi i64 [ %i.g, %bb.f ], [ %.pre61, %bb.g ] ; 4 uses
  %i.ag = phi i32 [ %i.f, %bb.f ], [ %.pre56.a, %bb.g ] ; 2 uses
  %i.ah = phi ptr [ %i.a, %bb.f ], [ %.pre, %bb.g ] ; 5 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.d ; 14 uses
  %.idx = shl nuw nsw i64 %.pre-phi, 3            ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx ; 4 uses
  %gepdiff = sub nsw i64 %.idx, %i.d              ; 2 uses
  %i.al = ashr exact i64 %gepdiff, 3              ; 8 uses
  %.not = icmp ult i64 %i.al, %5
  br i1 %.not, label %bb.t, label %bb.h

bb.h:                                             ; preds = %_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE7reserveEm.exit
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %.idx49 ; 2 uses
  %i.an = load i32, ptr %i.ab, align 4, !tbaa !300
  %i.ao = zext i32 %i.an to i64
  %i.ap = sub nsw i64 %i.ao, %.pre-phi
  %i.aq = icmp ugt i64 %5, %i.ap
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = add nsw i64 %5, %.pre-phi
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.as, i64 noundef %i.ar, i64 noundef 8) #35
  %.pre.i44 = load i32, ptr %i.e, align 8, !tbaa !299 ; 2 uses
  %.pre11.i = zext i32 %.pre.i44 to i64
  %.pre57 = load ptr, ptr %0, align 8, !tbaa !252
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.at = phi ptr [ %.pre57, %bb.i ], [ %i.ah, %bb.h ]
  %.pre-phi.i = phi i64 [ %.pre11.i, %bb.i ], [ %.pre-phi, %bb.h ]
  %i.au = phi i32 [ %.pre.i44, %bb.i ], [ %i.ag, %bb.h ] ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.pre-phi.i ; 2 uses
  %i.aw = icmp sgt i64 %i.l, 8                    ; 2 uses
  br i1 %i.aw, label %bb.k, label %bb.l, !prof !131

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.av, ptr nonnull align 8 %i.am, i64 %i.l, i1 false)
  %.pre10.i = load i32, ptr %i.e, align 8, !tbaa !299
  br label %_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE6appendISt13move_iteratorIPS4_EvEEvT_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.ax = icmp eq i64 %i.l, 8
  br i1 %i.ax, label %bb.m, label %_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE6appendISt13move_iteratorIPS4_EvEEvT_SA_.exit

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr %i.am, align 8, !tbaa !270
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !270
  br label %_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE6appendISt13move_iteratorIPS4_EvEEvT_SA_.exit

_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE6appendISt13move_iteratorIPS4_EvEEvT_SA_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.az = phi i32 [ %.pre10.i, %bb.k ], [ %i.au, %bb.l ], [ %i.au, %bb.m ]
  %i.ba = trunc i64 %5 to i32
  %i.bb = add i32 %i.az, %i.ba
  store i32 %i.bb, ptr %i.e, align 8, !tbaa !299
  %6 = add i64 %i.d, %i.l
  %gepdiff50 = sub i64 %.idx, %6                  ; 3 uses
  %i.bc = ashr exact i64 %gepdiff50, 3            ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 1
  br i1 %i.bd, label %bb.n, label %bb.o, !prof !131

bb.n:                                             ; preds = %_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE6appendISt13move_iteratorIPS4_EvEEvT_SA_.exit
  %i.be = sub nsw i64 0, %i.bc
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.be
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bf, ptr align 8 %i.aj, i64 %gepdiff50, i1 false)
  br label %_ZSt13move_backwardIPPN6hermes2vm6GCCellES4_ET0_T_S6_S5_.exit

bb.o:                                             ; preds = %_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE6appendISt13move_iteratorIPS4_EvEEvT_SA_.exit
  %i.bg = icmp eq i64 %gepdiff50, 8
  br i1 %i.bg, label %bb.p, label %_ZSt13move_backwardIPPN6hermes2vm6GCCellES4_ET0_T_S6_S5_.exit

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds i8, ptr %i.ak, i64 -8
  %i.bi = load ptr, ptr %i.aj, align 8, !tbaa !270
  store ptr %i.bi, ptr %i.bh, align 8, !tbaa !270
  br label %_ZSt13move_backwardIPPN6hermes2vm6GCCellES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPPN6hermes2vm6GCCellES4_ET0_T_S6_S5_.exit: ; preds = %bb.n, %bb.o, %bb.p
  br i1 %i.aw, label %bb.q, label %bb.r, !prof !131

bb.q:                                             ; preds = %_ZSt13move_backwardIPPN6hermes2vm6GCCellES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.aj, ptr align 8 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIPPN6hermes2vm6GCCellES4_ET0_T_S6_S5_.exit

bb.r:                                             ; preds = %_ZSt13move_backwardIPPN6hermes2vm6GCCellES4_ET0_T_S6_S5_.exit
  %i.bj = icmp eq i64 %i.l, 8
  br i1 %i.bj, label %bb.s, label %_ZSt4copyIPPN6hermes2vm6GCCellES4_ET0_T_S6_S5_.exit

bb.s:                                             ; preds = %bb.r
  %i.bk = load ptr, ptr %2, align 8, !tbaa !270
  store ptr %i.bk, ptr %i.aj, align 8, !tbaa !270
  br label %_ZSt4copyIPPN6hermes2vm6GCCellES4_ET0_T_S6_S5_.exit

bb.t:                                             ; preds = %_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE7reserveEm.exit
  %i.bl = trunc i64 %5 to i32
  %i.bm = add i32 %i.ag, %i.bl                    ; 2 uses
  store i32 %i.bm, ptr %i.e, align 8, !tbaa !299
  %.not.i.i45 = icmp eq i64 %i.d, %.idx
  br i1 %.not.i.i45, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.t
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bn
  %i.bp = sub nsw i64 0, %i.al
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 8 %i.aj, i64 %gepdiff, i1 false)
  %min.iters.check = icmp ult i64 %i.al, 14
  br i1 %min.iters.check, label %.lr.ph.preheader74, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.br = add i64 %i.ai, %i.b
  %i.bs = add i64 %i.c, %i.k
  %i.bt = sub i64 %i.bs, %i.br
  %diff.check = icmp ugt i64 %i.bt, -32
  br i1 %diff.check, label %.lr.ph.preheader74, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.al, -4                      ; 3 uses
  %i.bu = shl nsw i64 %n.vec, 3                   ; 2 uses
  %i.bv = getelementptr i8, ptr %i.aj, i64 %i.bu
  %i.bw = and i64 %i.al, 3
  %i.bx = getelementptr i8, ptr %2, i64 %i.bu     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.by ; 2 uses
  %next.gep70 = getelementptr i8, ptr %2, i64 %i.by ; 2 uses
  %i.bz = getelementptr i8, ptr %next.gep70, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep70, align 8, !tbaa !270
  %wide.load71 = load <2 x ptr>, ptr %i.bz, align 8, !tbaa !270
  %i.ca = getelementptr i8, ptr %next.gep, i64 16
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !270
  store <2 x ptr> %wide.load71, ptr %i.ca, align 8, !tbaa !270
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !683

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader74

.lr.ph.preheader74:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.055.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.preheader ], [ %i.bv, %middle.block ] ; 2 uses
  %.03854.ph = phi i64 [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.preheader ], [ %i.bw, %middle.block ] ; 4 uses
  %.04053.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.bx, %middle.block ] ; 2 uses
  %i.cc = add nsw i64 %.03854.ph, -1
  %xtraiter = and i64 %.03854.ph, 7               ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader74, %.lr.ph.prol
  %.055.prol = phi ptr [ %i.ce, %.lr.ph.prol ], [ %.055.ph, %.lr.ph.preheader74 ] ; 2 uses
  %.03854.prol = phi i64 [ %i.cg, %.lr.ph.prol ], [ %.03854.ph, %.lr.ph.preheader74 ]
  %.04053.prol = phi ptr [ %i.cf, %.lr.ph.prol ], [ %.04053.ph, %.lr.ph.preheader74 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader74 ]
  %i.cd = load ptr, ptr %.04053.prol, align 8, !tbaa !270
  store ptr %i.cd, ptr %.055.prol, align 8, !tbaa !270
  %i.ce = getelementptr inbounds nuw i8, ptr %.055.prol, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.04053.prol, i64 8 ; 3 uses
  %i.cg = add i64 %.03854.prol, -1                ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !684

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader74
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader74 ], [ %i.cf, %.lr.ph.prol ]
  %.055.unr = phi ptr [ %.055.ph, %.lr.ph.preheader74 ], [ %i.ce, %.lr.ph.prol ]
  %.03854.unr = phi i64 [ %.03854.ph, %.lr.ph.preheader74 ], [ %i.cg, %.lr.ph.prol ]
  %.04053.unr = phi ptr [ %.04053.ph, %.lr.ph.preheader74 ], [ %i.cf, %.lr.ph.prol ]
  %i.ch = icmp ult i64 %i.cc, 7
  br i1 %i.ch, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.t
  %.040.lcssa = phi ptr [ %2, %bb.t ], [ %i.bx, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.dh, %.lr.ph ] ; 3 uses
  %.not.i = icmp eq ptr %.040.lcssa, %3
  br i1 %.not.i, label %_ZSt4copyIPPN6hermes2vm6GCCellES4_ET0_T_S6_S5_.exit, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.ci = ptrtoint ptr %.040.lcssa to i64
  %i.cj = sub i64 %i.j, %i.ci
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr align 8 %.040.lcssa, i64 %i.cj, i1 false)
  br label %_ZSt4copyIPPN6hermes2vm6GCCellES4_ET0_T_S6_S5_.exit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.055 = phi ptr [ %i.dg, %.lr.ph ], [ %.055.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.03854 = phi i64 [ %i.di, %.lr.ph ], [ %.03854.unr, %.lr.ph.prol.loopexit ]
  %.04053 = phi ptr [ %i.dh, %.lr.ph ], [ %.04053.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ck = load ptr, ptr %.04053, align 8, !tbaa !270
  store ptr %i.ck, ptr %.055, align 8, !tbaa !270
  %i.cl = getelementptr inbounds nuw i8, ptr %.055, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.04053, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !270
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !270
  %i.co = getelementptr inbounds nuw i8, ptr %.055, i64 16
  %i.cp = getelementptr inbounds nuw i8, ptr %.04053, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !270
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !270
  %i.cr = getelementptr inbounds nuw i8, ptr %.055, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %.04053, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !270
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !270
  %i.cu = getelementptr inbounds nuw i8, ptr %.055, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %.04053, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !270
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !270
  %i.cx = getelementptr inbounds nuw i8, ptr %.055, i64 40
  %i.cy = getelementptr inbounds nuw i8, ptr %.04053, i64 40
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !270
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !270
  %i.da = getelementptr inbounds nuw i8, ptr %.055, i64 48
  %i.db = getelementptr inbounds nuw i8, ptr %.04053, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !270
  store ptr %i.dc, ptr %i.da, align 8, !tbaa !270
  %i.dd = getelementptr inbounds nuw i8, ptr %.055, i64 56
  %i.de = getelementptr inbounds nuw i8, ptr %.04053, i64 56
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !270
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !270
  %i.dg = getelementptr inbounds nuw i8, ptr %.055, i64 64
  %i.dh = getelementptr inbounds nuw i8, ptr %.04053, i64 64 ; 2 uses
  %i.di = add i64 %.03854, -8                     ; 2 uses
  %.not43.7 = icmp eq i64 %i.di, 0
  br i1 %.not43.7, label %._crit_edge, label %.lr.ph, !llvm.loop !685

_ZSt4copyIPPN6hermes2vm6GCCellES4_ET0_T_S6_S5_.exit: ; preds = %bb.u, %._crit_edge, %bb.s, %bb.r, %bb.q, %_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE6appendIPS4_vEEvT_S8_.exit
  %.1 = phi ptr [ %i.z, %_ZN4llvh15SmallVectorImplIPN6hermes2vm6GCCellEE6appendIPS4_vEEvT_S8_.exit ], [ %i.aj, %bb.s ], [ %i.aj, %bb.q ], [ %i.aj, %bb.r ], [ %i.aj, %._crit_edge ], [ %i.aj, %bb.u ]
  ret ptr %.1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm7HadesGC21MarkWeakRootsAcceptorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #38
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm7HadesGC21MarkWeakRootsAcceptor10acceptWeakERNS0_12WeakRootBaseE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !111    ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !687, !nonnull !65, !align !66
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !110, !nonnull !65
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = zext i32 %i.a to i64
  %i.h = add i64 %i.f, %i.g                       ; 2 uses
  %i.i = and i64 %i.h, -4194304
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16384 ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.h, %i.l
  %i.n = ashr i64 %i.m, 3                         ; 2 uses
  %i.o = and i64 %i.n, 63
  %i.p = shl nuw i64 1, %i.o
  %i.q = lshr i64 %i.n, 6
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !55
  %i.t = and i64 %i.p, %i.s
  %.not5 = icmp eq i64 %i.t, 0
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %1, align 4, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK6hermes18ManagedChunkedListINS_2vm11WeakRefSlotELm16EE7forEachIZNS1_6GCBase13markWeakRootsERNS1_16WeakRootAcceptorEbEUlRS2_E_EEvT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %.01218 = load ptr, ptr %0, align 8, !tbaa !690 ; 2 uses
  %.not19 = icmp eq ptr %.01218, null
  br i1 %.not19, label %._crit_edge, label %.preheader

.preheader:                                       ; preds = %bb.a, %.loopexit
  %.01220 = phi ptr [ %.012, %.loopexit ], [ %.01218, %bb.a ] ; 33 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.01220, i64 16
  %i.b = load atomic i8, ptr %i.a monotonic, align 1, !range !226, !noundef !65
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.preheader
  %.0.ptr15 = getelementptr inbounds nuw i8, ptr %.01220, i64 8
  %i.d = load ptr, ptr %1, align 8, !tbaa !212
end_hunk_0
