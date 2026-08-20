inline.NumInlined: 552
inline.NumDeleted: 224
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7Imf_3_411TileOffsets8readFromERNS_7IStreamERbbb
define void @_ZN7Imf_3_411TileOffsets8readFromERNS_7IStreamERbbb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.d, %i.e
  br i1 %.not, label %.loopexit, label %.preheader23

.preheader23:                                     ; preds = %bb.a, %._crit_edge27
  %i.f = phi ptr [ %i.ay, %._crit_edge27 ], [ %i.e, %bb.a ] ; 4 uses
  %i.g = phi ptr [ %i.az, %._crit_edge27 ], [ %i.d, %bb.a ]
  %i.h = phi i64 [ %i.bb, %._crit_edge27 ], [ 0, %bb.a ] ; 3 uses
  %.01928 = phi i32 [ %i.ba, %._crit_edge27 ], [ 0, %bb.a ]
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %.not31 = icmp eq ptr %i.k, %i.l
  br i1 %.not31, label %._crit_edge27, label %.preheader

._crit_edge29:                                    ; preds = %._crit_edge27
  %i.m = icmp eq ptr %i.az, %i.ay
  br i1 %i.m, label %.loopexit, label %.preheader32.i

.preheader32.i:                                   ; preds = %._crit_edge29, %._crit_edge38.i
  %i.n = phi i64 [ %i.ap, %._crit_edge38.i ], [ 0, %._crit_edge29 ]
  %.01939.i = phi i32 [ %i.ao, %._crit_edge38.i ], [ 0, %._crit_edge29 ]
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.ay, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22   ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !25   ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = sdiv exact i64 %i.u, 24
  %.not41.i = icmp eq ptr %i.q, %i.r
  br i1 %.not41.i, label %._crit_edge38.i, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader32.i, %._crit_edge.i
  %i.w = phi i64 [ %i.am, %._crit_edge.i ], [ 0, %.preheader32.i ]
  %.01737.i = phi i32 [ %i.al, %._crit_edge.i ], [ 0, %.preheader32.i ]
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !33   ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !26  ; 3 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %.not35.not.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not35.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.af = add i32 %.036.i, 1                      ; 2 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %.not.i = icmp ugt i64 %i.ae, %i.ag
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !51

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.b
  %i.ah = phi i64 [ %i.ag, %bb.b ], [ 0, %.preheader.i ]
  %.036.i = phi i32 [ %i.af, %bb.b ], [ 0, %.preheader.i ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !34
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNK7Imf_3_411TileOffsets20anyOffsetsAreInvalidEv.exit, label %bb.b

._crit_edge.i:                                    ; preds = %bb.b, %.preheader.i
  %i.al = add i32 %.01737.i, 1                    ; 2 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = icmp ugt i64 %i.v, %i.am
  br i1 %i.an, label %.preheader.i, label %._crit_edge38.i, !llvm.loop !52

._crit_edge38.i:                                  ; preds = %._crit_edge.i, %.preheader32.i
  %i.ao = add i32 %.01939.i, 1                    ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = icmp ugt i64 %i.bf, %i.ap
  br i1 %i.aq, label %.preheader32.i, label %.loopexit, !llvm.loop !53

.preheader:                                       ; preds = %.preheader23, %._crit_edge
  %.pre = phi ptr [ %.pre36, %._crit_edge ], [ %i.l, %.preheader23 ] ; 2 uses
  %i.ar = phi ptr [ %i.bh, %._crit_edge ], [ %i.f, %.preheader23 ]
  %i.as = phi ptr [ %i.bi, %._crit_edge ], [ %i.f, %.preheader23 ]
  %i.at = phi i64 [ %i.bk, %._crit_edge ], [ 0, %.preheader23 ] ; 2 uses
  %.01826 = phi i32 [ %i.bj, %._crit_edge ], [ 0, %.preheader23 ]
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !33
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !26 ; 2 uses
  %.not32 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not32, label %._crit_edge, label %.lr.ph

._crit_edge27.loopexit:                           ; preds = %._crit_edge
  %.pre35 = load ptr, ptr %i.c, align 8, !tbaa !19
  br label %._crit_edge27

._crit_edge27:                                    ; preds = %._crit_edge27.loopexit, %.preheader23
  %i.ay = phi ptr [ %i.bh, %._crit_edge27.loopexit ], [ %i.f, %.preheader23 ] ; 4 uses
  %i.az = phi ptr [ %.pre35, %._crit_edge27.loopexit ], [ %i.g, %.preheader23 ] ; 3 uses
  %i.ba = add i32 %.01928, 1                      ; 2 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.ay to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = sdiv exact i64 %i.be, 24                ; 2 uses
  %i.bg = icmp ugt i64 %i.bf, %i.bb
  br i1 %i.bg, label %.preheader23, label %._crit_edge29, !llvm.loop !63

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.pre36 = phi ptr [ %.pre, %.preheader ], [ %i.cf, %.lr.ph ] ; 2 uses
  %i.bh = phi ptr [ %i.ar, %.preheader ], [ %i.cd, %.lr.ph ] ; 2 uses
  %i.bi = phi ptr [ %i.as, %.preheader ], [ %i.cd, %.lr.ph ] ; 2 uses
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
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !34
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.051
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i64 %i.fd, ptr %i.ff, align 8, !tbaa !34
  %i.fg = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv74
  %i.fh = getelementptr i8, ptr %i.fg, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !34
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.051
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store i64 %i.fi, ptr %i.fk, align 8, !tbaa !34
  %i.fl = getelementptr [8 x i8], ptr %i.bo, i64 %indvars.iv74
  %i.fm = getelementptr i8, ptr %i.fl, i64 24
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !34
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.051
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  store i64 %i.fn, ptr %i.fp, align 8, !tbaa !34
  %indvars.iv.next75.3 = add nsw i64 %indvars.iv74, 4 ; 2 uses
  %i.fq = add nuw i64 %.051, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.fq, %i.ef
  br i1 %exitcond.not.3, label %._crit_edge53.loopexit, label %.lr.ph52, !llvm.loop !79
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK7Imf_3_411TileOffsets7writeToERNS_7OStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 44, ptr %i.b, align 8, !tbaa !34
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 3 uses
  store ptr %i.i, ptr %2, align 8, !tbaa !83
  %i.j = load i64, ptr %i.b, align 8, !tbaa !34   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.i, ptr noundef nonnull align 1 dereferenceable(44) @.str.4, i64 44, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !86
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  invoke void @_ZN7Iex_3_413throwErrnoExcERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc.i
  %i.m = load ptr, ptr %2, align 8, !tbaa !83     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.h
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.h, align 8, !tbaa !85
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.d

bb.c:                                             ; preds = %.noexc.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %2, align 8, !tbaa !83     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.h
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.c
  %i.t = load i64, ptr %i.h, align 8, !tbaa !85
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.q

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19   ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.x, %i.y
  br i1 %.not, label %._crit_edge34, label %.preheader29

.preheader29:                                     ; preds = %bb.d, %._crit_edge32
  %i.z = phi ptr [ %i.an, %._crit_edge32 ], [ %i.y, %bb.d ] ; 4 uses
  %i.aa = phi ptr [ %i.ao, %._crit_edge32 ], [ %i.x, %bb.d ]
  %i.ab = phi i64 [ %i.aq, %._crit_edge32 ], [ 0, %bb.d ] ; 3 uses
  %.01933 = phi i32 [ %i.ap, %._crit_edge32 ], [ 0, %bb.d ]
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !25 ; 2 uses
  %.not35 = icmp eq ptr %i.ae, %i.af
  br i1 %.not35, label %._crit_edge32, label %.preheader

._crit_edge34:                                    ; preds = %._crit_edge32, %bb.d
  ret i64 %i.f

.preheader:                                       ; preds = %.preheader29, %._crit_edge
  %.pre = phi ptr [ %.pre38, %._crit_edge ], [ %i.af, %.preheader29 ] ; 2 uses
  %i.ag = phi ptr [ %i.aw, %._crit_edge ], [ %i.z, %.preheader29 ]
  %i.ah = phi ptr [ %i.ax, %._crit_edge ], [ %i.z, %.preheader29 ]
  %i.ai = phi i64 [ %i.az, %._crit_edge ], [ 0, %.preheader29 ] ; 2 uses
  %.01831 = phi i32 [ %i.ay, %._crit_edge ], [ 0, %.preheader29 ]
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !33
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !26 ; 2 uses
  %.not36 = icmp eq ptr %i.al, %i.am
  br i1 %.not36, label %._crit_edge, label %.lr.ph

._crit_edge32.loopexit:                           ; preds = %._crit_edge
  %.pre37 = load ptr, ptr %i.w, align 8, !tbaa !19
  br label %._crit_edge32

._crit_edge32:                                    ; preds = %._crit_edge32.loopexit, %.preheader29
  %i.an = phi ptr [ %i.aw, %._crit_edge32.loopexit ], [ %i.z, %.preheader29 ] ; 2 uses
  %i.ao = phi ptr [ %.pre37, %._crit_edge32.loopexit ], [ %i.aa, %.preheader29 ] ; 2 uses
  %i.ap = add i32 %.01933, 1                      ; 2 uses
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
end_hunk_0
