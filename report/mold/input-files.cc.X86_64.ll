Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/input-files.cc.X86_64?download=true
inline.NumInlined: 5152
inline.NumDeleted: 2381
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_ZN4mold10ObjectFileINS_6X86_64EE12parse_sframeERNS_7ContextIS1_EEQ15supports_sframeIT_E:bb.a

bb.g:                                             ; preds = %_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !891
  %.not50 = icmp eq i8 %i.ax, 3
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(14448) %1) #14
  %i.ay = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_12InputSectionIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(77) %i.q)
  %i.az = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA32_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.ay, ptr noundef nonnull align 1 dereferenceable(32) @.str.21)
  %i.ba = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRKSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.az, ptr noundef nonnull align 8 dereferenceable(16) @_ZN4mold6X86_644nameE) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %4) #29
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !892
  %.not51 = icmp eq i8 %i.bc, 3
  br i1 %.not51, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 7
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !893
  %i.bf = zext i8 %i.be to i64
  %i.bg = add nuw nsw i64 %i.bf, 28               ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.0.copyload.i54 = load i32, ptr %i.bh, align 1 ; 2 uses
  %i.bi = zext i32 %.0.copyload.i54 to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %.0.copyload.i55 = load i32, ptr %i.bj, align 1
  %i.bk = zext i32 %.0.copyload.i55 to i64
  %i.bl = add nuw nsw i64 %i.bg, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.0.copyload.i56 = load i32, ptr %i.bm, align 1
  %i.bn = zext i32 %.0.copyload.i56 to i64
  %i.bo = add nuw nsw i64 %i.bg, %i.bn
  %i.bp = tail call { ptr, i64 } @_ZNK4mold12InputSectionINS_6X86_64EE8get_relsERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(77) %i.q, ptr noundef nonnull align 8 dereferenceable(14448) %1) ; 2 uses
  %i.bq = extractvalue { ptr, i64 } %i.bp, 0      ; 2 uses
  %i.br = extractvalue { ptr, i64 } %i.bp, 1      ; 4 uses
  %.not128 = icmp eq i32 %.0.copyload.i54, 0
  br i1 %.not128, label %.loopexit, label %.lr.ph125

.lr.ph125:                                        ; preds = %bb.j, %_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE9push_backERKS3_.exit
  %.047124 = phi i64 [ %i.fx, %_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE9push_backERKS3_.exit ], [ 0, %bb.j ] ; 2 uses
  %.048123 = phi i64 [ %.1.lcssa166, %_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE9push_backERKS3_.exit ], [ 0, %bb.j ] ; 3 uses
  %i.bs = shl nuw nsw i64 %.047124, 4
  %i.bt = add nuw nsw i64 %i.bl, %i.bs            ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.bt ; 2 uses
  %i.bv = icmp ult i64 %.048123, %i.br
  br i1 %i.bv, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph125, %bb.k
  %.1120 = phi i64 [ %i.by, %bb.k ], [ %.048123, %.lr.ph125 ] ; 3 uses
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %.1120
  %.0.copyload.i57 = load i64, ptr %i.bw, align 1
  %i.bx = icmp ult i64 %.0.copyload.i57, %i.bt
  br i1 %i.bx, label %bb.k, label %.critedge

bb.k:                                             ; preds = %.lr.ph
  %i.by = add i64 %.1120, 1                       ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %i.br
  br i1 %exitcond.not, label %_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE9push_backERKS3_.exit, label %.lr.ph, !llvm.loop !880

.critedge:                                        ; preds = %.lr.ph, %.lr.ph125
  %.1.lcssa = phi i64 [ %.048123, %.lr.ph125 ], [ %.1120, %.lr.ph ] ; 8 uses
  %i.bz = icmp eq i64 %.1.lcssa, %i.br
  br i1 %i.bz, label %_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE9push_backERKS3_.exit, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %.1.lcssa ; 3 uses
  %.0.copyload.i58 = load i64, ptr %i.ca, align 1
  %.not52 = icmp eq i64 %.0.copyload.i58, %i.bt
  br i1 %.not52, label %bb.m, label %_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE9push_backERKS3_.exit

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %.0.copyload.i59 = load i32, ptr %i.cb, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %.0.copyload.i60 = load i32, ptr %i.cc, align 1
  %i.cd = zext i32 %.0.copyload.i60 to i64        ; 3 uses
  %i.ce = load ptr, ptr %i.g, align 8, !tbaa !106
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 6
  %.0.copyload.i.i.i = load i16, ptr %i.cg, align 1 ; 3 uses
  %i.ch = icmp eq i16 %.0.copyload.i.i.i, -1
  br i1 %i.ch, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ci = load ptr, ptr %i.h, align 8, !tbaa !113
  %i.cj = shl nuw nsw i64 %i.cd, 2
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj
  %.0.copyload.i5.i.i = load i32, ptr %i.ck, align 1
  %i.cl = zext i32 %.0.copyload.i5.i.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i

bb.o:                                             ; preds = %bb.m
  %i.cm = icmp ugt i16 %.0.copyload.i.i.i, -257
  %narrow.i.i = select i1 %i.cm, i16 0, i16 %.0.copyload.i.i.i
  %spec.select.i.i = zext i16 %narrow.i.i to i64
  br label %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i

_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i: ; preds = %bb.o, %bb.n
  %.0.i.i = phi i64 [ %i.cl, %bb.n ], [ %spec.select.i.i, %bb.o ]
  %i.cn = load ptr, ptr %i.i, align 8, !tbaa !226
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %.0.i.i
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !501 ; 2 uses
  %or.cond.i.i = icmp slt i32 %i.cp, 1
  br i1 %or.cond.i.i, label %_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE9push_backERKS3_.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i
  %i.cq = add nsw i32 %i.cp, -1
  %i.cr = zext nneg i32 %i.cq to i64              ; 2 uses
  %i.cs = load ptr, ptr %i.j, align 8, !tbaa !509, !noalias !894 ; 2 uses
  %i.ct = load ptr, ptr %i.k, align 8, !tbaa !131, !noalias !894
  %i.cu = load ptr, ptr %i.l, align 8, !tbaa !130, !noalias !894
  %i.cv = ptrtoint ptr %i.cs to i64
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = sdiv exact i64 %i.cx, 80
  %i.cz = add nsw i64 %i.cy, %i.cr                ; 5 uses
  %i.da = icmp sgt i64 %i.cz, -1
  br i1 %i.da, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.db = icmp samesign ult i64 %i.cz, 6
  br i1 %i.db, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw [80 x i8], ptr %i.cs, i64 %i.cr
  br label %_ZN4mold10ObjectFileINS_6X86_64EE11get_sectionERKNS_6ElfSymIS1_EE.exit

bb.s:                                             ; preds = %bb.q
  %i.dd = udiv i64 %i.cz, 6
  br label %bb.u

bb.t:                                             ; preds = %bb.p
  %i.de = xor i64 %i.cz, -1
  %i.df = udiv i64 %i.de, 6
  %i.dg = xor i64 %i.df, -1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dh = phi i64 [ %i.dd, %bb.s ], [ %i.dg, %bb.t ] ; 2 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !129, !noalias !894
  %.idx.i.i.i.i.i.i = mul i64 %i.dh, -480
  %i.dk = getelementptr i8, ptr %i.dj, i64 %.idx.i.i.i.i.i.i
  %i.dl = getelementptr [80 x i8], ptr %i.dk, i64 %i.cz
  br label %_ZN4mold10ObjectFileINS_6X86_64EE11get_sectionERKNS_6ElfSymIS1_EE.exit

_ZN4mold10ObjectFileINS_6X86_64EE11get_sectionERKNS_6ElfSymIS1_EE.exit: ; preds = %bb.r, %bb.u
  %.0.i2.i = phi ptr [ %i.dc, %bb.r ], [ %i.dl, %bb.u ] ; 3 uses
  %.not53 = icmp eq ptr %.0.i2.i, null
  br i1 %.not53, label %_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE9push_backERKS3_.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4mold10ObjectFileINS_6X86_64EE11get_sectionERKNS_6ElfSymIS1_EE.exit
  %i.dm = zext i32 %.0.copyload.i59 to i64
  %i.dn = add nuw nsw i64 %i.bo, %i.dm            ; 6 uses
  %i.do = load ptr, ptr %i.m, align 8, !tbaa !88
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.cd ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !93 ; 2 uses
  %.not.i = icmp eq i32 %i.dq, 0
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sext i32 %i.dq to i64
  %i.dt = shl nsw i64 %i.ds, 2
  %i.du = add nsw i64 %i.dt, %i.dr
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = select i1 %.not.i, ptr null, ptr %i.dv  ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.0.copyload.i62 = load i64, ptr %i.dx, align 1 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.dn ; 4 uses
  %.0.copyload.i.i63 = load i16, ptr %i.dy, align 1 ; 5 uses
  %i.dz = zext i16 %.0.copyload.i.i63 to i64      ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !77
  %i.ec = and i8 %i.eb, 15
  %i.ed = zext nneg i8 %i.ec to i32
  %i.ee = shl nuw nsw i32 1, %i.ed
  %i.ef = zext nneg i32 %i.ee to i64              ; 2 uses
  %i.eg = add nuw nsw i64 %i.dn, 5                ; 3 uses
  %invariant.gep.i = getelementptr i8, ptr %i.at, i64 %i.ef ; 3 uses
  %.not.i64 = icmp eq i16 %.0.copyload.i.i63, 0
  br i1 %.not.i64, label %_ZN4moldL21sframe_fre_block_sizeINS_6X86_64EEElSt17basic_string_viewIcSt11char_traitsIcEEl.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v
  %i.eh = add nuw nsw i64 %i.ef, 1                ; 3 uses
  %xtraiter = and i64 %i.dz, 1
  %i.ei = icmp eq i16 %.0.copyload.i.i63, 1
  br i1 %i.ei, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.dz, 65534
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.new
  %.01618.i = phi i64 [ %i.eg, %.lr.ph.i.new ], [ %i.eq, %bb.w ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.w ]
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.01618.i
  %i.ej = load i8, ptr %gep.i, align 1, !tbaa !77 ; 2 uses
  %5 = lshr i8 %i.ej, 1
  %6 = and i8 %5, 15
  %7 = zext nneg i8 %6 to i64
  %8 = lshr i8 %i.ej, 5
  %9 = and i8 %8, 3
  %10 = zext nneg i8 %9 to i64
  %i.ek = shl nuw nsw i64 %7, %10
  %i.el = add nuw nsw i64 %i.eh, %.01618.i
  %i.em = add nuw nsw i64 %i.el, %i.ek            ; 2 uses
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 %i.em
  %i.en = load i8, ptr %gep.i.1, align 1, !tbaa !77 ; 2 uses
  %11 = lshr i8 %i.en, 1
  %12 = and i8 %11, 15
  %13 = zext nneg i8 %12 to i64
  %14 = lshr i8 %i.en, 5
  %15 = and i8 %14, 3
  %16 = zext nneg i8 %15 to i64
  %i.eo = shl nuw nsw i64 %13, %16
  %i.ep = add nuw nsw i64 %i.eh, %i.em
  %i.eq = add nuw nsw i64 %i.ep, %i.eo            ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4moldL21sframe_fre_block_sizeINS_6X86_64EEElSt17basic_string_viewIcSt11char_traitsIcEEl.exit.loopexit.unr-lcssa, label %bb.w, !llvm.loop !883

_ZN4moldL21sframe_fre_block_sizeINS_6X86_64EEElSt17basic_string_viewIcSt11char_traitsIcEEl.exit.loopexit.unr-lcssa: ; preds = %bb.w
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4moldL21sframe_fre_block_sizeINS_6X86_64EEElSt17basic_string_viewIcSt11char_traitsIcEEl.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4moldL21sframe_fre_block_sizeINS_6X86_64EEElSt17basic_string_viewIcSt11char_traitsIcEEl.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.01618.i.epil.init = phi i64 [ %i.eg, %.lr.ph.i ], [ %i.eq, %_ZN4moldL21sframe_fre_block_sizeINS_6X86_64EEElSt17basic_string_viewIcSt11char_traitsIcEEl.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod229 = trunc i16 %.0.copyload.i.i63 to i1
  tail call void @llvm.assume(i1 %lcmp.mod229)
  %gep.i.epil = getelementptr i8, ptr %invariant.gep.i, i64 %.01618.i.epil.init
  %i.er = load i8, ptr %gep.i.epil, align 1, !tbaa !77 ; 2 uses
  %17 = lshr i8 %i.er, 1
  %18 = and i8 %17, 15
  %19 = zext nneg i8 %18 to i64
  %20 = lshr i8 %i.er, 5
  %21 = and i8 %20, 3
  %22 = zext nneg i8 %21 to i64
  %i.es = shl nuw nsw i64 %19, %22
  %i.et = add nuw nsw i64 %i.eh, %.01618.i.epil.init
  %i.eu = add nuw nsw i64 %i.et, %i.es
  br label %_ZN4moldL21sframe_fre_block_sizeINS_6X86_64EEElSt17basic_string_viewIcSt11char_traitsIcEEl.exit

_ZN4moldL21sframe_fre_block_sizeINS_6X86_64EEElSt17basic_string_viewIcSt11char_traitsIcEEl.exit: ; preds = %.epil.preheader, %_ZN4moldL21sframe_fre_block_sizeINS_6X86_64EEElSt17basic_string_viewIcSt11char_traitsIcEEl.exit.loopexit.unr-lcssa, %bb.v
  %.016.lcssa.i = phi i64 [ %i.eg, %bb.v ], [ %i.eq, %_ZN4moldL21sframe_fre_block_sizeINS_6X86_64EEElSt17basic_string_viewIcSt11char_traitsIcEEl.exit.loopexit.unr-lcssa ], [ %i.eu, %.epil.preheader ]
  %i.ev = icmp ugt i64 %i.dn, %.0.copyload.i10.i
  br i1 %i.ev, label %bb.x, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.x:                                             ; preds = %_ZN4moldL21sframe_fre_block_sizeINS_6X86_64EEElSt17basic_string_viewIcSt11char_traitsIcEEl.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73, i64 noundef %i.dn, i64 noundef %.0.copyload.i10.i) #29
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZN4moldL21sframe_fre_block_sizeINS_6X86_64EEElSt17basic_string_viewIcSt11char_traitsIcEEl.exit
  %i.ew = sub nsw i64 %.016.lcssa.i, %i.dn
  %i.ex = sub nuw i64 %.0.copyload.i10.i, %i.dn
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.ex, i64 %i.ew) ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %.0.copyload.i67 = load i32, ptr %i.ey, align 1 ; 2 uses
  %i.ez = zext i16 %.0.copyload.i.i63 to i32      ; 2 uses
  %i.fa = load ptr, ptr %i.o, align 8, !tbaa !895 ; 12 uses
  %i.fb = load ptr, ptr %i.p, align 8, !tbaa !563
  %.not.i69 = icmp eq ptr %i.fa, %i.fb
  br i1 %.not.i69, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  store ptr %.0.i2.i, ptr %i.fa, align 8, !tbaa !129
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store ptr %i.dw, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !91
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store i64 %.0.copyload.i62, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !83
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  store i64 %.sroa.speculated.i, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !83
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 32
  store ptr %i.dy, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !85
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 40
  store i32 %.0.copyload.i67, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !501
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fa, i64 44
  store i32 %i.ez, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !501
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 48
  store ptr %i.fc, ptr %i.o, align 8, !tbaa !895
  br label %_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE9push_backERKS3_.exit

bb.z:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.fd = load ptr, ptr %i.n, align 8, !tbaa !564 ; 5 uses
  %i.fe = ptrtoint ptr %i.fa to i64
  %i.ff = ptrtoint ptr %i.fd to i64               ; 2 uses
  %i.fg = sub i64 %i.fe, %i.ff                    ; 3 uses
  %i.fh = icmp eq i64 %i.fg, 9223372036854775776
  br i1 %i.fh, label %bb.aa, label %_ZNKSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.68) #29
  unreachable

_ZNKSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.fi = sdiv exact i64 %i.fg, 48                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fi, i64 1)
  %i.fj = add nsw i64 %.sroa.speculated.i.i.i, %i.fi ; 2 uses
  %i.fk = icmp ult i64 %i.fj, %i.fi
  %i.fl = tail call i64 @llvm.umin.i64(i64 %i.fj, i64 192153584101141162)
  %i.fm = select i1 %i.fk, i64 192153584101141162, i64 %i.fl ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fm, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.fn = mul nuw nsw i64 %i.fm, 48
  %i.fo = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fn) #30 ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fg ; 7 uses
  store ptr %.0.i2.i, ptr %i.fp, align 8, !tbaa !129
  %.sroa.6.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store ptr %i.dw, ptr %.sroa.6.0..sroa_idx72, align 8, !tbaa !91
  %.sroa.7.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store i64 %.0.copyload.i62, ptr %.sroa.7.0..sroa_idx74, align 8, !tbaa !83
  %.sroa.8.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  store i64 %.sroa.speculated.i, ptr %.sroa.8.0..sroa_idx76, align 8, !tbaa !83
  %.sroa.9.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  store ptr %i.dy, ptr %.sroa.9.0..sroa_idx78, align 8, !tbaa !85
  %.sroa.10.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.fp, i64 40
  store i32 %.0.copyload.i67, ptr %.sroa.10.0..sroa_idx80, align 8, !tbaa !501
  %.sroa.11.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.fp, i64 44
  store i32 %i.ez, ptr %.sroa.11.0..sroa_idx82, align 4, !tbaa !501
  %.not10.i.i.i.i.i = icmp eq ptr %i.fd, %i.fa
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i ], [ %i.fo, %_ZNKSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i ], [ %i.fd, %_ZNKSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !896, !alias.scope !897
  %i.fq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 48 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fq, %i.fa
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !887

_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.fo, %_ZNKSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.fr, %.lr.ph.i.i.i.i.i ]
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 48
  %.not.i23.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.ft = load ptr, ptr %i.p, align 8, !tbaa !563
  %i.fu = ptrtoint ptr %i.ft to i64
  %i.fv = sub i64 %i.fu, %i.ff
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fd, i64 noundef %i.fv) #28
  br label %_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.ab, %_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  store ptr %i.fo, ptr %i.n, align 8, !tbaa !564
  store ptr %i.fs, ptr %i.o, align 8, !tbaa !895
  %i.fw = getelementptr inbounds nuw [48 x i8], ptr %i.fo, i64 %i.fm
  store ptr %i.fw, ptr %i.p, align 8, !tbaa !563
  br label %_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.k, %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i, %_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.y, %_ZN4mold10ObjectFileINS_6X86_64EE11get_sectionERKNS_6ElfSymIS1_EE.exit, %.critedge, %bb.l
  %.1.lcssa166 = phi i64 [ %.1.lcssa, %bb.l ], [ %.1.lcssa, %_ZN4mold10ObjectFileINS_6X86_64EE9get_shndxERKNS_6ElfSymIS1_EE.exit.i ], [ %.1.lcssa, %_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.1.lcssa, %bb.y ], [ %.1.lcssa, %_ZN4mold10ObjectFileINS_6X86_64EE11get_sectionERKNS_6ElfSymIS1_EE.exit ], [ %.1.lcssa, %.critedge ], [ %i.br, %bb.k ]
  %i.fx = add nuw nsw i64 %.047124, 1             ; 2 uses
  %exitcond148.not = icmp eq i64 %i.fx, %i.bi
  br i1 %exitcond148.not, label %.loopexit, label %.lr.ph125, !llvm.loop !888

.loopexit:                                        ; preds = %_ZNSt6vectorIN4mold9SFrameFdeINS0_6X86_64EEESaIS3_EE9push_backERKS3_.exit, %bb.j, %bb.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.098.0126, i64 8 ; 2 uses
  %i.fz = icmp eq ptr %i.fy, %i.d
  br i1 %i.fz, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA28_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 1 dereferenceable(28) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(28) %1) #14
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(28) %1, i64 noundef %i.b) #14 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA32_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 1 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(32) %1) #14
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(32) %1, i64 noundef %i.b) #14 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRKSt17basic_string_viewIcSt11char_traitsIcEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !83
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !85
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i) #14 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind
define weak_odr dso_local void @_ZN4mold10ObjectFileINS_6X86_64EE26convert_mergeable_sectionsERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(992) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !225
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !226  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.thread, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.thread
  %i.o = phi ptr [ %i.d, %.lr.ph ], [ %i.dy, %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.thread ] ; 7 uses
  %.038 = phi i64 [ 0, %.lr.ph ], [ %i.dz, %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.thread ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.038
  %i.q = load i32, ptr %i.p, align 4, !tbaa !501  ; 2 uses
  %or.cond.i = icmp slt i32 %i.q, 1
  br i1 %or.cond.i, label %_ZN4mold17InputSectionTableINS_6X86_64EEixEl.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = add nsw i32 %i.q, -1
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !509, !noalias !911 ; 2 uses
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !131, !noalias !911
  %i.v = load ptr, ptr %i.k, align 8, !tbaa !130, !noalias !911
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 80
  %i.aa = add nsw i64 %i.z, %i.s                  ; 5 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  br i1 %i.ab, label %bb.d, label %bb.g

end_hunk_0
begin_hunk_1_@_ZN4moldlsINS_6X86_64EEERSoS2_RKNS_9InputFileIT_EE:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !77
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZN4mold10path_cleanB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #6 comdat {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 8 uses
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 7 uses
  store i64 %1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZNSt10filesystem7__cxx114pathC2ISt17basic_string_viewIcSt11char_traitsIcEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(16) %3, i8 noundef zeroext 2)
  call void @_ZNKSt10filesystem7__cxx114path16lexically_normalEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %5) #14
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  %i.b = load ptr, ptr %4, align 8, !tbaa !74, !noalias !1056 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !75, !noalias !1056 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !73, !alias.scope !1056
  %i.f = icmp eq ptr %i.b, null
  %i.g = icmp ne i64 %i.d, 0
  %or.cond.i.i.i = and i1 %i.f, %i.g
  br i1 %or.cond.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.66) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = icmp ugt i64 %i.d, 15
  br i1 %i.h, label %bb.d, label %._crit_edge.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i64 %i.d, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #29
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.j = add nuw i64 %i.d, 1                      ; 2 uses
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !76

bb.g:                                             ; preds = %bb.f
  call void @_ZSt17__throw_bad_allocv() #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.f
  %i.l = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #30 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !74, !alias.scope !1056
  store i64 %i.d, ptr %i.e, align 8, !tbaa !77, !alias.scope !1056
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.c
  %i.m = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.e, %bb.c ] ; 3 uses
  switch i64 %i.d, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNKSt10filesystem7__cxx114path6stringEv.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.n = load i8, ptr %i.b, align 1, !tbaa !77
  store i8 %i.n, ptr %i.m, align 1, !tbaa !77
  br label %_ZNKSt10filesystem7__cxx114path6stringEv.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.b, i64 %i.d, i1 false)
  br label %_ZNKSt10filesystem7__cxx114path6stringEv.exit

_ZNKSt10filesystem7__cxx114path6stringEv.exit:    ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.o, align 8, !tbaa !75, !alias.scope !1056
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.d
  store i8 0, ptr %i.p, align 1, !tbaa !77
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !652  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNKSt10filesystem7__cxx114path6stringEv.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull %i.r) #14
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.j, %_ZNKSt10filesystem7__cxx114path6stringEv.exit
  %i.s = load ptr, ptr %4, align 8, !tbaa !74     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !77
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #28
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !652  ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i1, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i2, label %bb.k

bb.k:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull %i.y) #14
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i2

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i2: ; preds = %bb.k, %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.z = load ptr, ptr %5, align 8, !tbaa !74     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i2
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !77
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #28
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit5

_ZNSt10filesystem7__cxx114pathD2Ev.exit5:         ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN4mold10CrelReaderINS_6X86_64EEC2ERNS_7ContextIS1_EERNS_10ObjectFileIS1_EERKNS_7ElfShdrIS1_EE(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(14448) %1, ptr noundef nonnull align 8 dereferenceable(992) %2, ptr noundef nonnull align 1 dereferenceable(64) %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %4 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.c, align 1  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.0.copyload.i10.i = load i64, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !81
  %i.g = add nuw nsw i64 %.0.copyload.i10.i, %.0.copyload.i.i
  %i.h = icmp slt i64 %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(14448) %1) #14
  %i.i = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRNS_9InputFileIS1_EEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(312) %2)
  %i.j = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA35_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.i, ptr noundef nonnull align 1 dereferenceable(35) @.str.6)
  %i.k = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRKNS_7IntegerImLb1ELi8EEEEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.j, ptr noundef nonnull align 1 dereferenceable(8) %i.c) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %4) #29
  unreachable

_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !82
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.0.copyload.i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit
  %i.o = phi ptr [ %i.n, %_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit ], [ %i.p, %bb.c ] ; 2 uses
  %.06.i = phi i64 [ 0, %_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit ], [ %i.w, %bb.c ]
  %.0.i = phi i32 [ 0, %_ZN4mold9InputFileINS_6X86_64EE10get_stringERNS_7ContextIS1_EERKNS_7ElfShdrIS1_EE.exit ], [ %i.x, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.q = load i8, ptr %i.o, align 1, !tbaa !77    ; 2 uses
  %i.r = and i8 %i.q, 127
  %i.s = zext nneg i8 %i.r to i32
  %i.t = and i32 %.0.i, 255                       ; 2 uses
  %i.u = shl i32 %i.s, %i.t
  %i.v = sext i32 %i.u to i64
  %i.w = or i64 %.06.i, %i.v                      ; 4 uses
  %i.x = add nuw nsw i32 %i.t, 7
  %.not.i = icmp sgt i8 %i.q, -1
  br i1 %.not.i, label %_ZN4mold9read_ulebEPPh.exit, label %bb.c, !llvm.loop !8

_ZN4mold9read_ulebEPPh.exit:                      ; preds = %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !653
  %i.y = lshr i64 %i.w, 3
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !484
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %5 = trunc i64 %i.w to i8
  %6 = lshr i8 %5, 2
  %i.ab = and i8 %6, 1
  store i8 %i.ab, ptr %i.aa, align 8, !tbaa !654
  %i.ac = and i64 %i.w, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !655
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZNK4mold10CrelReaderINS_6X86_64EE8for_eachIZNS_11decode_crelIS1_EENS_10ExactArrayINS_6ElfRelIT_EEEERNS_7ContextIS7_EERNS_10ObjectFileIS7_EERKNS_7ElfShdrIS7_EEEUlRKNS6_IS1_EElE_EEvS7_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !654, !range !107, !noundef !108
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = select i1 %i.c, i32 3, i32 2             ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !484
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !653
  %i.i = xor i32 %i.d, 7
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.02166 = phi i64 [ 0, %.lr.ph ], [ %i.cn, %bb.g ] ; 2 uses
  %.02265 = phi i64 [ 0, %.lr.ph ], [ %.1, %bb.g ] ; 2 uses
  %.02364 = phi i64 [ 0, %.lr.ph ], [ %.124, %bb.g ] ; 2 uses
  %.02563 = phi i64 [ 0, %.lr.ph ], [ %.126, %bb.g ] ; 2 uses
  %.02762 = phi i64 [ 0, %.lr.ph ], [ %i.ah, %bb.g ]
  %.04661 = phi ptr [ %i.h, %.lr.ph ], [ %.4, %bb.g ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.04661, i64 1 ; 2 uses
  %i.m = load i8, ptr %.04661, align 1, !tbaa !77 ; 2 uses
  %i.n = zext i8 %i.m to i32                      ; 5 uses
  %.not = icmp sgt i8 %i.m, -1
  br i1 %.not, label %bb.c, label %.preheader50

.preheader50:                                     ; preds = %bb.b, %.preheader50
  %i.o = phi ptr [ %i.p, %.preheader50 ], [ %i.l, %bb.b ] ; 2 uses
  %.06.i = phi i64 [ %i.w, %.preheader50 ], [ 0, %bb.b ]
  %.0.i = phi i32 [ %i.x, %.preheader50 ], [ 0, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1 ; 2 uses
  %i.q = load i8, ptr %i.o, align 1, !tbaa !77    ; 2 uses
  %i.r = and i8 %i.q, 127
  %i.s = zext nneg i8 %i.r to i32
  %i.t = and i32 %.0.i, 255                       ; 2 uses
  %i.u = shl i32 %i.s, %i.t
  %i.v = sext i32 %i.u to i64
  %i.w = or i64 %.06.i, %i.v                      ; 2 uses
  %i.x = add nuw nsw i32 %i.t, 7
  %.not.i = icmp sgt i8 %i.q, -1
  br i1 %.not.i, label %_ZN4mold9read_ulebEPPh.exit, label %.preheader50, !llvm.loop !8

_ZN4mold9read_ulebEPPh.exit:                      ; preds = %.preheader50
  %i.y = shl i64 %i.w, %i.j
  %i.z = and i32 %i.n, 127
  %i.aa = lshr i32 %i.z, %i.d
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = or i64 %i.y, %i.ab
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = lshr i32 %i.n, %i.d
  %i.ae = zext nneg i32 %i.ad to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4mold9read_ulebEPPh.exit
  %.147 = phi ptr [ %i.l, %bb.c ], [ %i.p, %_ZN4mold9read_ulebEPPh.exit ] ; 2 uses
  %.0 = phi i64 [ %i.ae, %bb.c ], [ %i.ac, %_ZN4mold9read_ulebEPPh.exit ]
  %i.af = load i64, ptr %i.k, align 8, !tbaa !655
  %i.ag = shl i64 %.0, %i.af
  %i.ah = add i64 %i.ag, %.02762                  ; 2 uses
  %i.ai = and i32 %i.n, 1
  %.not28 = icmp eq i32 %i.ai, 0
  br i1 %.not28, label %bb.e, label %.preheader49

.preheader49:                                     ; preds = %bb.d, %.preheader49
  %i.aj = phi ptr [ %i.ak, %.preheader49 ], [ %.147, %bb.d ] ; 2 uses
  %.07.i = phi i64 [ %i.ar, %.preheader49 ], [ 0, %bb.d ]
  %.0.i33 = phi i32 [ %i.as, %.preheader49 ], [ 0, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !77  ; 2 uses
  %i.am = and i8 %i.al, 127
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = and i32 %.0.i33, 255                    ; 2 uses
  %i.ap = shl i32 %i.an, %i.ao
  %i.aq = sext i32 %i.ap to i64
  %i.ar = or i64 %.07.i, %i.aq                    ; 2 uses
  %i.as = add nuw nsw i32 %i.ao, 7                ; 2 uses
  %.not.i34 = icmp sgt i8 %i.al, -1
  br i1 %.not.i34, label %_ZN4mold9read_slebEPPh.exit, label %.preheader49, !llvm.loop !1057

_ZN4mold9read_slebEPPh.exit:                      ; preds = %.preheader49
  %i.at = and i32 %i.as, 255
  %i.au = zext nneg i32 %i.at to i64
  %i.av = sub nsw i64 64, %i.au                   ; 2 uses
  %i.aw = shl i64 %i.ar, %i.av
  %i.ax = ashr exact i64 %i.aw, %i.av
  %i.ay = add nsw i64 %i.ax, %.02364
  br label %bb.e

bb.e:                                             ; preds = %_ZN4mold9read_slebEPPh.exit, %bb.d
  %.2 = phi ptr [ %.147, %bb.d ], [ %i.ak, %_ZN4mold9read_slebEPPh.exit ] ; 2 uses
  %.124 = phi i64 [ %.02364, %bb.d ], [ %i.ay, %_ZN4mold9read_slebEPPh.exit ] ; 2 uses
  %i.az = and i32 %i.n, 2
  %.not29 = icmp eq i32 %i.az, 0
  br i1 %.not29, label %bb.f, label %.preheader48

.preheader48:                                     ; preds = %bb.e, %.preheader48
  %i.ba = phi ptr [ %i.bb, %.preheader48 ], [ %.2, %bb.e ] ; 2 uses
  %.07.i36 = phi i64 [ %i.bi, %.preheader48 ], [ 0, %bb.e ]
  %.0.i37 = phi i32 [ %i.bj, %.preheader48 ], [ 0, %bb.e ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1 ; 2 uses
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !77  ; 2 uses
  %i.bd = and i8 %i.bc, 127
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = and i32 %.0.i37, 255                    ; 2 uses
  %i.bg = shl i32 %i.be, %i.bf
  %i.bh = sext i32 %i.bg to i64
  %i.bi = or i64 %.07.i36, %i.bh                  ; 2 uses
  %i.bj = add nuw nsw i32 %i.bf, 7                ; 2 uses
  %.not.i38 = icmp sgt i8 %i.bc, -1
  br i1 %.not.i38, label %_ZN4mold9read_slebEPPh.exit39, label %.preheader48, !llvm.loop !1057

_ZN4mold9read_slebEPPh.exit39:                    ; preds = %.preheader48
  %i.bk = and i32 %i.bj, 255
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = sub nsw i64 64, %i.bl                   ; 2 uses
  %i.bn = shl i64 %i.bi, %i.bm
  %i.bo = ashr exact i64 %i.bn, %i.bm
  %i.bp = add nsw i64 %i.bo, %.02563
  br label %bb.f

bb.f:                                             ; preds = %_ZN4mold9read_slebEPPh.exit39, %bb.e
  %.3 = phi ptr [ %.2, %bb.e ], [ %i.bb, %_ZN4mold9read_slebEPPh.exit39 ] ; 2 uses
  %.126 = phi i64 [ %.02563, %bb.e ], [ %i.bp, %_ZN4mold9read_slebEPPh.exit39 ] ; 2 uses
  %i.bq = load i8, ptr %i.a, align 8, !tbaa !654, !range !107, !noundef !108
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = and i32 %i.n, 4
  %.not30 = icmp ne i32 %i.bs, 0
  %or.cond.not = and i1 %.not30, %i.br
  br i1 %or.cond.not, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.f, %.preheader
  %i.bt = phi ptr [ %i.bu, %.preheader ], [ %.3, %bb.f ] ; 2 uses
  %.07.i41 = phi i64 [ %i.cb, %.preheader ], [ 0, %bb.f ]
  %.0.i42 = phi i32 [ %i.cc, %.preheader ], [ 0, %bb.f ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1 ; 2 uses
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !77  ; 2 uses
  %i.bw = and i8 %i.bv, 127
  %i.bx = zext nneg i8 %i.bw to i32
  %i.by = and i32 %.0.i42, 255                    ; 2 uses
  %i.bz = shl i32 %i.bx, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = or i64 %.07.i41, %i.ca                  ; 2 uses
  %i.cc = add nuw nsw i32 %i.by, 7                ; 2 uses
  %.not.i43 = icmp sgt i8 %i.bv, -1
  br i1 %.not.i43, label %_ZN4mold9read_slebEPPh.exit44, label %.preheader, !llvm.loop !1057

_ZN4mold9read_slebEPPh.exit44:                    ; preds = %.preheader
  %i.cd = and i32 %i.cc, 255
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = sub nsw i64 64, %i.ce                   ; 2 uses
  %i.cg = shl i64 %i.cb, %i.cf
  %i.ch = ashr exact i64 %i.cg, %i.cf
  %i.ci = add nsw i64 %i.ch, %.02265
  br label %bb.g

bb.g:                                             ; preds = %_ZN4mold9read_slebEPPh.exit44, %bb.f
  %.4 = phi ptr [ %.3, %bb.f ], [ %i.bu, %_ZN4mold9read_slebEPPh.exit44 ]
  %.1 = phi i64 [ %.02265, %bb.f ], [ %i.ci, %_ZN4mold9read_slebEPPh.exit44 ] ; 2 uses
  %i.cj = trunc i64 %.126 to i32
  %i.ck = trunc i64 %.124 to i32
  %i.cl = load ptr, ptr %1, align 8, !tbaa !482
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.cl, i64 %.02166 ; 4 uses
  store i64 %i.ah, ptr %i.cm, align 1, !tbaa !77
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i32 %i.cj, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !77
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  store i32 %i.ck, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !77
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store i64 %.1, ptr %.sroa.6.0..sroa_idx, align 1, !tbaa !77
  %i.cn = add nuw nsw i64 %.02166, 1              ; 2 uses
  %i.co = load i64, ptr %i.e, align 8, !tbaa !484
  %i.cp = icmp slt i64 %i.cn, %i.co
  br i1 %i.cp, label %bb.b, label %._crit_edge, !llvm.loop !1058
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN4mold9InputFileINS_6X86_64EED2Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN4mold9InputFileINS_6X86_64EEE, i64 16), ptr %0, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !616  ; 3 uses
end_hunk_1
