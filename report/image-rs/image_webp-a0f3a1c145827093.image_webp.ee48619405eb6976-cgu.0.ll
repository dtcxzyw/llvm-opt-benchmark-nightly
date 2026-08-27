Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image_webp-a0f3a1c145827093.image_webp.ee48619405eb6976-cgu.0?download=true
inline.NumInlined: 163
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMs_NtCsksn9slvsHfS_10image_webp7huffmanNtB4_11HuffmanTree14build_implicit:bb.a
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsksn9slvsHfS_10image_webp.exit

bb.ak:                                            ; preds = %bb.ai
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.dd) #23
          to label %bb.aa unwind label %bb.e

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsksn9slvsHfS_10image_webp.exit: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit.thread, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit, %bb.aj
  %i.di = phi i64 [ %i.dc, %bb.aj ], [ %i.dc, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit ], [ 0, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit.thread ]
  %.sroa.4143.0 = phi i64 [ %i.dc, %bb.aj ], [ 0, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit ], [ 0, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit.thread ] ; 2 uses
  %.sroa.10.0 = phi i64 [ %i.dh, %bb.aj ], [ 8, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit ], [ 8, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvXsw_NtBW_5accumtINtB1M_3SumRtE3sumBF_E0ECsksn9slvsHfS_10image_webp.exit.thread ]
  %i.dj = inttoptr i64 %.sroa.10.0 to ptr
  %i.dk = icmp samesign ule i64 %i.di, %.sroa.4143.0
  tail call void @llvm.assume(i1 %i.dk)
  store i64 %.sroa.4143.0, ptr %i.b, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 8 uses
  store ptr %i.dj, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 8 uses
  store i64 0, ptr %i.dm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.dn = shl nuw nsw i64 %i.cd, 2                ; 2 uses
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !78
  %i.do = tail call noundef align 4 ptr @_RNvCshxk5dXoXnx9_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.dn, i64 noundef range(i64 1, -9223372036854775807) 4) #22, !noalias !78 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.al, label %bb.an

bb.al:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsksn9slvsHfS_10image_webp.exit
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.dn) #23
          to label %.noexc106 unwind label %bb.am

.noexc106:                                        ; preds = %bb.al
  unreachable

.body:                                            ; preds = %bb.bc, %bb.bd, %bb.am, %.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp ], [ %i.dq, %bb.am ], [ %i.gb, %bb.bd ], [ %i.gb, %bb.bc ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #24
          to label %.body123 unwind label %bb.bv

bb.am:                                            ; preds = %bb.al
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.an:                                            ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsksn9slvsHfS_10image_webp.exit
  store i64 %i.cd, ptr %i.a, align 8, !alias.scope !75
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store ptr %i.do, ptr %i.dr, align 8, !alias.scope !75
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 %i.cd, ptr %i.ds, align 8, !alias.scope !75
  %i.dt = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.du = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %.idx252 = shl nuw nsw i64 %i.du, 1
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx252
  %i.dw = icmp eq i64 %i.du, 0
  br i1 %i.dw, label %._crit_edge251, label %.lr.ph250

.loopexit:                                        ; preds = %bb.bq, %bb.bs
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.aw
  %lpad.loopexit171 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke406
  %lpad.loopexit.split-lp172 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit171, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp172, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsksn9slvsHfS_10image_webp(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #24
          to label %.body unwind label %bb.bv

.lr.ph250:                                        ; preds = %bb.an, %.backedge
  %.sroa.0134.0248 = phi ptr [ %i.dx, %.backedge ], [ %i.dt, %bb.an ] ; 2 uses
  %.sroa.8136.0247 = phi i64 [ %i.dy, %.backedge ], [ 0, %bb.an ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.0134.0248, i64 2 ; 2 uses
  %i.dy = add nuw i64 %.sroa.8136.0247, 1
  %i.dz = load i16, ptr %.sroa.0134.0248, align 2, !noundef !4 ; 7 uses
  %i.ea = icmp eq i16 %i.dz, 0
  br i1 %i.ea, label %.backedge, label %bb.aq

._crit_edge251:                                   ; preds = %.backedge, %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.057, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.057.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.057, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.057.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.057, i64 48, i1 false)
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 %i.cf, ptr %.sroa.460.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.ap unwind label %bb.ao

bb.ao:                                            ; preds = %._crit_edge251
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i108 = load i64, ptr %1, align 8, !alias.scope !81 ; 2 uses
  %i.ec = icmp eq i64 %.val2.i108, 0
  br i1 %i.ec, label %common.resume, label %common.resume.sink.split

bb.ap:                                            ; preds = %._crit_edge251
  %.val.i111 = load i64, ptr %1, align 8, !alias.scope !81 ; 2 uses
  %i.ed = icmp eq i64 %.val.i111, 0
  br i1 %i.ed, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsksn9slvsHfS_10image_webp.exit, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsksn9slvsHfS_10image_webp.exit.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsksn9slvsHfS_10image_webp.exit.sink.split: ; preds = %bb.ap, %bb.ad
  %.val.i111.sink = phi i64 [ %.val.i100, %bb.ad ], [ %.val.i111, %bb.ap ]
  %.val1.i112 = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.ee = shl nuw i64 %.val.i111.sink, 1
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i112, i64 noundef %i.ee, i64 noundef range(i64 1, -9223372036854775807) 2) #22
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsksn9slvsHfS_10image_webp.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsksn9slvsHfS_10image_webp.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsksn9slvsHfS_10image_webp.exit.sink.split, %bb.ap, %bb.ad
  ret void

bb.aq:                                            ; preds = %.lr.ph250
  %i.ef = zext i16 %i.dz to i64                   ; 3 uses
  %i.eg = icmp ult i16 %i.dz, 16
  br i1 %i.eg, label %bb.ar, label %.invoke406

bb.ar:                                            ; preds = %bb.aq
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ef ; 2 uses
  %i.ei = load i16, ptr %i.eh, align 2, !noundef !4 ; 3 uses
  %i.ej = add i16 %i.ei, 1
  store i16 %i.ej, ptr %i.eh, align 2
  %.not89 = icmp ugt i16 %i.dz, %..i
  %i.ek = tail call i16 @llvm.bitreverse.i16(i16 %i.ei)
  %i.el = sub nsw i16 0, %i.dz
  %i.em = and i16 %i.el, 15
  %i.en = lshr i16 %i.ek, %i.em                   ; 2 uses
  br i1 %.not89, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.eo = and i16 %i.en, %i.cf
  %i.ep = zext nneg i16 %i.eo to i64              ; 3 uses
  %i.eq = load i64, ptr %i.ds, align 8, !noundef !4 ; 2 uses
  %i.er = icmp ugt i64 %i.eq, %i.ep
  br i1 %i.er, label %bb.au, label %.invoke406

bb.at:                                            ; preds = %bb.ar
  %i.es = zext i16 %i.en to i64                   ; 2 uses
  %i.et = zext nneg i16 %i.dz to i32
  %i.eu = shl nuw nsw i32 %i.et, 16
  %i.ev = trunc i64 %.sroa.8136.0247 to i32
  %i.ew = or i32 %i.eu, %i.ev
  %i.ex = icmp samesign ult i64 %i.es, %i.cd
  br i1 %i.ex, label %.lr.ph239, label %.backedge

.lr.ph239:                                        ; preds = %bb.at
  %i.ey = shl nuw nsw i64 1, %i.ef
  br label %bb.bt

bb.au:                                            ; preds = %bb.as
  %i.ez = load ptr, ptr %i.dr, align 8, !nonnull !4, !noundef !4
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ez, i64 %i.ep ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !noundef !4 ; 2 uses
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.fd = load i64, ptr %i.dm, align 8, !noundef !4 ; 3 uses
  %i.fe = icmp ult i64 %i.fd, 576460752303423488
  tail call void @llvm.assume(i1 %i.fe)
  %i.ff = trunc i64 %i.fd to i32
  %i.fg = add i32 %i.ff, 1
  store i32 %i.fg, ptr %i.fa, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.fh = load i64, ptr %i.dm, align 8, !alias.scope !84, !noalias !87, !noundef !4 ; 3 uses
  %i.fi = load i64, ptr %i.b, align 8, !range !9, !alias.scope !84, !noalias !87, !noundef !4
  %i.fj = icmp eq i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #26
          to label %bb.ay unwind label %.loopexit.split-lp.loopexit

bb.ax:                                            ; preds = %bb.au
  %i.fk = add i32 %i.fb, -1
  %i.fl = zext i32 %i.fk to i64
  %.pre314.pre = load i64, ptr %i.dm, align 8
  br label %bb.az

bb.ay:                                            ; preds = %bb.av, %bb.aw
  %i.fm = load ptr, ptr %i.dl, align 8, !alias.scope !84, !noalias !87, !nonnull !4, !noundef !4
  %i.fn = getelementptr inbounds nuw [16 x i8], ptr %i.fm, i64 %i.fh
  store i16 2, ptr %i.fn, align 8, !noalias !84
  %i.fo = add i64 %i.fh, 1                        ; 2 uses
  store i64 %i.fo, ptr %i.dm, align 8, !alias.scope !84, !noalias !87
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pre314 = phi i64 [ %i.fo, %bb.ay ], [ %.pre314.pre, %bb.ax ] ; 2 uses
  %.sroa.026.0 = phi i64 [ %i.fd, %bb.ay ], [ %i.fl, %bb.ax ] ; 2 uses
  %i.fp = zext i16 %i.ei to i64
  %i.fq = sub nsw i16 %i.dz, %..i                 ; 2 uses
  %.not90240 = icmp eq i16 %i.fq, 0
  br i1 %.not90240, label %._crit_edge245, label %.lr.ph244

._crit_edge245:                                   ; preds = %bb.bj, %bb.az
  %i.fr = phi i64 [ %.pre314, %bb.az ], [ %i.gk, %bb.bj ] ; 2 uses
  %.sroa.026.1.lcssa = phi i64 [ %.sroa.026.0, %bb.az ], [ %i.gp, %bb.bj ] ; 3 uses
  %i.fs = icmp ult i64 %.sroa.026.1.lcssa, %i.fr
  br i1 %i.fs, label %bb.ba, label %.invoke406

.lr.ph244:                                        ; preds = %bb.az, %bb.bj
  %i.ft = phi i64 [ %i.gk, %bb.bj ], [ %.pre314, %bb.az ] ; 5 uses
  %.sroa.026.1242 = phi i64 [ %i.gp, %bb.bj ], [ %.sroa.026.0, %bb.az ] ; 5 uses
  %.sroa.036.0241 = phi i16 [ %i.fu, %bb.bj ], [ %i.fq, %bb.az ]
  %i.fu = add i16 %.sroa.036.0241, -1             ; 3 uses
  %i.fv = icmp ult i64 %.sroa.026.1242, %i.ft
  br i1 %i.fv, label %bb.bh, label %.invoke406

bb.ba:                                            ; preds = %._crit_edge245
  %i.fw = load ptr, ptr %i.dl, align 8, !nonnull !4, !noundef !4
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %.sroa.026.1.lcssa ; 3 uses
  %i.fy = load i16, ptr %i.fx, align 8, !range !89, !noundef !4
  %i.fz = icmp eq i16 %i.fy, 2
  br i1 %i.fz, label %bb.bg, label %.loopexit408

bb.bb:                                            ; preds = %bb.bh
  unreachable

.loopexit408:                                     ; preds = %bb.ba, %bb.bh
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 14, ptr %i.ga, align 8
  store i64 -2, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecmENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsksn9slvsHfS_10image_webp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.be unwind label %bb.bc

bb.bc:                                            ; preds = %.loopexit408
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i115 = load i64, ptr %i.a, align 8, !alias.scope !90 ; 2 uses
  %i.gc = icmp eq i64 %.val2.i115, 0
  br i1 %i.gc, label %.body, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.val3.i116 = load ptr, ptr %i.dr, align 8, !alias.scope !90, !nonnull !4, !noundef !4
  %i.gd = shl nuw i64 %.val2.i115, 2
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i116, i64 noundef %i.gd, i64 noundef range(i64 1, -9223372036854775807) 4) #22
  br label %.body

bb.be:                                            ; preds = %.loopexit408
  %.val.i117 = load i64, ptr %i.a, align 8, !alias.scope !90 ; 2 uses
  %i.ge = icmp eq i64 %.val.i117, 0
  br i1 %i.ge, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsksn9slvsHfS_10image_webp.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %.val1.i118 = load ptr, ptr %i.dr, align 8, !alias.scope !90, !nonnull !4, !noundef !4
  %i.gf = shl nuw i64 %.val.i117, 2
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i118, i64 noundef %i.gf, i64 noundef range(i64 1, -9223372036854775807) 4) #22
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsksn9slvsHfS_10image_webp.exit

bb.bg:                                            ; preds = %bb.ba
  %i.gg = trunc i64 %.sroa.8136.0247 to i16
  store i16 1, ptr %i.fx, align 8
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fx, i64 2
  store i16 %i.gg, ptr %.sroa.451.0..sroa_idx, align 2
  br label %.backedge

.backedge:                                        ; preds = %bb.bu, %bb.bg, %bb.at, %.lr.ph250
  %i.gh = icmp eq ptr %i.dx, %i.dv
  br i1 %i.gh, label %._crit_edge251, label %.lr.ph250

bb.bh:                                            ; preds = %.lr.ph244
  %i.gi = load ptr, ptr %i.dl, align 8, !nonnull !4, !noundef !4
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %.sroa.026.1242 ; 4 uses
  %.sroa.040.0.copyload = load i16, ptr %i.gj, align 8
  switch i16 %.sroa.040.0.copyload, label %bb.bb [
    i16 0, label %bb.bi
    i16 1, label %.loopexit408
    i16 2, label %bb.bp
  ]

bb.bi:                                            ; preds = %bb.bh
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %.sroa.542.0.copyload = load i64, ptr %.sroa.542.0..sroa_idx, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeE8push_mutBJ_.exit128, %bb.bi
  %i.gk = phi i64 [ %i.ft, %bb.bi ], [ %i.hh, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeE8push_mutBJ_.exit128 ] ; 2 uses
  %.sroa.043.0 = phi i64 [ %.sroa.542.0.copyload, %bb.bi ], [ %i.gw, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeE8push_mutBJ_.exit128 ]
  %2 = and i16 %i.fu, 63
  %i.gl = zext nneg i16 %2 to i64
  %i.gm = lshr i64 %i.fp, %i.gl
  %i.gn = and i64 %i.gm, 1
  %i.go = add nuw i64 %i.gn, %.sroa.026.1242
  %i.gp = add i64 %i.go, %.sroa.043.0             ; 2 uses
  %.not90 = icmp eq i16 %i.fu, 0
  br i1 %.not90, label %._crit_edge245, label %.lr.ph244

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsksn9slvsHfS_10image_webp.exit: ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.bm unwind label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsksn9slvsHfS_10image_webp.exit
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i119 = load i64, ptr %i.b, align 8, !alias.scope !93 ; 2 uses
  %i.gr = icmp eq i64 %.val2.i119, 0
  br i1 %i.gr, label %.body123, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.val3.i120 = load ptr, ptr %i.dl, align 8, !alias.scope !93, !nonnull !4, !noundef !4
  %i.gs = shl nuw i64 %.val2.i119, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i120, i64 noundef %i.gs, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %.body123

bb.bm:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecmEECsksn9slvsHfS_10image_webp.exit
  %.val.i121 = load i64, ptr %i.b, align 8, !alias.scope !93 ; 2 uses
  %i.gt = icmp eq i64 %.val.i121, 0
  br i1 %i.gt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeEEB1c_.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.val1.i122 = load ptr, ptr %i.dl, align 8, !alias.scope !93, !nonnull !4, !noundef !4
  %i.gu = shl nuw i64 %.val.i121, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i122, i64 noundef %i.gu, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeEEB1c_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeEEB1c_.exit: ; preds = %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bo

bb.bo:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeEEB1c_.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ab

bb.bp:                                            ; preds = %bb.bh
  %i.gv = icmp ult i64 %i.ft, 576460752303423488
  tail call void @llvm.assume(i1 %i.gv)
  %i.gw = sub i64 %i.ft, %.sroa.026.1242          ; 2 uses
  store i16 0, ptr %i.gj, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store i64 %i.gw, ptr %.sroa.447.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.gx = load i64, ptr %i.dm, align 8, !alias.scope !96, !noalias !99, !noundef !4 ; 4 uses
  %i.gy = load i64, ptr %i.b, align 8, !range !9, !alias.scope !96, !noalias !99, !noundef !4
  %i.gz = icmp eq i64 %i.gx, %i.gy
  br i1 %i.gz, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #26
          to label %bb.br unwind label %.loopexit

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %i.ha = load ptr, ptr %i.dl, align 8, !alias.scope !96, !noalias !99, !nonnull !4, !noundef !4
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.ha, i64 %i.gx
  store i16 2, ptr %i.hb, align 8, !noalias !96
  %i.hc = add i64 %i.gx, 1                        ; 3 uses
  store i64 %i.hc, ptr %i.dm, align 8, !alias.scope !96, !noalias !99
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.hd = load i64, ptr %i.b, align 8, !range !9, !alias.scope !101, !noalias !104, !noundef !4
  %i.he = icmp eq i64 %i.hc, %i.hd
  br i1 %i.he, label %bb.bs, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeE8push_mutBJ_.exit128

bb.bs:                                            ; preds = %bb.br
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #26
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeE8push_mutBJ_.exit128 unwind label %.loopexit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeE8push_mutBJ_.exit128: ; preds = %bb.bs, %bb.br
  %i.hf = load ptr, ptr %i.dl, align 8, !alias.scope !101, !noalias !104, !nonnull !4, !noundef !4
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %i.hc
  store i16 2, ptr %i.hg, align 8, !noalias !101
  %i.hh = add i64 %i.gx, 2                        ; 2 uses
  store i64 %i.hh, ptr %i.dm, align 8, !alias.scope !101, !noalias !104
  br label %bb.bj

bb.bt:                                            ; preds = %.lr.ph239, %bb.bu
  %.sroa.023.0237 = phi i64 [ %i.es, %.lr.ph239 ], [ %i.hm, %bb.bu ] ; 4 uses
  %i.hi = load i64, ptr %i.ds, align 8, !noundef !4 ; 2 uses
  %i.hj = icmp ult i64 %.sroa.023.0237, %i.hi
  br i1 %i.hj, label %bb.bu, label %.invoke406

bb.bu:                                            ; preds = %bb.bt
  %i.hk = load ptr, ptr %i.dr, align 8, !nonnull !4, !noundef !4
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %.sroa.023.0237
  store i32 %i.ew, ptr %i.hl, align 4
  %i.hm = add nuw nsw i64 %.sroa.023.0237, %i.ey  ; 2 uses
  %i.hn = icmp samesign ult i64 %i.hm, %i.cd
  br i1 %i.hn, label %bb.bt, label %.backedge

.invoke406:                                       ; preds = %._crit_edge245, %bb.as, %bb.aq, %bb.bt, %.lr.ph244
  %i.ho = phi i64 [ %.sroa.023.0237, %bb.bt ], [ %.sroa.026.1242, %.lr.ph244 ], [ %i.ep, %bb.as ], [ %i.ef, %bb.aq ], [ %.sroa.026.1.lcssa, %._crit_edge245 ]
  %i.hp = phi i64 [ %i.hi, %bb.bt ], [ %i.ft, %.lr.ph244 ], [ %i.eq, %bb.as ], [ 16, %bb.aq ], [ %i.fr, %._crit_edge245 ]
  %i.hq = phi ptr [ @9, %bb.bt ], [ @8, %.lr.ph244 ], [ @6, %bb.as ], [ @5, %bb.aq ], [ @7, %._crit_edge245 ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.ho, i64 noundef %i.hp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hq) #23
          to label %.cont407 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont407:                                         ; preds = %.invoke406
  unreachable

bb.bv:                                            ; preds = %.loopexit.split-lp, %.body, %.body123
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.bw:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs_NtCsksn9slvsHfS_10image_webp7huffmanNtB1K_11HuffmanTree14build_implicit0EB1M_.exit
  %i.hs = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.o ; 2 uses
  %i.ht = load i16, ptr %i.hs, align 2, !noundef !4
  %i.hu = add i16 %i.ht, 1
  store i16 %i.hu, ptr %i.hs, align 2
  %i.hv = add i32 %.sroa.0.0, 1
  br label %bb.b

bb.bx:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4ItertENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs_NtCsksn9slvsHfS_10image_webp7huffmanNtB1K_11HuffmanTree14build_implicit0EB1M_.exit
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef 16, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23
          to label %bb.aa unwind label %bb.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsksn9slvsHfS_10image_webp7huffmanNtB4_11HuffmanTree14build_two_node(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, i16 noundef %1, i16 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.b = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #22 ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !prof !65

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #23
  unreachable

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.a
  store i16 1, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 %1, ptr %.sroa.4.0..sroa_idx, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i16 1, ptr %i.d, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  store i16 %2, ptr %.sroa.44.0..sroa_idx, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i16 2, ptr %i.e, align 8
  store i64 3, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 3, ptr %i.g, align 8
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.h = tail call noundef align 4 dereferenceable_or_null(8) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 4) #22 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit13, !prof !65

bb.c:                                             ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 8) #23
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsksn9slvsHfS_10image_webp7huffman15HuffmanTreeNodeEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #24
          to label %bb.f unwind label %bb.e

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit13: ; preds = %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit
  %i.k = insertelement <2 x i16> poison, i16 %1, i64 0
  %i.l = insertelement <2 x i16> %i.k, i16 %2, i64 1
  %i.m = zext <2 x i16> %i.l to <2 x i32>
  %i.n = or disjoint <2 x i32> %i.m, splat (i32 65536)
  store <2 x i32> %i.n, ptr %i.h, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 2, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 2, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 -16, 16) i32 @_RNvNtCsksn9slvsHfS_10image_webp11loop_filter22common_adjust_vertical(i1 noundef zeroext %0, ptr noalias nofree noundef nonnull captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = shl i64 %4, 1
  %i.b = sub i64 %3, %i.a                         ; 3 uses
  %i.c = icmp ult i64 %i.b, %2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.b
  %i.e = load i8, ptr %i.d, align 1, !noundef !4
  %i.f = zext i8 %i.e to i32
  %i.g = sub i64 %3, %4                           ; 3 uses
  %i.h = icmp ult i64 %i.g, %2
  br i1 %i.h, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.b, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !noundef !4
  %i.k = icmp ult i64 %3, %2
  br i1 %i.k, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.g, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #25
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %3 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !noundef !4
  %i.n = add i64 %4, %3                           ; 3 uses
  %i.o = icmp ult i64 %i.n, %2
  br i1 %i.o, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %3, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #25
  unreachable

bb.h:                                             ; preds = %bb.f
  br i1 %0, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #25
end_hunk_0
