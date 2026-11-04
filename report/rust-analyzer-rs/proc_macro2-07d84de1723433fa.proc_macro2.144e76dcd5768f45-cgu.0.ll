Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/proc_macro2-07d84de1723433fa.proc_macro2.144e76dcd5768f45-cgu.0?download=true
inline.NumInlined: 283
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtCs1K5DUQUZc67_11proc_macro25parse7literal:bb.a
  store i8 %.sroa.0.0.i26.i, ptr %i.g, align 1
  %i.sc = call zeroext i1 @_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtCs1K5DUQUZc67_11proc_macro25parse6RejectE5is_okBM_(ptr nonnull %i.g) #15
  br i1 %i.sc, label %.critedge.i, label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse9character.exit.thread

.critedge.i:                                      ; preds = %bb.cd, %.split36.i, %bb.bz, %bb.bz, %bb.bz, %bb.bz, %bb.bz, %bb.bz, %bb.bz, %.split.i
  %i.sd = call { i64, i32 } @_RNvXs3_NtNtCshzWfHUSfYae_4core3str4iterNtB5_11CharIndicesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.h) #15 ; 2 uses
  %i.se = extractvalue { i64, i32 } %i.sd, 0
  %i.sf = extractvalue { i64, i32 } %i.sd, 1
  %i.sg = call { i64, i32 } @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTjcEE5ok_orNtNtCs1K5DUQUZc67_11proc_macro25parse6RejectEBX_(i64 %i.se, i32 %i.sf) #15 ; 2 uses
  %i.sh = extractvalue { i64, i32 } %i.sg, 0
  %i.si = extractvalue { i64, i32 } %i.sg, 1
  %i.sj = call { i64, i32 } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultTjcENtNtCs1K5DUQUZc67_11proc_macro25parse6RejectENtNtNtB7_3ops9try_trait3Try6branchBS_(i64 %i.sh, i32 %i.si) #15 ; 2 uses
  %i.sk = extractvalue { i64, i32 } %i.sj, 1
  %i.sl = icmp eq i32 %i.sk, -1
  br i1 %i.sl, label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse9character.exit, label %bb.ce

bb.ce:                                            ; preds = %.critedge.i
  %i.sm = extractvalue { i64, i32 } %i.sj, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtCshzWfHUSfYae_4core3stre8split_atCs1K5DUQUZc67_11proc_macro2(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull %i.rf, i64 %i.rh, i64 %i.sm) #15
  %i.sn = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.so = load ptr, ptr %i.sn, align 8            ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.sq = load i64, ptr %i.sp, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.sr = call zeroext i1 @_RINvMNtCshzWfHUSfYae_4core3stre11starts_withReECs1K5DUQUZc67_11proc_macro2(ptr %i.so, i64 %i.sq, ptr nonnull @62, i64 1)
  br i1 %i.sr, label %bb.cf, label %_RNvMNtCs1K5DUQUZc67_11proc_macro25parseNtB2_6Cursor5parse.exit29.i

bb.cf:                                            ; preds = %bb.ce
  %i.ss = call i64 @_RNvMNtCshzWfHUSfYae_4core3stre3lenCs1K5DUQUZc67_11proc_macro2(ptr nonnull @62, i64 1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMNtCshzWfHUSfYae_4core3stre8split_atCs1K5DUQUZc67_11proc_macro2(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr %i.so, i64 %i.sq, i64 %i.ss) #15
  %i.st = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.su = load ptr, ptr %i.st, align 8
  %i.sv = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.sw = load i64, ptr %i.sv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvMNtCs1K5DUQUZc67_11proc_macro25parseNtB2_6Cursor5parse.exit29.i

_RNvMNtCs1K5DUQUZc67_11proc_macro25parseNtB2_6Cursor5parse.exit29.i: ; preds = %bb.cf, %bb.ce
  %.sroa.3.0.i27.i = phi i64 [ %i.sw, %bb.cf ], [ undef, %bb.ce ]
  %.sroa.0.0.i28.i = phi ptr [ %i.su, %bb.cf ], [ null, %bb.ce ]
  %i.sx = call { ptr, i64 } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCs1K5DUQUZc67_11proc_macro25parse6CursorNtBM_6RejectENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr %.sroa.0.0.i28.i, i64 %.sroa.3.0.i27.i) #15 ; 2 uses
  %i.sy = extractvalue { ptr, i64 } %i.sx, 0      ; 3 uses
  %i.sz = icmp eq ptr %i.sy, null
  br i1 %i.sz, label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse9character.exit, label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse9character.exit.thread40

_RNvNtCs1K5DUQUZc67_11proc_macro25parse9character.exit.thread40: ; preds = %_RNvMNtCs1K5DUQUZc67_11proc_macro25parseNtB2_6Cursor5parse.exit29.i
  %i.ta = extractvalue { ptr, i64 } %i.sx, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNtCs1K5DUQUZc67_11proc_macro25parse13ident_not_raw(ptr noalias align 8 %i.a, ptr nonnull %i.sy, i64 %i.ta)
  %i.tb = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.tc = icmp eq ptr %i.tb, null                 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.te = load i64, ptr %i.td, align 8
  %.sroa.3.0.i30.i = select i1 %i.tc, i64 %i.ta, i64 %i.te
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %spec.select = select i1 %i.tc, ptr %i.sy, ptr %i.tb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse17literal_nocapture.exit

_RNvNtCs1K5DUQUZc67_11proc_macro25parse9character.exit.thread: ; preds = %bb.cd, %bb.bz, %.split.i, %.split36.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.cg

_RNvNtCs1K5DUQUZc67_11proc_macro25parse9character.exit: ; preds = %_RNvMNtCs1K5DUQUZc67_11proc_macro25parseNtB2_6Cursor5parse.exit29.i, %.critedge.i, %_RNvMNtCs1K5DUQUZc67_11proc_macro25parseNtB2_6Cursor5parse.exit.i
  %.sink = phi ptr [ @89, %.critedge.i ], [ @90, %_RNvMNtCs1K5DUQUZc67_11proc_macro25parseNtB2_6Cursor5parse.exit.i ], [ @88, %_RNvMNtCs1K5DUQUZc67_11proc_macro25parseNtB2_6Cursor5parse.exit29.i ]
  %i.tf = call { ptr, i64 } @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCs1K5DUQUZc67_11proc_macro25parse6CursorNtBM_6RejectEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1s_EE13from_residualBO_(ptr nonnull align 8 %.sink) #15 ; 2 uses
  %.sroa.0.0.i29 = extractvalue { ptr, i64 } %i.tf, 0 ; 2 uses
  %.sroa.6.0.i = extractvalue { ptr, i64 } %i.tf, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.tg = icmp eq ptr %.sroa.0.0.i29, null
  br i1 %i.tg, label %bb.cg, label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse17literal_nocapture.exit

bb.cg:                                            ; preds = %_RNvNtCs1K5DUQUZc67_11proc_macro25parse9character.exit.thread, %_RNvNtCs1K5DUQUZc67_11proc_macro25parse9character.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.th = call { ptr, ptr } @_RNvMNtCshzWfHUSfYae_4core3stre5charsCs1K5DUQUZc67_11proc_macro2(ptr %1, i64 %2) #15 ; 2 uses
  %i.ti = extractvalue { ptr, ptr } %i.th, 0
  %i.tj = extractvalue { ptr, ptr } %i.th, 1
  call void @_RNvYNtNtNtCshzWfHUSfYae_4core3str4iter5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator8peekableCs1K5DUQUZc67_11proc_macro2(ptr nonnull sret([24 x i8]) align 8 %i.l, ptr %i.ti, ptr %i.tj) #15
  %i.tk = call i32 @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15
  %i.tl = add i32 %i.tk, -48
  %or.cond3.i.i = icmp ult i32 %i.tl, 10
  br i1 %or.cond3.i.i, label %.preheader.i.i, label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse12float_digits.exit.i

.preheader.i.i:                                   ; preds = %bb.cg
  %i.tm = call align 4 ptr @_RNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB5_8PeekableNtNtNtBb_3str4iter5CharsE4peekCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15 ; 2 uses
  %.not7381.i.i = icmp eq ptr %i.tm, null
  br i1 %.not7381.i.i, label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse12float_digits.exit.i, label %.lr.ph.preheader.i.i23

.lr.ph.preheader.i.i23:                           ; preds = %.preheader.i.i, %bb.ci
  %i.tn = phi ptr [ %i.ts, %bb.ci ], [ %i.tm, %.preheader.i.i ]
  %.sroa.012.074.i.i = phi i64 [ %i.tr, %bb.ci ], [ 1, %.preheader.i.i ] ; 3 uses
  %i.to = load i32, ptr %i.tn, align 4            ; 2 uses
  %i.tp = add i32 %i.to, -48
  %or.cond4.i.i = icmp ult i32 %i.tp, 10
  br i1 %or.cond4.i.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph.preheader.i.i23
  switch i32 %i.to, label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse12float_digits.exit.i [
    i32 95, label %bb.ci
    i32 46, label %bb.cj
    i32 101, label %.loopexit132.i.i
    i32 69, label %.loopexit132.i.i
  ]

bb.ci:                                            ; preds = %bb.ch, %.lr.ph.preheader.i.i23
  %i.tq = call i32 @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15 ; 0 uses
  %i.tr = add i64 %.sroa.012.074.i.i, 1
  %i.ts = call align 4 ptr @_RNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB5_8PeekableNtNtNtBb_3str4iter5CharsE4peekCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15 ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.ts, null
  br i1 %.not.i.i26, label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse12float_digits.exit.i, label %.lr.ph.preheader.i.i23

bb.cj:                                            ; preds = %bb.ch
  %i.tt = call i32 @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15 ; 0 uses
  %i.tu = call align 4 ptr @_RNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB5_8PeekableNtNtNtBb_3str4iter5CharsE4peekCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15
  %i.tv = call zeroext i1 @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRcE6map_orbNCNvNtCs1K5DUQUZc67_11proc_macro25parse12float_digits0EBZ_(ptr align 4 %i.tu, i1 zeroext false) #15
  br i1 %i.tv, label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse12float_digits.exit.i, label %.outer58.i.i

.outer58.i.i:                                     ; preds = %bb.cj
  %i.tw = add i64 %.sroa.012.074.i.i, 1           ; 2 uses
  %i.tx = call align 4 ptr @_RNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB5_8PeekableNtNtNtBb_3str4iter5CharsE4peekCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15 ; 2 uses
  %.not73.i.i = icmp eq ptr %i.tx, null
  br i1 %.not73.i.i, label %.thread45.i.i, label %.lr.ph.1.i.i

.lr.ph.1.i.i:                                     ; preds = %.outer58.i.i, %bb.cl
  %i.ty = phi ptr [ %i.ud, %bb.cl ], [ %i.tx, %.outer58.i.i ]
  %.sroa.012.074.1.i.i = phi i64 [ %i.uc, %bb.cl ], [ %i.tw, %.outer58.i.i ] ; 4 uses
  %i.tz = load i32, ptr %i.ty, align 4            ; 2 uses
  %i.ua = add i32 %i.tz, -48
  %or.cond4.1.i.i = icmp ult i32 %i.ua, 10
  br i1 %or.cond4.1.i.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.1.i.i
  switch i32 %i.tz, label %.thread45.i.i [
    i32 95, label %bb.cl
    i32 69, label %bb.cm
    i32 101, label %bb.cm
  ]

bb.cl:                                            ; preds = %bb.ck, %.lr.ph.1.i.i
  %i.ub = call i32 @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15 ; 0 uses
  %i.uc = add i64 %.sroa.012.074.1.i.i, 1         ; 2 uses
  %i.ud = call align 4 ptr @_RNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB5_8PeekableNtNtNtBb_3str4iter5CharsE4peekCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15 ; 2 uses
  %.not.1.i.i = icmp eq ptr %i.ud, null
  br i1 %.not.1.i.i, label %.thread45.i.i, label %.lr.ph.1.i.i

.thread45.i.i:                                    ; preds = %bb.cl, %bb.ck, %.outer52.i.i, %.outer52.1.i.i, %bb.cu, %bb.cq, %.loopexit54.i.i, %.outer58.i.i
  %.sroa.012.2.i.i = phi i64 [ %.sroa.012.361.i.i, %.loopexit54.i.i ], [ %.sroa.012.386.1.i.i, %.outer52.1.i.i ], [ %.sroa.012.388.1.i.i, %bb.cu ], [ %.sroa.012.388.i.i, %bb.cq ], [ %.sroa.012.386.i.i, %.outer52.i.i ], [ %i.tw, %.outer58.i.i ], [ %i.uc, %bb.cl ], [ %.sroa.012.074.1.i.i, %bb.ck ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMNtCshzWfHUSfYae_4core3stre8split_atCs1K5DUQUZc67_11proc_macro2(ptr nonnull sret([32 x i8]) align 8 %i.k, ptr %1, i64 %2, i64 %.sroa.012.2.i.i) #15
  %i.ue = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.uf = load ptr, ptr %i.ue, align 8
  %i.ug = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.uh = load i64, ptr %i.ug, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse12float_digits.exit.i

.loopexit132.i.i:                                 ; preds = %bb.ch, %bb.ch
  %i.ui = call i32 @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15 ; 0 uses
  br label %bb.cn

bb.cm:                                            ; preds = %bb.ck, %bb.ck
  %i.uj = call i32 @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvMNtCshzWfHUSfYae_4core3stre8split_atCs1K5DUQUZc67_11proc_macro2(ptr nonnull sret([32 x i8]) align 8 %i.j, ptr %1, i64 %2, i64 %.sroa.012.074.1.i.i) #15
  %i.uk = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ul = load ptr, ptr %i.uk, align 8
  %i.um = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.un = load i64, ptr %i.um, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %.loopexit132.i.i
  %.sroa.012.074.lcssa124159.i.i = phi i64 [ %.sroa.012.074.1.i.i, %bb.cm ], [ %.sroa.012.074.i.i, %.loopexit132.i.i ]
  %.sroa.4.0.i.i24 = phi i64 [ %i.un, %bb.cm ], [ undef, %.loopexit132.i.i ] ; 4 uses
  %.sroa.027.0.i.i = phi ptr [ %i.ul, %bb.cm ], [ null, %.loopexit132.i.i ] ; 4 uses
  %i.uo = call align 4 ptr @_RNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB5_8PeekableNtNtNtBb_3str4iter5CharsE4peekCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15 ; 2 uses
  %.not358795103.i.i = icmp eq ptr %i.uo, null
  br i1 %.not358795103.i.i, label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse12float_digits.exit.i, label %.lr.ph89.i.preheader.i

.lr.ph89.i.preheader.i:                           ; preds = %bb.cn
  %.sroa.012.38694102.i.i = add i64 %.sroa.012.074.lcssa124159.i.i, 1
  br label %.lr.ph89.i.i

.lr.ph89.i.i:                                     ; preds = %.outer52.i.i, %.lr.ph89.i.preheader.i
  %i.up = phi ptr [ %i.vg, %.outer52.i.i ], [ %i.uo, %.lr.ph89.i.preheader.i ]
  %.sroa.012.38697.i.i = phi i64 [ %.sroa.012.386.i.i, %.outer52.i.i ], [ %.sroa.012.38694102.i.i, %.lr.ph89.i.preheader.i ]
  %.sroa.031.0.ph96.i.i = phi i8 [ 1, %.outer52.i.i ], [ 0, %.lr.ph89.i.preheader.i ] ; 3 uses
  br label %bb.co

bb.co:                                            ; preds = %bb.cr, %.lr.ph89.i.i
  %i.uq = phi ptr [ %i.up, %.lr.ph89.i.i ], [ %i.uu, %bb.cr ]
  %.sroa.012.388.i.i = phi i64 [ %.sroa.012.38697.i.i, %.lr.ph89.i.i ], [ %.sroa.012.3.i.i, %bb.cr ] ; 5 uses
  %i.ur = load i32, ptr %i.uq, align 4            ; 2 uses
  switch i32 %i.ur, label %bb.cp [
    i32 43, label %bb.cq
    i32 45, label %bb.cq
    i32 95, label %bb.cr
  ]

.loopexit54.i.i:                                  ; preds = %bb.cp, %bb.cr, %bb.cv, %bb.ct
  %.sroa.031.0.ph66.i.i = phi i8 [ %.sroa.031.0.ph96.1.i.i, %bb.ct ], [ %.sroa.031.0.ph96.1.i.i, %bb.cv ], [ %.sroa.031.0.ph96.i.i, %bb.cr ], [ %.sroa.031.0.ph96.i.i, %bb.cp ]
  %.sroa.012.361.i.i = phi i64 [ %.sroa.012.3.1.i.i, %bb.ct ], [ %.sroa.012.388.1.i.i, %bb.cv ], [ %.sroa.012.3.i.i, %bb.cr ], [ %.sroa.012.388.i.i, %bb.cp ]
  %3 = trunc nuw i8 %.sroa.031.0.ph66.i.i to i1
  br i1 %3, label %.thread45.i.i, label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse12float_digits.exit.i

bb.cp:                                            ; preds = %bb.co
  %i.us = add i32 %i.ur, -48
  %or.cond7.i.i = icmp ult i32 %i.us, 10
  br i1 %or.cond7.i.i, label %.outer52.i.i, label %.loopexit54.i.i

bb.cq:                                            ; preds = %bb.co, %bb.co
  %cond.i.i = trunc nuw i8 %.sroa.031.0.ph96.i.i to i1
  br i1 %cond.i.i, label %.thread45.i.i, label %.outer.i.i25

bb.cr:                                            ; preds = %bb.co
  %i.ut = call i32 @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15 ; 0 uses
  %.sroa.012.3.i.i = add i64 %.sroa.012.388.i.i, 1 ; 2 uses
  %i.uu = call align 4 ptr @_RNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB5_8PeekableNtNtNtBb_3str4iter5CharsE4peekCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15 ; 2 uses
  %.not35.i.i = icmp eq ptr %i.uu, null
  br i1 %.not35.i.i, label %.loopexit54.i.i, label %bb.co

.outer.i.i25:                                     ; preds = %bb.cq
  %i.uv = call i32 @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15 ; 0 uses
  %i.uw = call align 4 ptr @_RNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB5_8PeekableNtNtNtBb_3str4iter5CharsE4peekCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15 ; 2 uses
  %.not358795.i.i = icmp eq ptr %i.uw, null
  br i1 %.not358795.i.i, label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse12float_digits.exit.i, label %.lr.ph89.1.i.preheader.i

.lr.ph89.1.i.preheader.i:                         ; preds = %.outer.i.i25
  %.sroa.012.38694.i.i = add i64 %.sroa.012.388.i.i, 1
  br label %.lr.ph89.1.i.i

.lr.ph89.1.i.i:                                   ; preds = %.outer52.1.i.i, %.lr.ph89.1.i.preheader.i
  %i.ux = phi ptr [ %i.ve, %.outer52.1.i.i ], [ %i.uw, %.lr.ph89.1.i.preheader.i ]
  %.sroa.012.38697.1.i.i = phi i64 [ %.sroa.012.386.1.i.i, %.outer52.1.i.i ], [ %.sroa.012.38694.i.i, %.lr.ph89.1.i.preheader.i ]
  %.sroa.031.0.ph96.1.i.i = phi i8 [ 1, %.outer52.1.i.i ], [ 0, %.lr.ph89.1.i.preheader.i ] ; 3 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.ct, %.lr.ph89.1.i.i
  %i.uy = phi ptr [ %i.ux, %.lr.ph89.1.i.i ], [ %i.vb, %bb.ct ]
  %.sroa.012.388.1.i.i = phi i64 [ %.sroa.012.38697.1.i.i, %.lr.ph89.1.i.i ], [ %.sroa.012.3.1.i.i, %bb.ct ] ; 4 uses
  %i.uz = load i32, ptr %i.uy, align 4            ; 2 uses
  switch i32 %i.uz, label %bb.cv [
    i32 43, label %bb.cu
    i32 45, label %bb.cu
    i32 95, label %bb.ct
  ]

bb.ct:                                            ; preds = %bb.cs
  %i.va = call i32 @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15 ; 0 uses
  %.sroa.012.3.1.i.i = add i64 %.sroa.012.388.1.i.i, 1 ; 2 uses
  %i.vb = call align 4 ptr @_RNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB5_8PeekableNtNtNtBb_3str4iter5CharsE4peekCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15 ; 2 uses
  %.not35.1.i.i = icmp eq ptr %i.vb, null
  br i1 %.not35.1.i.i, label %.loopexit54.i.i, label %bb.cs

bb.cu:                                            ; preds = %bb.cs, %bb.cs
  %cond.1.i.i = trunc nuw i8 %.sroa.031.0.ph96.1.i.i to i1
  br i1 %cond.1.i.i, label %.thread45.i.i, label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse12float_digits.exit.i

bb.cv:                                            ; preds = %bb.cs
  %i.vc = add i32 %i.uz, -48
  %or.cond7.1.i.i = icmp ult i32 %i.vc, 10
  br i1 %or.cond7.1.i.i, label %.outer52.1.i.i, label %.loopexit54.i.i

.outer52.1.i.i:                                   ; preds = %bb.cv
  %i.vd = call i32 @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15 ; 0 uses
  %.sroa.012.386.1.i.i = add i64 %.sroa.012.388.1.i.i, 1 ; 2 uses
  %i.ve = call align 4 ptr @_RNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB5_8PeekableNtNtNtBb_3str4iter5CharsE4peekCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15 ; 2 uses
  %.not3587.1.i.i = icmp eq ptr %i.ve, null
  br i1 %.not3587.1.i.i, label %.thread45.i.i, label %.lr.ph89.1.i.i

.outer52.i.i:                                     ; preds = %bb.cp
  %i.vf = call i32 @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15 ; 0 uses
  %.sroa.012.386.i.i = add i64 %.sroa.012.388.i.i, 1 ; 2 uses
  %i.vg = call align 4 ptr @_RNvMs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters8peekableINtB5_8PeekableNtNtNtBb_3str4iter5CharsE4peekCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.l) #15 ; 2 uses
  %.not3587.i.i = icmp eq ptr %i.vg, null
  br i1 %.not3587.i.i, label %.thread45.i.i, label %.lr.ph89.i.i

_RNvNtCs1K5DUQUZc67_11proc_macro25parse12float_digits.exit.i: ; preds = %bb.ci, %bb.ch, %bb.cu, %.outer.i.i25, %.loopexit54.i.i, %bb.cn, %.thread45.i.i, %bb.cj, %.preheader.i.i, %bb.cg
  %.sroa.7.0.i.i11 = phi i64 [ %i.uh, %.thread45.i.i ], [ %.sroa.4.0.i.i24, %.loopexit54.i.i ], [ %.sroa.4.0.i.i24, %bb.cu ], [ undef, %.preheader.i.i ], [ undef, %bb.cg ], [ %.sroa.4.0.i.i24, %bb.cn ], [ %.sroa.4.0.i.i24, %.outer.i.i25 ], [ undef, %bb.cj ], [ undef, %bb.ch ], [ undef, %bb.ci ]
  %.sroa.0.0.i.i12 = phi ptr [ %i.uf, %.thread45.i.i ], [ %.sroa.027.0.i.i, %.loopexit54.i.i ], [ %.sroa.027.0.i.i, %bb.cu ], [ null, %.preheader.i.i ], [ null, %bb.cg ], [ %.sroa.027.0.i.i, %bb.cn ], [ %.sroa.027.0.i.i, %.outer.i.i25 ], [ null, %bb.cj ], [ null, %bb.ch ], [ null, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.vh = call { ptr, i64 } @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCs1K5DUQUZc67_11proc_macro25parse6CursorNtBM_6RejectENtNtNtB7_3ops9try_trait3Try6branchBO_(ptr %.sroa.0.0.i.i12, i64 %.sroa.7.0.i.i11) #15 ; 2 uses
  %i.vi = extractvalue { ptr, i64 } %i.vh, 0      ; 5 uses
  %i.vj = icmp eq ptr %i.vi, null
  br i1 %i.vj, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %_RNvNtCs1K5DUQUZc67_11proc_macro25parse12float_digits.exit.i
  %i.vk = call { ptr, i64 } @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCs1K5DUQUZc67_11proc_macro25parse6CursorNtBM_6RejectEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1s_EE13from_residualBO_(ptr nonnull align 8 @67) #15
  br label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse5float.exit

bb.cx:                                            ; preds = %_RNvNtCs1K5DUQUZc67_11proc_macro25parse12float_digits.exit.i
  %i.vl = extractvalue { ptr, i64 } %i.vh, 1      ; 4 uses
  %i.vm = call { ptr, ptr } @_RNvMNtCshzWfHUSfYae_4core3stre5charsCs1K5DUQUZc67_11proc_macro2(ptr nonnull %i.vi, i64 %i.vl) #15 ; 2 uses
  %i.vn = extractvalue { ptr, ptr } %i.vm, 0
  %i.vo = extractvalue { ptr, ptr } %i.vm, 1
  store ptr %i.vn, ptr %i.o, align 8
  %i.vp = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.vo, ptr %i.vp, align 8
  %i.vq = call i32 @_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.o) #15 ; 2 uses
  %.not.i13 = icmp eq i32 %i.vq, -1
  br i1 %.not.i13, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.vr = call zeroext i1 @_RNvNtCs1K5DUQUZc67_11proc_macro28fallback14is_ident_start(i32 %i.vq)
  br i1 %i.vr, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.de, %bb.cy, %bb.cx
  %.sroa.5.0.i14 = phi i64 [ %i.vl, %bb.cx ], [ %.sroa.2.0.copyload.i22, %bb.de ], [ %i.vl, %bb.cy ] ; 2 uses
  %.sroa.0.0.i15 = phi ptr [ %i.vi, %bb.cx ], [ %i.wa, %bb.de ], [ %i.vi, %bb.cy ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.vs = call { ptr, ptr } @_RNvMNtCshzWfHUSfYae_4core3stre5charsCs1K5DUQUZc67_11proc_macro2(ptr nonnull %.sroa.0.0.i15, i64 %.sroa.5.0.i14) #15 ; 2 uses
  %i.vt = extractvalue { ptr, ptr } %i.vs, 0
  %i.vu = extractvalue { ptr, ptr } %i.vs, 1
  store ptr %i.vt, ptr %i.i, align 8
  %i.vv = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.vu, ptr %i.vv, align 8
  %i.vw = call i32 @_RNvXNtNtCshzWfHUSfYae_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.i) #15 ; 2 uses
  %.not.i10.i16 = icmp eq i32 %i.vw, -1
  br i1 %.not.i10.i16, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.vx = call zeroext i1 @_RNvNtCs1K5DUQUZc67_11proc_macro28fallback17is_ident_continue(i32 %i.vw)
  br i1 %i.vx, label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse10word_break.exit.i17, label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  br label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse10word_break.exit.i17

_RNvNtCs1K5DUQUZc67_11proc_macro25parse10word_break.exit.i17: ; preds = %bb.db, %bb.da
  %.sroa.3.0.i.i18 = phi i64 [ %.sroa.5.0.i14, %bb.db ], [ undef, %bb.da ]
  %.sroa.0.0.i11.i19 = phi ptr [ %.sroa.0.0.i15, %bb.db ], [ null, %bb.da ]
  %i.vy = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i11.i19, 0
  %i.vz = insertvalue { ptr, i64 } %i.vy, i64 %.sroa.3.0.i.i18, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse5float.exit

bb.dc:                                            ; preds = %bb.cy
  call fastcc void @_RNvNtCs1K5DUQUZc67_11proc_macro25parse13ident_not_raw(ptr noalias align 8 %i.m, ptr nonnull %i.vi, i64 %i.vl)
  call void @_RNvXsp_NtCshzWfHUSfYae_4core6resultINtB5_6ResultTNtNtCs1K5DUQUZc67_11proc_macro25parse6CursorReENtBN_6RejectENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([32 x i8]) align 8 %i.n, ptr nonnull align 8 %i.m) #15
  %i.wa = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.wb = icmp eq ptr %i.wa, null
  br i1 %i.wb, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.wc = call { ptr, i64 } @_RNvXsq_NtCshzWfHUSfYae_4core6resultINtB5_6ResultNtNtCs1K5DUQUZc67_11proc_macro25parse6CursorNtBM_6RejectEINtNtNtB7_3ops9try_trait12FromResidualIBy_NtNtB7_7convert10InfallibleB1s_EE13from_residualBO_(ptr nonnull align 8 @66) #15
  br label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse5float.exit

bb.de:                                            ; preds = %bb.dc
  %.sroa.2.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.2.0.copyload.i22 = load i64, ptr %.sroa.2.0..sroa_idx.i21, align 8
  br label %bb.cz

_RNvNtCs1K5DUQUZc67_11proc_macro25parse5float.exit: ; preds = %bb.cw, %_RNvNtCs1K5DUQUZc67_11proc_macro25parse10word_break.exit.i17, %bb.dd
  %.pn.i20 = phi { ptr, i64 } [ %i.vk, %bb.cw ], [ %i.wc, %bb.dd ], [ %i.vz, %_RNvNtCs1K5DUQUZc67_11proc_macro25parse10word_break.exit.i17 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.wd = extractvalue { ptr, i64 } %.pn.i20, 0   ; 2 uses
  %i.we = icmp eq ptr %i.wd, null
  br i1 %i.we, label %bb.df, label %bb.ef

bb.df:                                            ; preds = %_RNvNtCs1K5DUQUZc67_11proc_macro25parse5float.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.wf = call zeroext i1 @_RINvMNtCshzWfHUSfYae_4core3stre11starts_withReECs1K5DUQUZc67_11proc_macro2(ptr %1, i64 %2, ptr nonnull @80, i64 2)
  br i1 %i.wf, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.wg = call zeroext i1 @_RINvMNtCshzWfHUSfYae_4core3stre11starts_withReECs1K5DUQUZc67_11proc_macro2(ptr %1, i64 %2, ptr nonnull @81, i64 2)
  br i1 %i.wg, label %bb.dj, label %bb.di

bb.dh:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvMNtCshzWfHUSfYae_4core3stre8split_atCs1K5DUQUZc67_11proc_macro2(ptr nonnull sret([32 x i8]) align 8 %i.t, ptr %1, i64 %2, i64 2) #15
  %i.wh = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.wi = load ptr, ptr %i.wh, align 8
  %i.wj = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.wk = load i64, ptr %i.wj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.dl

bb.di:                                            ; preds = %bb.dg
  %i.wl = call zeroext i1 @_RINvMNtCshzWfHUSfYae_4core3stre11starts_withReECs1K5DUQUZc67_11proc_macro2(ptr %1, i64 %2, ptr nonnull @82, i64 2)
  br i1 %i.wl, label %bb.dk, label %bb.dl

bb.dj:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMNtCshzWfHUSfYae_4core3stre8split_atCs1K5DUQUZc67_11proc_macro2(ptr nonnull sret([32 x i8]) align 8 %i.s, ptr %1, i64 %2, i64 2) #15
  %i.wm = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.wn = load ptr, ptr %i.wm, align 8
  %i.wo = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.wp = load i64, ptr %i.wo, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.dl

bb.dk:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvMNtCshzWfHUSfYae_4core3stre8split_atCs1K5DUQUZc67_11proc_macro2(ptr nonnull sret([32 x i8]) align 8 %i.r, ptr %1, i64 %2, i64 2) #15
  %i.wq = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.wr = load ptr, ptr %i.wq, align 8
  %i.ws = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.wt = load i64, ptr %i.ws, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dh
  %.sroa.12.0.i.i = phi i64 [ %i.wk, %bb.dh ], [ %i.wp, %bb.dj ], [ %i.wt, %bb.dk ], [ %2, %bb.di ] ; 2 uses
  %.sroa.0.032.i.i = phi ptr [ %i.wi, %bb.dh ], [ %i.wn, %bb.dj ], [ %i.wr, %bb.dk ], [ %1, %bb.di ] ; 2 uses
  %i.wu = phi i1 [ false, %bb.dh ], [ false, %bb.dj ], [ false, %bb.dk ], [ true, %bb.di ]
  %.sroa.05.0.i.i = phi i64 [ 16, %bb.dh ], [ 8, %bb.dj ], [ 2, %bb.dk ], [ 10, %bb.di ] ; 5 uses
  %i.wv = call { ptr, ptr } @_RNvMNtCshzWfHUSfYae_4core3stre5bytesCs1K5DUQUZc67_11proc_macro2(ptr %.sroa.0.032.i.i, i64 %.sroa.12.0.i.i) #15 ; 2 uses
  %i.ww = extractvalue { ptr, ptr } %i.wv, 0
  %i.wx = extractvalue { ptr, ptr } %i.wv, 1
  %i.wy = call { ptr, ptr } @_RNvXNtNtNtCshzWfHUSfYae_4core4iter6traits7collectNtNtNtB8_3str4iter5BytesNtB2_12IntoIterator9into_iterCs1K5DUQUZc67_11proc_macro2(ptr %i.ww, ptr %i.wx) #15 ; 2 uses
  %i.wz = extractvalue { ptr, ptr } %i.wy, 0
  %i.xa = extractvalue { ptr, ptr } %i.wy, 1
  store ptr %i.wz, ptr %i.u, align 8
  %i.xb = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.xa, ptr %i.xb, align 8
  %i.xc = call { i1, i8 } @_RNvXs7_NtNtCshzWfHUSfYae_4core3str4iterNtB5_5BytesNtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs1K5DUQUZc67_11proc_macro2(ptr nonnull align 8 %i.u) #15 ; 3 uses
  %i.xd = extractvalue { i1, i8 } %i.xc, 0
  br i1 %i.xd, label %.lr.ph.preheader.i.i, label %_RNvNtCs1K5DUQUZc67_11proc_macro25parse6digits.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.dl
  %i.xe = trunc nuw nsw i64 %.sroa.05.0.i.i to i8 ; 2 uses
  br i1 %i.wu, label %.lr.ph.i.i, label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.preheader.i.i, %.outer.i.us.i
  %.pn.i.us.i = phi { i1, i8 } [ %i.xo, %.outer.i.us.i ], [ %i.xc, %.lr.ph.preheader.i.i ]
  %.sroa.09.0.ph80.i.us.i = phi i64 [ %i.xn, %.outer.i.us.i ], [ 0, %.lr.ph.preheader.i.i ]
  %.sroa.012.0.ph79.i.us.i = phi i1 [ false, %.outer.i.us.i ], [ true, %.lr.ph.preheader.i.i ] ; 4 uses
  br label %.lr.ph.split.i.us.i

.lr.ph.split.i.us.i:                              ; preds = %bb.dp, %.lr.ph.i.us.i
  %.pn36.i = phi { i1, i8 } [ %i.xl, %bb.dp ], [ %.pn.i.us.i, %.lr.ph.i.us.i ]
  %.sroa.09.055.i.us.i = phi i64 [ %i.xk, %bb.dp ], [ %.sroa.09.0.ph80.i.us.i, %.lr.ph.i.us.i ] ; 5 uses
  %i.xf = extractvalue { i1, i8 } %.pn36.i, 1     ; 6 uses
  %i.xg = add i8 %i.xf, -48                       ; 2 uses
  %or.cond.i.us.i = icmp ult i8 %i.xg, 10
  br i1 %or.cond.i.us.i, label %.split.us.i.loopexit.us.i, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph.split.i.us.i
  %i.xh = add i8 %i.xf, -97
  %or.cond1.i.us.i = icmp ult i8 %i.xh, 6
  br i1 %or.cond1.i.us.i, label %.split64.us.i.loopexit.us.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.xi = add i8 %i.xf, -65
  %or.cond2.i.us.i = icmp ult i8 %i.xi, 6
  br i1 %or.cond2.i.us.i, label %.split68.us.i.loopexit.us.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.xj = icmp eq i8 %i.xf, 95
  br i1 %i.xj, label %bb.dp, label %.loopexit33.i.i

bb.dp:                                            ; preds = %bb.do
end_hunk_0
