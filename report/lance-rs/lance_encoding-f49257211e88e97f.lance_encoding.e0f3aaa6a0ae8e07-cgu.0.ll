Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_encoding-f49257211e88e97f.lance_encoding.e0f3aaa6a0ae8e07-cgu.0?download=true
inline.NumInlined: 29360
inline.NumDeleted: 11629
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 122
loop-unroll.NumUnrolled: 156
begin_hunk_0_@_RNvMNtCsjjpCCFGI3ul_14lance_encoding6formatNtB2_13ProtobufUtils6binary:bb.a
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #66
          to label %.noexc17 unwind label %bb.m

.noexc17:                                         ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb6BinaryEBH_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #67
          to label %.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

bb.o:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -9223372036854775804, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %.sroa.42.0..sroa_idx, align 8
  ret void

bb.p:                                             ; preds = %bb.r, %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #68
  unreachable

.thread:                                          ; preds = %bb.q, %bb.r, %bb.m, %.body
  %.pn23 = phi { ptr, i32 } [ %i.j, %.body ], [ %i.r, %bb.m ], [ %i.d, %bb.q ], [ %i.d, %bb.r ]
  resume { ptr, i32 } %.pn23

bb.q:                                             ; preds = %bb.c, %bb.d
  %i.u = load i64, ptr %1, align 8, !range !116, !alias.scope !30455, !noundef !75
  %i.v = icmp eq i64 %i.u, -2
  br i1 %i.v, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtCsjjpCCFGI3ul_14lance_encoding6format2pb14array_encoding13ArrayEncodingEBJ_(ptr noalias noundef nonnull readonly align 8 dereferenceable(56) %1)
          to label %.thread unwind label %bb.p, !inline_history !8
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsjjpCCFGI3ul_14lance_encoding6formatNtB2_13ProtobufUtils8constant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXsE_NtCs4XDKJNDGLq7_5bytes5bytesNtB5_5BytesINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %.sroa.42.0..sroa_idx, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1)
  store i64 -9223372036854775797, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsjjpCCFGI3ul_14lance_encoding6repdefNtB2_24NormalizedStructuralPlan13to_serializer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(160) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 43 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !89, !noundef !75
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !75, !noundef !75 ; 27 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !75 ; 7 uses
  %.not = icmp eq i64 %i.h, 0                     ; 3 uses
  %.idx = mul i64 %i.h, 80                        ; 6 uses
  %i.i = getelementptr i8, ptr %i.f, i64 %.idx    ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 -80      ; 2 uses
  %.not.i103 = icmp eq ptr %i.j, null
  %.not.i = or i1 %.not, %.not.i103
  br i1 %.not.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE6map_orjNvMs_BL_BJ_10num_valuesEBN_.exit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.i, i64 -8
  %i.l = load i8, ptr %i.k, align 8, !range !131, !alias.scope !30580, !noundef !75 ; 2 uses
  %i.m = icmp samesign ugt i8 %i.l, 1
  %i.n = zext nneg i8 %i.l to i64
  %i.o = add nsw i64 %i.n, -1
  %i.p = select i1 %i.m, i64 %i.o, i64 0
  %switch.gep = getelementptr inbounds i8, ptr @switch.table._RNvMs4_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_13RepDefBuilder9normalize, i64 %i.p
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %switch.ext
  %.sroa.0.0.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !30580, !noundef !75
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE6map_orjNvMs_BL_BJ_10num_valuesEBN_.exit

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE6map_orjNvMs_BL_BJ_10num_valuesEBN_.exit: ; preds = %bb.b, %switch.lookup
  %.sroa.02.0.i = phi i64 [ %.sroa.0.0.i.i.i, %switch.lookup ], [ 0, %bb.b ] ; 2 uses
  %i.r = icmp eq i64 %.idx, 0                     ; 2 uses
  br i1 %i.r, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_defNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit, label %bb.c

bb.c:                                             ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE6map_orjNvMs_BL_BJ_10num_valuesEBN_.exit
  %i.s = udiv exact i64 %.idx, 80                 ; 10 uses
  %xtraiter = and i64 %i.s, 1
  %i.t = icmp eq i64 %.idx, 80
  br i1 %i.t, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %i.s, 288230376151711742
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new
  %.sroa.04.0.i = phi i64 [ 0, %.new ], [ %i.ae, %bb.d ] ; 3 uses
  %.sroa.02.0.i30 = phi i64 [ 0, %.new ], [ %i.ad, %bb.d ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.d ]
  %i.u = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %.sroa.04.0.i ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 64
  %.val.i = load i64, ptr %i.v, align 8
  %i.w = getelementptr i8, ptr %i.u, i64 72
  %.val13.i = load i8, ptr %i.w, align 8, !range !131, !noundef !75
  %i.x = icmp samesign ult i8 %.val13.i, 2
  %.sroa.0.0.i.i.i.i = select i1 %i.x, i64 %.val.i, i64 0
  %i.y = add i64 %.sroa.0.0.i.i.i.i, %.sroa.02.0.i30
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %.sroa.04.0.i ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 144
  %.val.i.1 = load i64, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %i.z, i64 152
  %.val13.i.1 = load i8, ptr %i.ab, align 8, !range !131, !noundef !75
  %i.ac = icmp samesign ult i8 %.val13.i.1, 2
  %.sroa.0.0.i.i.i.i.1 = select i1 %i.ac, i64 %.val.i.1, i64 0
  %i.ad = add i64 %.sroa.0.0.i.i.i.i.1, %i.y      ; 3 uses
  %i.ae = add nuw i64 %.sroa.04.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %iter.check.unr-lcssa, label %bb.d

iter.check.unr-lcssa:                             ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %iter.check, label %.epil.preheader

.epil.preheader:                                  ; preds = %iter.check.unr-lcssa, %bb.c
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %bb.c ], [ %i.ae, %iter.check.unr-lcssa ]
  %.sroa.02.0.i30.epil.init = phi i64 [ 0, %bb.c ], [ %i.ad, %iter.check.unr-lcssa ]
  %lcmp.mod651 = trunc i64 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod651)
  %i.af = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %.sroa.04.0.i.epil.init ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 64
  %.val.i.epil = load i64, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %i.af, i64 72
  %.val13.i.epil = load i8, ptr %i.ah, align 8, !range !131, !noundef !75
  %i.ai = icmp samesign ult i8 %.val13.i.epil, 2
  %.sroa.0.0.i.i.i.i.epil = select i1 %i.ai, i64 %.val.i.epil, i64 0
  %i.aj = add i64 %.sroa.0.0.i.i.i.i.epil, %.sroa.02.0.i30.epil.init
  br label %iter.check

iter.check:                                       ; preds = %iter.check.unr-lcssa, %.epil.preheader
  %.lcssa649 = phi i64 [ %i.ad, %iter.check.unr-lcssa ], [ %i.aj, %.epil.preheader ]
  %min.iters.check = icmp ult i64 %.idx, 320
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check452 = icmp ult i64 %.idx, 1280
  br i1 %min.iters.check452, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %i.s, 12
  %n.vec = and i64 %i.s, 288230376151711728       ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.db, %vector.body ]
  %vec.phi453 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.dc, %vector.body ]
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.am = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.an = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.ao = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.ap = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.aq = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.ar = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.as = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.at = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.au = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.av = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.aw = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.ax = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.ay = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.az = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.ba = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index
  %i.bb = getelementptr i8, ptr %i.al, i64 72
  %i.bc = getelementptr i8, ptr %i.am, i64 152
  %i.bd = getelementptr i8, ptr %i.an, i64 232
  %i.be = getelementptr i8, ptr %i.ao, i64 312
  %i.bf = getelementptr i8, ptr %i.ap, i64 392
  %i.bg = getelementptr i8, ptr %i.aq, i64 472
  %i.bh = getelementptr i8, ptr %i.ar, i64 552
  %i.bi = getelementptr i8, ptr %i.as, i64 632
  %i.bj = getelementptr i8, ptr %i.at, i64 712
  %i.bk = getelementptr i8, ptr %i.au, i64 792
  %i.bl = getelementptr i8, ptr %i.av, i64 872
  %i.bm = getelementptr i8, ptr %i.aw, i64 952
  %i.bn = getelementptr i8, ptr %i.ax, i64 1032
  %i.bo = getelementptr i8, ptr %i.ay, i64 1112
  %i.bp = getelementptr i8, ptr %i.az, i64 1192
  %i.bq = getelementptr i8, ptr %i.ba, i64 1272
  %i.br = load i8, ptr %i.bb, align 8, !range !131, !noundef !75
  %i.bs = load i8, ptr %i.bc, align 8, !range !131, !noundef !75
  %i.bt = load i8, ptr %i.bd, align 8, !range !131, !noundef !75
  %i.bu = load i8, ptr %i.be, align 8, !range !131, !noundef !75
  %i.bv = load i8, ptr %i.bf, align 8, !range !131, !noundef !75
  %i.bw = load i8, ptr %i.bg, align 8, !range !131, !noundef !75
  %i.bx = load i8, ptr %i.bh, align 8, !range !131, !noundef !75
  %i.by = load i8, ptr %i.bi, align 8, !range !131, !noundef !75
  %i.bz = insertelement <8 x i8> poison, i8 %i.br, i64 0
  %i.ca = insertelement <8 x i8> %i.bz, i8 %i.bs, i64 1
  %i.cb = insertelement <8 x i8> %i.ca, i8 %i.bt, i64 2
  %i.cc = insertelement <8 x i8> %i.cb, i8 %i.bu, i64 3
  %i.cd = insertelement <8 x i8> %i.cc, i8 %i.bv, i64 4
  %i.ce = insertelement <8 x i8> %i.cd, i8 %i.bw, i64 5
  %i.cf = insertelement <8 x i8> %i.ce, i8 %i.bx, i64 6
  %i.cg = insertelement <8 x i8> %i.cf, i8 %i.by, i64 7
  %i.ch = load i8, ptr %i.bj, align 8, !range !131, !noundef !75
  %i.ci = load i8, ptr %i.bk, align 8, !range !131, !noundef !75
  %i.cj = load i8, ptr %i.bl, align 8, !range !131, !noundef !75
  %i.ck = load i8, ptr %i.bm, align 8, !range !131, !noundef !75
  %i.cl = load i8, ptr %i.bn, align 8, !range !131, !noundef !75
  %i.cm = load i8, ptr %i.bo, align 8, !range !131, !noundef !75
  %i.cn = load i8, ptr %i.bp, align 8, !range !131, !noundef !75
  %i.co = load i8, ptr %i.bq, align 8, !range !131, !noundef !75
  %i.cp = insertelement <8 x i8> poison, i8 %i.ch, i64 0
  %i.cq = insertelement <8 x i8> %i.cp, i8 %i.ci, i64 1
  %i.cr = insertelement <8 x i8> %i.cq, i8 %i.cj, i64 2
  %i.cs = insertelement <8 x i8> %i.cr, i8 %i.ck, i64 3
  %i.ct = insertelement <8 x i8> %i.cs, i8 %i.cl, i64 4
  %i.cu = insertelement <8 x i8> %i.ct, i8 %i.cm, i64 5
  %i.cv = insertelement <8 x i8> %i.cu, i8 %i.cn, i64 6
  %i.cw = insertelement <8 x i8> %i.cv, i8 %i.co, i64 7
  %i.cx = icmp ult <8 x i8> %i.cg, splat (i8 2)
  %i.cy = icmp ult <8 x i8> %i.cw, splat (i8 2)
  %i.cz = zext <8 x i1> %i.cx to <8 x i16>
  %i.da = zext <8 x i1> %i.cy to <8 x i16>
  %i.db = add <8 x i16> %vec.phi, %i.cz           ; 2 uses
  %i.dc = add <8 x i16> %vec.phi453, %i.da        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !30462

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.dc, %i.db
  %i.de = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_repNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !101

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.de, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec454 = and i64 %i.s, 288230376151711740    ; 3 uses
  %i.df = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index455 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next457, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi456 = phi <4 x i16> [ %i.df, %vec.epilog.ph ], [ %i.dy, %vec.epilog.vector.body ]
  %i.dg = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index455
  %i.dh = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index455
  %i.di = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index455
  %i.dj = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %index455
  %i.dk = getelementptr i8, ptr %i.dg, i64 72
  %i.dl = getelementptr i8, ptr %i.dh, i64 152
  %i.dm = getelementptr i8, ptr %i.di, i64 232
  %i.dn = getelementptr i8, ptr %i.dj, i64 312
  %i.do = load i8, ptr %i.dk, align 8, !range !131, !noundef !75
  %i.dp = load i8, ptr %i.dl, align 8, !range !131, !noundef !75
  %i.dq = load i8, ptr %i.dm, align 8, !range !131, !noundef !75
  %i.dr = load i8, ptr %i.dn, align 8, !range !131, !noundef !75
  %i.ds = insertelement <4 x i8> poison, i8 %i.do, i64 0
  %i.dt = insertelement <4 x i8> %i.ds, i8 %i.dp, i64 1
  %i.du = insertelement <4 x i8> %i.dt, i8 %i.dq, i64 2
  %i.dv = insertelement <4 x i8> %i.du, i8 %i.dr, i64 3
  %i.dw = icmp samesign ult <4 x i8> %i.dv, splat (i8 2)
  %i.dx = zext <4 x i1> %i.dw to <4 x i16>
  %i.dy = add <4 x i16> %vec.phi456, %i.dx        ; 2 uses
  %index.next457 = add nuw i64 %index455, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next457, %n.vec454
  br i1 %i.dz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30463

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ea = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.dy) ; 2 uses
  %cmp.n458 = icmp eq i64 %i.s, %n.vec454
  br i1 %cmp.n458, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_repNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i31.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec454, %vec.epilog.middle.block ]
  %.sroa.02.0.i32.ph = phi i16 [ 0, %iter.check ], [ %i.de, %vec.epilog.iter.check ], [ %i.ea, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.sroa.04.0.i31 = phi i64 [ %i.ef, %vec.epilog.scalar.ph ], [ %.sroa.04.0.i31.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.sroa.02.0.i32 = phi i16 [ %i.ee, %vec.epilog.scalar.ph ], [ %.sroa.02.0.i32.ph, %vec.epilog.scalar.ph.preheader ]
  %i.eb = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %.sroa.04.0.i31
  %i.ec = getelementptr i8, ptr %i.eb, i64 72
  %.val.i33 = load i8, ptr %i.ec, align 8, !range !131, !noundef !75
  %i.ed = icmp samesign ult i8 %.val.i33, 2
  %..i.i.i.i = zext i1 %i.ed to i16
  %i.ee = add i16 %.sroa.02.0.i32, %..i.i.i.i     ; 2 uses
  %i.ef = add nuw i64 %.sroa.04.0.i31, 1          ; 2 uses
  %i.eg = icmp eq i64 %i.ef, %i.s
  br i1 %i.eg, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_repNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit, label %vec.epilog.scalar.ph, !llvm.loop !30464

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_repNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit: ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa450 = phi i16 [ %i.ea, %vec.epilog.middle.block ], [ %i.de, %middle.block ], [ %i.ee, %vec.epilog.scalar.ph ]
  %i.eh = add i64 %.lcssa649, %.sroa.02.0.i
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_repNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit
  %.sroa.04.0.i35 = phi i64 [ 0, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_repNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit ], [ %i.fa, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i ] ; 2 uses
  %.sroa.02.0.i36 = phi i16 [ 0, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_repNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit ], [ %i.ez, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i ]
  %i.ei = getelementptr inbounds nuw [80 x i8], ptr %i.f, i64 %.sroa.04.0.i35 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 72
  %i.ek = load i8, ptr %i.ej, align 8, !range !131, !alias.scope !30581, !noundef !75 ; 3 uses
  %i.el = icmp samesign ugt i8 %i.ek, 1
  %i.em = zext nneg i8 %i.ek to i64
  %i.en = add nsw i64 %i.em, -1
  %i.eo = select i1 %i.el, i64 %i.en, i64 0
  switch i64 %i.eo, label %bb.f [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ep = and i8 %i.ek, 1
  %spec.select.i.i.i.i = zext nneg i8 %i.ep to i16
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !alias.scope !30581, !noundef !75
  %.not.i.i.i.i = icmp ne ptr %i.er, null
  %i.es = zext i1 %.not.i.i.i.i to i16
  %spec.select3.i.i.i.i = add nuw nsw i16 %i.es, %spec.select.i.i.i.i
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i

bb.h:                                             ; preds = %bb.e
  %i.et = load ptr, ptr %i.ei, align 8, !alias.scope !30581, !noundef !75
  %i.eu = icmp ne ptr %i.et, null
  %i.ev = zext i1 %i.eu to i16
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i

bb.i:                                             ; preds = %bb.e
  %i.ew = load ptr, ptr %i.ei, align 8, !alias.scope !30581, !noundef !75
  %i.ex = icmp ne ptr %i.ew, null
  %i.ey = zext i1 %i.ex to i16
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i: ; preds = %bb.i, %bb.h, %bb.g
  %.sroa.0.1.i.i.i.i = phi i16 [ %i.ey, %bb.i ], [ %spec.select3.i.i.i.i, %bb.g ], [ %i.ev, %bb.h ]
  %i.ez = add i16 %.sroa.0.1.i.i.i.i, %.sroa.02.0.i36 ; 2 uses
  %i.fa = add nuw i64 %.sroa.04.0.i35, 1          ; 2 uses
  %i.fb = icmp eq i64 %i.fa, %i.s
  br i1 %i.fb, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_defNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit, label %bb.e

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_defNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE6map_orjNvMs_BL_BJ_10num_valuesEBN_.exit
  %.sroa.0.0.i34102 = phi i16 [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE6map_orjNvMs_BL_BJ_10num_valuesEBN_.exit ], [ %.lcssa450, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i ] ; 3 uses
  %i.fc = phi i64 [ %.sroa.02.0.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE6map_orjNvMs_BL_BJ_10num_valuesEBN_.exit ], [ %i.eh, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i ] ; 12 uses
  %.sroa.0.0.i37 = phi i16 [ 0, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefE6map_orjNvMs_BL_BJ_10num_valuesEBN_.exit ], [ %i.ez, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefttNvMs_BX_BV_7max_defNCINvXsu_NtNtB8_6traits5accumtNtB2e_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1M_EE0E0BZ_.exit.i ] ; 3 uses
  %.not26 = icmp eq i16 %.sroa.0.0.i34102, 0
  %i.fd = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %.sroa.0.0.i34102, i1 false)
  %.not27 = icmp eq i16 %.sroa.0.0.i37, 0
  %i.fe = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %.sroa.0.0.i37, i1 false)
  %i.ff = add nuw nsw i16 %i.fe, %i.fd            ; 2 uses
  %narrow104 = sub nuw nsw i16 32, %i.ff
  %i.fg = zext nneg i16 %narrow104 to i64
  %.not29 = icmp ne i16 %i.ff, 32
  %.sroa.015.0 = zext i1 %.not29 to i64
  %i.fh = icmp ult i64 %i.h, 115292150460684698
  tail call void @llvm.assume(i1 %i.fh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30582)
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_defNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !30583
  %i.fi = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 115292150460684698) %i.h, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !30583 ; 2 uses
  %i.fj = icmp eq ptr %i.fi, null
  br i1 %i.fj, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fk = ptrtoint ptr %i.fi to i64
  br label %bb.l

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %bb.j
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, 115292150460684698) %i.h) #66, !noalias !30582
  unreachable

bb.l:                                             ; preds = %bb.k, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_defNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit
  %.sroa.952.0.ph.i = phi i64 [ 1, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterNtNtCsjjpCCFGI3ul_14lance_encoding6repdef9RawRepDefENtNtNtNtBb_4iter6traits8iterator8Iterator4foldtNCINvNtNtB1M_8adapters3map8map_foldRBQ_ttNvMs_BS_BQ_7max_defNCINvXsu_NtB1K_5accumtNtB3y_3Sum3sumINtB2w_3MapBF_B36_EE0E0EBU_.exit ], [ %i.fk, %bb.k ]
  %i.fl = inttoptr i64 %.sroa.952.0.ph.i to ptr   ; 3 uses
  br i1 %.not26, label %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit20.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fm = shl i64 %i.fc, 1                        ; 7 uses
  %i.fn = icmp slt i64 %i.fc, 0
  %.not.i6.i.i = icmp ugt i64 %i.fm, 9223372036854775806
  %or.cond.i.i.i = or i1 %i.fn, %.not.i6.i.i
  br i1 %or.cond.i.i.i, label %bb.p, label %bb.n, !prof !80

bb.n:                                             ; preds = %bb.m
  %i.fo = icmp eq i64 %i.fm, 0
  br i1 %i.fo, label %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit20.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !30584
  %i.fp = tail call noundef align 2 ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.fm, i64 noundef range(i64 1, 17) 2) #63, !noalias !30584 ; 3 uses
  %i.fq = icmp eq ptr %i.fp, null
  br i1 %i.fq, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o, %bb.m
  %.sroa.4.0.ph.i.i = phi i64 [ 2, %bb.o ], [ 0, %bb.m ]
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.fm) #66
          to label %.noexc.i unwind label %bb.r, !noalias !30582

.noexc.i:                                         ; preds = %bb.p
  unreachable

_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit20.i: ; preds = %bb.s, %bb.n, %bb.l
  %.sroa.10.0.i = phi i64 [ 0, %bb.l ], [ %i.fc, %bb.s ], [ %i.fc, %bb.n ] ; 2 uses
  %.sroa.741.0.i = phi ptr [ inttoptr (i64 2 to ptr), %bb.l ], [ %i.fs, %bb.s ], [ inttoptr (i64 2 to ptr), %bb.n ] ; 2 uses
  %.sroa.040.0.i = phi i64 [ 0, %bb.l ], [ %i.fc, %bb.s ], [ 0, %bb.n ] ; 4 uses
  %.sroa.6.0.i = phi ptr [ inttoptr (i64 2 to ptr), %bb.l ], [ %i.fp, %bb.s ], [ inttoptr (i64 2 to ptr), %bb.n ] ; 2 uses
  br i1 %.not27, label %_RNvMs3_NtCsjjpCCFGI3ul_14lance_encoding6repdefNtB5_17SerializerContext3new.exit, label %bb.v

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit38.i, %bb.u, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit29.i, %bb.r
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.fr, %bb.r ], [ %i.fu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit29.i ], [ %.pn.pn86.i, %bb.u ], [ %.pn.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit38.i ] ; 2 uses
  br i1 %.not, label %common.resume, label %bb.q

bb.q:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fl) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fl, i64 noundef range(i64 0, 115292150460684698) %i.h, i64 noundef range(i64 1, -9223372036854775807) 1) #63, !noalias !30582
  br label %common.resume

bb.r:                                             ; preds = %bb.p
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.s:                                             ; preds = %bb.o
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !30585
  %i.fs = tail call noundef align 2 ptr @_RNvCs9hJ03s5DiqP_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.fm, i64 noundef range(i64 1, 17) 2) #63, !noalias !30585 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, null
  br i1 %i.ft, label %bb.t, label %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit20.i

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 2, i64 %i.fm) #66
          to label %.noexc19.i unwind label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit29.i, !noalias !30582

.noexc19.i:                                       ; preds = %bb.t
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit29.i: ; preds = %bb.t
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = icmp eq i64 %i.fc, 0
  br i1 %i.fv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i, label %bb.u

bb.u:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit29.thread80.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit29.i
  %.pre-phi = phi i64 [ %i.gc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit29.thread80.i ], [ %i.fm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit29.i ]
  %.pn.pn86.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit29.thread80.i ], [ %i.fu, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit29.i ]
  %.sroa.6.184.i = phi ptr [ %.sroa.6.0.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit29.thread80.i ], [ %i.fp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit29.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.184.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.184.i, i64 noundef %.pre-phi, i64 noundef range(i64 1, -9223372036854775807) 2) #63, !noalias !30582
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VectEECsjjpCCFGI3ul_14lance_encoding.exit.i

bb.v:                                             ; preds = %_RINvXs_NtNtCs40k4W9msRzi_5alloc3vec14spec_from_elemtNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECsjjpCCFGI3ul_14lance_encoding.exit20.i
  %i.fw = shl i64 %i.fc, 1                        ; 7 uses
  %i.fx = icmp slt i64 %i.fc, 0
  %.not.i6.i21.i = icmp ugt i64 %i.fw, 9223372036854775806
  %or.cond.i.i22.i = or i1 %i.fx, %.not.i6.i21.i
  br i1 %or.cond.i.i22.i, label %bb.y, label %bb.w, !prof !80

end_hunk_0
