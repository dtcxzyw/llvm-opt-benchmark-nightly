Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/hdr_sdr?download=true
inline.NumInlined: 514
inline.NumDeleted: 357
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK16Op_to_sdr_planes18convert_colorspaceERKNSt3__110shared_ptrIK14HeifPixelImageEERK10ColorStateS9_RK29heif_color_conversion_optionsRK33heif_color_conversion_options_extPK20heif_security_limits:bb.a

bb.ai:                                            ; preds = %bb.ah
  %i.fv = load i64, ptr %10, align 8
  store i64 %i.fv, ptr %0, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fx = load i8, ptr %i.an, align 8             ; 2 uses
  %i.fy = trunc i8 %i.fx to i1
  br i1 %i.fy, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false), !tbaa.struct !136
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ai
  %i.fz = load ptr, ptr %i.ao, align 8, !tbaa !103
  %i.ga = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !103
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, ptr noundef %i.fz, i64 noundef %i.gb)
          to label %._crit_edge211 unwind label %bb.ao

._crit_edge211:                                   ; preds = %bb.ak
  %.pre = load i8, ptr %i.an, align 8
  br label %bb.aq

bb.al:                                            ; preds = %bb.ae
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.am:                                            ; preds = %bb.af
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.an:                                            ; preds = %bb.ag
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5ErrorD2Ev.exit151

bb.ao:                                            ; preds = %bb.ak
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gg = load i8, ptr %i.an, align 8
  %i.gh = trunc i8 %i.gg to i1
  br i1 %i.gh, label %bb.ap, label %_ZN5ErrorD2Ev.exit151

bb.ap:                                            ; preds = %bb.ao
  %i.gi = load ptr, ptr %i.ao, align 8, !tbaa !103
  %i.gj = load i64, ptr %i.an, align 8
  %i.gk = and i64 %i.gj, -2
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gk) #16
  br label %_ZN5ErrorD2Ev.exit151

bb.aq:                                            ; preds = %._crit_edge211, %bb.aj
  %i.gl = phi i8 [ %.pre, %._crit_edge211 ], [ %i.fx, %bb.aj ]
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.gm, align 8, !tbaa !138
  %i.gn = trunc i8 %i.gl to i1
  br i1 %i.gn, label %bb.ar, label %_ZN5ErrorD2Ev.exit152

bb.ar:                                            ; preds = %bb.aq
  %i.go = load ptr, ptr %i.ao, align 8, !tbaa !103
  %i.gp = load i64, ptr %i.an, align 8
  %i.gq = and i64 %i.gp, -2
  call void @_ZdlPvm(ptr noundef %i.go, i64 noundef %i.gq) #16
  br label %_ZN5ErrorD2Ev.exit152

_ZN5ErrorD2Ev.exit152:                            ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %.critedge143

.critedge139:                                     ; preds = %bb.ah
  %i.gr = load i8, ptr %i.an, align 8
  %i.gs = trunc i8 %i.gr to i1
  br i1 %i.gs, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.critedge139
  %i.gt = load ptr, ptr %i.ao, align 8, !tbaa !103
  %i.gu = load i64, ptr %i.an, align 8
  %i.gv = and i64 %i.gu, -2
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gv) #16
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.critedge139
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.gw = lshr exact i32 65536, %i.bb             ; 3 uses
  %i.gx = and i32 %i.gw, 65534
  %i.gy = lshr i32 %i.gx, %i.bb                   ; 2 uses
  %.not122182 = icmp eq i32 %i.gy, 0
  br i1 %.not122182, label %._crit_edge, label %.lr.ph

_ZN5ErrorD2Ev.exit151:                            ; preds = %bb.ap, %bb.ao, %bb.an
  %.pn = phi { ptr, i32 } [ %i.ge, %bb.an ], [ %i.gf, %bb.ao ], [ %i.gf, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.bd

.lr.ph:                                           ; preds = %bb.at, %.lr.ph
  %i.gz = phi i32 [ %i.hb, %.lr.ph ], [ %i.gy, %bb.at ] ; 2 uses
  %.094.in183 = phi i32 [ %i.ha, %.lr.ph ], [ %i.gw, %bb.at ]
  %i.ha = or i32 %.094.in183, %i.gz               ; 2 uses
  %i.hb = lshr i32 %i.gz, %i.bb                   ; 2 uses
  %.not122 = icmp eq i32 %i.hb, 0
  br i1 %.not122, label %._crit_edge, label %.lr.ph, !llvm.loop !184

._crit_edge:                                      ; preds = %.lr.ph, %bb.at
  %.094.in.lcssa = phi i32 [ %i.gw, %bb.at ], [ %i.ha, %.lr.ph ] ; 7 uses
  %i.hc = load ptr, ptr %2, align 8, !tbaa !111
  %i.hd = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.hc, i32 noundef %i.aw)
          to label %.noexc157 unwind label %bb.aw ; 3 uses

.noexc157:                                        ; preds = %._crit_edge
  %.not.i.i.i154 = icmp eq ptr %i.hd, null
  br i1 %.not.i.i.i154, label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit158, label %bb.au

bb.au:                                            ; preds = %.noexc157
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 80
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !145
  %sext.i.i.i155 = shl i64 %i.hf, 32
  %i.hg = ashr exact i64 %sext.i.i.i155, 32
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hd, i64 56
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !146
  br label %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit158

_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit158: ; preds = %bb.au, %.noexc157
  %.0174 = phi i64 [ %i.hg, %bb.au ], [ 0, %.noexc157 ] ; 3 uses
  %.0.i.i.i156 = phi ptr [ %i.hi, %bb.au ], [ null, %.noexc157 ] ; 3 uses
  %i.hj = load ptr, ptr %8, align 8, !tbaa !106   ; 5 uses
  %i.hk = invoke noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448) %i.hj, i32 noundef %i.aw)
          to label %.noexc162 unwind label %bb.ax ; 3 uses

.noexc162:                                        ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit158
  %.not.i.i159 = icmp eq ptr %i.hk, null
  br i1 %.not.i.i159, label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit163, label %bb.av

bb.av:                                            ; preds = %.noexc162
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 80
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !145
  %sext.i.i160 = shl i64 %i.hm, 32
  %i.hn = ashr exact i64 %sext.i.i160, 32
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 56
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !146
  br label %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit163

_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit163: ; preds = %.noexc162, %bb.av
  %.0 = phi i64 [ %i.hn, %bb.av ], [ 0, %.noexc162 ] ; 3 uses
  %.0.i.i161 = phi ptr [ %i.hp, %bb.av ], [ null, %.noexc162 ] ; 3 uses
  %i.hq = icmp ne i32 %i.ft, 0
  %i.hr = icmp ne i32 %i.fr, 0
  %or.cond193 = and i1 %i.hq, %i.hr
  br i1 %or.cond193, label %.preheader179.preheader, label %.critedge137

.preheader179.preheader:                          ; preds = %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit163
  %wide.trip.count199 = zext i32 %i.ft to i64     ; 2 uses
  %wide.trip.count = zext i32 %i.fr to i64        ; 10 uses
  %i.hs = add nsw i64 %wide.trip.count199, -1     ; 2 uses
  %i.ht = mul i64 %.0, %i.hs
  %i.hu = getelementptr i8, ptr %.0.i.i161, i64 %i.ht
  %scevgep241 = getelementptr i8, ptr %i.hu, i64 %wide.trip.count
  %i.hv = mul i64 %.0174, %i.hs
  %i.hw = getelementptr i8, ptr %.0.i.i.i156, i64 %i.hv
  %scevgep242 = getelementptr i8, ptr %i.hw, i64 %wide.trip.count
  %min.iters.check248 = icmp ult i32 %i.fr, 4
  %bound0243 = icmp ult ptr %.0.i.i161, %scevgep242
  %bound1244 = icmp ult ptr %.0.i.i.i156, %scevgep241
  %found.conflict245 = and i1 %bound0243, %bound1244
  %i.hx = or i64 %.0174, %.0
  %i.hy = icmp slt i64 %i.hx, 0
  %i.hz = or i1 %found.conflict245, %i.hy
  %min.iters.check250 = icmp ult i32 %i.fr, 16
  %i.ia = and i64 %wide.trip.count, 12
  %n.vec252 = and i64 %wide.trip.count, 4294967280 ; 4 uses
  %broadcast.splatinsert253 = insertelement <16 x i32> poison, i32 %.094.in.lcssa, i64 0
  %broadcast.splat254 = shufflevector <16 x i32> %broadcast.splatinsert253, <16 x i32> poison, <16 x i32> zeroinitializer
  %cmp.n260 = icmp eq i64 %n.vec252, %wide.trip.count
  %min.epilog.iters.check265 = icmp eq i64 %i.ia, 0
  %n.vec267 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %broadcast.splatinsert268 = insertelement <4 x i32> poison, i32 %.094.in.lcssa, i64 0
  %broadcast.splat269 = shufflevector <4 x i32> %broadcast.splatinsert268, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n275 = icmp eq i64 %n.vec267, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check262

iter.check262:                                    ; preds = %.preheader179.preheader, %._crit_edge186
  %indvars.iv196 = phi i64 [ 0, %.preheader179.preheader ], [ %indvars.iv.next197, %._crit_edge186 ] ; 3 uses
  %i.ib = mul nsw i64 %.0174, %indvars.iv196
  %i.ic = getelementptr i8, ptr %.0.i.i.i156, i64 %i.ib ; 7 uses
  %i.id = mul nsw i64 %.0, %indvars.iv196
  %i.ie = getelementptr i8, ptr %.0.i.i161, i64 %i.id ; 7 uses
  %brmerge283 = select i1 %min.iters.check248, i1 true, i1 %i.hz
  br i1 %brmerge283, label %vec.epilog.scalar.ph263.preheader, label %vector.main.loop.iter.check249

vector.main.loop.iter.check249:                   ; preds = %iter.check262
  br i1 %min.iters.check250, label %vec.epilog.ph266, label %vector.body255

vector.body255:                                   ; preds = %vector.main.loop.iter.check249, %vector.body255
  %index256 = phi i64 [ %index.next258, %vector.body255 ], [ 0, %vector.main.loop.iter.check249 ] ; 3 uses
  %i.if = getelementptr i8, ptr %i.ic, i64 %index256
  %wide.load257 = load <16 x i8>, ptr %i.if, align 1, !tbaa !103, !alias.scope !202
  %i.ig = zext <16 x i8> %wide.load257 to <16 x i32>
  %i.ih = mul <16 x i32> %broadcast.splat254, %i.ig
  %i.ii = lshr <16 x i32> %i.ih, splat (i32 8)
  %i.ij = trunc <16 x i32> %i.ii to <16 x i8>
  %i.ik = getelementptr i8, ptr %i.ie, i64 %index256
  store <16 x i8> %i.ij, ptr %i.ik, align 1, !tbaa !103, !alias.scope !203, !noalias !202
  %index.next258 = add nuw i64 %index256, 16      ; 2 uses
  %i.il = icmp eq i64 %index.next258, %n.vec252
  br i1 %i.il, label %middle.block259, label %vector.body255, !llvm.loop !188

middle.block259:                                  ; preds = %vector.body255
  br i1 %cmp.n260, label %._crit_edge186, label %vec.epilog.iter.check264

vec.epilog.iter.check264:                         ; preds = %middle.block259
  br i1 %min.epilog.iters.check265, label %vec.epilog.scalar.ph263.preheader, label %vec.epilog.ph266, !prof !200

vec.epilog.ph266:                                 ; preds = %vector.main.loop.iter.check249, %vec.epilog.iter.check264
  %vec.epilog.resume.val261 = phi i64 [ %n.vec252, %vec.epilog.iter.check264 ], [ 0, %vector.main.loop.iter.check249 ]
  br label %vec.epilog.vector.body270

vec.epilog.vector.body270:                        ; preds = %vec.epilog.vector.body270, %vec.epilog.ph266
  %index271 = phi i64 [ %vec.epilog.resume.val261, %vec.epilog.ph266 ], [ %index.next273, %vec.epilog.vector.body270 ] ; 3 uses
  %i.im = getelementptr i8, ptr %i.ic, i64 %index271
  %wide.load272 = load <4 x i8>, ptr %i.im, align 1, !tbaa !103, !alias.scope !202
  %i.in = zext <4 x i8> %wide.load272 to <4 x i32>
  %i.io = mul <4 x i32> %broadcast.splat269, %i.in
  %i.ip = lshr <4 x i32> %i.io, splat (i32 8)
  %i.iq = trunc <4 x i32> %i.ip to <4 x i8>
  %i.ir = getelementptr i8, ptr %i.ie, i64 %index271
  store <4 x i8> %i.iq, ptr %i.ir, align 1, !tbaa !103, !alias.scope !203, !noalias !202
  %index.next273 = add nuw i64 %index271, 4       ; 2 uses
  %i.is = icmp eq i64 %index.next273, %n.vec267
  br i1 %i.is, label %vec.epilog.middle.block274, label %vec.epilog.vector.body270, !llvm.loop !189

vec.epilog.middle.block274:                       ; preds = %vec.epilog.vector.body270
  br i1 %cmp.n275, label %._crit_edge186, label %vec.epilog.scalar.ph263.preheader

vec.epilog.scalar.ph263.preheader:                ; preds = %iter.check262, %vec.epilog.iter.check264, %vec.epilog.middle.block274
  %indvars.iv.ph = phi i64 [ 0, %iter.check262 ], [ %n.vec267, %vec.epilog.middle.block274 ], [ %n.vec252, %vec.epilog.iter.check264 ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph263.prol.loopexit, label %vec.epilog.scalar.ph263.prol

vec.epilog.scalar.ph263.prol:                     ; preds = %vec.epilog.scalar.ph263.preheader, %vec.epilog.scalar.ph263.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph263.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph263.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph263.prol ], [ 0, %vec.epilog.scalar.ph263.preheader ]
  %i.it = getelementptr i8, ptr %i.ic, i64 %indvars.iv.prol
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !103
  %i.iv = zext i8 %i.iu to i32
  %i.iw = mul i32 %.094.in.lcssa, %i.iv
  %i.ix = lshr i32 %i.iw, 8
  %i.iy = trunc i32 %i.ix to i8
  %i.iz = getelementptr i8, ptr %i.ie, i64 %indvars.iv.prol
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !103
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph263.prol.loopexit, label %vec.epilog.scalar.ph263.prol, !llvm.loop !190

vec.epilog.scalar.ph263.prol.loopexit:            ; preds = %vec.epilog.scalar.ph263.prol, %vec.epilog.scalar.ph263.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph263.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph263.prol ]
  %i.ja = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.jb = icmp ugt i64 %i.ja, -4
  br i1 %i.jb, label %._crit_edge186, label %vec.epilog.scalar.ph263

bb.aw:                                            ; preds = %._crit_edge
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ax:                                            ; preds = %_ZNK14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit158
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

._crit_edge186:                                   ; preds = %vec.epilog.scalar.ph263.prol.loopexit, %vec.epilog.scalar.ph263, %vec.epilog.middle.block274, %middle.block259
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %exitcond200.not = icmp eq i64 %indvars.iv.next197, %wide.trip.count199
  br i1 %exitcond200.not, label %.critedge137, label %iter.check262, !llvm.loop !191

vec.epilog.scalar.ph263:                          ; preds = %vec.epilog.scalar.ph263.prol.loopexit, %vec.epilog.scalar.ph263
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph263 ], [ %indvars.iv.unr, %vec.epilog.scalar.ph263.prol.loopexit ] ; 6 uses
  %i.je = getelementptr i8, ptr %i.ic, i64 %indvars.iv
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !103
  %i.jg = zext i8 %i.jf to i32
  %i.jh = mul i32 %.094.in.lcssa, %i.jg
  %i.ji = lshr i32 %i.jh, 8
  %i.jj = trunc i32 %i.ji to i8
  %i.jk = getelementptr i8, ptr %i.ie, i64 %indvars.iv
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !103
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jl = getelementptr i8, ptr %i.ic, i64 %indvars.iv.next
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !103
  %i.jn = zext i8 %i.jm to i32
  %i.jo = mul i32 %.094.in.lcssa, %i.jn
  %i.jp = lshr i32 %i.jo, 8
  %i.jq = trunc i32 %i.jp to i8
  %i.jr = getelementptr i8, ptr %i.ie, i64 %indvars.iv.next
  store i8 %i.jq, ptr %i.jr, align 1, !tbaa !103
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.js = getelementptr i8, ptr %i.ic, i64 %indvars.iv.next.1
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !103
  %i.ju = zext i8 %i.jt to i32
  %i.jv = mul i32 %.094.in.lcssa, %i.ju
  %i.jw = lshr i32 %i.jv, 8
  %i.jx = trunc i32 %i.jw to i8
  %i.jy = getelementptr i8, ptr %i.ie, i64 %indvars.iv.next.1
  store i8 %i.jx, ptr %i.jy, align 1, !tbaa !103
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.jz = getelementptr i8, ptr %i.ic, i64 %indvars.iv.next.2
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !103
  %i.kb = zext i8 %i.ka to i32
  %i.kc = mul i32 %.094.in.lcssa, %i.kb
  %i.kd = lshr i32 %i.kc, 8
  %i.ke = trunc i32 %i.kd to i8
  %i.kf = getelementptr i8, ptr %i.ie, i64 %indvars.iv.next.2
  store i8 %i.ke, ptr %i.kf, align 1, !tbaa !103
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge186, label %vec.epilog.scalar.ph263, !llvm.loop !192

bb.ay:                                            ; preds = %bb.ad
  invoke void @_ZN14HeifPixelImage21copy_new_channel_fromERKNSt3__110shared_ptrIKS_EE12heif_channelS6_PK20heif_security_limits(ptr dead_on_unwind nonnull writable sret(%class.Error) align 8 %11, ptr noundef nonnull align 8 dereferenceable(448) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.aw, i32 noundef %i.aw, ptr noundef %7)
          to label %bb.az unwind label %bb.p

bb.az:                                            ; preds = %bb.ay
  %i.kg = load i8, ptr %i.ap, align 8
  %i.kh = trunc i8 %i.kg to i1
  br i1 %i.kh, label %bb.ba, label %.critedge137

bb.ba:                                            ; preds = %bb.az
  %i.ki = load ptr, ptr %i.aq, align 8, !tbaa !103
  %i.kj = load i64, ptr %i.ap, align 8
  %i.kk = and i64 %i.kj, -2
  call void @_ZdlPvm(ptr noundef %i.ki, i64 noundef %i.kk) #16
  br label %.critedge137

.critedge137:                                     ; preds = %._crit_edge186, %._crit_edge190, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit163, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit, %bb.ba, %bb.az, %bb.e
  %i.kl = phi ptr [ %i.cu, %._crit_edge190 ], [ %i.au, %bb.e ], [ %i.hj, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit163 ], [ %i.cu, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit ], [ %i.au, %bb.ba ], [ %i.au, %bb.az ], [ %i.hj, %._crit_edge186 ] ; 2 uses
  %i.km = phi ptr [ %i.cu, %._crit_edge190 ], [ %i.av, %bb.e ], [ %i.hj, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit163 ], [ %i.cu, %_ZN14HeifPixelImage18get_channel_memoryE12heif_channelPm.exit ], [ %i.au, %bb.ba ], [ %i.au, %bb.az ], [ %i.hj, %._crit_edge186 ]
  %.0116.add = add nuw nsw i64 %.0116.idx192, 4   ; 2 uses
  %.not = icmp eq i64 %.0116.add, 28
  br i1 %.not, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit, label %bb.d

_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit: ; preds = %.critedge137
  %i.kn = load ptr, ptr %i.t, align 8, !tbaa !107
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store ptr %i.kl, ptr %0, align 8, !tbaa !106
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kn, ptr %i.ko, align 8, !tbaa !107
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.kp, align 8, !tbaa !138
  br label %.critedge143

.critedge143:                                     ; preds = %_ZN5ErrorD2Ev.exit145, %_ZN5ErrorD2Ev.exit152, %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit
  %i.kq = load ptr, ptr %i.t, align 8, !tbaa !107 ; 5 uses
  %.not.i165 = icmp eq ptr %i.kq, null
  br i1 %.not.i165, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit166, label %bb.bb

bb.bb:                                            ; preds = %.critedge143
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = atomicrmw add ptr %i.kr, i64 -1 acq_rel, align 8
  %i.kt = icmp eq i64 %i.ks, 0
  br i1 %i.kt, label %bb.bc, label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit166

bb.bc:                                            ; preds = %bb.bb
  %i.ku = load ptr, ptr %i.kq, align 8, !tbaa !33
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8
  call void %i.kw(ptr noundef nonnull align 8 dereferenceable(24) %i.kq) #15, !inline_history !1
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.kq) #15
  br label %_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit166

_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev.exit166: ; preds = %.critedge143, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret void

bb.bd:                                            ; preds = %bb.o, %bb.al, %_ZN5ErrorD2Ev.exit151, %bb.am, %bb.q, %_ZN5ErrorD2Ev.exit, %bb.r, %bb.p, %bb.ac, %bb.ab, %bb.ax, %bb.aw, %bb.c
  %.pn129.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.at, %bb.c ], [ %i.bp, %bb.o ], [ %i.bq, %bb.p ], [ %i.bs, %bb.r ], [ %i.br, %bb.q ], [ %i.gd, %bb.am ], [ %.pn127, %_ZN5ErrorD2Ev.exit ], [ %i.gc, %bb.al ], [ %i.eq, %bb.ab ], [ %.pn, %_ZN5ErrorD2Ev.exit151 ], [ %i.er, %bb.ac ], [ %i.jd, %bb.ax ], [ %i.jc, %bb.aw ]
  call void @_ZNSt3__110shared_ptrI14HeifPixelImageED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  resume { ptr, i32 } %.pn129.pn.pn.pn.pn.pn
}

declare void @_ZN14HeifPixelImage21copy_new_channel_fromERKNSt3__110shared_ptrIKS_EE12heif_channelS6_PK20heif_security_limits(ptr dead_on_unwind writable sret(%class.Error) align 8, ptr noundef nonnull align 8 dereferenceable(448), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16Op_to_hdr_planesD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN24ColorConversionOperationD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16Op_to_sdr_planesD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #16
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef %0) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  invoke void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt12length_error, ptr nonnull @_ZNSt12length_errorD1Ev) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #15
  resume { ptr, i32 } %i.b
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt12length_errorC2B8ne180100EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt12length_error, i64 16), ptr %0, align 8, !tbaa !33
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt12length_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #6

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #7

declare void @_ZNSt11logic_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef ptr @_ZN14HeifPixelImage24find_storage_for_channelE12heif_channel(ptr noundef nonnull align 8 dereferenceable(448), i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI14HeifPixelImageNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(472) dereferenceable(472) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI14HeifPixelImageNS_9allocatorIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !33
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #15
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI14HeifPixelImageNS_9allocatorIS1_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(472) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI14HeifPixelImageNS_9allocatorIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !33
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(472) %0) #15, !inline_history !204
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 472) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI14HeifPixelImageNS_9allocatorIS1_EEE16__on_zero_sharedEv(ptr noundef nonnull align 8 dereferenceable(472) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(448) dereferenceable(448) %i.a) #15, !inline_history !205
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt3__119__shared_weak_count13__get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI14HeifPixelImageNS_9allocatorIS1_EEE21__on_zero_shared_weakEv(ptr noundef nonnull align 8 dereferenceable(472) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 472) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nounwind
declare void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %2, 23
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = trunc nuw nsw i64 %2 to i8
  %i.d = shl nuw nsw i8 %i.c, 1
  store i8 %i.d, ptr %0, align 8
  br label %_ZNSt3__111char_traitsIcE4copyB8ne180100EPcPKcm.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %2, -9
end_hunk_0
