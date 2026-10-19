Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/alpha?download=true
inline.NumInlined: 763
inline.NumDeleted: 472
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK22Op_flatten_alpha_planeIhE18convert_colorspaceERKNSt3__110shared_ptrIK14HeifPixelImageEERK10ColorStateSA_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_extPK20heif_security_limits:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false), !noalias !201
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store i56 281483566776322, ptr %i.bd, align 8, !noalias !201
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, i8 0, i64 16, i1 false), !noalias !201
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 88
  store i32 1, ptr %i.bf, align 8, !tbaa !127, !noalias !201
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 92
  store i32 1, ptr %i.bg, align 4, !tbaa !128, !noalias !201
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 152
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, i8 0, i64 56, i1 false), !noalias !201
  store i32 1, ptr %i.bi, align 8, !tbaa !129, !noalias !201
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 256
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(74) %i.bj, i8 0, i64 74, i1 false), !noalias !201
  store i32 255, ptr %i.bk, align 8, !tbaa !130, !noalias !201
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i8 0, i64 24, i1 false), !noalias !201
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 384
  store ptr @.str.2, ptr %i.bm, align 8, !tbaa !131, !noalias !201
  store ptr getelementptr inbounds nuw inrange(-16, 184) (i8, ptr @_ZTV14HeifPixelImage, i64 16), ptr %i.az, align 8, !tbaa !126, !noalias !201
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 392
  store <4 x i32> <i32 0, i32 0, i32 99, i32 99>, ptr %i.bn, align 8, !tbaa !132, !noalias !201
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aw, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bo, i8 0, i64 64, i1 false), !noalias !201
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  store ptr %i.az, ptr %13, align 16, !tbaa !134, !alias.scope !203
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  store ptr %i.aw, ptr %i.bp, align 8, !tbaa !135, !alias.scope !203
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 352
  %i.br = getelementptr inbounds nuw i8, ptr %i.aw, i64 344
  %i.bs = atomicrmw add ptr %i.ax, i64 1 monotonic, align 8, !noalias !203 ; 0 uses
  %i.bt = atomicrmw add ptr %i.ay, i64 1 monotonic, align 8, !noalias !203 ; 0 uses
  store ptr %i.az, ptr %i.br, align 8, !tbaa !136, !noalias !203
  store ptr %i.aw, ptr %i.bq, align 8, !tbaa !137, !noalias !203
  %i.bu = atomicrmw add ptr %i.ax, i64 -1 acq_rel, align 8, !noalias !203
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.r, label %_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_.exit

bb.r:                                             ; preds = %.noexc139
  %i.bw = load ptr, ptr %i.aw, align 8, !tbaa !126, !noalias !203
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !203
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #17, !noalias !203, !inline_history !0
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aw) #17, !noalias !203
  br label %_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_.exit

_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_.exit: ; preds = %bb.r, %.noexc139
  %i.bz = load ptr, ptr %13, align 16, !tbaa !134
  %i.ca = load ptr, ptr %10, align 16, !tbaa !45  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 376
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !138
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 380
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !139
  invoke void @_ZN14HeifPixelImage6createEjj15heif_colorspace11heif_chroma(ptr noundef nonnull align 8 dereferenceable(448) %i.bz, i32 noundef %i.at, i32 noundef %i.av, i32 noundef %i.cc, i32 noundef %i.ce)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 3, ptr %i.a, align 4, !tbaa !152
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 4, ptr %i.cf, align 4, !tbaa !152
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 5, ptr %i.cg, align 4, !tbaa !152
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not182 = icmp eq i32 %i.av, 0                 ; 2 uses
  %.not183 = icmp eq i32 %i.at, 0                 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 18
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 14
  %wide.trip.count191 = zext i32 %i.av to i64     ; 2 uses
  %wide.trip.count = zext i32 %i.at to i64        ; 11 uses
  %wide.trip.count201 = zext i32 %i.av to i64
  %wide.trip.count196 = zext i32 %i.at to i64
  %i.cr = add nsw i64 %wide.trip.count191, -1     ; 3 uses
  %min.iters.check = icmp ult i32 %i.at, 4
  %min.iters.check237 = icmp ult i32 %i.at, 16
  %i.cs = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 4294967280   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.cs, 0
  %n.vec243 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %cmp.n254 = icmp eq i64 %n.vec243, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ct = add nsw i64 %wide.trip.count, -1
  br label %bb.w

bb.t:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.cu = load i32, ptr %i.i, align 4, !tbaa !27
  %.not122 = icmp eq i32 %i.cu, 0
  br i1 %.not122, label %.thread222, label %bb.at

bb.u:                                             ; preds = %bb.q
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.v:                                             ; preds = %_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.w:                                             ; preds = %bb.s, %.loopexit
  %.0118.idx181 = phi i64 [ 0, %bb.s ], [ %.0118.add, %.loopexit ] ; 2 uses
  %.0118.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0118.idx181
  %i.cx = load i32, ptr %.0118.ptr, align 4, !tbaa !152 ; 8 uses
  %i.cy = load ptr, ptr %13, align 16, !tbaa !134
  %i.cz = load i32, ptr %i.ch, align 4, !tbaa !142
  invoke void @_ZN14HeifPixelImage11add_channelE12heif_channeljjiPK20heif_security_limits23heif_component_datatype(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %14, ptr noundef nonnull align 8 dereferenceable(448) %i.cy, i32 noundef %i.cx, i32 noundef %i.at, i32 noundef %i.av, i32 noundef %i.cz, ptr noundef %7, i32 noundef 0)
          to label %bb.x unwind label %bb.ar

bb.x:                                             ; preds = %bb.w
  %i.da = load i8, ptr %i.ci, align 8
  %i.db = trunc i8 %i.da to i1
  br i1 %i.db, label %bb.y, label %_ZN5ErrorD2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.dc = load ptr, ptr %i.cj, align 8, !tbaa !132
  %i.dd = load i64, ptr %i.ci, align 8
  %i.de = and i64 %i.dd, -2
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.de) #18
  br label %_ZN5ErrorD2Ev.exit

_ZN5ErrorD2Ev.exit:                               ; preds = %bb.x, %bb.y
  %i.df = load ptr, ptr %10, align 16, !tbaa !45
  %i.dg = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.df, i32 noundef 6)
          to label %.noexc140 unwind label %bb.ar ; 3 uses

.noexc140:                                        ; preds = %_ZN5ErrorD2Ev.exit
  %.not.i.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, label %bb.z

bb.z:                                             ; preds = %.noexc140
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 80
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !159
  %i.dj = shl i64 %i.di, 32
  %i.dk = ashr exact i64 %i.dj, 32
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 56
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !160
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit: ; preds = %bb.z, %.noexc140
  %.0172 = phi i64 [ %i.dk, %bb.z ], [ 0, %.noexc140 ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.dm, %bb.z ], [ null, %.noexc140 ] ; 4 uses
  %i.dn = load ptr, ptr %10, align 16, !tbaa !45
  %i.do = invoke noundef zeroext i16 @_ZNK14HeifPixelImage18get_bits_per_pixelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.dn, i32 noundef 6)
          to label %bb.aa unwind label %bb.ar

bb.aa:                                            ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit
  %i.dp = zext i16 %i.do to i32                   ; 7 uses
  %notmask = shl nsw i32 -1, %i.dp
  %i.dq = trunc i32 %notmask to i8
  %i.dr = xor i8 %i.dq, -1                        ; 2 uses
  %i.ds = load ptr, ptr %10, align 16, !tbaa !45
  %i.dt = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.ds, i32 noundef %i.cx)
          to label %.noexc143 unwind label %bb.ar ; 3 uses

.noexc143:                                        ; preds = %bb.aa
  %.not.i.i.i141 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i.i141, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit144, label %bb.ab

bb.ab:                                            ; preds = %.noexc143
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !159
  %i.dw = shl i64 %i.dv, 32
  %i.dx = ashr exact i64 %i.dw, 32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 56
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !160
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit144

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit144: ; preds = %bb.ab, %.noexc143
  %.0171 = phi i64 [ %i.dx, %bb.ab ], [ 0, %.noexc143 ] ; 4 uses
  %.0.i.i.i142 = phi ptr [ %i.dz, %bb.ab ], [ null, %.noexc143 ] ; 4 uses
  %i.ea = load ptr, ptr %13, align 16, !tbaa !134
  %i.eb = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.ea, i32 noundef %i.cx)
          to label %.noexc146 unwind label %bb.ar ; 3 uses

.noexc146:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit144
  %.not.i.i145 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i145, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, label %bb.ac

bb.ac:                                            ; preds = %.noexc146
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 80
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !159
  %i.ee = shl i64 %i.ed, 32
  %i.ef = ashr exact i64 %i.ee, 32
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !160
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit: ; preds = %bb.ac, %.noexc146
  %.0 = phi i64 [ %i.ef, %bb.ac ], [ 0, %.noexc146 ] ; 4 uses
  %.0.i.i = phi ptr [ %i.eh, %bb.ac ], [ null, %.noexc146 ] ; 5 uses
  %i.ei = load i32, ptr %i.i, align 4, !tbaa !27
  switch i32 %i.ei, label %bb.ak [
    i32 1, label %bb.ae
    i32 2, label %bb.ad
  ]

bb.ad:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit
  %i.ej = load i16, ptr %i.ck, align 4, !tbaa !161
  %i.ek = icmp eq i16 %i.ej, 0
  br i1 %i.ek, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %bb.ad
  switch i32 %i.cx, label %bb.ai [
    i32 3, label %bb.af
    i32 4, label %bb.ag
    i32 5, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  %i.el = load i16, ptr %i.cn, align 4, !tbaa !162
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.em = load i16, ptr %i.cm, align 2, !tbaa !163
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %i.en = load i16, ptr %i.cl, align 4, !tbaa !164
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ae, %bb.ah, %bb.ag, %bb.af
  %.0117 = phi i16 [ %i.en, %bb.ah ], [ %i.el, %bb.af ], [ %i.em, %bb.ag ], [ 0, %bb.ae ]
  %i.eo = load ptr, ptr %10, align 16, !tbaa !45
  %i.ep = invoke noundef zeroext i16 @_ZNK14HeifPixelImage18get_bits_per_pixelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.eo, i32 noundef %i.cx)
          to label %bb.aj unwind label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not182, label %.loopexit, label %.preheader174.lr.ph

.preheader174.lr.ph:                              ; preds = %bb.aj
  %i.eq = zext i16 %.0117 to i32
  %i.er = zext i16 %i.ep to i32
  %i.es = sub nsw i32 16, %i.er
  %i.et = lshr i32 %i.eq, %i.es
  %i.eu = and i32 %i.et, 255                      ; 5 uses
  %i.ev = zext i8 %i.dr to i32                    ; 5 uses
  br i1 %.not183, label %.loopexit, label %.preheader174.preheader

.preheader174.preheader:                          ; preds = %.preheader174.lr.ph
  %scevgep = getelementptr i8, ptr %.0.i.i, i64 %wide.trip.count
  %i.ew = mul i64 %i.cr, %.0
  %scevgep226 = getelementptr i8, ptr %scevgep, i64 %i.ew ; 2 uses
  %scevgep227 = getelementptr i8, ptr %.0.i.i.i, i64 %wide.trip.count
  %i.ex = mul i64 %i.cr, %.0172
  %scevgep228 = getelementptr i8, ptr %scevgep227, i64 %i.ex
  %scevgep229 = getelementptr i8, ptr %.0.i.i.i142, i64 %wide.trip.count
  %i.ey = mul i64 %i.cr, %.0171
  %scevgep230 = getelementptr i8, ptr %scevgep229, i64 %i.ey
  %bound0 = icmp ult ptr %.0.i.i, %scevgep228
  %bound1 = icmp ult ptr %.0.i.i.i, %scevgep226
  %found.conflict = and i1 %bound0, %bound1
  %i.ez = or i64 %.0172, %.0
  %i.fa = icmp slt i64 %i.ez, 0
  %i.fb = or i1 %found.conflict, %i.fa
  %bound0232 = icmp ult ptr %.0.i.i, %scevgep230
  %bound1233 = icmp ult ptr %.0.i.i.i142, %scevgep226
  %found.conflict234 = and i1 %bound0232, %bound1233
  %i.fc = icmp slt i64 %.0171, 0
  %i.fd = or i1 %found.conflict234, %i.fc
  %conflict.rdx = or i1 %i.fb, %i.fd
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.ev, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert238 = insertelement <16 x i32> poison, i32 %i.eu, i64 0
  %broadcast.splat239 = shufflevector <16 x i32> %broadcast.splatinsert238, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert240 = insertelement <16 x i32> poison, i32 %i.dp, i64 0
  %broadcast.splat241 = shufflevector <16 x i32> %broadcast.splatinsert240, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert244 = insertelement <4 x i32> poison, i32 %i.ev, i64 0
  %broadcast.splat245 = shufflevector <4 x i32> %broadcast.splatinsert244, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert246 = insertelement <4 x i32> poison, i32 %i.eu, i64 0
  %broadcast.splat247 = shufflevector <4 x i32> %broadcast.splatinsert246, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert248 = insertelement <4 x i32> poison, i32 %i.dp, i64 0
  %broadcast.splat249 = shufflevector <4 x i32> %broadcast.splatinsert248, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %iter.check

iter.check:                                       ; preds = %.preheader174.preheader, %._crit_edge
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %._crit_edge ], [ 0, %.preheader174.preheader ] ; 4 uses
  %i.fe = mul nsw i64 %.0172, %indvars.iv188
  %i.ff = getelementptr i8, ptr %.0.i.i.i, i64 %i.fe ; 5 uses
  %i.fg = mul nsw i64 %.0171, %indvars.iv188
  %i.fh = getelementptr i8, ptr %.0.i.i.i142, i64 %i.fg ; 5 uses
  %i.fi = mul nsw i64 %.0, %indvars.iv188
  %i.fj = getelementptr i8, ptr %.0.i.i, i64 %i.fi ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check237, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.fk = getelementptr i8, ptr %i.ff, i64 %index
  %wide.load = load <16 x i8>, ptr %i.fk, align 1, !tbaa !132, !alias.scope !204
  %i.fl = zext <16 x i8> %wide.load to <16 x i32> ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fh, i64 %index
  %wide.load242 = load <16 x i8>, ptr %i.fm, align 1, !tbaa !132, !alias.scope !205
  %i.fn = zext <16 x i8> %wide.load242 to <16 x i32>
  %i.fo = mul nuw nsw <16 x i32> %i.fn, %i.fl
  %i.fp = sub nsw <16 x i32> %broadcast.splat, %i.fl
  %i.fq = mul nsw <16 x i32> %i.fp, %broadcast.splat239
  %i.fr = add nsw <16 x i32> %i.fo, %i.fq
  %i.fs = ashr <16 x i32> %i.fr, %broadcast.splat241
  %i.ft = trunc <16 x i32> %i.fs to <16 x i8>
  %i.fu = getelementptr i8, ptr %i.fj, i64 %index
  store <16 x i8> %i.ft, ptr %i.fu, align 1, !tbaa !132, !alias.scope !206, !noalias !207
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.fv = icmp eq i64 %index.next, %n.vec
  br i1 %i.fv, label %middle.block, label %vector.body, !llvm.loop !193

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !168

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index250 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next253, %vec.epilog.vector.body ] ; 4 uses
  %i.fw = getelementptr i8, ptr %i.ff, i64 %index250
  %wide.load251.a = load <4 x i8>, ptr %i.fw, align 1, !tbaa !132, !alias.scope !204
  %i.fx = zext <4 x i8> %wide.load251.a to <4 x i32> ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fh, i64 %index250
  %wide.load252 = load <4 x i8>, ptr %i.fy, align 1, !tbaa !132, !alias.scope !205
  %i.fz = zext <4 x i8> %wide.load252 to <4 x i32>
  %i.ga = mul nuw nsw <4 x i32> %i.fz, %i.fx
  %i.gb = sub nsw <4 x i32> %broadcast.splat245, %i.fx
  %i.gc = mul nsw <4 x i32> %i.gb, %broadcast.splat247
  %i.gd = add nsw <4 x i32> %i.ga, %i.gc
  %i.ge = ashr <4 x i32> %i.gd, %broadcast.splat249
  %i.gf = trunc <4 x i32> %i.ge to <4 x i8>
  %i.gg = getelementptr i8, ptr %i.fj, i64 %index250
  store <4 x i8> %i.gf, ptr %i.gg, align 1, !tbaa !132, !alias.scope !206, !noalias !207
  %index.next253 = add nuw i64 %index250, 4       ; 2 uses
  %i.gh = icmp eq i64 %index.next253, %n.vec243
  br i1 %i.gh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !194

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n254, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec243, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 6 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.gi = getelementptr i8, ptr %i.ff, i64 %indvars.iv.ph
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !132
  %i.gk = zext i8 %i.gj to i32                    ; 2 uses
  %i.gl = getelementptr i8, ptr %i.fh, i64 %indvars.iv.ph
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !132
  %i.gn = zext i8 %i.gm to i32
  %i.go = mul nuw nsw i32 %i.gn, %i.gk
  %i.gp = sub nsw i32 %i.ev, %i.gk
  %i.gq = mul nsw i32 %i.gp, %i.eu
  %i.gr = add nsw i32 %i.go, %i.gq
  %i.gs = ashr i32 %i.gr, %i.dp
  %i.gt = trunc i32 %i.gs to i8
  %i.gu = getelementptr i8, ptr %i.fj, i64 %indvars.iv.ph
  store i8 %i.gt, ptr %i.gu, align 1, !tbaa !132
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.gv = icmp eq i64 %indvars.iv.ph, %i.ct
  br i1 %i.gv, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next189, %wide.trip.count191
  br i1 %exitcond192.not, label %.loopexit, label %iter.check, !llvm.loop !195

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.gw = getelementptr i8, ptr %i.ff, i64 %indvars.iv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !132
  %i.gy = zext i8 %i.gx to i32                    ; 2 uses
  %i.gz = getelementptr i8, ptr %i.fh, i64 %indvars.iv
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !132
  %i.hb = zext i8 %i.ha to i32
  %i.hc = mul nuw nsw i32 %i.hb, %i.gy
  %i.hd = sub nsw i32 %i.ev, %i.gy
  %i.he = mul nsw i32 %i.hd, %i.eu
  %i.hf = add nsw i32 %i.hc, %i.he
  %i.hg = ashr i32 %i.hf, %i.dp
  %i.hh = trunc i32 %i.hg to i8
  %i.hi = getelementptr i8, ptr %i.fj, i64 %indvars.iv
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !132
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.hj = getelementptr i8, ptr %i.ff, i64 %indvars.iv.next
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !132
  %i.hl = zext i8 %i.hk to i32                    ; 2 uses
  %i.hm = getelementptr i8, ptr %i.fh, i64 %indvars.iv.next
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !132
  %i.ho = zext i8 %i.hn to i32
  %i.hp = mul nuw nsw i32 %i.ho, %i.hl
  %i.hq = sub nsw i32 %i.ev, %i.hl
  %i.hr = mul nsw i32 %i.hq, %i.eu
  %i.hs = add nsw i32 %i.hp, %i.hr
  %i.ht = ashr i32 %i.hs, %i.dp
  %i.hu = trunc i32 %i.ht to i8
  %i.hv = getelementptr i8, ptr %i.fj, i64 %indvars.iv.next
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !132
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !196

bb.ak:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %bb.ad
  switch i32 %i.cx, label %bb.ao [
    i32 3, label %bb.al
    i32 4, label %bb.am
    i32 5, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak
  %i.hw = load i16, ptr %i.cn, align 4, !tbaa !162
  %i.hx = load i16, ptr %i.cq, align 2, !tbaa !169
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.hy = load i16, ptr %i.cm, align 2, !tbaa !163
  %i.hz = load i16, ptr %i.cp, align 4, !tbaa !170
  br label %bb.ao

bb.an:                                            ; preds = %bb.ak
  %i.ia = load i16, ptr %i.cl, align 4, !tbaa !164
  %i.ib = load i16, ptr %i.co, align 2, !tbaa !171
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ak, %bb.an, %bb.am, %bb.al
  %.0114 = phi i16 [ %i.ia, %bb.an ], [ %i.hw, %bb.al ], [ %i.hy, %bb.am ], [ 0, %bb.ak ]
  %.0113 = phi i16 [ %i.ib, %bb.an ], [ %i.hx, %bb.al ], [ %i.hz, %bb.am ], [ 0, %bb.ak ]
  %i.ic = load ptr, ptr %10, align 16, !tbaa !45
  %i.id = invoke noundef zeroext i16 @_ZNK14HeifPixelImage18get_bits_per_pixelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.ic, i32 noundef %i.cx)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ie = zext i16 %.0114 to i32
  %i.if = zext i16 %i.id to i32
  %i.ig = sub nsw i32 16, %i.if
  %i.ih = lshr i32 %i.ie, %i.ig
  %i.ii = load ptr, ptr %10, align 16, !tbaa !45
  %i.ij = invoke noundef zeroext i16 @_ZNK14HeifPixelImage18get_bits_per_pixelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.ii, i32 noundef %i.cx)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ik = zext i16 %.0113 to i32
  %i.il = zext i16 %i.ij to i32
  %i.im = sub nsw i32 16, %i.il
  %i.in = lshr i32 %i.ik, %i.im
  br i1 %.not182, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.aq
  %i.io = zext i8 %i.dr to i32
  br i1 %.not183, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge179
end_hunk_0
begin_hunk_1_@_ZNK22Op_flatten_alpha_planeItE18convert_colorspaceERKNSt3__110shared_ptrIK14HeifPixelImageEERK10ColorStateSA_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_extPK20heif_security_limits:bb.a
  invoke void @_ZN14HeifPixelImage6createEjj15heif_colorspace11heif_chroma(ptr noundef nonnull align 8 dereferenceable(448) %i.bz, i32 noundef %i.at, i32 noundef %i.av, i32 noundef %i.cc, i32 noundef %i.ce)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 3, ptr %i.a, align 4, !tbaa !152
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 4, ptr %i.cf, align 4, !tbaa !152
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 5, ptr %i.cg, align 4, !tbaa !152
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.not185 = icmp eq i32 %i.av, 0                 ; 2 uses
  %.not186 = icmp eq i32 %i.at, 0                 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 18
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 14
  %wide.trip.count194 = zext i32 %i.av to i64     ; 2 uses
  %wide.trip.count = zext i32 %i.at to i64        ; 6 uses
  %wide.trip.count204 = zext i32 %i.av to i64
  %wide.trip.count199 = zext i32 %i.at to i64
  %i.cr = shl nuw nsw i64 %wide.trip.count, 1     ; 3 uses
  %i.cs = add nsw i64 %wide.trip.count194, -1     ; 3 uses
  %i.ct = shl nsw i64 %i.cs, 1
  %i.cu = shl nsw i64 %i.cs, 1
  %i.cv = shl nsw i64 %i.cs, 1
  %min.iters.check = icmp ult i32 %i.at, 8
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.cw = add nsw i64 %wide.trip.count, -1
  br label %bb.w

bb.t:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.cx = load i32, ptr %i.i, align 4, !tbaa !27
  %.not122 = icmp eq i32 %i.cx, 0
  br i1 %.not122, label %.thread225, label %bb.at

bb.u:                                             ; preds = %bb.q
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.v:                                             ; preds = %_ZNSt3__111make_sharedB8ne180100I14HeifPixelImageJEvEENS_10shared_ptrIT_EEDpOT0_.exit
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.w:                                             ; preds = %bb.s, %.loopexit
  %.0118.idx184 = phi i64 [ 0, %bb.s ], [ %.0118.add, %.loopexit ] ; 2 uses
  %.0118.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0118.idx184
  %i.da = load i32, ptr %.0118.ptr, align 4, !tbaa !152 ; 8 uses
  %i.db = load ptr, ptr %13, align 16, !tbaa !134
  %i.dc = load i32, ptr %i.ch, align 4, !tbaa !142
  invoke void @_ZN14HeifPixelImage11add_channelE12heif_channeljjiPK20heif_security_limits23heif_component_datatype(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %14, ptr noundef nonnull align 8 dereferenceable(448) %i.db, i32 noundef %i.da, i32 noundef %i.at, i32 noundef %i.av, i32 noundef %i.dc, ptr noundef %7, i32 noundef 0)
          to label %bb.x unwind label %bb.ar

bb.x:                                             ; preds = %bb.w
  %i.dd = load i8, ptr %i.ci, align 8
  %i.de = trunc i8 %i.dd to i1
  br i1 %i.de, label %bb.y, label %_ZN5ErrorD2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.df = load ptr, ptr %i.cj, align 8, !tbaa !132
  %i.dg = load i64, ptr %i.ci, align 8
  %i.dh = and i64 %i.dg, -2
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.dh) #18
  br label %_ZN5ErrorD2Ev.exit

_ZN5ErrorD2Ev.exit:                               ; preds = %bb.x, %bb.y
  %i.di = load ptr, ptr %10, align 16, !tbaa !45
  %i.dj = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.di, i32 noundef 6)
          to label %.noexc140 unwind label %bb.ar ; 3 uses

.noexc140:                                        ; preds = %_ZN5ErrorD2Ev.exit
  %.not.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, label %bb.z

bb.z:                                             ; preds = %.noexc140
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 80
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !159
  %i.dm = shl i64 %i.dl, 32
  %i.dn = ashr exact i64 %i.dm, 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !160
  %i.dq = lshr i64 %i.dn, 1
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit: ; preds = %bb.z, %.noexc140
  %.0175 = phi i64 [ %i.dq, %bb.z ], [ 0, %.noexc140 ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.dp, %bb.z ], [ null, %.noexc140 ] ; 4 uses
  %i.dr = load ptr, ptr %10, align 16, !tbaa !45
  %i.ds = invoke noundef zeroext i16 @_ZNK14HeifPixelImage18get_bits_per_pixelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.dr, i32 noundef 6)
          to label %bb.aa unwind label %bb.ar

bb.aa:                                            ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit
  %i.dt = zext i16 %i.ds to i32                   ; 6 uses
  %notmask = shl nsw i32 -1, %i.dt
  %i.du = trunc i32 %notmask to i16
  %i.dv = xor i16 %i.du, -1                       ; 2 uses
  %i.dw = load ptr, ptr %10, align 16, !tbaa !45
  %i.dx = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.dw, i32 noundef %i.da)
          to label %.noexc143 unwind label %bb.ar ; 3 uses

.noexc143:                                        ; preds = %bb.aa
  %.not.i.i.i141 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i.i141, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit144, label %bb.ab

bb.ab:                                            ; preds = %.noexc143
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 80
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !159
  %i.ea = shl i64 %i.dz, 32
  %i.eb = ashr exact i64 %i.ea, 32
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dx, i64 56
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !160
  %i.ee = lshr i64 %i.eb, 1
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit144

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit144: ; preds = %bb.ab, %.noexc143
  %.0174 = phi i64 [ %i.ee, %bb.ab ], [ 0, %.noexc143 ] ; 4 uses
  %.0.i.i.i142 = phi ptr [ %i.ed, %bb.ab ], [ null, %.noexc143 ] ; 4 uses
  %i.ef = load ptr, ptr %13, align 16, !tbaa !134
  %i.eg = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.ef, i32 noundef %i.da)
          to label %.noexc146 unwind label %bb.ar ; 3 uses

.noexc146:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit144
  %.not.i.i145 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i145, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, label %bb.ac

bb.ac:                                            ; preds = %.noexc146
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 80
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !159
  %i.ej = shl i64 %i.ei, 32
  %i.ek = ashr exact i64 %i.ej, 32
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 56
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !160
  %i.en = lshr i64 %i.ek, 1
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit: ; preds = %bb.ac, %.noexc146
  %.0 = phi i64 [ %i.en, %bb.ac ], [ 0, %.noexc146 ] ; 4 uses
  %.0.i.i = phi ptr [ %i.em, %bb.ac ], [ null, %.noexc146 ] ; 5 uses
  %i.eo = load i32, ptr %i.i, align 4, !tbaa !27
  switch i32 %i.eo, label %bb.ak [
    i32 1, label %bb.ae
    i32 2, label %bb.ad
  ]

bb.ad:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit
  %i.ep = load i16, ptr %i.ck, align 4, !tbaa !161
  %i.eq = icmp eq i16 %i.ep, 0
  br i1 %i.eq, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %bb.ad
  switch i32 %i.da, label %bb.ai [
    i32 3, label %bb.af
    i32 4, label %bb.ag
    i32 5, label %bb.ah
  ]

bb.af:                                            ; preds = %bb.ae
  %i.er = load i16, ptr %i.cn, align 4, !tbaa !162
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  %i.es = load i16, ptr %i.cm, align 2, !tbaa !163
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ae
  %i.et = load i16, ptr %i.cl, align 4, !tbaa !164
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ae, %bb.ah, %bb.ag, %bb.af
  %.0117 = phi i16 [ %i.et, %bb.ah ], [ %i.er, %bb.af ], [ %i.es, %bb.ag ], [ 0, %bb.ae ]
  %i.eu = load ptr, ptr %10, align 16, !tbaa !45
  %i.ev = invoke noundef zeroext i16 @_ZNK14HeifPixelImage18get_bits_per_pixelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.eu, i32 noundef %i.da)
          to label %bb.aj unwind label %bb.ar

bb.aj:                                            ; preds = %bb.ai
  %i.ew = zext i16 %.0117 to i32
  %i.ex = zext i16 %i.ev to i32
  %i.ey = sub nsw i32 16, %i.ex
  %i.ez = lshr i32 %i.ew, %i.ey                   ; 4 uses
  br i1 %.not185, label %.loopexit, label %.preheader177.lr.ph

.preheader177.lr.ph:                              ; preds = %bb.aj
  %i.fa = zext i16 %i.dv to i32                   ; 4 uses
  br i1 %.not186, label %.loopexit, label %.preheader177.preheader

.preheader177.preheader:                          ; preds = %.preheader177.lr.ph
  %scevgep = getelementptr i8, ptr %.0.i.i, i64 %i.cr
  %i.fb = mul i64 %i.ct, %.0
  %scevgep229 = getelementptr i8, ptr %scevgep, i64 %i.fb ; 2 uses
  %scevgep230 = getelementptr i8, ptr %.0.i.i.i, i64 %i.cr
  %i.fc = mul i64 %i.cu, %.0175
  %scevgep231 = getelementptr i8, ptr %scevgep230, i64 %i.fc
  %scevgep232 = getelementptr i8, ptr %.0.i.i.i142, i64 %i.cr
  %i.fd = mul i64 %i.cv, %.0174
  %scevgep233 = getelementptr i8, ptr %scevgep232, i64 %i.fd
  %bound0 = icmp ult ptr %.0.i.i, %scevgep231
  %bound1 = icmp ult ptr %.0.i.i.i, %scevgep229
  %found.conflict = and i1 %bound0, %bound1
  %16 = or i64 %.0175, %.0
  %stride.check234 = icmp samesign ugt i64 %16, 4611686018427387903
  %i.fe = or i1 %found.conflict, %stride.check234
  %bound0235 = icmp ult ptr %.0.i.i, %scevgep233
  %bound1236 = icmp ult ptr %.0.i.i.i142, %scevgep229
  %found.conflict237 = and i1 %bound0235, %bound1236
  %stride.check239 = icmp samesign ugt i64 %.0174, 4611686018427387903
  %i.ff = or i1 %found.conflict237, %stride.check239
  %conflict.rdx = or i1 %i.fe, %i.ff
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.fa, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert240 = insertelement <8 x i32> poison, i32 %i.ez, i64 0
  %broadcast.splat241 = shufflevector <8 x i32> %broadcast.splatinsert240, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert242 = insertelement <8 x i32> poison, i32 %i.dt, i64 0
  %broadcast.splat243 = shufflevector <8 x i32> %broadcast.splatinsert242, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.preheader177

.preheader177:                                    ; preds = %.preheader177.preheader, %._crit_edge
  %indvars.iv191 = phi i64 [ %indvars.iv.next192, %._crit_edge ], [ 0, %.preheader177.preheader ] ; 4 uses
  %i.fg = mul i64 %.0175, %indvars.iv191
  %i.fh = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %i.fg ; 4 uses
  %i.fi = mul i64 %.0174, %indvars.iv191
  %i.fj = getelementptr [2 x i8], ptr %.0.i.i.i142, i64 %i.fi ; 4 uses
  %i.fk = mul i64 %.0, %indvars.iv191
  %i.fl = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.fk ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader177, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader177 ] ; 4 uses
  %i.fm = getelementptr [2 x i8], ptr %i.fh, i64 %index
  %wide.load = load <8 x i16>, ptr %i.fm, align 2, !tbaa !30, !alias.scope !228
  %i.fn = zext <8 x i16> %wide.load to <8 x i32>  ; 2 uses
  %i.fo = getelementptr [2 x i8], ptr %i.fj, i64 %index
  %wide.load244 = load <8 x i16>, ptr %i.fo, align 2, !tbaa !30, !alias.scope !229
  %i.fp = zext <8 x i16> %wide.load244 to <8 x i32>
  %i.fq = mul nuw nsw <8 x i32> %i.fp, %i.fn
  %i.fr = sub nsw <8 x i32> %broadcast.splat, %i.fn
  %i.fs = mul nsw <8 x i32> %i.fr, %broadcast.splat241
  %i.ft = add nsw <8 x i32> %i.fq, %i.fs
  %i.fu = ashr <8 x i32> %i.ft, %broadcast.splat243
  %i.fv = trunc <8 x i32> %i.fu to <8 x i16>
  %i.fw = getelementptr [2 x i8], ptr %i.fl, i64 %index
  store <8 x i16> %i.fv, ptr %i.fw, align 2, !tbaa !30, !alias.scope !230, !noalias !231
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fx = icmp eq i64 %index.next, %n.vec
  br i1 %i.fx, label %middle.block, label %vector.body, !llvm.loop !218

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader177, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader177 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.fy = getelementptr [2 x i8], ptr %i.fh, i64 %indvars.iv.ph
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !30
  %i.ga = zext i16 %i.fz to i32                   ; 2 uses
  %i.gb = getelementptr [2 x i8], ptr %i.fj, i64 %indvars.iv.ph
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !30
  %i.gd = zext i16 %i.gc to i32
  %i.ge = mul nuw nsw i32 %i.gd, %i.ga
  %i.gf = sub nsw i32 %i.fa, %i.ga
  %i.gg = mul nsw i32 %i.gf, %i.ez
  %i.gh = add nsw i32 %i.ge, %i.gg
  %i.gi = ashr i32 %i.gh, %i.dt
  %i.gj = trunc i32 %i.gi to i16
  %i.gk = getelementptr [2 x i8], ptr %i.fl, i64 %indvars.iv.ph
  store i16 %i.gj, ptr %i.gk, align 2, !tbaa !30
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.gl = icmp eq i64 %indvars.iv.ph, %i.cw
  br i1 %i.gl, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 2 uses
  %exitcond195.not = icmp eq i64 %indvars.iv.next192, %wide.trip.count194
  br i1 %exitcond195.not, label %.loopexit, label %.preheader177, !llvm.loop !219

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.gm = getelementptr [2 x i8], ptr %i.fh, i64 %indvars.iv
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !30
  %i.go = zext i16 %i.gn to i32                   ; 2 uses
  %i.gp = getelementptr [2 x i8], ptr %i.fj, i64 %indvars.iv
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !30
  %i.gr = zext i16 %i.gq to i32
  %i.gs = mul nuw nsw i32 %i.gr, %i.go
  %i.gt = sub nsw i32 %i.fa, %i.go
  %i.gu = mul nsw i32 %i.gt, %i.ez
  %i.gv = add nsw i32 %i.gs, %i.gu
  %i.gw = ashr i32 %i.gv, %i.dt
  %i.gx = trunc i32 %i.gw to i16
  %i.gy = getelementptr [2 x i8], ptr %i.fl, i64 %indvars.iv
  store i16 %i.gx, ptr %i.gy, align 2, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.gz = getelementptr [2 x i8], ptr %i.fh, i64 %indvars.iv.next
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !30
  %i.hb = zext i16 %i.ha to i32                   ; 2 uses
  %i.hc = getelementptr [2 x i8], ptr %i.fj, i64 %indvars.iv.next
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !30
  %i.he = zext i16 %i.hd to i32
  %i.hf = mul nuw nsw i32 %i.he, %i.hb
  %i.hg = sub nsw i32 %i.fa, %i.hb
  %i.hh = mul nsw i32 %i.hg, %i.ez
  %i.hi = add nsw i32 %i.hf, %i.hh
  %i.hj = ashr i32 %i.hi, %i.dt
  %i.hk = trunc i32 %i.hj to i16
  %i.hl = getelementptr [2 x i8], ptr %i.fl, i64 %indvars.iv.next
  store i16 %i.hk, ptr %i.hl, align 2, !tbaa !30
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !220

bb.ak:                                            ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %bb.ad
  switch i32 %i.da, label %bb.ao [
    i32 3, label %bb.al
    i32 4, label %bb.am
    i32 5, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak
  %i.hm = load i16, ptr %i.cn, align 4, !tbaa !162
  %i.hn = load i16, ptr %i.cq, align 2, !tbaa !169
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  %i.ho = load i16, ptr %i.cm, align 2, !tbaa !163
  %i.hp = load i16, ptr %i.cp, align 4, !tbaa !170
  br label %bb.ao

bb.an:                                            ; preds = %bb.ak
  %i.hq = load i16, ptr %i.cl, align 4, !tbaa !164
  %i.hr = load i16, ptr %i.co, align 2, !tbaa !171
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ak, %bb.an, %bb.am, %bb.al
  %.0114 = phi i16 [ %i.hq, %bb.an ], [ %i.hm, %bb.al ], [ %i.ho, %bb.am ], [ 0, %bb.ak ]
  %.0113 = phi i16 [ %i.hr, %bb.an ], [ %i.hn, %bb.al ], [ %i.hp, %bb.am ], [ 0, %bb.ak ]
  %i.hs = load ptr, ptr %10, align 16, !tbaa !45
  %i.ht = invoke noundef zeroext i16 @_ZNK14HeifPixelImage18get_bits_per_pixelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.hs, i32 noundef %i.da)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.hu = zext i16 %.0114 to i32
  %i.hv = zext i16 %i.ht to i32
  %i.hw = sub nsw i32 16, %i.hv
  %i.hx = lshr i32 %i.hu, %i.hw
  %i.hy = load ptr, ptr %10, align 16, !tbaa !45
  %i.hz = invoke noundef zeroext i16 @_ZNK14HeifPixelImage18get_bits_per_pixelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.hy, i32 noundef %i.da)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ia = zext i16 %.0113 to i32
  %i.ib = zext i16 %i.hz to i32
  %i.ic = sub nsw i32 16, %i.ib
  %i.id = lshr i32 %i.ia, %i.ic
  br i1 %.not185, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.aq
  %i.ie = zext i16 %i.dv to i32
  br i1 %.not186, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge182
  %indvars.iv201 = phi i64 [ %indvars.iv.next202, %._crit_edge182 ], [ 0, %.preheader.lr.ph ] ; 5 uses
  %i.if = mul i64 %.0175, %indvars.iv201
  %i.ig = getelementptr [2 x i8], ptr %.0.i.i.i, i64 %i.if
  %i.ih = mul i64 %.0174, %indvars.iv201
  %i.ii = getelementptr [2 x i8], ptr %.0.i.i.i142, i64 %i.ih
  %i.ij = mul i64 %.0, %indvars.iv201
  %i.ik = getelementptr [2 x i8], ptr %.0.i.i, i64 %i.ij
  %i.il = trunc nuw i64 %indvars.iv201 to i32
  br label %bb.as

bb.ar:                                            ; preds = %bb.aa, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %_ZN5ErrorD2Ev.exit, %bb.w, %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit144, %bb.ai, %bb.ao, %bb.ap
  %i.im = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.bg

._crit_edge182:                                   ; preds = %bb.as
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %exitcond205.not = icmp eq i64 %indvars.iv.next202, %wide.trip.count204
  br i1 %exitcond205.not, label %.loopexit, label %.preheader, !llvm.loop !221

bb.as:                                            ; preds = %.preheader, %bb.as
  %indvars.iv196 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next197, %bb.as ] ; 5 uses
  %i.in = load i16, ptr %i.ck, align 4, !tbaa !161
  %i.io = zext i16 %i.in to i32                   ; 2 uses
  %i.ip = trunc nuw i64 %indvars.iv196 to i32
  %i.iq = udiv i32 %i.ip, %i.io
  %i.ir = udiv i32 %i.il, %i.io
  %i.is = add i32 %i.ir, %i.iq
  %i.it = and i32 %i.is, 1
  %.not127 = icmp eq i32 %i.it, 0
  %.v = select i1 %.not127, i32 %i.id, i32 %i.hx
  %i.iu = getelementptr [2 x i8], ptr %i.ig, i64 %indvars.iv196
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !30
  %i.iw = zext i16 %i.iv to i32                   ; 2 uses
  %i.ix = getelementptr [2 x i8], ptr %i.ii, i64 %indvars.iv196
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !30
  %i.iz = zext i16 %i.iy to i32
  %i.ja = mul nuw nsw i32 %i.iz, %i.iw
  %i.jb = sub nsw i32 %i.ie, %i.iw
end_hunk_1
