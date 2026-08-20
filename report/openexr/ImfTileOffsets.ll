inline.NumInlined: 552
inline.NumDeleted: 224
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7Imf_3_411TileOffsets8readFromERNS_7IStreamERbbb:bb.a
  %i.bj = add i32 %.01826, 1                      ; 2 uses
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %i.bi, i64 %i.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !22
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %.pre36 to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = sdiv exact i64 %i.bq, 24
  %i.bs = icmp ugt i64 %i.br, %i.bk
  br i1 %i.bs, label %.preheader, label %._crit_edge27.loopexit, !llvm.loop !64

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.bt = phi ptr [ %i.cj, %.lr.ph ], [ %i.ax, %.preheader ]
  %i.bu = phi i64 [ %i.cc, %.lr.ph ], [ 0, %.preheader ]
  %.025 = phi i32 [ %i.cb, %.lr.ph ], [ 0, %.preheader ]
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.bw = load ptr, ptr %1, align 8, !tbaa !54
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = call noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a, i32 noundef 8), !inline_history !57 ; 0 uses
  %i.ca = load i64, ptr %i.a, align 8
  store i64 %i.ca, ptr %i.bv, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.cb = add i32 %.025, 1                        ; 2 uses
  %i.cc = zext i32 %i.cb to i64                   ; 2 uses
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !20  ; 3 uses
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.h
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !25 ; 2 uses
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.at ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !33
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !26 ; 2 uses
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 3
  %i.co = icmp ugt i64 %i.cn, %i.cc
  br i1 %i.co, label %.lr.ph, label %._crit_edge, !llvm.loop !65

_ZNK7Imf_3_411TileOffsets20anyOffsetsAreInvalidEv.exit: ; preds = %.lr.ph.i
  store i8 0, ptr %2, align 1, !tbaa !66
  %i.cp = load ptr, ptr %1, align 8, !tbaa !54
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = call noundef i64 %i.cr(ptr noundef nonnull align 8 dereferenceable(40) %1), !inline_history !68
  invoke void @_ZN7Imf_3_411TileOffsets9findTilesERNS_7IStreamEbbb(ptr noundef nonnull readonly align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext false)
          to label %_ZN7Imf_3_411TileOffsets19reconstructFromFileERNS_7IStreamEbb.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNK7Imf_3_411TileOffsets20anyOffsetsAreInvalidEv.exit
  %i.ct = landingpad { ptr, i32 }
          catch ptr null
  %i.cu = extractvalue { ptr, i32 } %i.ct, 0
  %i.cv = call ptr @__cxa_begin_catch(ptr %i.cu) #20 ; 0 uses
  call void @__cxa_end_catch()
  br label %_ZN7Imf_3_411TileOffsets19reconstructFromFileERNS_7IStreamEbb.exit

_ZN7Imf_3_411TileOffsets19reconstructFromFileERNS_7IStreamEbb.exit: ; preds = %_ZNK7Imf_3_411TileOffsets20anyOffsetsAreInvalidEv.exit, %bb.c
  %i.cw = load ptr, ptr %1, align 8, !tbaa !54
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(40) %1), !inline_history !68
  %i.cz = load ptr, ptr %1, align 8, !tbaa !54
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.cs), !inline_history !68
  br label %bb.d

.loopexit:                                        ; preds = %._crit_edge38.i, %bb.a, %._crit_edge29
  store i8 1, ptr %2, align 1, !tbaa !66
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %_ZN7Imf_3_411TileOffsets19reconstructFromFileERNS_7IStreamEbb.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7Imf_3_411TileOffsets8readFromESt6vectorImSaImEERb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20   ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24                  ; 3 uses
  %.not62 = icmp eq ptr %i.c, %i.d
  br i1 %.not62, label %._crit_edge45.thread, label %.preheader38

.preheader38:                                     ; preds = %bb.a, %._crit_edge
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.02944 = phi i64 [ %.130.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv70 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !25   ; 7 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 24                  ; 5 uses
  %.not63 = icmp eq ptr %i.k, %i.l
  br i1 %.not63, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader38
  %min.iters.check = icmp ult i64 %i.p, 9
  br i1 %min.iters.check, label %.lr.ph.preheader111, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.q = add nsw i64 %i.p, -1                     ; 2 uses
  %i.r = and i64 %i.q, 4294967295
  %i.s = icmp eq i64 %i.r, 4294967295
  %i.t = icmp ugt i64 %i.q, 4294967295
  %i.u = or i1 %i.s, %i.t
  br i1 %i.u, label %.lr.ph.preheader111, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.v = and i64 %i.p, 3                          ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 4, i64 %i.v
  %n.vec = sub nsw i64 %i.p, %i.x                 ; 2 uses
  %i.y = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.02944, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ %i.y, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi96 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !33
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.am = insertelement <2 x ptr> poison, ptr %i.ak, i64 0
  %i.an = insertelement <2 x ptr> %i.am, ptr %i.al, i64 1
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !33
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !33
  %i.aq = insertelement <2 x ptr> poison, ptr %i.ao, i64 0
  %i.ar = insertelement <2 x ptr> %i.aq, ptr %i.ap, i64 1
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.at = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.au = insertelement <2 x ptr> poison, ptr %i.as, i64 0
  %i.av = insertelement <2 x ptr> %i.au, ptr %i.at, i64 1
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !26
  %i.ay = insertelement <2 x ptr> poison, ptr %i.aw, i64 0
  %i.az = insertelement <2 x ptr> %i.ay, ptr %i.ax, i64 1
  %i.ba = ptrtoint <2 x ptr> %i.an to <2 x i64>
  %i.bb = ptrtoint <2 x ptr> %i.ar to <2 x i64>
  %i.bc = ptrtoint <2 x ptr> %i.av to <2 x i64>
  %i.bd = ptrtoint <2 x ptr> %i.az to <2 x i64>
  %i.be = sub <2 x i64> %i.ba, %i.bc
  %i.bf = sub <2 x i64> %i.bb, %i.bd
  %i.bg = ashr exact <2 x i64> %i.be, splat (i64 3)
  %i.bh = ashr exact <2 x i64> %i.bf, splat (i64 3)
  %i.bi = add <2 x i64> %i.bg, %vec.phi           ; 2 uses
  %i.bj = add <2 x i64> %i.bh, %vec.phi96         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bj, %i.bi
  %i.bl = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.lr.ph.preheader111

.lr.ph.preheader111:                              ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.13042.ph = phi i64 [ %.02944, %vector.scevcheck ], [ %.02944, %.lr.ph.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph

._crit_edge45:                                    ; preds = %._crit_edge
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !33
  %i.bo = load ptr, ptr %1, align 8, !tbaa !26    ; 7 uses
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = ashr exact i64 %i.br, 3
  %.not = icmp eq i64 %i.bs, %.130.lcssa
  br i1 %.not, label %.preheader36, label %bb.b

._crit_edge45.thread:                             ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !33
  %i.bv = load ptr, ptr %1, align 8, !tbaa !26
  %.not93 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not93, label %_ZNK7Imf_3_411TileOffsets20anyOffsetsAreInvalidEv.exit, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph, %.preheader38
  %.130.lcssa = phi i64 [ %.02944, %.preheader38 ], [ %i.cg, %.lr.ph ] ; 2 uses
  %indvars.iv.next71 = add i64 %indvars.iv70, 1   ; 2 uses
  %i.bw = and i64 %indvars.iv.next71, 4294967295
  %i.bx = icmp ugt i64 %i.h, %i.bw
  br i1 %i.bx, label %.preheader38, label %._crit_edge45, !llvm.loop !72

.lr.ph:                                           ; preds = %.lr.ph.preheader111, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader111 ] ; 2 uses
  %.13042 = phi i64 [ %i.cg, %.lr.ph ], [ %.13042.ph, %.lr.ph.preheader111 ]
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !33
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !26
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 3
  %i.cg = add i64 %i.cf, %.13042                  ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.ch = and i64 %indvars.iv.next, 4294967295
  %i.ci = icmp ugt i64 %i.p, %i.ch
  br i1 %i.ci, label %.lr.ph, label %._crit_edge, !llvm.loop !73

bb.b:                                             ; preds = %._crit_edge45.thread, %._crit_edge45
  %i.cj = tail call ptr @__cxa_allocate_exception(i64 72) #20 ; 3 uses
  invoke void @_ZN7Iex_3_46ArgExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.cj, ptr noundef nonnull @.str.3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTIN7Iex_3_46ArgExcE, ptr nonnull @_ZN7Iex_3_46ArgExcD1Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ck = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cj) #20
  resume { ptr, i32 } %i.ck

.preheader36:                                     ; preds = %._crit_edge45, %._crit_edge57
  %.02760 = phi i64 [ %i.ev, %._crit_edge57 ], [ 0, %._crit_edge45 ] ; 2 uses
  %.02859 = phi i32 [ %.1.lcssa, %._crit_edge57 ], [ 0, %._crit_edge45 ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.02760 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !22 ; 2 uses
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !25 ; 3 uses
  %.not65 = icmp eq ptr %i.cn, %i.co
  br i1 %.not65, label %._crit_edge57, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader36
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = sdiv exact i64 %i.cr, 24
  br label %.preheader

.preheader32.i:                                   ; preds = %._crit_edge57, %._crit_edge38.i
  %i.ct = phi i64 [ %i.dv, %._crit_edge38.i ], [ 0, %._crit_edge57 ]
  %.01939.i = phi i32 [ %i.du, %._crit_edge38.i ], [ 0, %._crit_edge57 ]
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !22 ; 2 uses
  %i.cx = load ptr, ptr %i.cu, align 8, !tbaa !25 ; 3 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = sdiv exact i64 %i.da, 24
  %.not41.i = icmp eq ptr %i.cw, %i.cx
  br i1 %.not41.i, label %._crit_edge38.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader32.i, %._crit_edge.i
  %i.dc = phi i64 [ %i.ds, %._crit_edge.i ], [ 0, %.preheader32.i ]
  %.01737.i = phi i32 [ %i.dr, %._crit_edge.i ], [ 0, %.preheader32.i ]
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !33 ; 2 uses
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !26 ; 3 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 3
  %.not35.not.i = icmp eq ptr %i.df, %i.dg
  br i1 %.not35.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %i.dl = add i32 %.036.i, 1                      ; 2 uses
  %i.dm = zext i32 %i.dl to i64                   ; 2 uses
  %.not.i = icmp ugt i64 %i.dk, %i.dm
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !51

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.e
  %i.dn = phi i64 [ %i.dm, %bb.e ], [ 0, %.preheader.i ]
  %.036.i = phi i32 [ %i.dl, %bb.e ], [ 0, %.preheader.i ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dn
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !34
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_ZNK7Imf_3_411TileOffsets20anyOffsetsAreInvalidEv.exit, label %bb.e

._crit_edge.i:                                    ; preds = %bb.e, %.preheader.i
  %i.dr = add i32 %.01737.i, 1                    ; 2 uses
  %i.ds = zext i32 %i.dr to i64                   ; 2 uses
  %i.dt = icmp ugt i64 %i.db, %i.ds
  br i1 %i.dt, label %.preheader.i, label %._crit_edge38.i, !llvm.loop !52

._crit_edge38.i:                                  ; preds = %._crit_edge.i, %.preheader32.i
  %i.du = add i32 %.01939.i, 1                    ; 2 uses
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = icmp ugt i64 %i.h, %i.dv
  br i1 %i.dw, label %.preheader32.i, label %_ZNK7Imf_3_411TileOffsets20anyOffsetsAreInvalidEv.exit, !llvm.loop !53

_ZNK7Imf_3_411TileOffsets20anyOffsetsAreInvalidEv.exit: ; preds = %._crit_edge38.i, %.lr.ph.i, %._crit_edge45.thread
  %i.dx = phi i8 [ 1, %._crit_edge45.thread ], [ 0, %.lr.ph.i ], [ 1, %._crit_edge38.i ]
  store i8 %i.dx, ptr %2, align 1, !tbaa !66
  ret void

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge53
  %.02656 = phi i64 [ %i.ex, %._crit_edge53 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.155 = phi i32 [ %.2.lcssa, %._crit_edge53 ], [ %.02859, %.preheader.preheader ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %.02656 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !33 ; 2 uses
  %i.eb = load ptr, ptr %i.dy, align 8, !tbaa !26 ; 8 uses
  %.not66 = icmp eq ptr %i.ea, %i.eb
  br i1 %.not66, label %._crit_edge53, label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %.preheader
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64               ; 2 uses
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = ashr exact i64 %i.ee, 3                 ; 6 uses
  %i.eg = sext i32 %.155 to i64                   ; 5 uses
  %min.iters.check98 = icmp ult i64 %i.ef, 4
  br i1 %min.iters.check98, label %.lr.ph52.preheader109, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph52.preheader
  %i.eh = shl nsw i64 %i.eg, 3
  %i.ei = add i64 %i.eh, %i.bq
  %i.ej = sub i64 %i.ei, %i.ed
  %diff.check = icmp ugt i64 %i.ej, -32
  br i1 %diff.check, label %.lr.ph52.preheader109, label %vector.ph99

vector.ph99:                                      ; preds = %vector.memcheck
  %n.vec100 = and i64 %i.ef, -4                   ; 4 uses
  %i.ek = add nsw i64 %n.vec100, %i.eg            ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.bo, i64 %i.eg
  br label %vector.body101

vector.body101:                                   ; preds = %vector.body101, %vector.ph99
  %index102 = phi i64 [ 0, %vector.ph99 ], [ %index.next104, %vector.body101 ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index102 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <2 x i64>, ptr %gep, align 8, !tbaa !34
  %wide.load103 = load <2 x i64>, ptr %i.el, align 8, !tbaa !34
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %index102 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store <2 x i64> %wide.load, ptr %i.em, align 8, !tbaa !34
  store <2 x i64> %wide.load103, ptr %i.en, align 8, !tbaa !34
  %index.next104 = add nuw i64 %index102, 4       ; 2 uses
  %i.eo = icmp eq i64 %index.next104, %n.vec100
  br i1 %i.eo, label %middle.block105, label %vector.body101, !llvm.loop !74

middle.block105:                                  ; preds = %vector.body101
  %cmp.n = icmp eq i64 %i.ef, %n.vec100
  br i1 %cmp.n, label %._crit_edge53.loopexit, label %.lr.ph52.preheader109

.lr.ph52.preheader109:                            ; preds = %vector.memcheck, %.lr.ph52.preheader, %middle.block105
  %indvars.iv74.ph = phi i64 [ %i.eg, %vector.memcheck ], [ %i.eg, %.lr.ph52.preheader ], [ %i.ek, %middle.block105 ] ; 2 uses
  %.051.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph52.preheader ], [ %n.vec100, %middle.block105 ] ; 3 uses
  %xtraiter = and i64 %i.ef, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph52.prol.loopexit, label %.lr.ph52.prol

.lr.ph52.prol:                                    ; preds = %.lr.ph52.preheader109, %.lr.ph52.prol
  %indvars.iv74.prol = phi i64 [ %indvars.iv.next75.prol, %.lr.ph52.prol ], [ %indvars.iv74.ph, %.lr.ph52.preheader109 ] ; 2 uses
  %.051.prol = phi i64 [ %i.es, %.lr.ph52.prol ], [ %.051.ph, %.lr.ph52.preheader109 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph52.prol ], [ 0, %.lr.ph52.preheader109 ]
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv74.prol
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !34
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.051.prol
  store i64 %i.eq, ptr %i.er, align 8, !tbaa !34
  %indvars.iv.next75.prol = add nsw i64 %indvars.iv74.prol, 1 ; 3 uses
  %i.es = add nuw i64 %.051.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph52.prol.loopexit, label %.lr.ph52.prol, !llvm.loop !75

.lr.ph52.prol.loopexit:                           ; preds = %.lr.ph52.prol, %.lr.ph52.preheader109
  %indvars.iv.next75.lcssa110.unr = phi i64 [ poison, %.lr.ph52.preheader109 ], [ %indvars.iv.next75.prol, %.lr.ph52.prol ]
  %indvars.iv74.unr = phi i64 [ %indvars.iv74.ph, %.lr.ph52.preheader109 ], [ %indvars.iv.next75.prol, %.lr.ph52.prol ]
  %.051.unr = phi i64 [ %.051.ph, %.lr.ph52.preheader109 ], [ %i.es, %.lr.ph52.prol ]
  %i.et = sub nsw i64 %.051.ph, %i.ef
  %i.eu = icmp ugt i64 %i.et, -4
  br i1 %i.eu, label %._crit_edge53.loopexit, label %.lr.ph52

._crit_edge57:                                    ; preds = %._crit_edge53, %.preheader36
  %.1.lcssa = phi i32 [ %.02859, %.preheader36 ], [ %.2.lcssa, %._crit_edge53 ]
  %i.ev = add nuw i64 %.02760, 1                  ; 2 uses
  %exitcond81.not = icmp eq i64 %i.ev, %i.h
  br i1 %exitcond81.not, label %.preheader32.i, label %.preheader36, !llvm.loop !77

._crit_edge53.loopexit:                           ; preds = %.lr.ph52.prol.loopexit, %.lr.ph52, %middle.block105
  %indvars.iv.next75.lcssa = phi i64 [ %i.ek, %middle.block105 ], [ %indvars.iv.next75.lcssa110.unr, %.lr.ph52.prol.loopexit ], [ %indvars.iv.next75.3, %.lr.ph52 ]
  %i.ew = trunc nsw i64 %indvars.iv.next75.lcssa to i32
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %._crit_edge53.loopexit, %.preheader
  %.2.lcssa = phi i32 [ %.155, %.preheader ], [ %i.ew, %._crit_edge53.loopexit ] ; 2 uses
  %i.ex = add nuw i64 %.02656, 1                  ; 2 uses
  %exitcond79.not = icmp eq i64 %i.ex, %i.cs
  br i1 %exitcond79.not, label %._crit_edge57, label %.preheader, !llvm.loop !78

.lr.ph52:                                         ; preds = %.lr.ph52.prol.loopexit, %.lr.ph52
  %indvars.iv74 = phi i64 [ %indvars.iv.next75.3, %.lr.ph52 ], [ %indvars.iv74.unr, %.lr.ph52.prol.loopexit ] ; 5 uses
  %.051 = phi i64 [ %i.fq, %.lr.ph52 ], [ %.051.unr, %.lr.ph52.prol.loopexit ] ; 5 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv74
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !34
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.051
  store i64 %i.ez, ptr %i.fa, align 8, !tbaa !34
  %i.fb = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv74
  %i.fc = getelementptr i8, ptr %i.fb, i64 8
end_hunk_0
begin_hunk_1_@_ZNK7Imf_3_411TileOffsets7writeToERNS_7OStreamE:bb.a
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = sdiv exact i64 %i.at, 24
  %i.av = icmp ugt i64 %i.au, %i.aq
  br i1 %i.av, label %.preheader29, label %._crit_edge34, !llvm.loop !87

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.pre38 = phi ptr [ %.pre, %.preheader ], [ %i.bt, %.lr.ph ] ; 2 uses
  %i.aw = phi ptr [ %i.ag, %.preheader ], [ %i.br, %.lr.ph ] ; 2 uses
  %i.ax = phi ptr [ %i.ah, %.preheader ], [ %i.br, %.lr.ph ] ; 2 uses
  %i.ay = add i32 %.01831, 1                      ; 2 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.ab
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !22
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %.pre38 to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = sdiv exact i64 %i.bf, 24
  %i.bh = icmp ugt i64 %i.bg, %i.az
  br i1 %i.bh, label %.preheader, label %._crit_edge32.loopexit, !llvm.loop !88

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.bi = phi ptr [ %i.bx, %.lr.ph ], [ %i.am, %.preheader ]
  %i.bj = phi i64 [ %i.bq, %.lr.ph ], [ 0, %.preheader ]
  %.030 = phi i32 [ %i.bp, %.lr.ph ], [ 0, %.preheader ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.bl, ptr %i.a, align 8
  %i.bm = load ptr, ptr %1, align 8, !tbaa !54
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a, i32 noundef 8), !inline_history !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.bp = add i32 %.030, 1                        ; 2 uses
  %i.bq = zext i32 %i.bp to i64                   ; 2 uses
  %i.br = load ptr, ptr %i.v, align 8, !tbaa !20  ; 3 uses
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %i.ab
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !25 ; 2 uses
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %i.bt, i64 %i.ai ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !33
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !26 ; 2 uses
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 3
  %i.cc = icmp ugt i64 %i.cb, %i.bq
  br i1 %i.cc, label %.lr.ph, label %._crit_edge, !llvm.loop !90
}

declare void @_ZN7Iex_3_413throwErrnoExcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZNK7Imf_3_411TileOffsets12getTileOrderEPiS1_S1_S1_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.5.i.i22.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %5 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %.sroa.5.i.i9.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.5.i.i.i.i.i = alloca [16 x i8], align 8  ; 4 uses
  %6 = alloca %"struct.Imf_3_4::(anonymous namespace)::tilepos", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20   ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24                  ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge139, label %.preheader115

.preheader115:                                    ; preds = %bb.a, %._crit_edge
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.069120 = phi i64 [ %.1.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv159 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !25   ; 7 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 24                  ; 5 uses
  %.not146 = icmp eq ptr %i.k, %i.l
  br i1 %.not146, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader115
  %min.iters.check = icmp ult i64 %i.p, 9
  br i1 %min.iters.check, label %.lr.ph.preheader250, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.q = add nsw i64 %i.p, -1                     ; 2 uses
  %i.r = and i64 %i.q, 4294967295
  %i.s = icmp eq i64 %i.r, 4294967295
  %i.t = icmp ugt i64 %i.q, 4294967295
  %i.u = or i1 %i.s, %i.t
  br i1 %i.u, label %.lr.ph.preheader250, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %i.v = and i64 %i.p, 3                          ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 4, i64 %i.v
  %n.vec = sub nsw i64 %i.p, %i.x                 ; 2 uses
  %i.y = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.069120, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ %i.y, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi227 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !33
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.am = insertelement <2 x ptr> poison, ptr %i.ak, i64 0
  %i.an = insertelement <2 x ptr> %i.am, ptr %i.al, i64 1
  %i.ao = load ptr, ptr %i.ai, align 8, !tbaa !33
  %i.ap = load ptr, ptr %i.aj, align 8, !tbaa !33
  %i.aq = insertelement <2 x ptr> poison, ptr %i.ao, i64 0
  %i.ar = insertelement <2 x ptr> %i.aq, ptr %i.ap, i64 1
  %i.as = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.at = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.au = insertelement <2 x ptr> poison, ptr %i.as, i64 0
  %i.av = insertelement <2 x ptr> %i.au, ptr %i.at, i64 1
  %i.aw = load ptr, ptr %i.ad, align 8, !tbaa !26
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !26
  %i.ay = insertelement <2 x ptr> poison, ptr %i.aw, i64 0
  %i.az = insertelement <2 x ptr> %i.ay, ptr %i.ax, i64 1
  %i.ba = ptrtoint <2 x ptr> %i.an to <2 x i64>
  %i.bb = ptrtoint <2 x ptr> %i.ar to <2 x i64>
  %i.bc = ptrtoint <2 x ptr> %i.av to <2 x i64>
  %i.bd = ptrtoint <2 x ptr> %i.az to <2 x i64>
  %i.be = sub <2 x i64> %i.ba, %i.bc
  %i.bf = sub <2 x i64> %i.bb, %i.bd
  %i.bg = ashr exact <2 x i64> %i.be, splat (i64 3)
  %i.bh = ashr exact <2 x i64> %i.bf, splat (i64 3)
  %i.bi = add <2 x i64> %i.bg, %vec.phi           ; 2 uses
  %i.bj = add <2 x i64> %i.bh, %vec.phi227        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bj, %i.bi
  %i.bl = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  br label %.lr.ph.preheader250

.lr.ph.preheader250:                              ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.1118.ph = phi i64 [ %.069120, %vector.scevcheck ], [ %.069120, %.lr.ph.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph

._crit_edge121:                                   ; preds = %._crit_edge
  %i.bm = icmp ugt i64 %.1.lcssa, 384307168202282325
  br i1 %i.bm, label %.noexc, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %._crit_edge121
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #18
  unreachable

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %._crit_edge121
  %.not.i.i.i.i = icmp eq i64 %.1.lcssa, 0        ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EEC2EmRKS3_.exit, label %.noexc103

.noexc103:                                        ; preds = %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.bn = mul nuw nsw i64 %.1.lcssa, 24
  %i.bo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #19 ; 6 uses
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bo, i64 %.1.lcssa ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 3 uses
  %i.br = add nsw i64 %.1.lcssa, -1               ; 2 uses
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EEC2EmRKS3_.exit, label %bb.b

bb.b:                                             ; preds = %.noexc103
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %i.br, 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx.i.i.i.i.i.i.i ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.b
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.bq, %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !tbaa.struct !92
  %i.bu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bu, %i.bt
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EEC2EmRKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !93

._crit_edge:                                      ; preds = %.lr.ph, %.preheader115
  %.1.lcssa = phi i64 [ %.069120, %.preheader115 ], [ %i.cf, %.lr.ph ] ; 7 uses
  %indvars.iv.next160 = add i64 %indvars.iv159, 1 ; 2 uses
  %i.bv = and i64 %indvars.iv.next160, 4294967295
  %i.bw = icmp ugt i64 %i.h, %i.bv
  br i1 %i.bw, label %.preheader115, label %._crit_edge121, !llvm.loop !94

.lr.ph:                                           ; preds = %.lr.ph.preheader250, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader250 ] ; 2 uses
  %.1118 = phi i64 [ %i.cf, %.lr.ph ], [ %.1118.ph, %.lr.ph.preheader250 ]
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !33
  %i.ca = load ptr, ptr %i.bx, align 8, !tbaa !26
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = ashr exact i64 %i.cd, 3
  %i.cf = add i64 %i.ce, %.1118                   ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.cg = and i64 %indvars.iv.next, 4294967295
  %i.ch = icmp ugt i64 %i.p, %i.cg
  br i1 %i.ch, label %.lr.ph, label %._crit_edge, !llvm.loop !95

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EEC2EmRKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc103, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.069.lcssa187190 = phi i64 [ 0, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ 1, %.noexc103 ], [ %.1.lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 7 uses
  %.sroa.21.0 = phi ptr [ null, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.bp, %.noexc103 ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0107.0 = phi ptr [ null, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.bo, %.noexc103 ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 23 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.bq, %.noexc103 ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 7 uses
  br label %.preheader114

.preheader114:                                    ; preds = %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EEC2EmRKS3_.exit, %._crit_edge132
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %._crit_edge132 ], [ 0, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EEC2EmRKS3_.exit ] ; 3 uses
  %.074134 = phi i64 [ %.175.lcssa, %._crit_edge132 ], [ 0, %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EEC2EmRKS3_.exit ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %indvars.iv171 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !22 ; 2 uses
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !25 ; 3 uses
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = sdiv exact i64 %i.co, 24
  %.not148 = icmp eq ptr %i.ck, %i.cl
  br i1 %.not148, label %._crit_edge132, label %.preheader113.preheader

.preheader113.preheader:                          ; preds = %.preheader114
  %i.cq = trunc nuw i64 %indvars.iv171 to i32
  br label %.preheader113

._crit_edge136:                                   ; preds = %._crit_edge132
  %.not.i.i = icmp eq ptr %.sroa.0107.0, %.0.i.i.i.i.i
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge136
  %i.cr = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.cs = ptrtoint ptr %.sroa.0107.0 to i64       ; 2 uses
  %i.ct = sub i64 %i.cr, %i.cs                    ; 2 uses
  %i.cu = sdiv exact i64 %i.ct, 24
  %i.cv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cu, i1 true)
  %i.cw = shl nuw nsw i64 %i.cv, 1
  %i.cx = xor i64 %i.cw, 126
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %.sroa.0107.0, ptr %.0.i.i.i.i.i, i64 noundef %i.cx)
  %i.cy = icmp sgt i64 %i.ct, 384
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.0107.0, i64 24 ; 3 uses
  br i1 %i.cy, label %.lr.ph.i.i.i.i, label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.h
  %.sroa.0.019.i.idx.i.i.i = phi i64 [ %.sroa.0.019.i.add.i.i.i, %bb.h ], [ 24, %bb.c ] ; 4 uses
  %.pn18.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i, %bb.h ], [ %.sroa.0107.0, %bb.c ] ; 4 uses
  %.sroa.0.019.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0107.0, i64 %.sroa.0.019.i.idx.i.i.i ; 5 uses
  %.val2.i.i.i.i.i = load i64, ptr %.sroa.0.019.i.ptr.i.i.i, align 8, !tbaa !96 ; 4 uses
  %.val3.i.i.i.i.i = load i64, ptr %.sroa.0107.0, align 8, !tbaa !96
  %i.cz = icmp ult i64 %.val2.i.i.i.i.i, %.val3.i.i.i.i.i
  br i1 %i.cz, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i.ptr.i.i.i, i64 24, i1 false), !tbaa.struct !92
  %i.da = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i.i, 24
  br i1 %i.da, label %bb.e, label %bb.f, !prof !98

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0107.0, i64 %.sroa.0.019.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.db = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0107.0, i64 24, i1 false), !tbaa.struct !92
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0107.0, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  %.sroa.5.0..val3.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val3.sroa_idx.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !99
  %.val2.i10.i.i.i.i.i = load i64, ptr %.pn18.i.i.i.i, align 8, !tbaa !96
  %i.dc = icmp ult i64 %.val2.i.i.i.i.i, %.val2.i10.i.i.i.i.i
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.sroa.0.012.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.pn18.i.i.i.i, %bb.g ] ; 4 uses
  %.sroa.08.011.i.i.i.i.i = phi ptr [ %.sroa.0.012.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.012.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !92
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i.i.i.i, i64 -24 ; 2 uses
  %.val2.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !96
  %i.dd = icmp ult i64 %.val2.i.i.i.i.i, %.val2.i.i.i.i.i.i
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i, !llvm.loop !100

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.g
  %.sroa.08.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i.i, %bb.g ], [ %.sroa.0.012.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store i64 %.val2.i.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i.i.i.i, align 8, !tbaa !34
  %.sroa.5.0..val.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val.sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i
  %.sroa.0.019.i.add.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i, 24 ; 2 uses
  %.not.i.i.i.i104 = icmp eq i64 %.sroa.0.019.i.add.i.i.i, 384
  br i1 %.not.i.i.i.i104, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !101

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i.i: ; preds = %bb.h
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0107.0, i64 384 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.de, %.0.i.i.i.i.i
  br i1 %.not4.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i10.i.i.i

.lr.ph.i10.i.i.i:                                 ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.dh, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i ], [ %i.de, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i9.i.i.i)
  %.sroa.06.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.05.i.i.i.i, align 8, !tbaa !34 ; 3 uses
  %.sroa.5.0..val3.sroa_idx.i.i11.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i9.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val3.sroa_idx.i.i11.i.i.i, i64 16, i1 false), !tbaa.struct !99
  %.sroa.0.09.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i.i.i, i64 -24 ; 2 uses
  %.val2.i10.i.i12.i.i.i = load i64, ptr %.sroa.0.09.i.i.i.i.i, align 8, !tbaa !96
  %i.df = icmp ult i64 %.sroa.06.0.copyload.i.i.i.i.i, %.val2.i10.i.i12.i.i.i
  br i1 %i.df, label %.lr.ph.i.i17.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i

.lr.ph.i.i17.i.i.i:                               ; preds = %.lr.ph.i10.i.i.i, %.lr.ph.i.i17.i.i.i
  %.sroa.0.012.i.i18.i.i.i = phi ptr [ %.sroa.0.0.i.i20.i.i.i, %.lr.ph.i.i17.i.i.i ], [ %.sroa.0.09.i.i.i.i.i, %.lr.ph.i10.i.i.i ] ; 4 uses
  %.sroa.08.011.i.i19.i.i.i = phi ptr [ %.sroa.0.012.i.i18.i.i.i, %.lr.ph.i.i17.i.i.i ], [ %.sroa.0.05.i.i.i.i, %.lr.ph.i10.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.i19.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.012.i.i18.i.i.i, i64 24, i1 false), !tbaa.struct !92
  %.sroa.0.0.i.i20.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i18.i.i.i, i64 -24 ; 2 uses
  %.val2.i.i.i21.i.i.i = load i64, ptr %.sroa.0.0.i.i20.i.i.i, align 8, !tbaa !96
  %i.dg = icmp ult i64 %.sroa.06.0.copyload.i.i.i.i.i, %.val2.i.i.i21.i.i.i
  br i1 %i.dg, label %.lr.ph.i.i17.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i, !llvm.loop !100

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i: ; preds = %.lr.ph.i.i17.i.i.i, %.lr.ph.i10.i.i.i
  %.sroa.08.0.lcssa.i.i14.i.i.i = phi ptr [ %.sroa.0.05.i.i.i.i, %.lr.ph.i10.i.i.i ], [ %.sroa.0.012.i.i18.i.i.i, %.lr.ph.i.i17.i.i.i ] ; 2 uses
  store i64 %.sroa.06.0.copyload.i.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i14.i.i.i, align 8, !tbaa !34
  %.sroa.5.0..val.sroa_idx.i.i15.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i14.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val.sroa_idx.i.i15.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i9.i.i.i, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i9.i.i.i)
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i16.i.i.i = icmp eq ptr %i.dh, %.0.i.i.i.i.i
  br i1 %.not.i16.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i10.i.i.i, !llvm.loop !102

bb.i:                                             ; preds = %bb.c
  %.not17.i25.i.i.i = icmp eq ptr %scevgep.i.i.i, %.0.i.i.i.i.i
  br i1 %.not17.i25.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i26.i.i.i

.lr.ph.i26.i.i.i:                                 ; preds = %bb.i, %bb.o
  %.sroa.0.019.i27.i.i.i = phi ptr [ %.sroa.0.0.i36.i.i.i, %bb.o ], [ %scevgep.i.i.i, %bb.i ] ; 7 uses
  %.pn18.i28.i.i.i = phi ptr [ %.sroa.0.019.i27.i.i.i, %bb.o ], [ %.sroa.0107.0, %bb.i ] ; 5 uses
  %.val2.i.i29.i.i.i = load i64, ptr %.sroa.0.019.i27.i.i.i, align 8, !tbaa !96 ; 4 uses
  %.val3.i.i30.i.i.i = load i64, ptr %.sroa.0107.0, align 8, !tbaa !96
  %i.di = icmp ult i64 %.val2.i.i29.i.i.i, %.val3.i.i30.i.i.i
  br i1 %i.di, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.lr.ph.i26.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i27.i.i.i, i64 24, i1 false), !tbaa.struct !92
  %i.dj = ptrtoint ptr %.sroa.0.019.i27.i.i.i to i64
  %i.dk = sub i64 %i.dj, %i.cs                    ; 4 uses
  %i.dl = icmp sgt i64 %i.dk, 24
  br i1 %i.dl, label %bb.k, label %bb.l, !prof !98

bb.k:                                             ; preds = %bb.j
  %7 = getelementptr inbounds nuw i8, ptr %.pn18.i28.i.i.i, i64 48
  %.neg23.i44.i.i.i = udiv exact i64 %i.dk, 24
  %.neg23.neg.i45.i.i.i = sub nsw i64 0, %.neg23.i44.i.i.i
  %8 = getelementptr inbounds [24 x i8], ptr %7, i64 %.neg23.neg.i45.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0107.0, i64 %i.dk, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.dm = icmp eq i64 %i.dk, 24
  br i1 %i.dm, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.dn = getelementptr inbounds nuw i8, ptr %.pn18.i28.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0107.0, i64 24, i1 false), !tbaa.struct !92
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0107.0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.i26.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i22.i.i.i)
  %.sroa.5.0..val3.sroa_idx.i.i31.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i28.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i22.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val3.sroa_idx.i.i31.i.i.i, i64 16, i1 false), !tbaa.struct !99
  %.val2.i10.i.i32.i.i.i = load i64, ptr %.pn18.i28.i.i.i, align 8, !tbaa !96
  %i.do = icmp ult i64 %.val2.i.i29.i.i.i, %.val2.i10.i.i32.i.i.i
  br i1 %i.do, label %.lr.ph.i.i38.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33.i.i.i

.lr.ph.i.i38.i.i.i:                               ; preds = %bb.n, %.lr.ph.i.i38.i.i.i
  %.sroa.0.012.i.i39.i.i.i = phi ptr [ %.sroa.0.0.i.i41.i.i.i, %.lr.ph.i.i38.i.i.i ], [ %.pn18.i28.i.i.i, %bb.n ] ; 4 uses
  %.sroa.08.011.i.i40.i.i.i = phi ptr [ %.sroa.0.012.i.i39.i.i.i, %.lr.ph.i.i38.i.i.i ], [ %.sroa.0.019.i27.i.i.i, %bb.n ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.i40.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.012.i.i39.i.i.i, i64 24, i1 false), !tbaa.struct !92
  %.sroa.0.0.i.i41.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i39.i.i.i, i64 -24 ; 2 uses
  %.val2.i.i.i42.i.i.i = load i64, ptr %.sroa.0.0.i.i41.i.i.i, align 8, !tbaa !96
  %i.dp = icmp ult i64 %.val2.i.i29.i.i.i, %.val2.i.i.i42.i.i.i
  br i1 %i.dp, label %.lr.ph.i.i38.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33.i.i.i, !llvm.loop !100

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33.i.i.i: ; preds = %.lr.ph.i.i38.i.i.i, %bb.n
  %.sroa.08.0.lcssa.i.i34.i.i.i = phi ptr [ %.sroa.0.019.i27.i.i.i, %bb.n ], [ %.sroa.0.012.i.i39.i.i.i, %.lr.ph.i.i38.i.i.i ] ; 2 uses
  store i64 %.val2.i.i29.i.i.i, ptr %.sroa.08.0.lcssa.i.i34.i.i.i, align 8, !tbaa !34
  %.sroa.5.0..val.sroa_idx.i.i35.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i34.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val.sroa_idx.i.i35.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i22.i.i.i, i64 16, i1 false), !tbaa.struct !99
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i22.i.i.i)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i
  %.sroa.0.0.i36.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i27.i.i.i, i64 24 ; 2 uses
  %.not.i37.i.i.i = icmp eq ptr %.sroa.0.0.i36.i.i.i, %.0.i.i.i.i.i
  br i1 %.not.i37.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i26.i.i.i, !llvm.loop !101

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i, %._crit_edge136, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i.i, %bb.i
  br i1 %.not.i.i.i.i, label %._crit_edge139, label %.lr.ph138.preheader

.lr.ph138.preheader:                              ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %xtraiter = and i64 %.069.lcssa187190, 1
  %i.dq = icmp eq i64 %.069.lcssa187190, 1
  br i1 %i.dq, label %.lr.ph138.epil.preheader, label %.lr.ph138.preheader.new

.lr.ph138.preheader.new:                          ; preds = %.lr.ph138.preheader
  %unroll_iter = and i64 %.069.lcssa187190, 576460752303423486
  br label %.lr.ph138

.preheader113:                                    ; preds = %.preheader113.preheader, %._crit_edge128
  %indvars.iv167 = phi i64 [ 0, %.preheader113.preheader ], [ %indvars.iv.next168, %._crit_edge128 ] ; 3 uses
  %.175130 = phi i64 [ %.074134, %.preheader113.preheader ], [ %.2.lcssa, %._crit_edge128 ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %indvars.iv167 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !33 ; 2 uses
  %i.du = load ptr, ptr %i.dr, align 8, !tbaa !26 ; 3 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = ashr exact i64 %i.dx, 3
  %.not149 = icmp eq ptr %i.dt, %i.du
  br i1 %.not149, label %._crit_edge128, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %.preheader113
  %i.dz = trunc nuw i64 %indvars.iv167 to i32
  br label %.lr.ph127

._crit_edge132:                                   ; preds = %._crit_edge128, %.preheader114
  %.175.lcssa = phi i64 [ %.074134, %.preheader114 ], [ %.2.lcssa, %._crit_edge128 ]
  %indvars.iv.next172 = add i64 %indvars.iv171, 1 ; 2 uses
  %i.ea = and i64 %indvars.iv.next172, 4294967295
  %i.eb = icmp ugt i64 %i.h, %i.ea
  br i1 %i.eb, label %.preheader114, label %._crit_edge136, !llvm.loop !103

._crit_edge128:                                   ; preds = %.lr.ph127, %.preheader113
  %.2.lcssa = phi i64 [ %.175130, %.preheader113 ], [ %i.el, %.lr.ph127 ] ; 2 uses
  %indvars.iv.next168 = add i64 %indvars.iv167, 1 ; 2 uses
  %i.ec = and i64 %indvars.iv.next168, 4294967295
  %i.ed = icmp ugt i64 %i.cp, %i.ec
  br i1 %i.ed, label %.preheader113, label %._crit_edge132, !llvm.loop !104

.lr.ph127:                                        ; preds = %.lr.ph127.preheader, %.lr.ph127
  %indvars.iv163 = phi i64 [ 0, %.lr.ph127.preheader ], [ %indvars.iv.next164, %.lr.ph127 ] ; 3 uses
  %.2125 = phi i64 [ %.175130, %.lr.ph127.preheader ], [ %i.el, %.lr.ph127 ] ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv163
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !34
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %.2125 ; 4 uses
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !96
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = trunc nuw i64 %indvars.iv163 to i32
  store i32 %i.ei, ptr %i.eh, align 8, !tbaa !105
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  store i32 %i.dz, ptr %i.ej, align 4, !tbaa !106
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store i32 %i.cq, ptr %i.ek, align 8, !tbaa !107
  %i.el = add i64 %.2125, 1                       ; 2 uses
  %indvars.iv.next164 = add i64 %indvars.iv163, 1 ; 2 uses
  %i.em = and i64 %indvars.iv.next164, 4294967295
  %i.en = icmp ugt i64 %i.dy, %i.em
  br i1 %i.en, label %.lr.ph127, label %._crit_edge128, !llvm.loop !108

._crit_edge139.loopexit.unr-lcssa:                ; preds = %.lr.ph138
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge139, label %.lr.ph138.epil.preheader

.lr.ph138.epil.preheader:                         ; preds = %._crit_edge139.loopexit.unr-lcssa, %.lr.ph138.preheader
  %.068137.epil.init = phi i64 [ 0, %.lr.ph138.preheader ], [ %i.hn, %._crit_edge139.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod254 = trunc i64 %.069.lcssa187190 to i1
  tail call void @llvm.assume(i1 %lcmp.mod254)
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %.068137.epil.init ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !105
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.068137.epil.init
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !21
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.et = load i32, ptr %i.es, align 4, !tbaa !106
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.068137.epil.init
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !21
  br label %._crit_edge139

._crit_edge139:                                   ; preds = %.lr.ph138.epil.preheader, %._crit_edge139.loopexit.unr-lcssa, %bb.a, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %.sroa.0107.0200208219 = phi ptr [ null, %bb.a ], [ %.sroa.0107.0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ %.sroa.0107.0, %._crit_edge139.loopexit.unr-lcssa ], [ %.sroa.0107.0, %.lr.ph138.epil.preheader ] ; 20 uses
  %.sroa.21.0199209218 = phi ptr [ null, %bb.a ], [ %.sroa.21.0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ %.sroa.21.0, %._crit_edge139.loopexit.unr-lcssa ], [ %.sroa.21.0, %.lr.ph138.epil.preheader ] ; 2 uses
  %.069.lcssa187190198210217 = phi i64 [ 0, %bb.a ], [ %.069.lcssa187190, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ %.069.lcssa187190, %._crit_edge139.loopexit.unr-lcssa ], [ %.069.lcssa187190, %.lr.ph138.epil.preheader ] ; 10 uses
  %.not.i.i.i.i191197211216 = phi i1 [ true, %bb.a ], [ true, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ], [ false, %._crit_edge139.loopexit.unr-lcssa ], [ false, %.lr.ph138.epil.preheader ] ; 3 uses
  %i.ev = load i32, ptr %0, align 8, !tbaa !8
  switch i32 %i.ev, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %.preheader108
    i32 2, label %.preheader110
    i32 3, label %bb.r
  ]

.preheader110:                                    ; preds = %._crit_edge139
  br i1 %.not.i.i.i.i191197211216, label %.loopexit, label %.lr.ph141

.lr.ph141:                                        ; preds = %.preheader110
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br label %bb.q

.preheader108:                                    ; preds = %._crit_edge139
  br i1 %.not.i.i.i.i191197211216, label %.loopexit, label %.lr.ph143.preheader

.lr.ph143.preheader:                              ; preds = %.preheader108
  %min.iters.check239 = icmp ult i64 %.069.lcssa187190198210217, 33
  br i1 %min.iters.check239, label %.lr.ph143.preheader247, label %vector.memcheck

.lr.ph143.preheader247:                           ; preds = %vector.body242, %vector.memcheck, %.lr.ph143.preheader
  %.066142.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph143.preheader ], [ %n.vec241, %vector.body242 ] ; 7 uses
  %i.ex = sub i64 %.069.lcssa187190198210217, %.066142.ph
  %.neg = add i64 %.066142.ph, 1
  %xtraiter255 = and i64 %i.ex, 1
  %lcmp.mod256.not = icmp eq i64 %xtraiter255, 0
  br i1 %lcmp.mod256.not, label %.lr.ph143.prol.loopexit, label %.lr.ph143.prol

.lr.ph143.prol:                                   ; preds = %.lr.ph143.preheader247
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0200208219, i64 %.066142.ph
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !107 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.066142.ph
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !21
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.066142.ph
  store i32 %i.fa, ptr %i.fc, align 4, !tbaa !21
  %i.fd = add nuw i64 %.066142.ph, 1
  br label %.lr.ph143.prol.loopexit

.lr.ph143.prol.loopexit:                          ; preds = %.lr.ph143.prol, %.lr.ph143.preheader247
  %.066142.unr = phi i64 [ %.066142.ph, %.lr.ph143.preheader247 ], [ %i.fd, %.lr.ph143.prol ]
  %i.fe = icmp eq i64 %.069.lcssa187190198210217, %.neg
  br i1 %i.fe, label %.loopexit.thread, label %.lr.ph143

vector.memcheck:                                  ; preds = %.lr.ph143.preheader
  %i.ff = shl i64 %.069.lcssa187190198210217, 2   ; 2 uses
  %scevgep = getelementptr i8, ptr %3, i64 %i.ff  ; 2 uses
  %scevgep228 = getelementptr i8, ptr %4, i64 %i.ff ; 2 uses
  %scevgep229 = getelementptr i8, ptr %.sroa.0107.0200208219, i64 16 ; 2 uses
  %i.fg = mul i64 %.069.lcssa187190198210217, 24
  %i.fh = getelementptr i8, ptr %.sroa.0107.0200208219, i64 %i.fg
  %scevgep230 = getelementptr i8, ptr %i.fh, i64 -4 ; 2 uses
  %bound0 = icmp ult ptr %3, %scevgep228
  %bound1 = icmp ult ptr %4, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0231 = icmp ult ptr %3, %scevgep230
  %bound1232 = icmp ult ptr %scevgep229, %scevgep
  %found.conflict233 = and i1 %bound0231, %bound1232
  %conflict.rdx = or i1 %found.conflict, %found.conflict233
  %bound0234 = icmp ult ptr %4, %scevgep230
  %bound1235 = icmp ult ptr %scevgep229, %scevgep228
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx237 = or i1 %conflict.rdx, %found.conflict236
  br i1 %conflict.rdx237, label %.lr.ph143.preheader247, label %vector.ph240

vector.ph240:                                     ; preds = %vector.memcheck
  %i.fi = and i64 %.069.lcssa187190198210217, 7   ; 2 uses
  %i.fj = icmp eq i64 %i.fi, 0
  %i.fk = select i1 %i.fj, i64 8, i64 %i.fi
  %n.vec241 = sub i64 %.069.lcssa187190198210217, %i.fk ; 2 uses
  br label %vector.body242

vector.body242:                                   ; preds = %vector.body242, %vector.ph240
  %index243 = phi i64 [ 0, %vector.ph240 ], [ %index.next244, %vector.body242 ] ; 11 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0200208219, i64 %index243
  %i.fm = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0200208219, i64 %index243
  %i.fn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0200208219, i64 %index243
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0200208219, i64 %index243
  %i.fp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0200208219, i64 %index243
  %i.fq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0200208219, i64 %index243
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0200208219, i64 %index243
  %i.fs = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0200208219, i64 %index243
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 88
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fp, i64 112
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 136
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fr, i64 160
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fs, i64 184
  %i.gb = load i32, ptr %i.ft, align 8, !tbaa !107, !alias.scope !109
  %i.gc = load i32, ptr %i.fu, align 8, !tbaa !107, !alias.scope !109
  %i.gd = load i32, ptr %i.fv, align 8, !tbaa !107, !alias.scope !109
  %i.ge = load i32, ptr %i.fw, align 8, !tbaa !107, !alias.scope !109
  %i.gf = insertelement <4 x i32> poison, i32 %i.gb, i64 0
  %i.gg = insertelement <4 x i32> %i.gf, i32 %i.gc, i64 1
  %i.gh = insertelement <4 x i32> %i.gg, i32 %i.gd, i64 2
  %i.gi = insertelement <4 x i32> %i.gh, i32 %i.ge, i64 3 ; 2 uses
  %i.gj = load i32, ptr %i.fx, align 8, !tbaa !107, !alias.scope !109
  %i.gk = load i32, ptr %i.fy, align 8, !tbaa !107, !alias.scope !109
  %i.gl = load i32, ptr %i.fz, align 8, !tbaa !107, !alias.scope !109
  %i.gm = load i32, ptr %i.ga, align 8, !tbaa !107, !alias.scope !109
  %i.gn = insertelement <4 x i32> poison, i32 %i.gj, i64 0
  %i.go = insertelement <4 x i32> %i.gn, i32 %i.gk, i64 1
  %i.gp = insertelement <4 x i32> %i.go, i32 %i.gl, i64 2
  %i.gq = insertelement <4 x i32> %i.gp, i32 %i.gm, i64 3 ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index243 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  store <4 x i32> %i.gi, ptr %i.gr, align 4, !tbaa !21, !alias.scope !112, !noalias !114
  store <4 x i32> %i.gq, ptr %i.gs, align 4, !tbaa !21, !alias.scope !112, !noalias !114
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index243 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  store <4 x i32> %i.gi, ptr %i.gt, align 4, !tbaa !21, !alias.scope !116, !noalias !109
  store <4 x i32> %i.gq, ptr %i.gu, align 4, !tbaa !21, !alias.scope !116, !noalias !109
  %index.next244 = add nuw i64 %index243, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next244, %n.vec241
  br i1 %i.gv, label %.lr.ph143.preheader247, label %vector.body242, !llvm.loop !117

.preheader:                                       ; preds = %._crit_edge139
  br i1 %.not.i.i.i.i191197211216, label %.loopexit, label %.lr.ph145.preheader

.lr.ph145.preheader:                              ; preds = %.preheader
  %i.gw = shl nuw nsw i64 %.069.lcssa187190198210217, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.gw, i1 false), !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %i.gw, i1 false), !tbaa !21
  br label %.loopexit

bb.p:                                             ; preds = %bb.s
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.lr.ph138:                                        ; preds = %.lr.ph138, %.lr.ph138.preheader.new
  %.068137 = phi i64 [ 0, %.lr.ph138.preheader.new ], [ %i.hn, %.lr.ph138 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph138.preheader.new ], [ %niter.next.1, %.lr.ph138 ]
  %i.gy = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %.068137 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !105
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.068137
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !21
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 12
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !106
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.068137
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !21
  %i.hf = or disjoint i64 %.068137, 1             ; 3 uses
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %i.hf ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !105
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hf
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !21
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !106
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hf
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !21
  %i.hn = add nuw i64 %.068137, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge139.loopexit.unr-lcssa, label %.lr.ph138, !llvm.loop !118

.lr.ph143:                                        ; preds = %.lr.ph143.prol.loopexit, %.lr.ph143
  %.066142 = phi i64 [ %i.hz, %.lr.ph143 ], [ %.066142.unr, %.lr.ph143.prol.loopexit ] ; 5 uses
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0200208219, i64 %.066142
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !107 ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.066142
  store i32 %i.hq, ptr %i.hr, align 4, !tbaa !21
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.066142
  store i32 %i.hq, ptr %i.hs, align 4, !tbaa !21
  %i.ht = add nuw i64 %.066142, 1                 ; 3 uses
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0200208219, i64 %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !107 ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ht
  store i32 %i.hw, ptr %i.hx, align 4, !tbaa !21
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ht
  store i32 %i.hw, ptr %i.hy, align 4, !tbaa !21
  %i.hz = add nuw i64 %.066142, 2                 ; 2 uses
  %exitcond176.not.1 = icmp eq i64 %i.hz, %.069.lcssa187190198210217
  br i1 %exitcond176.not.1, label %.loopexit.thread, label %.lr.ph143, !llvm.loop !119

bb.q:                                             ; preds = %.lr.ph141, %bb.q
  %.0140 = phi i64 [ 0, %.lr.ph141 ], [ %i.ij, %bb.q ] ; 4 uses
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0200208219, i64 %.0140
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !107 ; 2 uses
  %i.id = load i32, ptr %i.ew, align 4, !tbaa !17
  %i.ie = srem i32 %i.ic, %i.id
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0140
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !21
  %i.ig = load i32, ptr %i.ew, align 4, !tbaa !17
  %i.ih = sdiv i32 %i.ic, %i.ig
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0140
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !21
  %i.ij = add nuw i64 %.0140, 1                   ; 2 uses
  %exitcond175.not = icmp eq i64 %i.ij, %.069.lcssa187190198210217
  br i1 %exitcond175.not, label %.loopexit.thread, label %bb.q, !llvm.loop !120

bb.r:                                             ; preds = %._crit_edge139
  %i.ik = tail call ptr @__cxa_allocate_exception(i64 72) #20 ; 3 uses
  invoke void @_ZN7Iex_3_48LogicExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.ik, ptr noundef nonnull @.str.5)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.ik, ptr nonnull @_ZTIN7Iex_3_48LogicExcE, ptr nonnull @_ZN7Iex_3_48LogicExcD1Ev) #18
          to label %bb.w unwind label %bb.p

bb.t:                                             ; preds = %bb.r
  %i.il = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.ik) #20
  br label %bb.u

.loopexit:                                        ; preds = %.lr.ph145.preheader, %.preheader110, %.preheader108, %.preheader, %._crit_edge139
  %.not.i.i.i = icmp eq ptr %.sroa.0107.0200208219, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EED2Ev.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.q, %.lr.ph143.prol.loopexit, %.lr.ph143, %.loopexit
  %i.im = ptrtoint ptr %.sroa.21.0199209218 to i64
  %i.in = ptrtoint ptr %.sroa.0107.0200208219 to i64
  %i.io = sub i64 %i.im, %i.in
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0107.0200208219, i64 noundef %i.io) #17
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EED2Ev.exit

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EED2Ev.exit: ; preds = %.loopexit, %.loopexit.thread
  ret void

bb.u:                                             ; preds = %bb.t, %bb.p
  %.pn = phi { ptr, i32 } [ %i.gx, %bb.p ], [ %i.il, %bb.t ]
  %.not.i.i.i105 = icmp eq ptr %.sroa.0107.0200208219, null
  br i1 %.not.i.i.i105, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EED2Ev.exit106, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ip = ptrtoint ptr %.sroa.21.0199209218 to i64
  %i.iq = ptrtoint ptr %.sroa.0107.0200208219 to i64
  %i.ir = sub i64 %i.ip, %i.iq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0107.0200208219, i64 noundef %i.ir) #17
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EED2Ev.exit106

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EED2Ev.exit106: ; preds = %bb.v, %bb.u
  resume { ptr, i32 } %.pn

bb.w:                                             ; preds = %bb.s
  unreachable
}

declare void @_ZN7Iex_3_48LogicExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN7Iex_3_48LogicExcD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK7Imf_3_411TileOffsets7isEmptyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = icmp eq ptr %i.c, %i.d
  br i1 %i.i, label %.loopexit, label %.preheader31

.preheader31:                                     ; preds = %bb.a, %._crit_edge37
  %i.j = phi i64 [ %i.ak, %._crit_edge37 ], [ 0, %bb.a ]
  %.01938 = phi i32 [ %i.aj, %._crit_edge37 ], [ 0, %bb.a ]
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22   ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !25   ; 3 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 24
  %.not39 = icmp eq ptr %i.m, %i.n
  br i1 %.not39, label %._crit_edge37, label %.preheader

.preheader:                                       ; preds = %.preheader31, %._crit_edge
  %i.s = phi i64 [ %i.ah, %._crit_edge ], [ 0, %.preheader31 ]
  %.01736 = phi i32 [ %i.ag, %._crit_edge ], [ 0, %.preheader31 ]
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !33   ; 2 uses
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !26   ; 3 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3
  %.not2634.not = icmp eq ptr %i.v, %i.w
  br i1 %.not2634.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.ab = add i32 %.035, 1                        ; 2 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %.not26 = icmp ugt i64 %i.aa, %i.ac
  br i1 %.not26, label %.lr.ph, label %._crit_edge, !llvm.loop !121

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %i.ad = phi i64 [ %i.ac, %bb.b ], [ 0, %.preheader ]
  %.035 = phi i32 [ %i.ab, %bb.b ], [ 0, %.preheader ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !34
  %.not = icmp eq i64 %i.af, 0
  br i1 %.not, label %bb.b, label %.loopexit

._crit_edge:                                      ; preds = %bb.b, %.preheader
  %i.ag = add i32 %.01736, 1                      ; 2 uses
  %i.ah = zext i32 %i.ag to i64                   ; 2 uses
  %i.ai = icmp ugt i64 %i.r, %i.ah
  br i1 %i.ai, label %.preheader, label %._crit_edge37, !llvm.loop !122

._crit_edge37:                                    ; preds = %._crit_edge, %.preheader31
  %i.aj = add i32 %.01938, 1                      ; 2 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %.not40 = icmp ugt i64 %i.h, %i.ak
  br i1 %.not40, label %.preheader31, label %.loopexit, !llvm.loop !123

.loopexit:                                        ; preds = %._crit_edge37, %.lr.ph, %bb.a
  %i.al = phi i1 [ false, %.lr.ph ], [ true, %bb.a ], [ true, %._crit_edge37 ]
  ret i1 %i.al
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN7Imf_3_411TileOffsetsclEiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7Imf_3_411TileOffsetsclEiiii(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %3)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7Imf_3_411TileOffsetsclEiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !8
  switch i32 %i.a, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !20
  %i.d = sext i32 %2 to i64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.d
  %i.g = sext i32 %1 to i64
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = sext i32 %3 to i64
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.k
end_hunk_1
