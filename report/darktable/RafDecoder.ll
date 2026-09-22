Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/RafDecoder?download=true
inline.NumInlined: 1006
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8rawspeed10RafDecoder22decodeMetaDataInternalEPKNS_14CameraMetaDataE:bb.a
  store i32 %i.dg, ptr %.ptr237, align 4, !tbaa !71
  %i.dh = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 15)
          to label %bb.al unwind label %bb.bc

bb.al:                                            ; preds = %bb.ak
  %i.di = load i32, ptr %i.bp, align 8, !tbaa !71
  %i.dj = add i32 %i.di, %i.dh
  store i32 %i.dj, ptr %i.bp, align 8, !tbaa !71
  %i.dk = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 16)
          to label %bb.am unwind label %bb.bc

bb.am:                                            ; preds = %bb.al
  %i.dl = load i32, ptr %.ptr237, align 4, !tbaa !71
  %i.dm = add i32 %i.dl, %i.dk
  store i32 %i.dm, ptr %.ptr237, align 4, !tbaa !71
  %i.dn = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 17)
          to label %.preheader205.3 unwind label %bb.bc

.preheader205.3:                                  ; preds = %bb.am
  %i.do = load i32, ptr %i.bp, align 8, !tbaa !71
  %i.dp = add i32 %i.do, %i.dn
  store i32 %i.dp, ptr %i.bp, align 8, !tbaa !71
  %i.dq = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 18)
          to label %bb.an unwind label %bb.bc

bb.an:                                            ; preds = %.preheader205.3
  %i.dr = load i32, ptr %i.cf, align 4, !tbaa !71
  %i.ds = add i32 %i.dr, %i.dq
  store i32 %i.ds, ptr %i.cf, align 4, !tbaa !71
  %i.dt = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 19)
          to label %bb.ao unwind label %bb.bc

bb.ao:                                            ; preds = %bb.an
  %i.du = load i32, ptr %i.cj, align 8, !tbaa !71
  %i.dv = add i32 %i.du, %i.dt
  store i32 %i.dv, ptr %i.cj, align 8, !tbaa !71
  %i.dw = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 20)
          to label %bb.ap unwind label %bb.bc

bb.ap:                                            ; preds = %bb.ao
  %i.dx = load i32, ptr %i.cf, align 4, !tbaa !71
  %i.dy = add i32 %i.dx, %i.dw
  store i32 %i.dy, ptr %i.cf, align 4, !tbaa !71
  %i.dz = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 21)
          to label %bb.aq unwind label %bb.bc

bb.aq:                                            ; preds = %bb.ap
  %i.ea = load i32, ptr %i.cj, align 8, !tbaa !71
  %i.eb = add i32 %i.ea, %i.dz
  store i32 %i.eb, ptr %i.cj, align 8, !tbaa !71
  %i.ec = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 22)
          to label %bb.ar unwind label %bb.bc

bb.ar:                                            ; preds = %bb.aq
  %i.ed = load i32, ptr %i.cf, align 4, !tbaa !71
  %i.ee = add i32 %i.ed, %i.ec
  store i32 %i.ee, ptr %i.cf, align 4, !tbaa !71
  %i.ef = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 23)
          to label %.preheader205.4 unwind label %bb.bc

.preheader205.4:                                  ; preds = %bb.ar
  %i.eg = load i32, ptr %i.cj, align 8, !tbaa !71
  %i.eh = add i32 %i.eg, %i.ef
  store i32 %i.eh, ptr %i.cj, align 8, !tbaa !71
  %i.ei = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 24)
          to label %bb.as unwind label %bb.bc

bb.as:                                            ; preds = %.preheader205.4
  %i.ej = load i32, ptr %.ptr237, align 4, !tbaa !71
  %i.ek = add i32 %i.ej, %i.ei
  store i32 %i.ek, ptr %.ptr237, align 4, !tbaa !71
  %i.el = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 25)
          to label %bb.at unwind label %bb.bc

bb.at:                                            ; preds = %bb.as
  %i.em = load i32, ptr %i.bp, align 8, !tbaa !71
  %i.en = add i32 %i.em, %i.el
  store i32 %i.en, ptr %i.bp, align 8, !tbaa !71
  %i.eo = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 26)
          to label %bb.au unwind label %bb.bc

bb.au:                                            ; preds = %bb.at
  %i.ep = load i32, ptr %.ptr237, align 4, !tbaa !71
  %i.eq = add i32 %i.ep, %i.eo
  store i32 %i.eq, ptr %.ptr237, align 4, !tbaa !71
  %i.er = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 27)
          to label %bb.av unwind label %bb.bc

bb.av:                                            ; preds = %bb.au
  %i.es = load i32, ptr %i.bp, align 8, !tbaa !71
  %i.et = add i32 %i.es, %i.er
  store i32 %i.et, ptr %i.bp, align 8, !tbaa !71
  %i.eu = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 28)
          to label %bb.aw unwind label %bb.bc

bb.aw:                                            ; preds = %bb.av
  %i.ev = load i32, ptr %.ptr237, align 4, !tbaa !71
  %i.ew = add i32 %i.ev, %i.eu
  store i32 %i.ew, ptr %.ptr237, align 4, !tbaa !71
  %i.ex = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 29)
          to label %.preheader205.5 unwind label %bb.bc

.preheader205.5:                                  ; preds = %bb.aw
  %i.ey = load i32, ptr %i.bp, align 8, !tbaa !71
  %i.ez = add i32 %i.ey, %i.ex
  store i32 %i.ez, ptr %i.bp, align 8, !tbaa !71
  %i.fa = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 30)
          to label %bb.ax unwind label %bb.bc

bb.ax:                                            ; preds = %.preheader205.5
  %i.fb = load i32, ptr %i.cf, align 4, !tbaa !71
  %i.fc = add i32 %i.fb, %i.fa
  store i32 %i.fc, ptr %i.cf, align 4, !tbaa !71
  %i.fd = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 31)
          to label %bb.ay unwind label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.fe = load i32, ptr %i.cj, align 8, !tbaa !71
  %i.ff = add i32 %i.fe, %i.fd
  store i32 %i.ff, ptr %i.cj, align 8, !tbaa !71
  %i.fg = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 32)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.fh = load i32, ptr %i.cf, align 4, !tbaa !71
  %i.fi = add i32 %i.fh, %i.fg
  store i32 %i.fi, ptr %i.cf, align 4, !tbaa !71
  %i.fj = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 33)
          to label %bb.ba unwind label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.fk = load i32, ptr %i.cj, align 8, !tbaa !71
  %i.fl = add i32 %i.fk, %i.fj
  store i32 %i.fl, ptr %i.cj, align 8, !tbaa !71
  %i.fm = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 34)
          to label %bb.bb unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.fn = load i32, ptr %i.cf, align 4, !tbaa !71
  %i.fo = add i32 %i.fn, %i.fm
  store i32 %i.fo, ptr %i.cf, align 4, !tbaa !71
  %i.fp = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, i32 noundef 35)
          to label %.lr.ph213.preheader unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %.preheader205.5, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %.preheader205.4, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %.preheader205.3, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %.preheader205.2, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %.preheader205.1, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %.preheader206
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

.loopexit:                                        ; preds = %.lr.ph213.preheader, %.loopexit.loopexit, %bb.o
  %i.fr = load ptr, ptr %i.f, align 8, !tbaa !69  ; 6 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 140
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !285, !noalias !286 ; 4 uses
  %i.fu = icmp sgt i32 %i.ft, -1
  call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fr, i64 144
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !287, !noalias !286 ; 3 uses
  %i.fx = icmp sgt i32 %i.fw, -1
  call void @llvm.assume(i1 %i.fx)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fr, i64 136
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !288, !noalias !286 ; 3 uses
  %i.ga = icmp ne i32 %i.fz, 0
  call void @llvm.assume(i1 %i.ga)
  %i.gb = icmp sge i32 %i.fz, %i.ft
  call void @llvm.assume(i1 %i.gb)
  %i.gc = icmp eq i32 %i.fw, 1
  %i.gd = icmp eq i32 %i.fz, %i.ft
  %or.cond.i103 = or i1 %i.gc, %i.gd
  call void @llvm.assume(i1 %or.cond.i103)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fr, i64 128
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !289, !noalias !286
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fr, i64 120
  %i.gh = mul nuw nsw i32 %i.fw, %i.ft            ; 3 uses
  %.sroa.0.0.copyload.i.i105 = load ptr, ptr %i.gg, align 8, !tbaa !282, !noalias !290 ; 6 uses
  %i.gi = icmp samesign ule i32 %i.gh, %i.gf
  call void @llvm.assume(i1 %i.gi)
  %i.gj = zext nneg i32 %i.gh to i64
  %.idx219 = shl nuw nsw i64 %i.gj, 2             ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i105, i64 %.idx219
  %.not90215 = icmp eq i32 %i.gh, 0
  br i1 %.not90215, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.loopexit
  %i.gl = add nsw i64 %.idx219, -4                ; 3 uses
  %i.gm = lshr exact i64 %i.gl, 2
  %i.gn = add nuw nsw i64 %i.gm, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.gl, 28
  br i1 %min.iters.check, label %.lr.ph218.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check253 = icmp ult i64 %i.gl, 124
  br i1 %min.iters.check253, label %vec.epilog.ph, label %vector.ph254

vector.ph254:                                     ; preds = %vector.main.loop.iter.check
  %i.go = and i64 %i.gn, 24
  %n.vec = and i64 %i.gn, 9223372036854775776     ; 4 uses
  %i.gp = shl i64 %n.vec, 2
  %i.gq = getelementptr i8, ptr %.sroa.0.0.copyload.i.i105, i64 %i.gp
  br label %vector.body255

vector.body255:                                   ; preds = %vector.ph254, %vector.body255
  %index = phi i64 [ 0, %vector.ph254 ], [ %index.next, %vector.body255 ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph254 ], [ %i.gv, %vector.body255 ]
  %vec.phi256 = phi <8 x i32> [ zeroinitializer, %vector.ph254 ], [ %i.gw, %vector.body255 ]
  %vec.phi257 = phi <8 x i32> [ zeroinitializer, %vector.ph254 ], [ %i.gx, %vector.body255 ]
  %vec.phi258 = phi <8 x i32> [ zeroinitializer, %vector.ph254 ], [ %i.gy, %vector.body255 ]
  %i.gr = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.sroa.0.0.copyload.i.i105, i64 %i.gr ; 4 uses
  %i.gs = getelementptr i8, ptr %next.gep, i64 32
  %i.gt = getelementptr i8, ptr %next.gep, i64 64
  %i.gu = getelementptr i8, ptr %next.gep, i64 96
  %wide.load259 = load <8 x i32>, ptr %next.gep, align 4, !tbaa !71
  %wide.load260 = load <8 x i32>, ptr %i.gs, align 4, !tbaa !71
  %wide.load261 = load <8 x i32>, ptr %i.gt, align 4, !tbaa !71
  %wide.load262 = load <8 x i32>, ptr %i.gu, align 4, !tbaa !71
  %i.gv = add <8 x i32> %wide.load259, %vec.phi   ; 2 uses
  %i.gw = add <8 x i32> %wide.load260, %vec.phi256 ; 2 uses
  %i.gx = add <8 x i32> %wide.load261, %vec.phi257 ; 2 uses
  %i.gy = add <8 x i32> %wide.load262, %vec.phi258 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gz = icmp eq i64 %index.next, %n.vec
  br i1 %i.gz, label %middle.block263, label %vector.body255, !llvm.loop !277

middle.block263:                                  ; preds = %vector.body255
  %bin.rdx = add <8 x i32> %i.gw, %i.gv
  %bin.rdx264 = add <8 x i32> %i.gx, %bin.rdx
  %bin.rdx265 = add <8 x i32> %i.gy, %bin.rdx264
  %i.ha = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx265) ; 3 uses
  %cmp.n = icmp eq i64 %i.gn, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block263
  %min.epilog.iters.check = icmp eq i64 %i.go, 0
  br i1 %min.epilog.iters.check, label %.lr.ph218.preheader, label %vec.epilog.ph, !prof !293

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ha, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec266 = and i64 %i.gn, 9223372036854775800  ; 3 uses
  %i.hb = shl i64 %n.vec266, 2
  %i.hc = getelementptr i8, ptr %.sroa.0.0.copyload.i.i105, i64 %i.hb
  %i.hd = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index267 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next271, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi268 = phi <8 x i32> [ %i.hd, %vec.epilog.ph ], [ %i.hf, %vec.epilog.vector.body ]
  %i.he = shl i64 %index267, 2
  %next.gep269 = getelementptr i8, ptr %.sroa.0.0.copyload.i.i105, i64 %i.he
  %wide.load270 = load <8 x i32>, ptr %next.gep269, align 4, !tbaa !71
  %i.hf = add <8 x i32> %wide.load270, %vec.phi268 ; 2 uses
  %index.next271 = add nuw i64 %index267, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next271, %n.vec266
  br i1 %i.hg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !278

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hh = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.hf) ; 2 uses
  %cmp.n272 = icmp eq i64 %i.gn, %n.vec266
  br i1 %cmp.n272, label %._crit_edge.loopexit, label %.lr.ph218.preheader

.lr.ph218.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.070217.ph = phi ptr [ %.sroa.0.0.copyload.i.i105, %iter.check ], [ %i.gq, %vec.epilog.iter.check ], [ %i.hc, %vec.epilog.middle.block ]
  %.071216.ph = phi i32 [ 0, %iter.check ], [ %i.ha, %vec.epilog.iter.check ], [ %i.hh, %vec.epilog.middle.block ]
  br label %.lr.ph218

._crit_edge.loopexit:                             ; preds = %.lr.ph218, %vec.epilog.middle.block, %middle.block263
  %.lcssa = phi i32 [ %i.hh, %vec.epilog.middle.block ], [ %i.ha, %middle.block263 ], [ %i.hm, %.lr.ph218 ]
  %i.hi = add nsw i32 %.lcssa, 2
  %i.hj = ashr i32 %i.hi, 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit
  %.071.lcssa = phi i32 [ 0, %.loopexit ], [ %i.hj, %._crit_edge.loopexit ]
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fr, i64 96
  store i32 %.071.lcssa, ptr %i.hk, align 8, !tbaa !294
  br label %bb.bd

.lr.ph218:                                        ; preds = %.lr.ph218.preheader, %.lr.ph218
  %.070217 = phi ptr [ %i.hn, %.lr.ph218 ], [ %.070217.ph, %.lr.ph218.preheader ] ; 2 uses
  %.071216 = phi i32 [ %i.hm, %.lr.ph218 ], [ %.071216.ph, %.lr.ph218.preheader ]
  %i.hl = load i32, ptr %.070217, align 4, !tbaa !71
  %i.hm = add nsw i32 %i.hl, %.071216             ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.070217, i64 4 ; 2 uses
  %.not90 = icmp eq ptr %i.hn, %i.gk
  br i1 %.not90, label %._crit_edge.loopexit, label %.lr.ph218, !llvm.loop !279

bb.bd:                                            ; preds = %._crit_edge, %bb.n
  %i.ho = invoke noundef ptr @_ZNK8rawspeed6Camera13getSensorInfoEi(ptr noundef nonnull align 8 dereferenceable(464) %i.t, i32 noundef %.0)
          to label %bb.be unwind label %bb.bh     ; 3 uses

bb.be:                                            ; preds = %bb.bd
  %.not91 = icmp eq ptr %i.ho, null
  br i1 %.not91, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 4 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !300
  %i.hr = icmp sgt i32 %i.hq, 0
  br i1 %i.hr, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.hs = load i32, ptr %i.ho, align 8, !tbaa !301
  %i.ht = load ptr, ptr %i.f, align 8, !tbaa !69  ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 96
  store i32 %i.hs, ptr %i.hu, align 8, !tbaa !294
  %i.hv = load i32, ptr %i.hp, align 4, !tbaa !71
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 160
  %.sroa.0.0.insert.ext = zext i32 %i.hv to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.0.insert.ext, 4294967296
  store i64 %.sroa.0.0.insert.insert, ptr %i.hw, align 8
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bi:                                            ; preds = %bb.bg, %bb.bf, %bb.be
  %i.hy = getelementptr inbounds nuw i8, ptr %i.t, i64 328
  %i.hz = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 168
  %i.ib = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ia, ptr noundef nonnull align 8 dereferenceable(24) %i.hy)
          to label %bb.bj unwind label %bb.k      ; 0 uses

bb.bj:                                            ; preds = %bb.bi
  %i.ic = getelementptr inbounds nuw i8, ptr %i.t, i64 432 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !302
  %i.ie = getelementptr inbounds nuw i8, ptr %i.t, i64 440
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !302
  %i.ig = icmp eq ptr %i.id, %i.if
  br i1 %i.ig, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ih = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 280
  %i.ij = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ii, ptr noundef nonnull align 8 dereferenceable(24) %i.ic)
          to label %bb.bl unwind label %bb.k      ; 0 uses

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.ik = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.il = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 416
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.im, ptr noundef nonnull align 8 dereferenceable(32) %i.ik)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.bl
  %i.in = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.io = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 448
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ip, ptr noundef nonnull align 8 dereferenceable(32) %i.in)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit108 unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit108: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.iq = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.ir = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 480
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.is, ptr noundef nonnull align 8 dereferenceable(32) %i.iq)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit109 unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit109: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit108
  %i.it = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  %i.iu = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 512
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.iv, ptr noundef nonnull align 8 dereferenceable(32) %i.it)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit110 unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit110: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit109
  %i.iw = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 320
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ix, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit111 unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit111: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit110
  %i.iy = load ptr, ptr %i.f, align 8, !tbaa !69
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 352
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.iz, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit112 unwind label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit112: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit111
  %i.ja = load ptr, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.jb = call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.ja, i16 noundef zeroext -4082) #30 ; 5 uses
  %.not202 = icmp eq ptr %i.jb, null
  br i1 %.not202, label %bb.br, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit112
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 44
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !68
  %i.je = icmp eq i32 %i.jd, 3
  br i1 %i.je, label %bb.bn, label %bb.bx

bb.bn:                                            ; preds = %bb.bm
  %i.jf = invoke noundef float @_ZNK8rawspeed9TiffEntry8getFloatEj(ptr noundef nonnull align 8 dereferenceable(48) %i.jb, i32 noundef 1)
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.jg = invoke noundef float @_ZNK8rawspeed9TiffEntry8getFloatEj(ptr noundef nonnull align 8 dereferenceable(48) %i.jb, i32 noundef 0)
          to label %bb.bp unwind label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.jh = invoke noundef float @_ZNK8rawspeed9TiffEntry8getFloatEj(ptr noundef nonnull align 8 dereferenceable(48) %i.jb, i32 noundef 2)
          to label %.sink.split unwind label %bb.bq
end_hunk_0
