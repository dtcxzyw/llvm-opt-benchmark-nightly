inline.NumInlined: 3415
inline.NumDeleted: 1024
begin_hunk_0_@_ZN11OpenImageIO4v3_18RLAInput13seek_subimageEii:bb.a

bb.c:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #30
  unreachable

_ZNK11OpenImageIO4v3_18RLAInput16current_subimageEv.exit: ; preds = %bb.b
  %i.s = icmp eq i32 %1, %i.p
  br i1 %i.s, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %_ZNK11OpenImageIO4v3_18RLAInput16current_subimageEv.exit
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(1024) %0)
  %i.t = load i32, ptr %i.o, align 8, !tbaa !29
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(1024) %0)
          to label %_ZNK11OpenImageIO4v3_18RLAInput16current_subimageEv.exit98 unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #30
  unreachable

_ZNK11OpenImageIO4v3_18RLAInput16current_subimageEv.exit98: ; preds = %bb.d
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(1024) %0)
  %i.w = load i32, ptr %i.o, align 8, !tbaa !29
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(1024) %0)
          to label %_ZNK11OpenImageIO4v3_18RLAInput16current_subimageEv.exit99 unwind label %bb.f

bb.f:                                             ; preds = %_ZNK11OpenImageIO4v3_18RLAInput16current_subimageEv.exit98
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #30
  unreachable

_ZNK11OpenImageIO4v3_18RLAInput16current_subimageEv.exit99: ; preds = %_ZNK11OpenImageIO4v3_18RLAInput16current_subimageEv.exit98
  %i.z = sub nsw i32 %1, %i.t
  %i.aa = icmp slt i32 %1, %i.w
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK11OpenImageIO4v3_18RLAInput16current_subimageEv.exit99
  %i.ab = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.ac = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18RLAInput11read_headerEv(ptr noundef nonnull align 8 dereferenceable(1024) %0)
  br i1 %i.ac, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g, %_ZNK11OpenImageIO4v3_18RLAInput16current_subimageEv.exit99
  %.045 = phi i32 [ %i.z, %_ZNK11OpenImageIO4v3_18RLAInput16current_subimageEv.exit99 ], [ %1, %bb.g ] ; 2 uses
  %i.ad = icmp sgt i32 %.045, 0
  br i1 %i.ad, label %.lr.ph, label %.critedge88

.lr.ph:                                           ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 952
  br label %bb.j

bb.i:                                             ; preds = %bb.m
  %i.af = add nsw i32 %.146194, -1
  %i.ag = icmp sgt i32 %.146194, 1
  br i1 %i.ag, label %bb.j, label %.critedge88, !llvm.loop !68

bb.j:                                             ; preds = %.lr.ph, %bb.i
  %.146194 = phi i32 [ %.045, %.lr.ph ], [ %i.af, %bb.i ] ; 2 uses
  %i.ah = load i32, ptr %i.ae, align 8, !tbaa !70 ; 2 uses
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = sext i32 %i.ah to i64
  %i.aj = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.ai, i32 noundef 0)
  br i1 %i.aj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.1)
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.ak = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18RLAInput11read_headerEv(ptr noundef nonnull align 8 dereferenceable(1024) %0)
  br i1 %i.ak, label %bb.i, label %.loopexit

.critedge:                                        ; preds = %bb.j
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.2)
  br label %.loopexit

.critedge88:                                      ; preds = %bb.i, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 234 ; 2 uses
  %i.an = load i16, ptr %i.am, align 2, !tbaa !71 ; 2 uses
  %or.cond92 = icmp ugt i16 %i.an, 4
  br i1 %or.cond92, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.critedge88
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJsEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.3, ptr noundef nonnull align 2 dereferenceable(2) %i.am)
  br label %.loopexit

bb.o:                                             ; preds = %.critedge88
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 876 ; 3 uses
  %i.ap = load i16, ptr %i.ao, align 4, !tbaa !72
  %or.cond93 = icmp ugt i16 %i.ap, 4
  br i1 %or.cond93, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJsEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.4, ptr noundef nonnull align 2 dereferenceable(2) %i.ao)
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 3 uses
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !73
  %or.cond94 = icmp ugt i16 %i.ar, 4
  br i1 %or.cond94, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJsEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.5, ptr noundef nonnull align 2 dereferenceable(2) %i.aq)
  br label %.loopexit

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 874 ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !tbaa !74
  %i.au = tail call i64 @_ZN11OpenImageIO4v3_18RLAInput20get_channel_typedescEss(ptr noundef nonnull align 8 dereferenceable(1024) %0, i16 noundef signext %i.an, i16 noundef signext %i.at) ; 2 uses
  store i64 %i.au, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 238 ; 6 uses
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !75
  %.not68 = icmp eq i16 %i.aw, 0
  br i1 %.not68, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ax = load i16, ptr %i.ao, align 4, !tbaa !72
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 878
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !76
  %i.ba = tail call i64 @_ZN11OpenImageIO4v3_18RLAInput20get_channel_typedescEss(ptr noundef nonnull align 8 dereferenceable(1024) %0, i16 noundef signext %i.ax, i16 noundef signext %i.az)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.sroa.031.0.copyload = phi i64 [ %i.ba, %bb.t ], [ 256, %bb.s ] ; 2 uses
  store i64 %.sroa.031.0.copyload, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 5 uses
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !77
  %.not69 = icmp eq i16 %i.bc, 0
  br i1 %.not69, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = load i16, ptr %i.aq, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 882
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !78
  %i.bg = tail call i64 @_ZN11OpenImageIO4v3_18RLAInput20get_channel_typedescEss(ptr noundef nonnull align 8 dereferenceable(1024) %0, i16 noundef signext %i.bd, i16 noundef signext %i.bf)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %storemerge70 = phi i64 [ %i.bg, %bb.v ], [ 256, %bb.u ] ; 2 uses
  store i64 %storemerge70, ptr %12, align 8
  %i.bh = tail call noundef i32 @_ZN11OpenImageIO4v3_18TypeDesc14basetype_mergeES1_S1_S1_(i64 %i.au, i64 %.sroa.031.0.copyload, i64 %storemerge70)
  %i.bi = and i32 %i.bh, 255                      ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.x, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.6)
  br label %bb.cx

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit:     ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 6 uses
  %i.bl = load i16, ptr %i.bk, align 4, !tbaa !79 ; 2 uses
  %i.bm = add i16 %i.bl, -4
  %or.cond95 = icmp ult i16 %i.bm, -3
  br i1 %or.cond95, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit
  %i.bn = load i16, ptr %i.av, align 2, !tbaa !75 ; 2 uses
  %or.cond96 = icmp ugt i16 %i.bn, 3
  br i1 %or.cond96, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bo = load i16, ptr %i.bb, align 8, !tbaa !77 ; 2 uses
  %or.cond97 = icmp ugt i16 %i.bo, 256
  br i1 %or.cond97, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %bb.y, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJsssEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.7, ptr noundef nonnull align 2 dereferenceable(2) %i.bk, ptr noundef nonnull align 2 dereferenceable(2) %i.av, ptr noundef nonnull align 2 dereferenceable(2) %i.bb)
  br label %bb.cx

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 226
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !80
  %i.br = sext i16 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 8, !tbaa !81
  %i.bu = sext i16 %i.bt to i32
  %i.bv = add nsw i32 %i.br, 1
  %i.bw = sub nsw i32 %i.bv, %i.bu
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 230 ; 2 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.bz = sext i16 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.cb = load i16, ptr %i.ca, align 4, !tbaa !83
  %i.cc = sext i16 %i.cb to i32
  %80 = sub nsw i32 %i.bz, %i.cc
  %81 = add nsw i32 %80, 1                        ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 828 ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 4, !tbaa !84
  %.not71 = icmp eq i16 %i.ce, 0
  %82 = sdiv i32 %81, 2
  %83 = select i1 %.not71, i32 %81, i32 %82
  %narrow = add nuw nsw i16 %i.bn, %i.bl
  %narrow189 = add nuw nsw i16 %narrow, %i.bo
  %i.cf = zext nneg i16 %narrow189 to i32
  %i.cg = or disjoint i32 %i.bi, 256
  %.sroa.0182.0.insert.insert = zext nneg i32 %i.cg to i64
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %13, i32 noundef %i.bw, i32 noundef %83, i32 noundef %i.cf, i64 %.sroa.0182.0.insert.insert) #28
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 25 uses
  %i.ci = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_(ptr noundef nonnull align 8 dereferenceable(160) %i.ch, ptr noundef nonnull align 8 dereferenceable(160) %13) #28 ; 0 uses
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  %i.cj = load i16, ptr %i.bs, align 8, !tbaa !81
  %i.ck = sext i16 %i.cj to i32
  store i32 %i.ck, ptr %i.ch, align 8, !tbaa !85
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !86
  %i.cn = load i16, ptr %i.bx, align 2, !tbaa !82
  %i.co = xor i16 %i.cn, -1
  %i.cp = sext i16 %i.co to i32
  %i.cq = add i32 %i.cm, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !87
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 218
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !88
  %i.cu = sext i16 %i.ct to i32
  %i.cv = load i16, ptr %i.al, align 8, !tbaa !89
  %i.cw = sext i16 %i.cv to i32                   ; 2 uses
  %i.cx = add nsw i32 %i.cu, 1
  %i.cy = sub nsw i32 %i.cx, %i.cw
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !90
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 222
  %i.db = load i16, ptr %i.da, align 2, !tbaa !91 ; 2 uses
  %i.dc = sext i16 %i.db to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.de = load i16, ptr %i.dd, align 4, !tbaa !92
  %i.df = sext i16 %i.de to i32
  %i.dg = sub nsw i32 %i.dc, %i.df
  %i.dh = add nsw i32 %i.dg, 1                    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.dh, ptr %i.di, align 8, !tbaa !93
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 1, ptr %i.dj, align 4, !tbaa !94
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.cw, ptr %i.dk, align 8, !tbaa !95
  %i.dl = xor i16 %i.db, -1
  %i.dm = sext i16 %i.dl to i32
  %i.dn = add nsw i32 %i.dh, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !96
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 7 uses
  store i32 0, ptr %i.dp, align 8, !tbaa !97
  %i.dq = load i16, ptr %i.bk, align 4, !tbaa !79 ; 2 uses
  %i.dr = icmp sgt i16 %i.dq, 0
  br i1 %i.dr, label %.lr.ph196, label %._crit_edge

.lr.ph196:                                        ; preds = %bb.ab
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.ac

._crit_edge:                                      ; preds = %bb.ac, %bb.ab
  %.lcssa193 = phi i16 [ %i.dq, %bb.ab ], [ %i.ek, %bb.ac ]
  %i.dt = sext i16 %.lcssa193 to i64
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !98
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.dv, i32 1)
  %i.dw = getelementptr inbounds nuw i8, ptr %10, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !99
  %i.dy = zext i8 %i.dx to i64
  %i.dz = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %10) #28
  %i.ea = mul nsw i64 %i.dy, %i.dt
  %i.eb = mul i64 %i.ea, %i.dz
  %i.ec = load i32, ptr %i.dp, align 8, !tbaa !97
  %i.ed = trunc i64 %i.eb to i32
  %i.ee = mul i32 %narrow.i, %i.ed
  %i.ef = add i32 %i.ee, %i.ec
  store i32 %i.ef, ptr %i.dp, align 8, !tbaa !97
  %i.eg = load i16, ptr %i.av, align 2, !tbaa !75 ; 2 uses
  %i.eh = icmp sgt i16 %i.eg, 0
  br i1 %i.eh, label %.lr.ph199, label %._crit_edge200.thread

.lr.ph199:                                        ; preds = %._crit_edge
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph196, %bb.ac
  %.049195 = phi i32 [ 0, %.lr.ph196 ], [ %i.ej, %bb.ac ]
  call void @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 4 dereferenceable(8) %10)
  %i.ej = add nuw nsw i32 %.049195, 1             ; 2 uses
  %i.ek = load i16, ptr %i.bk, align 4, !tbaa !79 ; 2 uses
  %i.el = sext i16 %i.ek to i32
  %i.em = icmp slt i32 %i.ej, %i.el
  br i1 %i.em, label %bb.ac, label %._crit_edge, !llvm.loop !100

._crit_edge200:                                   ; preds = %bb.ad
  %i.en = icmp sgt i16 %i.ep, 0
  br i1 %i.en, label %bb.ae, label %._crit_edge200.thread

bb.ad:                                            ; preds = %.lr.ph199, %bb.ad
  %.050197 = phi i32 [ 0, %.lr.ph199 ], [ %i.eo, %bb.ad ]
  call void @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 4 dereferenceable(8) %11)
  %i.eo = add nuw nsw i32 %.050197, 1             ; 2 uses
  %i.ep = load i16, ptr %i.av, align 2, !tbaa !75 ; 4 uses
  %i.eq = sext i16 %i.ep to i32
  %i.er = icmp slt i32 %i.eo, %i.eq
  br i1 %i.er, label %bb.ad, label %._crit_edge200, !llvm.loop !101

bb.ae:                                            ; preds = %._crit_edge200
  %i.es = load i16, ptr %i.bk, align 4, !tbaa !79
  %i.et = sext i16 %i.es to i32
  br label %._crit_edge200.thread

._crit_edge200.thread:                            ; preds = %._crit_edge, %._crit_edge200, %bb.ae
  %.lcssa192245 = phi i16 [ %i.ep, %bb.ae ], [ %i.ep, %._crit_edge200 ], [ %i.eg, %._crit_edge ]
  %.sink = phi i32 [ %i.et, %bb.ae ], [ -1, %._crit_edge200 ], [ -1, %._crit_edge ]
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 %.sink, ptr %i.eu, align 8, !tbaa !102
  %i.ev = sext i16 %.lcssa192245 to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !98
  %narrow.i100 = call i32 @llvm.smax.i32(i32 %i.ex, i32 1)
  %i.ey = getelementptr inbounds nuw i8, ptr %11, i64 1
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !99
  %i.fa = zext i8 %i.ez to i64
  %i.fb = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %11) #28
  %i.fc = mul nsw i64 %i.fa, %i.ev
  %i.fd = mul i64 %i.fc, %i.fb
  %i.fe = load i32, ptr %i.dp, align 8, !tbaa !97
  %i.ff = trunc i64 %i.fd to i32
  %i.fg = mul i32 %narrow.i100, %i.ff
  %i.fh = add i32 %i.fg, %i.fe
  store i32 %i.fh, ptr %i.dp, align 8, !tbaa !97
  %i.fi = load i16, ptr %i.bb, align 8, !tbaa !77 ; 2 uses
  %i.fj = icmp sgt i16 %i.fi, 0
  br i1 %i.fj, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %._crit_edge200.thread
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fl = getelementptr inbounds nuw i8, ptr %12, i64 1
  %i.fm = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fq = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  br label %bb.af

._crit_edge206:                                   ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit109.thread, %._crit_edge200.thread
  %.lcssa = phi i16 [ %i.fi, %._crit_edge200.thread ], [ %i.hs, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit109.thread ]
  %i.fr = sext i16 %.lcssa to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !98
  %narrow.i102 = call i32 @llvm.smax.i32(i32 %i.ft, i32 1)
  %i.fu = getelementptr inbounds nuw i8, ptr %12, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !99
  %i.fw = zext i8 %i.fv to i64
  %i.fx = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %12) #28
  %i.fy = mul nsw i64 %i.fw, %i.fr
  %i.fz = mul i64 %i.fy, %i.fx
  %i.ga = load i32, ptr %i.dp, align 8, !tbaa !97
  %i.gb = trunc i64 %i.fz to i32
  %i.gc = mul i32 %narrow.i102, %i.gb
  %i.gd = add i32 %i.gc, %i.ga
  store i32 %i.gd, ptr %i.dp, align 8, !tbaa !97
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !103 ; 2 uses
  %i.gg = icmp sgt i32 %i.gf, 1
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !104 ; 8 uses
  br i1 %i.gg, label %.lr.ph211, label %.critedge214

.lr.ph211:                                        ; preds = %._crit_edge206
  %i.gj = load i8, ptr %i.gi, align 4, !tbaa !105
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %wide.trip.count = zext nneg i32 %i.gf to i64
  br label %bb.ak

bb.af:                                            ; preds = %.lr.ph205, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit109.thread
  %.047203 = phi i32 [ -1, %.lr.ph205 ], [ %.148, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit109.thread ] ; 3 uses
  %.055202 = phi i32 [ 0, %.lr.ph205 ], [ %i.hr, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit109.thread ]
  call void @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.fk, ptr noundef nonnull align 4 dereferenceable(8) %12)
  %i.gn = icmp slt i32 %.047203, 0
  br i1 %i.gn, label %bb.ag, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit109.thread

bb.ag:                                            ; preds = %bb.af
  %i.go = load i8, ptr %12, align 8, !tbaa !105   ; 3 uses
  %i.gp = icmp eq i8 %i.go, 11
  %i.gq = load i8, ptr %i.fl, align 1
  %i.gr = icmp eq i8 %i.gq, 1                     ; 3 uses
  %or.cond.i = select i1 %i.gp, i1 %i.gr, i1 false
  %i.gs = load i32, ptr %i.fm, align 4
  %.not.i = icmp eq i32 %i.gs, 0                  ; 3 uses
  %or.cond184 = select i1 %or.cond.i, i1 %.not.i, i1 false
  br i1 %or.cond184, label %bb.ah, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.ag
  %i.gt = icmp eq i8 %i.go, 7
  %or.cond.i104 = select i1 %i.gt, i1 %i.gr, i1 false
  %or.cond186 = select i1 %or.cond.i104, i1 %.not.i, i1 false
  br i1 %or.cond186, label %bb.ah, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit106.thread
end_hunk_0
