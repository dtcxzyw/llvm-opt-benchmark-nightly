inline.NumInlined: 3200
inline.NumDeleted: 979
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN11OpenImageIO4v3_114SoftimageInput27read_pixels_pure_run_lengthERKNS0_13softimage_pvt13ChannelPacketEPv:bb.a

.split:                                           ; preds = %bb.f
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.split.us, %.split
  %.us-phi79 = phi ptr [ %i.cy, %.split ], [ %i.af, %.split.us ] ; 2 uses
  %.us-phi80 = phi i64 [ %i.da, %.split ], [ %i.ah, %.split.us ]
  %.us-phi81 = phi { ptr, i32 } [ %i.dm, %.split ], [ %i.cu, %.split.us ]
  %.not.i.i.i = icmp eq ptr %.us-phi79, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !86
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = sub i64 %i.dp, %.us-phi80
  call void @_ZdlPvm(ptr noundef nonnull %.us-phi79, i64 noundef %i.dq) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  resume { ptr, i32 } %.us-phi81

.critedge:                                        ; preds = %.lr.ph.split.split.us, %._crit_edge60.split.us, %bb.e, %.lr.ph.split.split, %.preheader52, %bb.g, %.lr.ph.split.us, %bb.b, %bb.c, %bb.a
  %.lcssa54 = phi i1 [ true, %bb.a ], [ false, %bb.g ], [ false, %bb.b ], [ true, %bb.c ], [ false, %.lr.ph.split.us ], [ true, %.preheader52 ], [ false, %.lr.ph.split.split ], [ false, %.lr.ph.split.split.us ], [ true, %._crit_edge60.split.us ], [ false, %bb.e ]
  %i.dr = load ptr, ptr %3, align 8, !tbaa !85    ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIiSaIiEED2Ev.exit50, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !86
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dw) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit50

_ZNSt6vectorIiSaIiEED2Ev.exit50:                  ; preds = %.critedge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i1 %.lcssa54
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_114SoftimageInput28read_pixels_mixed_run_lengthERKNS0_13softimage_pvt13ChannelPacketEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0, ptr noundef nonnull align 1 dereferenceable(4) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  %3 = alloca %"class.std::vector.25", align 8    ; 14 uses
  %i.b = alloca i16, align 2                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !95
  %i.e = lshr i8 %i.d, 3                          ; 4 uses
  %i.f = zext nneg i8 %i.e to i64                 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZNK11OpenImageIO4v3_113softimage_pvt13ChannelPacket8channelsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.25") align 8 %3, ptr noundef nonnull align 1 dereferenceable(4) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 3 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !96
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %.not101 = icmp eq ptr %2, null                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %.not165 = icmp eq i8 %i.e, 0                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 4 uses
  %xtraiter = and i64 %i.f, 1
  %i.m = icmp eq i8 %i.e, 1
  %unroll_iter = and i64 %i.f, 30
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod197 = trunc i8 %i.e to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph158, %.thread120
  %.081150 = phi i64 [ 0, %.lr.ph158 ], [ %.283, %.thread120 ] ; 7 uses
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.o = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %i.n)
  %.not = icmp eq i64 %i.o, 1
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %i.a, align 1, !tbaa !62    ; 4 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.r = add nuw i8 %i.p, 1                       ; 3 uses
  store i8 %i.r, ptr %i.a, align 1, !tbaa !62
  %i.s = zext i8 %i.r to i64
  %i.t = add nuw nsw i64 %.081150, %i.s
  %i.u = load i16, ptr %i.g, align 4, !tbaa !96
  %i.v = zext i16 %i.u to i64                     ; 2 uses
  %i.w = icmp samesign ugt i64 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = sub nsw i64 %i.v, %.081150
  %i.y = trunc i64 %i.x to i8                     ; 2 uses
  store i8 %i.y, ptr %i.a, align 1, !tbaa !62
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = phi i8 [ %i.y, %bb.e ], [ %i.r, %bb.d ]  ; 3 uses
  br i1 %.not101, label %bb.i, label %.preheader125

.preheader125:                                    ; preds = %bb.f
  %i.aa = zext i8 %i.z to i64                     ; 3 uses
  %i.ab = add nuw nsw i64 %.081150, %i.aa
  %.not168 = icmp eq i8 %i.z, 0
  br i1 %.not168, label %.thread120, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader125
  %i.ac = load ptr, ptr %3, align 8, !tbaa !157
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !157
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %.thread120, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge148
  %.093149 = phi i64 [ %i.av, %._crit_edge148 ], [ %.081150, %.lr.ph ] ; 2 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !157   ; 2 uses
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !157 ; 2 uses
  %.not123144 = icmp eq ptr %i.af, %i.ag
  br i1 %.not123144, label %._crit_edge148, label %.lr.ph147

.lr.ph147:                                        ; preds = %.lr.ph.split
  %i.ah = mul nuw nsw i64 %.093149, %i.f
  br i1 %.not165, label %._crit_edge148, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph147, %._crit_edge143.us
  %.sroa.0113.0145.us = phi ptr [ %i.au, %._crit_edge143.us ], [ %i.af, %.lr.ph147 ] ; 2 uses
  %i.ai = load i32, ptr %.sroa.0113.0145.us, align 4, !tbaa !3
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i64 %i.aj, %i.f
  %invariant.gep.us = getelementptr i8, ptr %2, i64 %i.ak
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.al = add nuw nsw i64 %.092141.us, 1          ; 2 uses
  %exitcond176.not = icmp eq i64 %i.al, %i.f
  br i1 %exitcond176.not, label %._crit_edge143.us, label %bb.h, !llvm.loop !166

bb.h:                                             ; preds = %.lr.ph.us, %bb.g
  %.092141.us = phi i64 [ 0, %.lr.ph.us ], [ %i.al, %bb.g ] ; 2 uses
  %i.am = xor i64 %.092141.us, -1
  %i.an = load i32, ptr %i.l, align 4, !tbaa !159
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %i.ah, %i.ao
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %i.ap
  %i.aq = getelementptr i8, ptr %gep.us, i64 %i.am
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.f
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.at = call i64 @fread(ptr noundef %i.ar, i64 noundef 1, i64 noundef 1, ptr noundef %i.as)
  %.not107.us = icmp eq i64 %i.at, 1
  br i1 %.not107.us, label %bb.g, label %.loopexit

._crit_edge143.us:                                ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0113.0145.us, i64 4 ; 2 uses
  %.not123.us = icmp eq ptr %i.au, %i.ag
  br i1 %.not123.us, label %._crit_edge148, label %.lr.ph.us

._crit_edge148:                                   ; preds = %._crit_edge143.us, %.lr.ph147, %.lr.ph.split
  %i.av = add nuw nsw i64 %.093149, 1             ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.ab
  br i1 %i.aw, label %.lr.ph.split, label %.thread120, !llvm.loop !167

bb.i:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.ay = zext i8 %i.z to i64                     ; 2 uses
  %i.az = mul nuw nsw i64 %i.ay, %i.f
  %i.ba = load ptr, ptr %i.k, align 8, !tbaa !82
  %i.bb = load ptr, ptr %3, align 8, !tbaa !85
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 2
  %i.bg = mul i64 %i.az, %i.bf
  %i.bh = call i32 @fseek(ptr noundef %i.ax, i64 noundef %i.bg, i32 noundef 1)
  %.not106 = icmp eq i32 %i.bh, 0
  br i1 %.not106, label %.thread120, label %.loopexit

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i16 0, ptr %i.b, align 2, !tbaa !168
  %i.bi = icmp eq i8 %i.p, -128
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.bk = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 2, ptr noundef %i.bj)
  %.not100 = icmp eq i64 %i.bk, 2
  br i1 %.not100, label %.lr.ph.i.preheader, label %.critedge110

.lr.ph.i.preheader:                               ; preds = %bb.k
  %.promoted = load i16, ptr %i.b, align 2, !tbaa !168
  %i.bl = call noundef i16 @llvm.bswap.i16(i16 %.promoted)
  br label %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit

bb.l:                                             ; preds = %bb.j
  %i.bm = zext i8 %i.p to i16
  %i.bn = add nsw i16 %i.bm, -127
  br label %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit

_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit: ; preds = %.lr.ph.i.preheader, %bb.l
  %i.bo = phi i16 [ %i.bn, %bb.l ], [ %i.bl, %.lr.ph.i.preheader ] ; 3 uses
  br i1 %.not101, label %bb.p, label %bb.m

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit
  %i.bp = load ptr, ptr %i.k, align 8, !tbaa !82
  %i.bq = load ptr, ptr %3, align 8, !tbaa !85    ; 3 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = ashr exact i64 %i.bt, 2
  %i.bv = mul i64 %i.bu, %i.f                     ; 3 uses
  %i.bw = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bv) #32
          to label %bb.n unwind label %bb.o       ; 3 uses

bb.n:                                             ; preds = %bb.m
  %i.bx = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.by = call i64 @fread(ptr noundef nonnull %i.bw, i64 noundef 1, i64 noundef %i.bv, ptr noundef %i.bx)
  %.not104 = icmp eq i64 %i.by, %i.bv
  br i1 %.not104, label %.preheader126, label %.critedge110

.preheader126:                                    ; preds = %bb.n
  %i.bz = zext i16 %i.bo to i64                   ; 2 uses
  %i.ca = add nuw nsw i64 %.081150, %i.bz
  %.not166 = icmp eq i16 %i.bo, 0
  br i1 %.not166, label %._crit_edge138.split, label %.preheader124.lr.ph

.preheader124.lr.ph:                              ; preds = %.preheader126
  %i.cb = load ptr, ptr %i.k, align 8, !tbaa !82  ; 2 uses
  %i.cc = load ptr, ptr %3, align 8, !tbaa !85    ; 3 uses
  %.not167 = icmp eq ptr %i.cb, %i.cc
  %brmerge = select i1 %.not167, i1 true, i1 %.not165
  br i1 %brmerge, label %._crit_edge138.split, label %.preheader124.preheader

.preheader124.preheader:                          ; preds = %.preheader124.lr.ph
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 2
  br label %.preheader124

bb.o:                                             ; preds = %bb.m
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %.not.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.q

.preheader124:                                    ; preds = %.preheader124.preheader, %._crit_edge136
  %.080137 = phi i64 [ %i.cm, %._crit_edge136 ], [ %.081150, %.preheader124.preheader ] ; 2 uses
  %i.ci = mul nuw nsw i64 %.080137, %i.f          ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader124, %._crit_edge
  %.079135 = phi i64 [ 0, %.preheader124 ], [ %i.db, %._crit_edge ] ; 3 uses
  %i.cj = mul i64 %.079135, %i.f
  %i.ck = getelementptr i8, ptr %i.bw, i64 %i.cj  ; 3 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.079135 ; 3 uses
  br i1 %i.m, label %.epil.preheader, label %.preheader.new

._crit_edge136:                                   ; preds = %._crit_edge
  %i.cm = add nuw nsw i64 %.080137, 1             ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %i.ca
  br i1 %i.cn, label %.preheader124, label %._crit_edge138.split, !llvm.loop !169

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %.078134.epil.init = phi i64 [ 0, %.preheader ], [ %i.ec, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod197)
  %i.co = xor i64 %.078134.epil.init, -1
  %i.cp = add nsw i64 %i.co, %i.f                 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.ck, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !62
  %i.cs = load i32, ptr %i.l, align 4, !tbaa !159
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul nsw i64 %i.ci, %i.ct
  %i.cv = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul nsw i64 %i.cw, %i.f
  %i.cy = getelementptr i8, ptr %2, i64 %i.cu
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cx
  %i.da = getelementptr i8, ptr %i.cz, i64 %i.cp
  store i8 %i.cr, ptr %i.da, align 1, !tbaa !62
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.db = add nuw i64 %.079135, 1                 ; 2 uses
  %exitcond175.not = icmp eq i64 %i.db, %i.cg
  br i1 %exitcond175.not, label %._crit_edge136, label %.preheader, !llvm.loop !170

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %.078134 = phi i64 [ %i.ec, %.preheader.new ], [ 0, %.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.dc = xor i64 %.078134, -1
  %i.dd = add nsw i64 %i.dc, %i.f                 ; 2 uses
  %i.de = getelementptr i8, ptr %i.ck, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !62
  %i.dg = load i32, ptr %i.l, align 4, !tbaa !159
  %i.dh = sext i32 %i.dg to i64
  %i.di = mul nsw i64 %i.ci, %i.dh
  %i.dj = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.dk = sext i32 %i.dj to i64
  %i.dl = mul nsw i64 %i.dk, %i.f
  %i.dm = getelementptr i8, ptr %2, i64 %i.di
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.dl
  %i.do = getelementptr i8, ptr %i.dn, i64 %i.dd
  store i8 %i.df, ptr %i.do, align 1, !tbaa !62
  %i.dp = xor i64 %.078134, -2
  %i.dq = add nsw i64 %i.dp, %i.f                 ; 2 uses
  %i.dr = getelementptr i8, ptr %i.ck, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !62
  %i.dt = load i32, ptr %i.l, align 4, !tbaa !159
  %i.du = sext i32 %i.dt to i64
  %i.dv = mul nsw i64 %i.ci, %i.du
  %i.dw = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.dx = sext i32 %i.dw to i64
  %i.dy = mul nsw i64 %i.dx, %i.f
  %i.dz = getelementptr i8, ptr %2, i64 %i.dv
  %i.ea = getelementptr i8, ptr %i.dz, i64 %i.dy
  %i.eb = getelementptr i8, ptr %i.ea, i64 %i.dq
  store i8 %i.ds, ptr %i.eb, align 1, !tbaa !62
  %i.ec = add nuw nsw i64 %.078134, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !171

._crit_edge138.split:                             ; preds = %._crit_edge136, %.preheader124.lr.ph, %.preheader126
  call void @_ZdaPv(ptr noundef nonnull %i.bw) #33
  br label %.critedge

bb.p:                                             ; preds = %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit
  %i.ed = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.ee = load ptr, ptr %i.k, align 8, !tbaa !82
  %i.ef = load ptr, ptr %3, align 8, !tbaa !85
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = ptrtoint ptr %i.ef to i64
  %i.ei = sub i64 %i.eg, %i.eh
  %i.ej = ashr exact i64 %i.ei, 2
  %i.ek = mul i64 %i.ej, %i.f
  %i.el = call i32 @fseek(ptr noundef %i.ed, i64 noundef %i.ek, i32 noundef 1)
  %.not102 = icmp eq i32 %i.el, 0
  br i1 %.not102, label %..critedge_crit_edge, label %.critedge110

..critedge_crit_edge:                             ; preds = %bb.p
  %.pre = zext i16 %i.bo to i64
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %._crit_edge138.split
  %.pre-phi177 = phi i64 [ %.pre, %..critedge_crit_edge ], [ %i.bz, %._crit_edge138.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.thread120

bb.q:                                             ; preds = %bb.o
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !86
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = sub i64 %i.eo, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.ep) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.o, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  resume { ptr, i32 } %i.ch

.thread120:                                       ; preds = %._crit_edge148, %bb.i, %.preheader125, %.lr.ph, %.critedge
  %.pn = phi i64 [ %.pre-phi177, %.critedge ], [ %i.aa, %.lr.ph ], [ %i.ay, %bb.i ], [ 0, %.preheader125 ], [ %i.aa, %._crit_edge148 ]
  %.283 = add nuw nsw i64 %.pn, %.081150          ; 2 uses
  %i.eq = load i16, ptr %i.g, align 4, !tbaa !96
  %i.er = zext i16 %i.eq to i64
  %.not169 = icmp samesign ult i64 %.283, %i.er
  br i1 %.not169, label %bb.b, label %.loopexit, !llvm.loop !172

.critedge110:                                     ; preds = %bb.n, %bb.k, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.i, %.thread120, %bb.h, %bb.a, %.critedge110
  %i.es = phi i1 [ false, %bb.h ], [ false, %.critedge110 ], [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.i ], [ true, %.thread120 ]
  %i.et = load ptr, ptr %3, align 8, !tbaa !85    ; 3 uses
  %.not.i.i.i111 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i111, label %_ZNSt6vectorIiSaIiEED2Ev.exit112, label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !86
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ey) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit112
end_hunk_0
