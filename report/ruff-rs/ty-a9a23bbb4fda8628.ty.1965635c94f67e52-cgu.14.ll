Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty-a9a23bbb4fda8628.ty.1965635c94f67e52-cgu.14?download=true
inline.NumInlined: 746
inline.NumDeleted: 446
begin_hunk_0_@_RINvCsdXn3xun2LFY_7argfile16expand_args_fromNvNtB2_8fromfile14parse_fromfileNtNtCs2AWtUsOyxgP_3std3env6ArgsOsECs2bbjMbSOFjy_2ty:bb.a
bb.w:                                             ; preds = %bb.v
  %i.cd = sub i64 %i.bx, %i.bz                    ; 2 uses
  %i.ce = load ptr, ptr %i.aj, align 8, !alias.scope !70, !nonnull !3, !noundef !3 ; 2 uses
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.by
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.ce, i64 %i.cd
  %i.ch = shl i64 %i.bz, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cg, ptr nonnull align 8 %i.cf, i64 %i.ch, i1 false), !noalias !69
  store i64 %i.cd, ptr %i.ah, align 8, !alias.scope !70
  br label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE7reserveCs2bbjMbSOFjy_2ty.exit

bb.x:                                             ; preds = %bb.v
  %i.ci = load ptr, ptr %i.aj, align 8, !alias.scope !70, !nonnull !3, !noundef !3 ; 2 uses
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %i.bs
  %i.ck = shl i64 %i.ca, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %i.ci, i64 %i.ck, i1 false), !noalias !69
  br label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE7reserveCs2bbjMbSOFjy_2ty.exit

bb.y:                                             ; preds = %bb.t
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m, i64 noundef %i.bp, i64 noundef range(i64 0, 288230376151711744) %i.bn, i64 noundef 8, i64 noundef 32)
          to label %.noexc34 unwind label %.loopexit99

.noexc34:                                         ; preds = %bb.y
  %.pre.i = load i64, ptr %i.m, align 8, !range !7, !alias.scope !70
  %.pre7.i = load i64, ptr %i.ai, align 8, !alias.scope !70 ; 2 uses
  %.pre8.i = sub i64 %i.bs, %.pre7.i
  br label %bb.u

bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentEECs2bbjMbSOFjy_2ty.exit.i
  %lpad.thr_comm.split-lp81 = landingpad { ptr, i32 }
          cleanup
  br label %.thread72

_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE7reserveCs2bbjMbSOFjy_2ty.exit: ; preds = %bb.x, %bb.w, %bb.u, %bb.r
  %i.cl = load ptr, ptr %i.am, align 8, !nonnull !3, !noundef !3 ; 6 uses
  %i.cm = load i64, ptr %i.g, align 8, !range !7, !noundef !3 ; 3 uses
  %.idx = shl nuw nsw i64 %i.bn, 5
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.cl, ptr %i.f, align 8
  store i64 %i.cm, ptr %.sroa.013.sroa.3.0..sroa_idx, align 8
  store ptr %i.cn, ptr %.sroa.013.sroa.4.0..sroa_idx, align 8
  %i.co = icmp eq i64 %i.bn, 0
  br i1 %i.co, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2bbjMbSOFjy_2ty.exit.i._crit_edge, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2bbjMbSOFjy_2ty.exit.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2bbjMbSOFjy_2ty.exit.i: ; preds = %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE7reserveCs2bbjMbSOFjy_2ty.exit, %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit
  %i.cp = phi ptr [ %i.cr, %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit ], [ %i.cl, %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE7reserveCs2bbjMbSOFjy_2ty.exit ] ; 3 uses
  %i.cq = phi i64 [ %i.cs, %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit ], [ 0, %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE7reserveCs2bbjMbSOFjy_2ty.exit ] ; 18 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 32 ; 5 uses
  %.sroa.0.0.copyload1.i = load i64, ptr %i.cp, align 8, !noalias !71 ; 3 uses
  %.not.i35 = icmp eq i64 %.sroa.0.0.copyload1.i, 2
  br i1 %.not.i35, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2bbjMbSOFjy_2ty.exit.i._crit_edge, label %bb.aa

.body39:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2bbjMbSOFjy_2ty.exit.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentEEECs2bbjMbSOFjy_2ty(ptr noalias noundef align 8 dereferenceable(40) %i.f) #30
          to label %.thread72 unwind label %bb.bv

bb.aa:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2bbjMbSOFjy_2ty.exit.i
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx2.i, i64 24, i1 false)
  %i.cs = add nuw nsw i64 %i.cq, 1                ; 4 uses
  store i64 %.sroa.0.0.copyload1.i, ptr %i.e, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.ct = load i64, ptr %i.ai, align 8, !alias.scope !72, !noalias !73, !noundef !3 ; 3 uses
  %.not.i36 = icmp ugt i64 %i.cq, %i.ct
  br i1 %.not.i36, label %bb.ab, label %bb.ac, !prof !6

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.cr, ptr %.sroa.013.sroa.2.0..sroa_idx, align 8
  store i64 %i.cs, ptr %.sroa.2.0..sroa_idx, align 8
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @10, ptr noundef nonnull inttoptr (i64 39 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #29
          to label %bb.ak unwind label %.loopexit.split-lp, !noalias !74

bb.ac:                                            ; preds = %bb.aa
  %i.cu = load i64, ptr %i.m, align 8, !range !7, !alias.scope !72, !noalias !73, !noundef !3 ; 2 uses
  %i.cv = icmp eq i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.am, label %bb.al

.loopexit:                                        ; preds = %bb.am
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cr, ptr %.sroa.013.sroa.2.0..sroa_idx, align 8
  store i64 %i.cs, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %.pre140 = load i64, ptr %i.e, align 8, !range !4, !alias.scope !75
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %i.cw = phi i64 [ %.sroa.0.0.copyload1.i, %.loopexit ], [ %.pre140, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.9.8..sroa_idx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2bbjMbSOFjy_2ty.exit.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.9.8..sroa_idx)
          to label %.body57 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ah:                                            ; preds = %bb.ad
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.9.8..sroa_idx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2bbjMbSOFjy_2ty.exit.i unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.9.8..sroa_idx)
          to label %.body57 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2bbjMbSOFjy_2ty.exit.i: ; preds = %bb.ah, %bb.ae
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.9.8..sroa_idx)
          to label %.body39 unwind label %bb.bp

bb.ak:                                            ; preds = %bb.ab
  unreachable

bb.al:                                            ; preds = %._crit_edge.i, %bb.ac
  %i.dc = phi i64 [ %.pre, %._crit_edge.i ], [ %i.cu, %bb.ac ] ; 16 uses
  %i.dd = phi i64 [ %.pre.i38, %._crit_edge.i ], [ %i.ct, %bb.ac ] ; 2 uses
  %i.de = sub i64 %i.dd, %i.cq                    ; 11 uses
  %i.df = icmp ult i64 %i.de, %i.cq
  %i.dg = load i64, ptr %i.ah, align 8, !alias.scope !72, !noalias !73, !noundef !3 ; 12 uses
  br i1 %i.df, label %bb.bb, label %bb.an

bb.am:                                            ; preds = %bb.ac
  invoke void @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE4growCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %._crit_edge.i unwind label %.loopexit, !noalias !73

._crit_edge.i:                                    ; preds = %bb.am
  %.pre.i38 = load i64, ptr %i.ai, align 8, !alias.scope !72, !noalias !73
  %.pre = load i64, ptr %i.m, align 8, !range !7, !alias.scope !72, !noalias !73
  br label %bb.al

bb.an:                                            ; preds = %bb.al
  %i.dh = add i64 %i.dg, -1                       ; 2 uses
  %i.di = add i64 %i.dh, %i.dc                    ; 2 uses
  %.not33.i = icmp ult i64 %i.di, %i.dc
  %..i = select i1 %.not33.i, i64 %i.di, i64 %i.dh ; 10 uses
  store i64 %..i, ptr %i.ah, align 8, !alias.scope !72, !noalias !73
  %.val40.i = load ptr, ptr %i.aj, align 8, !alias.scope !72, !noalias !73 ; 30 uses
  %i.dj = icmp eq i64 %i.dg, %..i
  %i.dk = icmp eq i64 %i.cq, 0
  %or.cond.i53 = or i1 %i.dk, %i.dj
  br i1 %or.cond.i53, label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dl = sub i64 %..i, %i.dg                     ; 2 uses
  %i.dm = add i64 %i.dl, %i.dc                    ; 2 uses
  %.not.i54 = icmp ult i64 %i.dm, %i.dc
  %..i55 = select i1 %.not.i54, i64 %i.dm, i64 %i.dl
  %i.dn = icmp ult i64 %..i55, %i.cq              ; 2 uses
  %i.do = sub i64 %i.dc, %i.dg                    ; 11 uses
  %i.dp = sub i64 %i.dc, %..i                     ; 11 uses
  %i.dq = icmp ult i64 %i.do, %i.cq
  %i.dr = icmp ult i64 %i.dp, %i.cq               ; 3 uses
  br i1 %i.dq, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  br i1 %i.dr, label %bb.as, label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  br i1 %i.dn, label %bb.aw, label %bb.av

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val40.i) ], !noalias !73
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %.val40.i, i64 %i.dg
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %.val40.i, i64 %..i
  %i.du = shl nuw nsw i64 %i.cq, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dt, ptr nonnull align 8 %i.ds, i64 %i.du, i1 false), !noalias !73
  br label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit

bb.as:                                            ; preds = %bb.ap
  br i1 %i.dn, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val40.i) ], !noalias !73
  %i.dv = getelementptr [32 x i8], ptr %.val40.i, i64 %i.dg ; 2 uses
  %i.dw = getelementptr inbounds nuw [32 x i8], ptr %.val40.i, i64 %..i
  %i.dx = shl i64 %i.dp, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dw, ptr nonnull align 8 %i.dv, i64 %i.dx, i1 false), !noalias !73
  %i.dy = sub nuw nsw i64 %i.cq, %i.dp
  %i.dz = getelementptr [32 x i8], ptr %i.dv, i64 %i.dp
  %i.ea = shl i64 %i.dy, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.val40.i, ptr align 8 %i.dz, i64 %i.ea, i1 false), !noalias !73
  br label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit

bb.au:                                            ; preds = %bb.as
  %i.eb = sub nuw nsw i64 %i.cq, %i.dp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val40.i) ], !noalias !73
  %i.ec = getelementptr [32 x i8], ptr %.val40.i, i64 %i.dg ; 2 uses
  %i.ed = getelementptr [32 x i8], ptr %i.ec, i64 %i.dp
  %i.ee = shl i64 %i.eb, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.val40.i, ptr align 8 %i.ed, i64 %i.ee, i1 false), !noalias !73
  %i.ef = getelementptr inbounds nuw [32 x i8], ptr %.val40.i, i64 %..i
  %i.eg = shl i64 %i.dp, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ef, ptr nonnull align 8 %i.ec, i64 %i.eg, i1 false), !noalias !73
  br label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit

bb.av:                                            ; preds = %bb.aq
  %i.eh = getelementptr inbounds nuw [32 x i8], ptr %.val40.i, i64 %i.dg ; 2 uses
  %i.ei = getelementptr [32 x i8], ptr %.val40.i, i64 %..i ; 4 uses
  %i.ej = shl i64 %i.do, 5                        ; 2 uses
  br i1 %i.dr, label %bb.ay, label %bb.ax

bb.aw:                                            ; preds = %bb.aq
  br i1 %i.dr, label %bb.ba, label %bb.az

bb.ax:                                            ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val40.i) ], !noalias !73
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ei, ptr nonnull align 8 %i.eh, i64 %i.ej, i1 false), !noalias !73
  %i.ek = sub nuw nsw i64 %i.cq, %i.do
  %i.el = getelementptr [32 x i8], ptr %i.ei, i64 %i.do
  %i.em = shl i64 %i.ek, 5
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.el, ptr nonnull align 8 %.val40.i, i64 %i.em, i1 false), !noalias !73
  br label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit

bb.ay:                                            ; preds = %bb.av
  %i.en = sub i64 %i.dp, %i.do                    ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ei, ptr nonnull align 8 %i.eh, i64 %i.ej, i1 false), !noalias !73
  %i.eo = getelementptr [32 x i8], ptr %i.ei, i64 %i.do
  %i.ep = shl i64 %i.en, 5
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.eo, ptr nonnull align 8 %.val40.i, i64 %i.ep, i1 false), !noalias !73
  %i.eq = sub nuw nsw i64 %i.cq, %i.dp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val40.i) ], !noalias !73
  %i.er = getelementptr inbounds nuw [32 x i8], ptr %.val40.i, i64 %i.en
  %i.es = shl i64 %i.eq, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.val40.i, ptr nonnull align 8 %i.er, i64 %i.es, i1 false), !noalias !73
  br label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit

bb.az:                                            ; preds = %bb.aw
  %i.et = sub nuw nsw i64 %i.cq, %i.do
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val40.i) ], !noalias !73
  %i.eu = getelementptr [32 x i8], ptr %.val40.i, i64 %..i ; 2 uses
  %i.ev = getelementptr [32 x i8], ptr %i.eu, i64 %i.do
  %i.ew = shl i64 %i.et, 5
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ev, ptr nonnull align 8 %.val40.i, i64 %i.ew, i1 false), !noalias !73
  %i.ex = getelementptr inbounds nuw [32 x i8], ptr %.val40.i, i64 %i.dg
  %i.ey = shl i64 %i.do, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eu, ptr nonnull align 8 %i.ex, i64 %i.ey, i1 false), !noalias !73
  br label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit

bb.ba:                                            ; preds = %bb.aw
  %i.ez = sub i64 %i.do, %i.dp                    ; 3 uses
  %i.fa = sub nuw nsw i64 %i.cq, %i.do
  %i.fb = getelementptr inbounds nuw [32 x i8], ptr %.val40.i, i64 %i.ez
  %i.fc = shl i64 %i.fa, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fb, ptr nonnull align 8 %.val40.i, i64 %i.fc, i1 false), !noalias !73
  %i.fd = sub i64 %i.dc, %i.ez
  %i.fe = getelementptr inbounds nuw [32 x i8], ptr %.val40.i, i64 %i.fd
  %i.ff = shl i64 %i.ez, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.val40.i, ptr nonnull align 8 %i.fe, i64 %i.ff, i1 false), !noalias !73
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val40.i) ], !noalias !73
  %i.fg = getelementptr inbounds nuw [32 x i8], ptr %.val40.i, i64 %i.dg
  %i.fh = getelementptr inbounds nuw [32 x i8], ptr %.val40.i, i64 %..i
  %i.fi = shl i64 %i.dp, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fh, ptr nonnull align 8 %i.fg, i64 %i.fi, i1 false), !noalias !73
  br label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit

bb.bb:                                            ; preds = %bb.al
  %i.fj = add i64 %i.dg, %i.cq                    ; 2 uses
  %.not35.i = icmp ult i64 %i.fj, %i.dc
  %i.fk = select i1 %.not35.i, i64 0, i64 %i.dc
  %.sroa.01.0.i = sub nuw i64 %i.fj, %i.fk        ; 9 uses
  %i.fl = add i64 %i.cs, %i.dg                    ; 2 uses
  %.not36.i = icmp ult i64 %i.fl, %i.dc
  %i.fm = select i1 %.not36.i, i64 0, i64 %i.dc
  %.sroa.02.0.i = sub nuw i64 %i.fl, %i.fm        ; 9 uses
  %.val38.i = load ptr, ptr %i.aj, align 8, !alias.scope !72, !noalias !73 ; 30 uses
  %i.fn = icmp eq i64 %.sroa.01.0.i, %.sroa.02.0.i
  %i.fo = icmp eq i64 %i.dd, %i.cq
  %or.cond.i = or i1 %i.fo, %i.fn
  br i1 %or.cond.i, label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fp = sub i64 %.sroa.02.0.i, %.sroa.01.0.i    ; 2 uses
  %i.fq = add i64 %i.fp, %i.dc                    ; 2 uses
  %.not.i51 = icmp ult i64 %i.fq, %i.dc
  %..i52 = select i1 %.not.i51, i64 %i.fq, i64 %i.fp
  %i.fr = icmp ult i64 %..i52, %i.de              ; 2 uses
  %i.fs = sub i64 %i.dc, %.sroa.01.0.i            ; 11 uses
  %i.ft = sub i64 %i.dc, %.sroa.02.0.i            ; 11 uses
  %i.fu = icmp ult i64 %i.fs, %i.de
  %i.fv = icmp ult i64 %i.ft, %i.de               ; 3 uses
  br i1 %i.fu, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  br i1 %i.fv, label %bb.bg, label %bb.bf

bb.be:                                            ; preds = %bb.bc
  br i1 %i.fr, label %bb.bk, label %bb.bj

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val38.i) ], !noalias !73
  %i.fw = getelementptr inbounds nuw [32 x i8], ptr %.val38.i, i64 %.sroa.01.0.i
  %i.fx = getelementptr inbounds nuw [32 x i8], ptr %.val38.i, i64 %.sroa.02.0.i
  %i.fy = shl i64 %i.de, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fx, ptr nonnull align 8 %i.fw, i64 %i.fy, i1 false), !noalias !73
  br label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit

bb.bg:                                            ; preds = %bb.bd
  br i1 %i.fr, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val38.i) ], !noalias !73
  %i.fz = getelementptr [32 x i8], ptr %.val38.i, i64 %.sroa.01.0.i ; 2 uses
  %i.ga = getelementptr inbounds nuw [32 x i8], ptr %.val38.i, i64 %.sroa.02.0.i
  %i.gb = shl i64 %i.ft, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ga, ptr nonnull align 8 %i.fz, i64 %i.gb, i1 false), !noalias !73
  %i.gc = sub nuw nsw i64 %i.de, %i.ft
  %i.gd = getelementptr [32 x i8], ptr %i.fz, i64 %i.ft
  %i.ge = shl i64 %i.gc, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.val38.i, ptr align 8 %i.gd, i64 %i.ge, i1 false), !noalias !73
  br label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit

bb.bi:                                            ; preds = %bb.bg
  %i.gf = sub nuw nsw i64 %i.de, %i.ft
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val38.i) ], !noalias !73
  %i.gg = getelementptr [32 x i8], ptr %.val38.i, i64 %.sroa.01.0.i ; 2 uses
  %i.gh = getelementptr [32 x i8], ptr %i.gg, i64 %i.ft
  %i.gi = shl i64 %i.gf, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.val38.i, ptr align 8 %i.gh, i64 %i.gi, i1 false), !noalias !73
  %i.gj = getelementptr inbounds nuw [32 x i8], ptr %.val38.i, i64 %.sroa.02.0.i
  %i.gk = shl i64 %i.ft, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gj, ptr nonnull align 8 %i.gg, i64 %i.gk, i1 false), !noalias !73
  br label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit

bb.bj:                                            ; preds = %bb.be
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %.val38.i, i64 %.sroa.01.0.i ; 2 uses
  %i.gm = getelementptr [32 x i8], ptr %.val38.i, i64 %.sroa.02.0.i ; 4 uses
  %i.gn = shl i64 %i.fs, 5                        ; 2 uses
  br i1 %i.fv, label %bb.bm, label %bb.bl

bb.bk:                                            ; preds = %bb.be
  br i1 %i.fv, label %bb.bo, label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val38.i) ], !noalias !73
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gm, ptr nonnull align 8 %i.gl, i64 %i.gn, i1 false), !noalias !73
  %i.go = sub nuw nsw i64 %i.de, %i.fs
  %i.gp = getelementptr [32 x i8], ptr %i.gm, i64 %i.fs
  %i.gq = shl i64 %i.go, 5
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.gp, ptr nonnull align 8 %.val38.i, i64 %i.gq, i1 false), !noalias !73
  br label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit

bb.bm:                                            ; preds = %bb.bj
  %i.gr = sub i64 %i.ft, %i.fs                    ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gm, ptr nonnull align 8 %i.gl, i64 %i.gn, i1 false), !noalias !73
  %i.gs = getelementptr [32 x i8], ptr %i.gm, i64 %i.fs
  %i.gt = shl i64 %i.gr, 5
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.gs, ptr nonnull align 8 %.val38.i, i64 %i.gt, i1 false), !noalias !73
  %i.gu = sub nuw nsw i64 %i.de, %i.ft
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val38.i) ], !noalias !73
  %i.gv = getelementptr inbounds nuw [32 x i8], ptr %.val38.i, i64 %i.gr
  %i.gw = shl i64 %i.gu, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.val38.i, ptr nonnull align 8 %i.gv, i64 %i.gw, i1 false), !noalias !73
  br label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit

bb.bn:                                            ; preds = %bb.bk
  %i.gx = sub nuw nsw i64 %i.de, %i.fs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val38.i) ], !noalias !73
  %i.gy = getelementptr [32 x i8], ptr %.val38.i, i64 %.sroa.02.0.i ; 2 uses
  %i.gz = getelementptr [32 x i8], ptr %i.gy, i64 %i.fs
  %i.ha = shl i64 %i.gx, 5
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.gz, ptr nonnull align 8 %.val38.i, i64 %i.ha, i1 false), !noalias !73
  %i.hb = getelementptr inbounds nuw [32 x i8], ptr %.val38.i, i64 %.sroa.01.0.i
  %i.hc = shl i64 %i.fs, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gy, ptr nonnull align 8 %i.hb, i64 %i.hc, i1 false), !noalias !73
  br label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit

bb.bo:                                            ; preds = %bb.bk
  %i.hd = sub i64 %i.fs, %i.ft                    ; 3 uses
  %i.he = sub nuw nsw i64 %i.de, %i.fs
  %i.hf = getelementptr inbounds nuw [32 x i8], ptr %.val38.i, i64 %i.hd
  %i.hg = shl i64 %i.he, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hf, ptr nonnull align 8 %.val38.i, i64 %i.hg, i1 false), !noalias !73
  %i.hh = sub i64 %i.dc, %i.hd
  %i.hi = getelementptr inbounds nuw [32 x i8], ptr %.val38.i, i64 %i.hh
  %i.hj = shl i64 %i.hd, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.val38.i, ptr nonnull align 8 %i.hi, i64 %i.hj, i1 false), !noalias !73
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val38.i) ], !noalias !73
  %i.hk = getelementptr inbounds nuw [32 x i8], ptr %.val38.i, i64 %.sroa.01.0.i
  %i.hl = getelementptr inbounds nuw [32 x i8], ptr %.val38.i, i64 %.sroa.02.0.i
  %i.hm = shl i64 %i.ft, 5
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hl, ptr nonnull align 8 %i.hk, i64 %i.hm, i1 false), !noalias !73
  br label %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit

bb.bp:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs2bbjMbSOFjy_2ty.exit.i
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body57

.body57:                                          ; preds = %bb.af, %bb.ai, %bb.bp
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2bbjMbSOFjy_2ty.exit.i._crit_edge: ; preds = %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2bbjMbSOFjy_2ty.exit.i, %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE7reserveCs2bbjMbSOFjy_2ty.exit
  %i.ho = phi ptr [ %i.cl, %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE7reserveCs2bbjMbSOFjy_2ty.exit ], [ %i.cn, %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit ], [ %i.cr, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2bbjMbSOFjy_2ty.exit.i ] ; 2 uses
  %i.hp = ptrtoint ptr %i.cn to i64
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = sub nuw i64 %i.hp, %i.hq
  %i.hs = lshr exact i64 %i.hr, 5
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentECs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 %i.ho, i64 noundef %i.hs)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentEECs2bbjMbSOFjy_2ty.exit.i unwind label %bb.bq, !noalias !76

bb.bq:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2bbjMbSOFjy_2ty.exit.i._crit_edge
  %i.ht = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !76
  store i64 %i.cm, ptr %i.b, align 8, !noalias !76
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.cl, ptr %i.hu, align 8, !noalias !76
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.thread75 unwind label %bb.br, !noalias !76

bb.br:                                            ; preds = %bb.bq
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !76
  unreachable

.thread75:                                        ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !76
  br label %.thread72

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentEECs2bbjMbSOFjy_2ty.exit.i: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2bbjMbSOFjy_2ty.exit.i._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !76
  store i64 %i.cm, ptr %i.a, align 8, !noalias !76
  store ptr %i.cl, ptr %i.an, align 8, !noalias !76
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.bs unwind label %bb.z

bb.bs:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentEECs2bbjMbSOFjy_2ty.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2bbjMbSOFjy_2ty.exit.i unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2bbjMbSOFjy_2ty.exit.i: ; preds = %bb.bs
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2bbjMbSOFjy_2ty.exit unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2bbjMbSOFjy_2ty.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2bbjMbSOFjy_2ty.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.m

_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE10insert_mutCs2bbjMbSOFjy_2ty.exit: ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bi, %bb.bh, %bb.bf, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.au, %bb.at, %bb.ar, %bb.an
  %i.hy = load i64, ptr %i.ai, align 8, !alias.scope !72, !noalias !73, !noundef !3
  %i.hz = add i64 %i.hy, 1
  store i64 %i.hz, ptr %i.ai, align 8, !alias.scope !72, !noalias !73
  %i.ia = load i64, ptr %i.ah, align 8, !alias.scope !72, !noalias !73, !noundef !3
  %i.ib = add i64 %i.ia, %i.cq                    ; 2 uses
  %i.ic = load i64, ptr %i.m, align 8, !range !7, !alias.scope !72, !noalias !73, !noundef !3 ; 2 uses
  %.not37.i = icmp ult i64 %i.ib, %i.ic
  %i.id = select i1 %.not37.i, i64 0, i64 %i.ic
  %.sroa.011.0.i = sub nuw i64 %i.ib, %i.id
  %i.ie = load ptr, ptr %i.aj, align 8, !alias.scope !72, !noalias !73, !nonnull !3, !noundef !3
  %i.if = getelementptr inbounds nuw [32 x i8], ptr %i.ie, i64 %.sroa.011.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.if, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ig = icmp eq ptr %i.cr, %i.cn
  br i1 %i.ig, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2bbjMbSOFjy_2ty.exit.i._crit_edge, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2bbjMbSOFjy_2ty.exit.i

bb.bv:                                            ; preds = %bb.cc, %.thread, %bb.bw, %.body39, %.thread72, %.body
  %i.ih = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.loopexit99:                                      ; preds = %bb.y
  %lpad.loopexit101 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit.split-lp100:                            ; preds = %bb.s
  %lpad.loopexit.split-lp102 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit.split-lp100, %.loopexit99
  %lpad.phi103 = phi { ptr, i32 } [ %lpad.loopexit101, %.loopexit99 ], [ %lpad.loopexit.split-lp102, %.loopexit.split-lp100 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentEECs2bbjMbSOFjy_2ty(ptr noalias noundef align 8 dereferenceable(24) %i.g) #30
          to label %.thread72 unwind label %bb.bv

bb.bx:                                            ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECs2bbjMbSOFjy_2ty.exit unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ii = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env6ArgsOsECs2bbjMbSOFjy_2ty.exit unwind label %bb.bz

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECs2bbjMbSOFjy_2ty.exit: ; preds = %bb.bx
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ij = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.ca:                                            ; preds = %_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCsdXn3xun2LFY_7argfile8argument8ArgumentE9pop_frontCs2bbjMbSOFjy_2ty.exit.thread, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECs2bbjMbSOFjy_2ty.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  ret void

.thread:                                          ; preds = %.body, %.thread67
  %.pn2966 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread67 ], [ %.pn.pn.pn, %.body ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringEECs2bbjMbSOFjy_2ty(ptr noalias noundef align 8 dereferenceable(24) %i.n) #30
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env6ArgsOsECs2bbjMbSOFjy_2ty.exit unwind label %bb.bv

bb.cb:                                            ; preds = %bb.c
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env6ArgsOsECs2bbjMbSOFjy_2ty.exit: ; preds = %bb.by, %.thread, %bb.cc
  %.pn3191 = phi { ptr, i32 } [ %lpad.thr_comm93, %bb.cc ], [ %.pn2966, %.thread ], [ %i.ii, %bb.by ]
  resume { ptr, i32 } %.pn3191

bb.cc:                                            ; preds = %bb.c, %bb.a
  %lpad.thr_comm93 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std3env6ArgsOsECs2bbjMbSOFjy_2ty.exit unwind label %bb.bv
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMNtCs4o81Y09oZk1_10ty_project2dbNtB3_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyECs2bbjMbSOFjy_2ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(728) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.sroa.812 = alloca [528 x i8], align 8         ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.812, i64 504
  %.sroa.8 = alloca [200 x i8], align 8           ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 176
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [192 x i8], align 8               ; 4 uses
  %i.g = alloca [1104 x i8], align 16             ; 4 uses
  %i.h = alloca [728 x i8], align 8               ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [1136 x i8], align 16             ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [1104 x i8], align 16             ; 8 uses
  %i.m = alloca [216 x i8], align 8               ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = alloca [192 x i8], align 8               ; 9 uses
  %i.p = alloca [552 x i8], align 8               ; 9 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [96 x i8], align 8                ; 5 uses
  %i.s = alloca [128 x i8], align 8               ; 18 uses
  %i.t = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  invoke void @_RNvMs4_NtCs45bxiIjzMqg_5salsa7storageINtB5_7StorageNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseE3newCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.r, ptr noundef null, ptr undef)
          to label %bb.c unwind label %.split.thread

end_hunk_0
