Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/exr-f2a8b2e207dae201.exr.9cd9361a9d216ccf-cgu.06?download=true
inline.NumInlined: 159
inline.NumDeleted: 102
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels:_RNvMsc_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta9attribute18ChannelDescriptionj5_E6tripleBO_.exit
.split.i.i:                                       ; preds = %bb.l
  %i.bt = icmp eq i64 %i.bs, %i.bj
  br i1 %i.bt, label %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bs
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !114, !noundef !4
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i, label %bb.n

_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i: ; preds = %bb.m, %.split.i.i
  %i.bx = sub nuw i64 %i.bj, %i.bs
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bs
  br label %.loopexit43

bb.n:                                             ; preds = %bb.m, %.split.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bi, i64 noundef %i.bj, i64 noundef %i.bs, i64 noundef %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #19
          to label %.noexc40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc40:                                         ; preds = %bb.n
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.ae, %bb.ao, %.loopexit39, %bb.n, %bb.an, %bb.w, %bb.t
  %lpad.loopexit.split-lp313 = landingpad { ptr, i32 }
          cleanup
  br label %.body47

.body47:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ab
  %eh.lpad-body48 = phi { ptr, i32 } [ %i.dc, %bb.ab ], [ %lpad.loopexit.split-lp313, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i unwind label %bb.o

bb.o:                                             ; preds = %.body47
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body41 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i: ; preds = %.body47
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread17 unwind label %bb.as

.loopexit43:                                      ; preds = %.noexc, %bb.i, %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i
  %.pn13.i = phi ptr [ %i.by, %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ %i.bi, %bb.i ], [ %i.bi, %.noexc ]
  %.pn11.i = phi i64 [ %i.bx, %_RNvXs9_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i ], [ %i.bj, %bb.i ], [ %i.bj, %.noexc ] ; 4 uses
  %i.cb = load i64, ptr %i.ao, align 8, !noundef !4 ; 5 uses
  %i.cc = icmp sgt i64 %i.cb, -1
  call void @llvm.assume(i1 %i.cc)
  %i.cd = sub i64 %i.cb, %.pn11.i                 ; 13 uses
  %i.ce = load ptr, ptr %i.an, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.cf = icmp eq i64 %i.cb, %.pn11.i             ; 2 uses
  br i1 %i.cf, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.loopexit43
  %.not.i = icmp ult i64 %i.cd, %i.cb
  br i1 %.not.i, label %bb.r, label %.split.i

.split.i:                                         ; preds = %bb.q
  %i.cg = icmp eq i64 %.pn11.i, 0
  br i1 %i.cg, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  %i.ci = load i8, ptr %i.ch, align 1, !alias.scope !115, !noundef !4
  %i.cj = icmp sgt i8 %i.ci, -65
  br i1 %i.cj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %.split.i, %.loopexit43
  %i.ck = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cl = load i64, ptr %i.ac, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.cl, 72
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx
  %.not.i45 = icmp eq i64 %i.cl, 0
  br i1 %.not.i45, label %.loopexit39, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0B7_.exit.backedge.i
  %i.cn = phi ptr [ %i.co, %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0B7_.exit.backedge.i ], [ %i.ck, %bb.s ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 72 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cn, i64 16
  %.val3.i = load i64, ptr %i.cp, align 8, !noalias !116, !noundef !4
  %i.cq = icmp eq i64 %.val3.i, %i.cd
  br i1 %i.cq, label %.split.i46, label %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0B7_.exit.backedge.i

.split.i46:                                       ; preds = %.lr.ph.i
  %i.cr = getelementptr i8, ptr %i.cn, i64 8
  %.val2.i = load ptr, ptr %i.cr, align 8, !noalias !116, !nonnull !4, !noundef !4
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly %.val2.i, ptr nonnull %i.ce, i64 %i.cd), !noalias !116
  %i.cs = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.cs, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBb_6option6OptionjEj3_EENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0EB2O_.exit, label %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0B7_.exit.backedge.i

_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0B7_.exit.backedge.i: ; preds = %.split.i46, %.lr.ph.i
  %.not7.i = icmp eq ptr %i.co, %i.cm
  br i1 %.not7.i, label %.loopexit39, label %.lr.ph.i

bb.t:                                             ; preds = %bb.r, %.split.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cb, i64 noundef 0, i64 noundef %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.u:                                             ; preds = %bb.an, %bb.w, %bb.t
  unreachable

.loopexit39:                                      ; preds = %_RNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0B7_.exit.backedge.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.cd, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %.loopexit39
  %i.ct = load i64, ptr %i.d, align 8, !range !11, !noundef !4
  %i.cu = trunc nuw i64 %i.ct to i1
  %i.cv = load i64, ptr %i.ap, align 8, !range !12, !noundef !4 ; 3 uses
  br i1 %i.cu, label %bb.w, label %bb.x, !prof !8

bb.w:                                             ; preds = %bb.v
  %i.cw = load i64, ptr %i.aq, align 8
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.cv, i64 %i.cw) #18
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.x:                                             ; preds = %bb.v
  %i.cx = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cy = icmp ule i64 %i.cd, %i.cv
  call void @llvm.assume(i1 %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %i.cf, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.z, %bb.x
  store i64 %i.cv, ptr %i.h, align 8
  store ptr %i.cx, ptr %.sroa.424.0..sroa_idx, align 8
  store i64 %i.cd, ptr %.sroa.525.0..sroa_idx, align 8
  store i64 0, ptr %i.ar, align 8
  store i64 0, ptr %.sroa.4172.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.5174.0..sroa_idx, align 8
  %i.cz = load i64, ptr %i.ac, align 8, !alias.scope !117, !noundef !4 ; 3 uses
  %i.da = load i64, ptr %i.j, align 8, !range !110, !alias.scope !117, !noundef !4
  %i.db = icmp eq i64 %i.cz, %i.da
  br i1 %i.db, label %bb.aa, label %bb.ad

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cx, ptr nonnull align 1 %i.ce, i64 %i.cd, i1 false)
  br label %bb.y

bb.aa:                                            ; preds = %bb.y
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringAINtNtCsj6eKBz9Db1c_4core6option6OptionjEj3_EE8grow_oneCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.ad unwind label %bb.ab, !noalias !118

bb.ab:                                            ; preds = %bb.aa
  %i.dc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtB4_6option6OptionjEj3_EECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h) #17
          to label %.body47 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.ad:                                            ; preds = %bb.aa, %bb.y
  %i.de = load ptr, ptr %i.ab, align 8, !alias.scope !117, !nonnull !4, !noundef !4
  %i.df = getelementptr inbounds nuw [72 x i8], ptr %i.de, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.df, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false)
  %i.dg = add i64 %i.cz, 1
  store i64 %i.dg, ptr %i.ac, align 8, !alias.scope !117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBb_6option6OptionjEj3_EENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0EB2O_.exit

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBb_6option6OptionjEj3_EENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0EB2O_.exit: ; preds = %.split.i46, %bb.ad
  br i1 %i.at, label %._crit_edge, label %.lr.ph103

.lr.ph103:                                        ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBb_6option6OptionjEj3_EENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0EB2O_.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 57
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph103, %.loopexit
  %.sroa.04.0102 = phi ptr [ %2, %.lr.ph103 ], [ %i.di, %.loopexit ] ; 5 uses
  %.sroa.07.0101 = phi i8 [ 0, %.lr.ph103 ], [ %.sroa.07.1, %.loopexit ]
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.04.0102, i64 48 ; 2 uses
  %i.dj = load i8, ptr %i.dh, align 1, !range !13, !noundef !4
  %i.dk = invoke noundef zeroext i1 @_RNvMNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rulesNtB2_4Rule7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.04.0102, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.pn13.i, i64 noundef %.pn11.i, i8 noundef %i.dj)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.af:                                            ; preds = %bb.ae
  br i1 %i.dk, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.04.0102, i64 41
  %i.dm = load i8, ptr %i.dl, align 1, !range !13, !noundef !4 ; 4 uses
  %i.dn = load i64, ptr %.sroa.04.0102, align 8, !range !11, !noundef !4
  %i.do = trunc nuw i64 %i.dn to i1
  br i1 %i.do, label %bb.ah, label %.loopexit

.loopexit:                                        ; preds = %bb.am, %bb.ak, %bb.ah, %bb.af, %bb.ag
  %.sroa.07.1 = phi i8 [ %.sroa.07.0101, %bb.af ], [ %i.dm, %bb.ag ], [ %i.dm, %bb.ah ], [ %i.dm, %bb.ak ], [ %i.dm, %bb.am ] ; 2 uses
  %i.dp = icmp eq ptr %i.di, %i.as
  br i1 %i.dp, label %._crit_edge, label %bb.ae

bb.ah:                                            ; preds = %bb.ag
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.04.0102, i64 8
  %i.dr = load i64, ptr %i.dq, align 8, !noundef !4 ; 3 uses
  %i.ds = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.dt = load i64, ptr %i.ac, align 8, !noundef !4 ; 2 uses
  %.idx109 = mul nuw nsw i64 %i.dt, 72
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.idx109 ; 2 uses
  %i.dv = icmp eq i64 %i.dt, 0
  br i1 %i.dv, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah
  %i.dw = icmp ult i64 %i.dr, 3
  br i1 %i.dw, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.ak
  %.sroa.08.099.us = phi ptr [ %i.dx, %bb.ak ], [ %i.ds, %.lr.ph ] ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.08.099.us, i64 72 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.08.099.us, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !noundef !4
  %i.ea = icmp eq i64 %i.dz, %i.cd
  br i1 %i.ea, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.lr.ph.split.us
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.08.099.us, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !4, !noundef !4
  %bcmp.us = call i32 @bcmp(ptr nonnull %i.ec, ptr nonnull %i.ce, i64 %i.cd)
  %i.ed = icmp eq i32 %bcmp.us, 0
  br i1 %i.ed, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.08.099.us, i64 24
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.dr ; 2 uses
  store i64 1, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store i64 %.sroa.7.0104, ptr %i.eg, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %.lr.ph.split.us
  %i.eh = icmp eq ptr %i.dx, %i.du
  br i1 %i.eh, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.am
  %.sroa.08.099 = phi ptr [ %i.ei, %bb.am ], [ %i.ds, %.lr.ph ] ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.08.099, i64 72 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.08.099, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !noundef !4
  %i.el = icmp eq i64 %i.ek, %i.cd
  br i1 %i.el, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.lr.ph.split
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.08.099, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !nonnull !4, !noundef !4
  %bcmp = call i32 @bcmp(ptr nonnull %i.en, ptr nonnull %i.ce, i64 %i.cd)
  %i.eo = icmp eq i32 %bcmp, 0
  br i1 %i.eo, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.split, %bb.al
  %i.ep = icmp eq ptr %i.ei, %i.du
  br i1 %i.ep, label %.loopexit, label %.lr.ph.split

bb.an:                                            ; preds = %bb.al
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.dr, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #18
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._crit_edge:                                      ; preds = %.loopexit, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBb_6option6OptionjEj3_EENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0EB2O_.exit
  %.sroa.07.0.lcssa = phi i8 [ 0, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtCs4wP2HXfJTCR_5alloc6string6StringAINtNtBb_6option6OptionjEj3_EENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa17classify_channels0EB2O_.exit ], [ %.sroa.07.1, %.loopexit ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 40
  %i.er = load i64, ptr %i.eq, align 8, !noundef !4
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.er, i64 1) ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 48
  %i.et = load i64, ptr %i.es, align 8, !noundef !4
  %..i49 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.et, i64 1) ; 2 uses
  %i.eu = add i64 %i.au, %..i
  %i.ev = udiv i64 %i.eu, %..i
  %i.ew = add i64 %i.av, %..i49
  %i.ex = udiv i64 %i.ew, %..i49
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 57
  %i.ez = load i8, ptr %i.ey, align 1, !range !13, !noundef !4 ; 2 uses
  %i.fa = icmp eq i8 %i.ez, 1
  %. = select i1 %i.fa, i64 2, i64 4
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.0.0105, i64 56
  %i.fc = load i8, ptr %i.fb, align 8, !range !10, !noundef !4
  %i.fd = load i64, ptr %i.aa, align 8, !alias.scope !119, !noundef !4 ; 3 uses
  %i.fe = load i64, ptr %i.k, align 8, !range !110, !alias.scope !119, !noundef !4
  %i.ff = icmp eq i64 %i.fd, %i.fe
  br i1 %i.ff, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %._crit_edge
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k) #20
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !120

bb.ap:                                            ; preds = %._crit_edge, %bb.ao
  %i.fg = load ptr, ptr %i.z, align 8, !alias.scope !119, !nonnull !4, !noundef !4
  %i.fh = getelementptr inbounds nuw [32 x i8], ptr %i.fg, i64 %i.fd ; 6 uses
  store i64 %i.ev, ptr %i.fh, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store i64 %i.ex, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  store i64 %., ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  store i8 %.sroa.07.0.lcssa, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 25
  store i8 %i.ez, ptr %.sroa.77.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fh, i64 26
  store i8 %i.fc, ptr %.sroa.8.0..sroa_idx, align 2
  %i.fi = add i64 %i.fd, 1
  store i64 %i.fi, ptr %i.aa, align 8, !alias.scope !119
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i52 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.thread17 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i52: ; preds = %bb.ap
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit57 unwind label %.thread23

.thread23:                                        ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i52
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %.thread17

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsdsTQD3x2eOp_3exr.exit57: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.fm = icmp eq ptr %i.aw, %i.ai
  br i1 %i.fm, label %.thread25.loopexit, label %bb.c

bb.as:                                            ; preds = %bb.av, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i, %.thread17
  %i.fn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body41

.body41:                                          ; preds = %bb.au, %bb.as, %bb.o
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.at:                                            ; preds = %bb.b, %.thread17
  %.pn15 = phi { ptr, i32 } [ %.pn16, %.thread17 ], [ %i.ak, %bb.b ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body41 unwind label %bb.aw

bb.av:                                            ; preds = %bb.at
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoEEB1e_.exit unwind label %bb.as

bb.aw:                                            ; preds = %bb.au
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

.thread17:                                        ; preds = %bb.aq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i, %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread23
  %.pn16 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp45.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fl, %.thread23 ], [ %eh.lpad-body48, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit.i ], [ %i.fj, %bb.aq ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtBG_6string6StringAINtNtB4_6option6OptionjEj3_EEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #17
          to label %bb.at unwind label %bb.as

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa11ChannelInfoEEB1e_.exit: ; preds = %bb.av
  resume { ptr, i32 } %.pn15
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCsdsTQD3x2eOp_3exr11compression3dwa8compress(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(352) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3, i32 noundef range(i32 0, 2) %4, float %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 13 uses
  %i.c = alloca [88 x i8], align 8                ; 14 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.627 = alloca [24 x i8], align 8          ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = alloca [24 x i8], align 8                ; 12 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.623 = alloca [40 x i8], align 8          ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 11 uses
  %i.p = alloca [24 x i8], align 8                ; 11 uses
  %i.q = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.616 = alloca [24 x i8], align 8          ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 11 uses
  %i.s = alloca [48 x i8], align 8                ; 5 uses
  %i.t = alloca [24 x i8], align 8                ; 11 uses
  %i.u = alloca [24 x i8], align 8                ; 11 uses
  %i.v = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.610 = alloca [24 x i8], align 8          ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 11 uses
  %i.x = alloca [24 x i8], align 8                ; 11 uses
  %i.y = alloca [24 x i8], align 8                ; 11 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !4 ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp eq i64 %i.aa, 0
  br i1 %i.ac, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ad, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %.body127, %bb.dp, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.im, %bb.dp ], [ %i.ae, %bb.c ], [ %.pn84, %.body127 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsdsTQD3x2eOp_3exr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.cv

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  invoke void @_RNvNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules21default_channel_rules(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x)
          to label %bb.g unwind label %bb.f

.body127:                                         ; preds = %bb.dm, %bb.f, %.body123
  %.pn84 = phi { ptr, i32 } [ %.pn82, %.body123 ], [ %i.ag, %bb.f ], [ %i.ik, %bb.dm ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.y) #17
          to label %common.resume unwind label %bb.bg

bb.f:                                             ; preds = %bb.dn, %bb.ct, %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body127

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.610)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !4
  invoke void @_RNvNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules28write_relevant_channel_rules(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ai, i64 noundef %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %1)
          to label %bb.i unwind label %bb.h

.body123:                                         ; preds = %bb.dj, %bb.h, %.body119
  %.pn82 = phi { ptr, i32 } [ %.pn80, %.body119 ], [ %i.al, %bb.h ], [ %i.ii, %bb.dj ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtNtCsdsTQD3x2eOp_3exr11compression3dwa13channel_rules4RuleEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.x) #17
          to label %.body127 unwind label %bb.bg

bb.h:                                             ; preds = %bb.dk, %bb.cs, %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body123

bb.i:                                             ; preds = %bb.g
  %i.am = load i64, ptr %i.v, align 8, !range !9, !noundef !4 ; 2 uses
  %.not62 = icmp eq i64 %i.am, -1
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br i1 %.not62, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.444.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610, i64 24, i1 false)
  store i64 %i.am, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsdsTQD3x2eOp_3exr.exit125

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.610, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.610)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ao = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4
end_hunk_0
