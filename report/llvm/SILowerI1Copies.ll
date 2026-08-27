Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SILowerI1Copies?download=true
inline.NumInlined: 1840
inline.NumDeleted: 933
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4llvm6AMDGPU17PhiLoweringHelper9lowerPhisEv:bb.a
  store i32 0, ptr %i.be, align 16, !tbaa !202
  %.not.i.i.i238 = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i.i238, label %_ZN12_GLOBAL__N_110LoopFinder10initializeERN4llvm17MachineBasicBlockE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dl = add nuw nsw i64 %i.di, 31
  %i.dm = lshr i64 %i.dl, 3
  %i.dn = and i64 %i.dm, 1073741820
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dk, i8 0, i64 %i.dn, i1 false)
  br label %_ZN12_GLOBAL__N_110LoopFinder10initializeERN4llvm17MachineBasicBlockE.exit

bb.i:                                             ; preds = %bb.e
  %i.do = load ptr, ptr %i.bg, align 8, !tbaa !204
  %i.dp = zext i32 %i.cj to i64
  %i.dq = add nuw nsw i64 %i.dp, 31
  %i.dr = lshr i64 %i.dq, 3
  %i.ds = and i64 %i.dr, 1073741820
  call void @llvm.memset.p0.i64(ptr align 4 %i.do, i8 0, i64 %i.ds, i1 false)
  store i32 0, ptr %i.be, align 16, !tbaa !202
  br label %_ZN12_GLOBAL__N_110LoopFinder10initializeERN4llvm17MachineBasicBlockE.exit

_ZN12_GLOBAL__N_110LoopFinder10initializeERN4llvm17MachineBasicBlockE.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.i
  store i32 0, ptr %i.n, align 16, !tbaa !162
  store i32 0, ptr %i.u, align 8, !tbaa !162
  store i32 0, ptr %i.y, align 8, !tbaa !162
  store ptr null, ptr %i.p, align 8, !tbaa !164
  store i32 -1, ptr %i.q, align 16, !tbaa !174
  store ptr %i.cf, ptr %i.r, align 8, !tbaa !175
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %_ZN12_GLOBAL__N_110LoopFinder10initializeERN4llvm17MachineBasicBlockE.exit
  %.1 = phi ptr [ %i.cf, %_ZN12_GLOBAL__N_110LoopFinder10initializeERN4llvm17MachineBasicBlockE.exit ], [ %.0114427, %bb.c ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !206
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !207 ; 6 uses
  %i.dx = load ptr, ptr %0, align 8, !tbaa !8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 %i.dw) #19
  %i.ea = load ptr, ptr %i.bh, align 8, !tbaa !158 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ec = and i32 %i.dw, 2147483647               ; 3 uses
  %i.ed = zext nneg i32 %i.ec to i64              ; 5 uses
  %i.ee = load ptr, ptr %i.eb, align 8, !tbaa !161
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ed
  %.sroa.04.0.copyload.i.i = load i64, ptr %i.ef, align 8
  %i.eg = icmp slt i32 %i.dw, 0                   ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 472
  %i.ei = load i32, ptr %i.eh, align 8
  %i.ej = icmp ugt i32 %i.ei, %i.ec
  %or.cond.i.i135 = select i1 %i.eg, i1 %i.ej, i1 false
  br i1 %or.cond.i.i135, label %bb.k, label %_ZN4llvm6AMDGPU17PhiLoweringHelper36initializeLaneMaskRegisterAttributesENS_8RegisterE.exit

bb.k:                                             ; preds = %bb.j
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 464
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !161
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ed
  %i.en = load i64, ptr %i.em, align 8, !tbaa !207
  br label %_ZN4llvm6AMDGPU17PhiLoweringHelper36initializeLaneMaskRegisterAttributesENS_8RegisterE.exit

_ZN4llvm6AMDGPU17PhiLoweringHelper36initializeLaneMaskRegisterAttributesENS_8RegisterE.exit: ; preds = %bb.j, %bb.k
  %.sroa.04.0.i.i.i = phi i64 [ %i.en, %bb.k ], [ 0, %bb.j ]
  store i64 %.sroa.04.0.copyload.i.i, ptr %i.bi, align 8
  store i64 %.sroa.04.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.eo = load ptr, ptr %0, align 8, !tbaa !8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %13) #19
  %.val = load ptr, ptr %13, align 8, !tbaa !161  ; 17 uses
  %.val130 = load i32, ptr %i.at, align 8, !tbaa !162 ; 4 uses
  %i.er = zext i32 %.val130 to i64                ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.er, 24
  %i.es = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx.i ; 3 uses
  %.not.i.i.i.i = icmp eq i32 %.val130, 0
  br i1 %.not.i.i.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorINS_6AMDGPU8IncomingELj4EEEZNS2_17PhiLoweringHelper9lowerPhisEvE3$_0EEvOT_T0_.exit", label %bb.l

bb.l:                                             ; preds = %_ZN4llvm6AMDGPU17PhiLoweringHelper36initializeLaneMaskRegisterAttributesENS_8RegisterE.exit
  %i.et = ptrtoint ptr %.val to i64
  %i.eu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.er, i1 true)
  %i.ev = shl nuw nsw i64 %i.eu, 1
  %i.ew = xor i64 %i.ev, 126
  call fastcc void @"_ZSt16__introsort_loopIPN4llvm6AMDGPU8IncomingElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_SA_T0_T1_"(ptr noundef %.val, ptr noundef nonnull %i.es, i64 noundef %i.ew, ptr nonnull readonly %0)
  %i.ex = icmp ugt i32 %.val130, 16
  br i1 %i.ex, label %bb.m, label %.preheader.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %.sroa.1.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.val, i64 24
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %bb.m
  %.021.i.idx.i.i.i.i.i = phi i64 [ 24, %bb.m ], [ %.021.i.add.i.i.i.i.i, %bb.s ] ; 4 uses
  %.pn20.i.i.i.i.i.i = phi ptr [ %.val, %bb.m ], [ %.021.i.ptr.i.i.i.i.i, %bb.s ] ; 4 uses
  %.021.i.ptr.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %.021.i.idx.i.i.i.i.i ; 5 uses
  %.val.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !31 ; 2 uses
  %i.ey = getelementptr i8, ptr %.val.val.i.i.i.i.i.i, i64 24
  %.val.val.val.i.i.i.i.i.i = load ptr, ptr %i.ey, align 8, !tbaa !161 ; 3 uses
  %i.ez = getelementptr i8, ptr %.val.val.i.i.i.i.i.i, i64 32
  %.val.val.val17.i.i.i.i.i.i = load i32, ptr %i.ez, align 8, !tbaa !162 ; 3 uses
  %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i.i, i64 32
  %.sroa.12.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !208 ; 2 uses
  %.sroa.1.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.1.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !208
  %i.fa = getelementptr i8, ptr %.sroa.12.0.copyload.i.i.i.i.i.i.i, i64 220 ; 2 uses
  %.val3.val.i.i.i.i.i.i.i = load i32, ptr %i.fa, align 4, !tbaa !209
  %i.fb = add i32 %.val3.val.i.i.i.i.i.i.i, 1     ; 2 uses
  %i.fc = icmp ugt i32 %.val.val.val17.i.i.i.i.i.i, %i.fb
  call void @llvm.assume(i1 %i.fc)
  %i.fd = zext i32 %i.fb to i64
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i.i.i.i.i.i, i64 %i.fd
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !247
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !249 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.1.0.copyload.i.i.i.i.i.i.i, i64 220
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !209
  %i.fk = add i32 %i.fj, 1                        ; 2 uses
  %i.fl = icmp ugt i32 %.val.val.val17.i.i.i.i.i.i, %i.fk
  call void @llvm.assume(i1 %i.fl)
  %i.fm = zext i32 %i.fk to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i.i.i.i.i.i, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !247
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !249
  %i.fr = icmp ult i32 %i.fh, %i.fq
  br i1 %i.fr, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %.021.i.ptr.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !252
  %i.fs = icmp samesign ugt i64 %.021.i.idx.i.i.i.i.i, 24
  br i1 %i.fs, label %bb.p, label %bb.q, !prof !254

bb.p:                                             ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.val, i64 %.021.i.idx.i.i.i.i.i, i1 false)
  br label %_ZSt13move_backwardIPN4llvm6AMDGPU8IncomingES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.ft = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ft, ptr noundef nonnull align 8 dereferenceable(20) %.val, i64 20, i1 false), !tbaa.struct !252
  br label %_ZSt13move_backwardIPN4llvm6AMDGPU8IncomingES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i

_ZSt13move_backwardIPN4llvm6AMDGPU8IncomingES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i: ; preds = %bb.q, %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.val, ptr noundef nonnull align 8 dereferenceable(20) %9, i64 20, i1 false), !tbaa.struct !252
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.fu = load i64, ptr %.021.i.ptr.i.i.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i.i, i64 40
  %i.fv = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %.sroa.1.0..sroa_idx.i16.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i.i.i.i, i64 8
  %.sroa.1.0.copyload.i17.i.i.i.i.i.i.i = load ptr, ptr %.sroa.1.0..sroa_idx.i16.i.i.i.i.i.i.i, align 8, !tbaa !208
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.1.0.copyload.i17.i.i.i.i.i.i.i, i64 220
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !209
  %i.fy = add i32 %i.fx, 1                        ; 2 uses
  %i.fz = icmp ugt i32 %.val.val.val17.i.i.i.i.i.i, %i.fy
  call void @llvm.assume(i1 %i.fz)
  %i.ga = zext i32 %i.fy to i64
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i.i.i.i.i.i, i64 %i.ga
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !247
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !249
  %i.gf = icmp ult i32 %i.fh, %i.ge
  br i1 %i.gf, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i.i
  %.0919.i.i.i.i.i.i.i = phi ptr [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.ptr.i.i.i.i.i, %bb.r ] ; 3 uses
  %.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0919.i.i.i.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.0919.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !252
  %.val.val.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !31 ; 2 uses
  %i.gg = getelementptr i8, ptr %.val.val.i.i.i.i.i.i.i, i64 24
  %.val.val.val.i.i.i.i.i.i.i = load ptr, ptr %i.gg, align 8, !tbaa !161 ; 2 uses
  %i.gh = getelementptr i8, ptr %.val.val.i.i.i.i.i.i.i, i64 32
  %.val.val.val10.i.i.i.i.i.i.i = load i32, ptr %i.gh, align 8, !tbaa !162 ; 2 uses
  %.sroa.1.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.0919.i.i.i.i.i.i.i, i64 -40
  %.sroa.1.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.1.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !208
  %.val3.val.i.i.i.i.i.i.i.i = load i32, ptr %i.fa, align 4, !tbaa !209
  %i.gi = add i32 %.val3.val.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.gj = icmp ugt i32 %.val.val.val10.i.i.i.i.i.i.i, %i.gi
  call void @llvm.assume(i1 %i.gj)
  %i.gk = zext i32 %i.gi to i64
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i.i.i.i.i.i.i, i64 %i.gk
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !247
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !249
  %i.gp = getelementptr inbounds nuw i8, ptr %.sroa.1.0.copyload.i.i.i.i.i.i.i.i, i64 220
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !209
  %i.gr = add i32 %i.gq, 1                        ; 2 uses
  %i.gs = icmp ugt i32 %.val.val.val10.i.i.i.i.i.i.i, %i.gr
  call void @llvm.assume(i1 %i.gs)
  %i.gt = zext i32 %i.gr to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i.i.i.i.i.i.i, i64 %i.gt
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !247
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 48
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !249
  %i.gy = icmp ult i32 %i.go, %i.gx
  br i1 %i.gy, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", !llvm.loop !255

"_ZSt25__unguarded_linear_insertIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.r
  %.09.lcssa.i.i.i.i.i.i.i = phi ptr [ %.021.i.ptr.i.i.i.i.i, %bb.r ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  store i64 %i.fu, ptr %.09.lcssa.i.i.i.i.i.i.i, align 8
  %.sroa.4.0..09.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.12.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.4.0..09.sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !208
  %.sroa.5.0..09.sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i.i.i.i.i.i, i64 16
  %.sroa.5.0.extract.trunc.i.i.i.i.i.i.i = trunc i64 %i.fv to i32
  store i32 %.sroa.5.0.extract.trunc.i.i.i.i.i.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !253
  br label %bb.s

bb.s:                                             ; preds = %"_ZSt25__unguarded_linear_insertIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", %_ZSt13move_backwardIPN4llvm6AMDGPU8IncomingES3_ET0_T_S5_S4_.exit.i.i.i.i.i.i
  %.021.i.add.i.i.i.i.i = add nuw nsw i64 %.021.i.idx.i.i.i.i.i, 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.021.i.add.i.i.i.i.i, 384
  br i1 %.not.i.i.i.i.i.i, label %"_ZSt16__insertion_sortIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_SA_T0_.exit.i.i.i.i.i", label %bb.n, !llvm.loop !257

"_ZSt16__insertion_sortIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_SA_T0_.exit.i.i.i.i.i": ; preds = %bb.s
  %i.gz = getelementptr inbounds nuw i8, ptr %.val, i64 384
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZSt25__unguarded_linear_insertIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_T0_.exit.i14.i.i.i.i.i", %"_ZSt16__insertion_sortIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_SA_T0_.exit.i.i.i.i.i"
  %.08.i.i.i.i.i.i = phi ptr [ %i.ip, %"_ZSt25__unguarded_linear_insertIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_T0_.exit.i14.i.i.i.i.i" ], [ %i.gz, %"_ZSt16__insertion_sortIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_SA_T0_.exit.i.i.i.i.i" ] ; 7 uses
  %i.ha = load i64, ptr %.08.i.i.i.i.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !208 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i11.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 16
  %i.hb = load i64, ptr %.sroa.5.0..sroa_idx.i.i11.i.i.i.i.i, align 8
  %i.hc = getelementptr i8, ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i, i64 220 ; 2 uses
  %.val.val13.i.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !31 ; 2 uses
  %i.hd = getelementptr i8, ptr %.val.val13.i.i.i.i.i.i.i, i64 24
  %.val.val.val14.i.i.i.i.i.i.i = load ptr, ptr %i.hd, align 8, !tbaa !161 ; 2 uses
  %i.he = getelementptr i8, ptr %.val.val13.i.i.i.i.i.i.i, i64 32
  %.val.val.val1015.i.i.i.i.i.i.i = load i32, ptr %i.he, align 8, !tbaa !162 ; 2 uses
  %.sroa.1.0..sroa_idx.i16.i.i12.i.i.i.i.i = getelementptr inbounds i8, ptr %.08.i.i.i.i.i.i, i64 -16
  %.sroa.1.0.copyload.i17.i.i13.i.i.i.i.i = load ptr, ptr %.sroa.1.0..sroa_idx.i16.i.i12.i.i.i.i.i, align 8, !tbaa !208
  %.val3.val.i18.i.i.i.i.i.i.i = load i32, ptr %i.hc, align 4, !tbaa !209
  %i.hf = add i32 %.val3.val.i18.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hg = icmp ugt i32 %.val.val.val1015.i.i.i.i.i.i.i, %i.hf
  call void @llvm.assume(i1 %i.hg)
  %i.hh = zext i32 %i.hf to i64
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val14.i.i.i.i.i.i.i, i64 %i.hh
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !247
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 48
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !249
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.1.0.copyload.i17.i.i13.i.i.i.i.i, i64 220
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !209
  %i.ho = add i32 %i.hn, 1                        ; 2 uses
  %i.hp = icmp ugt i32 %.val.val.val1015.i.i.i.i.i.i.i, %i.ho
  call void @llvm.assume(i1 %i.hp)
  %i.hq = zext i32 %i.ho to i64
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val14.i.i.i.i.i.i.i, i64 %i.hq
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !247
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 48
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !249
  %i.hv = icmp ult i32 %i.hl, %i.hu
  br i1 %i.hv, label %.lr.ph.i.i20.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_T0_.exit.i14.i.i.i.i.i"

.lr.ph.i.i20.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i20.i.i.i.i.i
  %.0919.i.i21.i.i.i.i.i = phi ptr [ %.0.i.i22.i.i.i.i.i, %.lr.ph.i.i20.i.i.i.i.i ], [ %.08.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %.0.i.i22.i.i.i.i.i = getelementptr inbounds i8, ptr %.0919.i.i21.i.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.0919.i.i21.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i22.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !252
  %.val.val.i.i23.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !31 ; 2 uses
  %i.hw = getelementptr i8, ptr %.val.val.i.i23.i.i.i.i.i, i64 24
  %.val.val.val.i.i24.i.i.i.i.i = load ptr, ptr %i.hw, align 8, !tbaa !161 ; 2 uses
  %i.hx = getelementptr i8, ptr %.val.val.i.i23.i.i.i.i.i, i64 32
  %.val.val.val10.i.i25.i.i.i.i.i = load i32, ptr %i.hx, align 8, !tbaa !162 ; 2 uses
  %.sroa.1.0..sroa_idx.i.i.i26.i.i.i.i.i = getelementptr inbounds i8, ptr %.0919.i.i21.i.i.i.i.i, i64 -40
  %.sroa.1.0.copyload.i.i.i27.i.i.i.i.i = load ptr, ptr %.sroa.1.0..sroa_idx.i.i.i26.i.i.i.i.i, align 8, !tbaa !208
  %.val3.val.i.i.i28.i.i.i.i.i = load i32, ptr %i.hc, align 4, !tbaa !209
  %i.hy = add i32 %.val3.val.i.i.i28.i.i.i.i.i, 1 ; 2 uses
  %i.hz = icmp ugt i32 %.val.val.val10.i.i25.i.i.i.i.i, %i.hy
  call void @llvm.assume(i1 %i.hz)
  %i.ia = zext i32 %i.hy to i64
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i.i24.i.i.i.i.i, i64 %i.ia
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !247
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !249
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.1.0.copyload.i.i.i27.i.i.i.i.i, i64 220
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !209
  %i.ih = add i32 %i.ig, 1                        ; 2 uses
  %i.ii = icmp ugt i32 %.val.val.val10.i.i25.i.i.i.i.i, %i.ih
  call void @llvm.assume(i1 %i.ii)
  %i.ij = zext i32 %i.ih to i64
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i.i24.i.i.i.i.i, i64 %i.ij
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !247
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 48
  %i.in = load i32, ptr %i.im, align 8, !tbaa !249
  %i.io = icmp ult i32 %i.ie, %i.in
  br i1 %i.io, label %.lr.ph.i.i20.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_T0_.exit.i14.i.i.i.i.i", !llvm.loop !255

"_ZSt25__unguarded_linear_insertIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_T0_.exit.i14.i.i.i.i.i": ; preds = %.lr.ph.i.i20.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.09.lcssa.i.i15.i.i.i.i.i = phi ptr [ %.08.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i22.i.i.i.i.i, %.lr.ph.i.i20.i.i.i.i.i ] ; 3 uses
  store i64 %i.ha, ptr %.09.lcssa.i.i15.i.i.i.i.i, align 8
  %.sroa.4.0..09.sroa_idx.i.i17.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i15.i.i.i.i.i, i64 8
  store ptr %.sroa.4.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.4.0..09.sroa_idx.i.i17.i.i.i.i.i, align 8, !tbaa !208
  %.sroa.5.0..09.sroa_idx.i.i18.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i15.i.i.i.i.i, i64 16
  %.sroa.5.0.extract.trunc.i.i20.i.i.i.i.i = trunc i64 %i.hb to i32
  store i32 %.sroa.5.0.extract.trunc.i.i20.i.i.i.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i18.i.i.i.i.i, align 8, !tbaa !253
  %i.ip = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i19.i.i.i.i.i = icmp eq ptr %i.ip, %i.es
  br i1 %.not.i19.i.i.i.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorINS_6AMDGPU8IncomingELj4EEEZNS2_17PhiLoweringHelper9lowerPhisEvE3$_0EEvOT_T0_.exit", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !258

.preheader.i.i.i.i.i.i:                           ; preds = %bb.l
  %.not19.i.i.i.i.i.i = icmp eq i32 %.val130, 1
  br i1 %.not19.i.i.i.i.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorINS_6AMDGPU8IncomingELj4EEEZNS2_17PhiLoweringHelper9lowerPhisEvE3$_0EEvOT_T0_.exit", label %.lr.ph.i30.i.i.i.i.i

.lr.ph.i30.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i
  %.018.i29.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %.sroa.1.0..sroa_idx.i.i31.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  br label %bb.t

bb.t:                                             ; preds = %bb.z, %.lr.ph.i30.i.i.i.i.i
  %.021.i32.i.i.i.i.i = phi ptr [ %.018.i29.i.i.i.i.i, %.lr.ph.i30.i.i.i.i.i ], [ %.0.i49.i.i.i.i.i, %bb.z ] ; 7 uses
  %.pn20.i33.i.i.i.i.i = phi ptr [ %.val, %.lr.ph.i30.i.i.i.i.i ], [ %.021.i32.i.i.i.i.i, %bb.z ] ; 5 uses
  %.val.val.i34.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !31 ; 2 uses
  %i.iq = getelementptr i8, ptr %.val.val.i34.i.i.i.i.i, i64 24
  %.val.val.val.i35.i.i.i.i.i = load ptr, ptr %i.iq, align 8, !tbaa !161 ; 3 uses
  %i.ir = getelementptr i8, ptr %.val.val.i34.i.i.i.i.i, i64 32
  %.val.val.val17.i36.i.i.i.i.i = load i32, ptr %i.ir, align 8, !tbaa !162 ; 3 uses
  %.sroa.12.0..sroa_idx.i.i37.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i33.i.i.i.i.i, i64 32
  %.sroa.12.0.copyload.i.i38.i.i.i.i.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i37.i.i.i.i.i, align 8, !tbaa !208 ; 2 uses
  %.sroa.1.0.copyload.i.i39.i.i.i.i.i = load ptr, ptr %.sroa.1.0..sroa_idx.i.i31.i.i.i.i.i, align 8, !tbaa !208
  %i.is = getelementptr i8, ptr %.sroa.12.0.copyload.i.i38.i.i.i.i.i, i64 220 ; 2 uses
  %.val3.val.i.i40.i.i.i.i.i = load i32, ptr %i.is, align 4, !tbaa !209
  %i.it = add i32 %.val3.val.i.i40.i.i.i.i.i, 1   ; 2 uses
  %i.iu = icmp ugt i32 %.val.val.val17.i36.i.i.i.i.i, %i.it
  call void @llvm.assume(i1 %i.iu)
  %i.iv = zext i32 %i.it to i64
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i35.i.i.i.i.i, i64 %i.iv
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !247
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !249 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.1.0.copyload.i.i39.i.i.i.i.i, i64 220
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !209
  %i.jc = add i32 %i.jb, 1                        ; 2 uses
  %i.jd = icmp ugt i32 %.val.val.val17.i36.i.i.i.i.i, %i.jc
  call void @llvm.assume(i1 %i.jd)
  %i.je = zext i32 %i.jc to i64
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i35.i.i.i.i.i, i64 %i.je
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !247
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 48
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !249
  %i.jj = icmp ult i32 %i.iz, %i.ji
  br i1 %i.jj, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %.021.i32.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !252
  %i.jk = ptrtoint ptr %.021.i32.i.i.i.i.i to i64
  %i.jl = sub i64 %i.jk, %i.et                    ; 4 uses
  %i.jm = icmp sgt i64 %i.jl, 24
  br i1 %i.jm, label %bb.v, label %bb.w, !prof !254

bb.v:                                             ; preds = %bb.u
  %i.jn = getelementptr inbounds nuw i8, ptr %.pn20.i33.i.i.i.i.i, i64 48
  %.neg27.i61.i.i.i.i.i = udiv exact i64 %i.jl, 24
  %.neg27.neg.i62.i.i.i.i.i = sub nsw i64 0, %.neg27.i61.i.i.i.i.i
  %i.jo = getelementptr inbounds [24 x i8], ptr %i.jn, i64 %.neg27.neg.i62.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jo, ptr noundef nonnull align 8 dereferenceable(1) %.val, i64 %i.jl, i1 false)
  br label %_ZSt13move_backwardIPN4llvm6AMDGPU8IncomingES3_ET0_T_S5_S4_.exit.i60.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.jp = icmp eq i64 %i.jl, 24
  br i1 %i.jp, label %bb.x, label %_ZSt13move_backwardIPN4llvm6AMDGPU8IncomingES3_ET0_T_S5_S4_.exit.i60.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.jq = getelementptr inbounds nuw i8, ptr %.pn20.i33.i.i.i.i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.jq, ptr noundef nonnull align 8 dereferenceable(20) %.val, i64 20, i1 false), !tbaa.struct !252
  br label %_ZSt13move_backwardIPN4llvm6AMDGPU8IncomingES3_ET0_T_S5_S4_.exit.i60.i.i.i.i.i

_ZSt13move_backwardIPN4llvm6AMDGPU8IncomingES3_ET0_T_S5_S4_.exit.i60.i.i.i.i.i: ; preds = %bb.x, %bb.w, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.val, ptr noundef nonnull align 8 dereferenceable(20) %8, i64 20, i1 false), !tbaa.struct !252
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.z

bb.y:                                             ; preds = %bb.t
  %i.jr = load i64, ptr %.021.i32.i.i.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i41.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i33.i.i.i.i.i, i64 40
  %i.js = load i64, ptr %.sroa.5.0..sroa_idx.i.i41.i.i.i.i.i, align 8
  %.sroa.1.0..sroa_idx.i16.i.i42.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i33.i.i.i.i.i, i64 8
  %.sroa.1.0.copyload.i17.i.i43.i.i.i.i.i = load ptr, ptr %.sroa.1.0..sroa_idx.i16.i.i42.i.i.i.i.i, align 8, !tbaa !208
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.1.0.copyload.i17.i.i43.i.i.i.i.i, i64 220
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !209
  %i.jv = add i32 %i.ju, 1                        ; 2 uses
  %i.jw = icmp ugt i32 %.val.val.val17.i36.i.i.i.i.i, %i.jv
  call void @llvm.assume(i1 %i.jw)
  %i.jx = zext i32 %i.jv to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i35.i.i.i.i.i, i64 %i.jx
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !247
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 48
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !249
  %i.kc = icmp ult i32 %i.iz, %i.kb
  br i1 %i.kc, label %.lr.ph.i.i51.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_T0_.exit.i44.i.i.i.i.i"

.lr.ph.i.i51.i.i.i.i.i:                           ; preds = %bb.y, %.lr.ph.i.i51.i.i.i.i.i
  %.0919.i.i52.i.i.i.i.i = phi ptr [ %.0.i.i53.i.i.i.i.i, %.lr.ph.i.i51.i.i.i.i.i ], [ %.021.i32.i.i.i.i.i, %bb.y ] ; 3 uses
  %.0.i.i53.i.i.i.i.i = getelementptr inbounds i8, ptr %.0919.i.i52.i.i.i.i.i, i64 -24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.0919.i.i52.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.0.i.i53.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !252
  %.val.val.i.i54.i.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !31 ; 2 uses
  %i.kd = getelementptr i8, ptr %.val.val.i.i54.i.i.i.i.i, i64 24
  %.val.val.val.i.i55.i.i.i.i.i = load ptr, ptr %i.kd, align 8, !tbaa !161 ; 2 uses
  %i.ke = getelementptr i8, ptr %.val.val.i.i54.i.i.i.i.i, i64 32
  %.val.val.val10.i.i56.i.i.i.i.i = load i32, ptr %i.ke, align 8, !tbaa !162 ; 2 uses
  %.sroa.1.0..sroa_idx.i.i.i57.i.i.i.i.i = getelementptr inbounds i8, ptr %.0919.i.i52.i.i.i.i.i, i64 -40
  %.sroa.1.0.copyload.i.i.i58.i.i.i.i.i = load ptr, ptr %.sroa.1.0..sroa_idx.i.i.i57.i.i.i.i.i, align 8, !tbaa !208
  %.val3.val.i.i.i59.i.i.i.i.i = load i32, ptr %i.is, align 4, !tbaa !209
  %i.kf = add i32 %.val3.val.i.i.i59.i.i.i.i.i, 1 ; 2 uses
  %i.kg = icmp ugt i32 %.val.val.val10.i.i56.i.i.i.i.i, %i.kf
  call void @llvm.assume(i1 %i.kg)
  %i.kh = zext i32 %i.kf to i64
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i.i55.i.i.i.i.i, i64 %i.kh
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !247
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 48
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !249
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.1.0.copyload.i.i.i58.i.i.i.i.i, i64 220
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !209
  %i.ko = add i32 %i.kn, 1                        ; 2 uses
  %i.kp = icmp ugt i32 %.val.val.val10.i.i56.i.i.i.i.i, %i.ko
  call void @llvm.assume(i1 %i.kp)
  %i.kq = zext i32 %i.ko to i64
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i.i55.i.i.i.i.i, i64 %i.kq
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !247
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 48
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !249
  %i.kv = icmp ult i32 %i.kl, %i.ku
  br i1 %i.kv, label %.lr.ph.i.i51.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_T0_.exit.i44.i.i.i.i.i", !llvm.loop !255

"_ZSt25__unguarded_linear_insertIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_T0_.exit.i44.i.i.i.i.i": ; preds = %.lr.ph.i.i51.i.i.i.i.i, %bb.y
  %.09.lcssa.i.i45.i.i.i.i.i = phi ptr [ %.021.i32.i.i.i.i.i, %bb.y ], [ %.0.i.i53.i.i.i.i.i, %.lr.ph.i.i51.i.i.i.i.i ] ; 3 uses
  store i64 %i.jr, ptr %.09.lcssa.i.i45.i.i.i.i.i, align 8
  %.sroa.4.0..09.sroa_idx.i.i47.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i45.i.i.i.i.i, i64 8
  store ptr %.sroa.12.0.copyload.i.i38.i.i.i.i.i, ptr %.sroa.4.0..09.sroa_idx.i.i47.i.i.i.i.i, align 8, !tbaa !208
  %.sroa.5.0..09.sroa_idx.i.i48.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i45.i.i.i.i.i, i64 16
  %.sroa.5.0.extract.trunc.i.i52.i.i.i.i.i = trunc i64 %i.js to i32
  store i32 %.sroa.5.0.extract.trunc.i.i52.i.i.i.i.i, ptr %.sroa.5.0..09.sroa_idx.i.i48.i.i.i.i.i, align 8, !tbaa !253
  br label %bb.z

bb.z:                                             ; preds = %"_ZSt25__unguarded_linear_insertIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_T0_.exit.i44.i.i.i.i.i", %_ZSt13move_backwardIPN4llvm6AMDGPU8IncomingES3_ET0_T_S5_S4_.exit.i60.i.i.i.i.i
  %.0.i49.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.021.i32.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i50.i.i.i.i.i = icmp eq ptr %.0.i49.i.i.i.i.i, %i.es
  br i1 %.not.i50.i.i.i.i.i, label %"_ZN4llvm4sortIRNS_11SmallVectorINS_6AMDGPU8IncomingELj4EEEZNS2_17PhiLoweringHelper9lowerPhisEvE3$_0EEvOT_T0_.exit", label %bb.t, !llvm.loop !257

"_ZN4llvm4sortIRNS_11SmallVectorINS_6AMDGPU8IncomingELj4EEEZNS2_17PhiLoweringHelper9lowerPhisEvE3$_0EEvOT_T0_.exit": ; preds = %bb.z, %"_ZSt25__unguarded_linear_insertIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_T0_.exit.i14.i.i.i.i.i", %_ZN4llvm6AMDGPU17PhiLoweringHelper36initializeLaneMaskRegisterAttributesENS_8RegisterE.exit, %.preheader.i.i.i.i.i.i
  %i.kw = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #20 ; 5 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8 ; 6 uses
  store ptr %i.cf, ptr %i.kw, align 8, !tbaa !208
  %i.ky = load ptr, ptr %i.bh, align 8, !tbaa !158 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 48
  %i.la = load ptr, ptr %i.kz, align 8
  %i.lb = getelementptr inbounds nuw [16 x i8], ptr %i.la, i64 %i.ed
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ky, i64 312
  %i.le = zext nneg i32 %i.dw to i64
  %i.lf = load ptr, ptr %i.ld, align 8
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.le
  %.0.in.i.i.i = select i1 %i.eg, ptr %i.lc, ptr %i.lg
  %.0.i.i.i = load ptr, ptr %.0.in.i.i.i, align 8, !tbaa !259 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge, label %bb.aa

bb.aa:                                            ; preds = %"_ZN4llvm4sortIRNS_11SmallVectorINS_6AMDGPU8IncomingELj4EEEZNS2_17PhiLoweringHelper9lowerPhisEvE3$_0EEvOT_T0_.exit"
  %i.lh = load i32, ptr %.0.i.i.i, align 8
  %i.li = and i32 %i.lh, 16777216
  %.not4.i.i.i = icmp eq i32 %i.li, 0
  br i1 %.not4.i.i.i, label %.lr.ph.preheader, label %.preheader.i.i.i

.lr.ph.preheader:                                 ; preds = %bb.ab, %bb.aa
  %.sroa.0313.0393.ph = phi ptr [ %.0.i.i.i, %bb.aa ], [ %storemerge.i.i.i.i, %bb.ab ]
  br label %.lr.ph

.preheader.i.i.i:                                 ; preds = %bb.aa, %bb.ab
  %.pn.i.i.i.i = phi ptr [ %storemerge.i.i.i.i, %bb.ab ], [ %.0.i.i.i, %bb.aa ]
  %storemerge.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 24
  %storemerge.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i, align 8, !tbaa !207 ; 4 uses
  %.not.i.i.i.i136 = icmp eq ptr %storemerge.i.i.i.i, null
  br i1 %.not.i.i.i.i136, label %._crit_edge, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i.i.i
  %i.lj = load i32, ptr %storemerge.i.i.i.i, align 8
  %i.lk = and i32 %i.lj, 16777216
  %.not1.i.i.i.i = icmp eq i32 %i.lk, 0
  br i1 %.not1.i.i.i.i, label %.lr.ph.preheader, label %.preheader.i.i.i, !llvm.loop !260

._crit_edge:                                      ; preds = %.preheader.i.i.i, %bb.an, %"_ZN4llvm4sortIRNS_11SmallVectorINS_6AMDGPU8IncomingELj4EEEZNS2_17PhiLoweringHelper9lowerPhisEvE3$_0EEvOT_T0_.exit"
  %.sroa.0319.0.lcssa = phi ptr [ %.sroa.0319.1, %bb.an ], [ %i.kw, %"_ZN4llvm4sortIRNS_11SmallVectorINS_6AMDGPU8IncomingELj4EEEZNS2_17PhiLoweringHelper9lowerPhisEvE3$_0EEvOT_T0_.exit" ], [ %i.kw, %.preheader.i.i.i ] ; 3 uses
  %.sroa.8.0.lcssa = phi ptr [ %.sroa.8.1, %bb.an ], [ %i.kx, %"_ZN4llvm4sortIRNS_11SmallVectorINS_6AMDGPU8IncomingELj4EEEZNS2_17PhiLoweringHelper9lowerPhisEvE3$_0EEvOT_T0_.exit" ], [ %i.kx, %.preheader.i.i.i ]
  %.sroa.13.0.lcssa = phi ptr [ %.sroa.13.1, %bb.an ], [ %i.kx, %"_ZN4llvm4sortIRNS_11SmallVectorINS_6AMDGPU8IncomingELj4EEEZNS2_17PhiLoweringHelper9lowerPhisEvE3$_0EEvOT_T0_.exit" ], [ %i.kx, %.preheader.i.i.i ]
  %i.ll = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.lm = ptrtoint ptr %.sroa.8.0.lcssa to i64
  %i.ln = ptrtoint ptr %.sroa.0319.0.lcssa to i64 ; 2 uses
  %i.lo = sub i64 %i.lm, %i.ln
  %i.lp = ashr exact i64 %i.lo, 3
  %i.lq = call noundef ptr @_ZNK4llvm24MachinePostDominatorTree26findNearestCommonDominatorENS_8ArrayRefIPNS_17MachineBasicBlockEEE(ptr noundef nonnull align 8 dereferenceable(228) %i.ll, ptr %.sroa.0319.0.lcssa, i64 %i.lp) #19
  %i.lr = load ptr, ptr %i.h, align 8, !tbaa !261, !nonnull !150, !align !151 ; 2 uses
  %i.ls = load ptr, ptr %i.r, align 8, !tbaa !175 ; 2 uses
  %.not.i.i.i138 = icmp eq ptr %i.ls, null
  br i1 %.not.i.i.i138, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i: ; preds = %._crit_edge
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 220
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !209
  %i.lv = add i32 %i.lu, 1
  br label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i: ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i, %._crit_edge
  %.sroa.0.0.extract.trunc10.i.i = phi i32 [ %i.lv, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.i.i ], [ 0, %._crit_edge ] ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lr, i64 56
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !162
  %i.ly = icmp ugt i32 %i.lx, %.sroa.0.0.extract.trunc10.i.i
  br i1 %i.ly, label %bb.ac, label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit.i

bb.ac:                                            ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i
  %i.lz = zext i32 %.sroa.0.0.extract.trunc10.i.i to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lr, i64 48
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !161
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %i.lz
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !247
  br label %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit.i

_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit.i: ; preds = %bb.ac, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i
  %i.me = phi ptr [ %i.md, %bb.ac ], [ null, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE12getNodeIndexEPKS1_.exit.thread.i.i ]
  %i.mf = load ptr, ptr %i.p, align 8, !tbaa !164
  %.not.i139 = icmp eq ptr %i.mf, null
  br i1 %.not.i139, label %bb.ad, label %.preheader

bb.ad:                                            ; preds = %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit.i
  call fastcc void @_ZN12_GLOBAL__N_110LoopFinder12advanceLevelEv(ptr noundef nonnull align 8 dereferenceable(208) %10)
  br label %.preheader

.preheader:                                       ; preds = %bb.ad, %_ZNK4llvm17DominatorTreeBaseINS_17MachineBasicBlockELb1EE7getNodeEPKS1_.exit.i
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader, %bb.ah
  %.08.i = phi ptr [ %i.mk, %bb.ah ], [ %i.me, %.preheader ] ; 2 uses
  %.0.i = phi i32 [ %i.ml, %bb.ah ], [ 0, %.preheader ]
  %i.mg = load ptr, ptr %.08.i, align 8, !tbaa !262 ; 2 uses
  %.not11.i = icmp eq ptr %i.mg, %i.lq
  br i1 %.not11.i, label %_ZN12_GLOBAL__N_110LoopFinder8findLoopEPN4llvm17MachineBasicBlockE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.mh = load ptr, ptr %i.p, align 8, !tbaa !164
  %i.mi = icmp eq ptr %i.mg, %i.mh
  br i1 %i.mi, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call fastcc void @_ZN12_GLOBAL__N_110LoopFinder12advanceLevelEv(ptr noundef nonnull align 8 dereferenceable(208) %10)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.mj = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !263
  %i.ml = add i32 %.0.i, 1                        ; 3 uses
  %i.mm = load i32, ptr %i.q, align 16, !tbaa !174
  %i.mn = icmp eq i32 %i.mm, %i.ml
  br i1 %i.mn, label %_ZN12_GLOBAL__N_110LoopFinder8findLoopEPN4llvm17MachineBasicBlockE.exit, label %bb.ae, !llvm.loop !264

_ZN12_GLOBAL__N_110LoopFinder8findLoopEPN4llvm17MachineBasicBlockE.exit: ; preds = %bb.ae, %bb.ah
  %.09.i = phi i32 [ %i.ml, %bb.ah ], [ 0, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.mo = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.mp = load ptr, ptr %i.bj, align 8, !tbaa !30 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 32
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !157 ; 4 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 48
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !161
  %i.mu = getelementptr inbounds nuw [16 x i8], ptr %i.mt, i64 %i.ed
  %.sroa.04.0.copyload.i.i140 = load i64, ptr %i.mu, align 8
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mr, i64 472
  %i.mw = load i32, ptr %i.mv, align 8
  %i.mx = icmp ugt i32 %i.mw, %i.ec
  %or.cond.i.i141 = select i1 %i.eg, i1 %i.mx, i1 false
  br i1 %or.cond.i.i141, label %bb.ai, label %_ZN4llvm20MachineIDFSSAUpdater11addUseBlockEPNS_17MachineBasicBlockE.exit

bb.ai:                                            ; preds = %_ZN12_GLOBAL__N_110LoopFinder8findLoopEPN4llvm17MachineBasicBlockE.exit
  %i.my = getelementptr inbounds nuw i8, ptr %i.mr, i64 464
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !161
  %i.na = getelementptr inbounds nuw [8 x i8], ptr %i.mz, i64 %i.ed
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !207
  br label %_ZN4llvm20MachineIDFSSAUpdater11addUseBlockEPNS_17MachineBasicBlockE.exit

_ZN4llvm20MachineIDFSSAUpdater11addUseBlockEPNS_17MachineBasicBlockE.exit: ; preds = %_ZN12_GLOBAL__N_110LoopFinder8findLoopEPN4llvm17MachineBasicBlockE.exit, %bb.ai
  %.sroa.04.0.i.i.i142 = phi i64 [ %i.nb, %bb.ai ], [ 0, %_ZN12_GLOBAL__N_110LoopFinder8findLoopEPN4llvm17MachineBasicBlockE.exit ]
  store ptr %i.mo, ptr %14, align 8, !tbaa !265
  store ptr %i.mr, ptr %i.bk, align 8, !tbaa !266
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !33, !nonnull !150, !align !151 ; 2 uses
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 128
  %i.ng = load ptr, ptr %i.nf, align 8
  %i.nh = call noundef ptr %i.ng(ptr noundef nonnull align 8 dereferenceable(344) %i.nd) #19, !inline_history !267
  store ptr %i.nh, ptr %i.bl, align 8, !tbaa !268
  store i64 %.sroa.04.0.copyload.i.i140, ptr %i.bm, align 8
  store i64 %.sroa.04.0.i.i.i142, ptr %.sroa.4.0..sroa_idx.i143, align 8
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !161
  store i32 0, ptr %i.bp, align 8, !tbaa !162
  store i32 4, ptr %i.bq, align 4, !tbaa !163
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !161
  store i32 4, ptr %i.bu, align 4, !tbaa !163
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false)
  store ptr %i.cf, ptr %i.bs, align 8
  store i32 1, ptr %i.bt, align 8, !tbaa !162
  %.not124 = icmp eq i32 %.09.i, 0
  br i1 %.not124, label %bb.bb, label %bb.ap

.lr.ph:                                           ; preds = %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i, %.lr.ph.preheader
  %.sroa.0313.0393 = phi ptr [ %.sroa.0313.0393.ph, %.lr.ph.preheader ], [ %storemerge.i.i, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i ] ; 2 uses
  %.sroa.13.0392 = phi ptr [ %i.kx, %.lr.ph.preheader ], [ %.sroa.13.1, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i ] ; 3 uses
  %.sroa.8.0391 = phi ptr [ %i.kx, %.lr.ph.preheader ], [ %.sroa.8.1, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i ] ; 3 uses
  %.sroa.0319.0390 = phi ptr [ %i.kw, %.lr.ph.preheader ], [ %.sroa.0319.1, %_ZN4llvm19MachineRegisterInfo26defusechain_instr_iteratorILb1ELb0ELb0ELb1EE7advanceEv.exit.i ] ; 4 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.0313.0393, i64 8 ; 2 uses
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !270 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 24
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !186 ; 2 uses
  %.not.i.i144 = icmp eq ptr %.sroa.8.0391, %.sroa.13.0392
  br i1 %.not.i.i144, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph
  store ptr %i.nl, ptr %.sroa.8.0391, align 8, !tbaa !208
  br label %_ZNSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE9push_backEOS2_.exit

bb.ak:                                            ; preds = %.lr.ph
  %i.nm = ptrtoint ptr %.sroa.13.0392 to i64
  %i.nn = ptrtoint ptr %.sroa.0319.0390 to i64
  %i.no = sub i64 %i.nm, %i.nn                    ; 6 uses
  %i.np = icmp eq i64 %i.no, 9223372036854775800
  br i1 %i.np, label %bb.al, label %_ZNKSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.al:                                            ; preds = %bb.ak
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #21
  unreachable

_ZNKSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ak
  %i.nq = ashr exact i64 %i.no, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.nq, i64 1)
  %i.nr = add nsw i64 %.sroa.speculated.i.i.i.i, %i.nq ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZSt16__introsort_loopIPN4llvm6AMDGPU8IncomingElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_SA_T0_T1_":bb.a
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = zext i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.val15.val.val.i.i, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !247
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !249 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %"_ZSt22__move_median_to_firstIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_SA_SA_SA_T0_.exit.i"
  %.1.i.i = phi ptr [ %.0.i.i, %"_ZSt22__move_median_to_firstIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_SA_SA_SA_T0_.exit.i" ], [ %i.by, %bb.n ] ; 9 uses
  %.sroa.12.0..sroa_idx.i.i14.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  %.sroa.12.0.copyload.i.i15.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i14.i, align 8, !tbaa !208
  %i.bp = getelementptr i8, ptr %.sroa.12.0.copyload.i.i15.i, i64 220
  %.val3.val.i.i16.i = load i32, ptr %i.bp, align 4, !tbaa !209
  %i.bq = add i32 %.val3.val.i.i16.i, 1           ; 2 uses
  %i.br = icmp ugt i32 %.val15.val.val17.i.i, %i.bq
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = zext i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.val15.val.val.i.i, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !247
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !249
  %i.bx = icmp ult i32 %i.bw, %i.bo
  %i.by = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24 ; 2 uses
  br i1 %i.bx, label %bb.n, label %.preheader.i.i, !llvm.loop !647

.preheader.i.i:                                   ; preds = %bb.n, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.n ] ; 2 uses
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -24 ; 5 uses
  %.sroa.1.0..sroa_idx.i20.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -16
  %.sroa.1.0.copyload.i21.i.i = load ptr, ptr %.sroa.1.0..sroa_idx.i20.i.i, align 8, !tbaa !208
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.1.0.copyload.i21.i.i, i64 220
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !209
  %i.cb = add i32 %i.ca, 1                        ; 2 uses
  %i.cc = icmp ugt i32 %.val15.val.val17.i.i, %i.cb
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = zext i32 %i.cb to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.val15.val.val.i.i, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !247
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !249
  %i.ci = icmp ult i32 %i.bo, %i.ch
  br i1 %i.ci, label %.preheader.i.i, label %bb.o, !llvm.loop !648

bb.o:                                             ; preds = %.preheader.i.i
  %i.cj = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.cj, label %bb.p, label %"_ZSt27__unguarded_partition_pivotIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEET_SA_SA_T0_.exit"

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.1.i.i, i64 24, i1 false), !tbaa.struct !252
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.114.i.i, i64 20, i1 false), !tbaa.struct !252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.114.i.i, ptr noundef nonnull align 8 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !252
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %"_ZSt22__move_median_to_firstIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_SA_SA_SA_T0_.exit.i", !llvm.loop !649

"_ZSt27__unguarded_partition_pivotIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEET_SA_SA_T0_.exit": ; preds = %bb.o
  tail call fastcc void @"_ZSt16__introsort_loopIPN4llvm6AMDGPU8IncomingElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_SA_T0_T1_"(ptr noundef nonnull %.1.i.i, ptr noundef %.02343, i64 noundef %i.t, ptr nonnull %3)
  %i.ck = ptrtoint ptr %.1.i.i to i64
  %i.cl = sub i64 %i.ck, %i.a                     ; 3 uses
  %i.cm = icmp sgt i64 %i.cl, 384
  br i1 %i.cm, label %bb.b, label %"_ZSt14__partial_sortIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_SA_SA_T0_.exit", !llvm.loop !644

"_ZSt14__partial_sortIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_SA_SA_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIPN4llvm6AMDGPU8IncomingEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEET_SA_SA_T0_.exit", %.lr.ph.i5.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @"_ZSt13__adjust_heapIPN4llvm6AMDGPU8IncomingElS2_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_T0_SB_T1_T2_"(ptr nofree noundef captures(none) %0, i64 noundef range(i64 0, 192153584101141162) %1, i64 noundef range(i64 -384307168202282325, 384307168202282326) %2, ptr nofree noundef readonly byval(%"struct.llvm::AMDGPU::Incoming") align 8 captures(none) %3, ptr nofree readonly captures(none) %4) unnamed_addr #15 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %4, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.037 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.e = shl i64 %.037, 1                         ; 3 uses
  %i.f = add i64 %i.e, 2                          ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.e
  %.val.val = load ptr, ptr %i.d, align 8, !tbaa !31 ; 2 uses
  %i.i = getelementptr i8, ptr %.val.val, i64 24
  %.val.val.val = load ptr, ptr %i.i, align 8, !tbaa !161 ; 2 uses
  %i.j = getelementptr i8, ptr %.val.val, i64 32
  %.val.val.val28 = load i32, ptr %i.j, align 8, !tbaa !162 ; 2 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.12.0.copyload.i = load ptr, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !208
  %.sroa.1.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.1.0.copyload.i = load ptr, ptr %.sroa.1.0..sroa_idx.i, align 8, !tbaa !208
  %i.k = getelementptr i8, ptr %.sroa.12.0.copyload.i, i64 220
  %.val3.val.i = load i32, ptr %i.k, align 4, !tbaa !209
  %i.l = add i32 %.val3.val.i, 1                  ; 2 uses
  %i.m = icmp ugt i32 %.val.val.val28, %i.l
  tail call void @llvm.assume(i1 %i.m)
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !247
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load i32, ptr %i.q, align 8, !tbaa !249
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.1.0.copyload.i, i64 220
  %i.t = load i32, ptr %i.s, align 4, !tbaa !209
  %i.u = add i32 %i.t, 1                          ; 2 uses
  %i.v = icmp ugt i32 %.val.val.val28, %i.u
  tail call void @llvm.assume(i1 %i.v)
  %i.w = zext i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !247
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !249
  %i.ab = icmp ult i32 %i.r, %i.aa
  %i.ac = or disjoint i64 %i.e, 1
  %spec.select = select i1 %i.ab, i64 %i.ac, i64 %i.f ; 4 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %spec.select
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.037
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ae, ptr noundef nonnull align 8 dereferenceable(20) %i.ad, i64 20, i1 false), !tbaa.struct !252
  %i.af = icmp slt i64 %spec.select, %i.b
  br i1 %i.af, label %bb.b, label %._crit_edge, !llvm.loop !650

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.ag = and i64 %2, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.ai = add nsw i64 %2, -2
  %i.aj = ashr exact i64 %i.ai, 1
  %i.ak = icmp eq i64 %.0.lcssa, %i.aj
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = shl nuw nsw i64 %.0.lcssa, 1
  %i.am = or disjoint i64 %i.al, 1                ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.am
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0.lcssa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ao, ptr noundef nonnull align 8 dereferenceable(20) %i.an, i64 20, i1 false), !tbaa.struct !252
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.127 = phi i64 [ %i.am, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ap = load i64, ptr %3, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !208 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.aq = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %i.ar = icmp samesign ugt i64 %.127, %1
  br i1 %i.ar, label %.lr.ph.i, label %"_ZSt11__push_heapIPN4llvm6AMDGPU8IncomingElS2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_T0_SB_T1_RT2_.exit"

.lr.ph.i:                                         ; preds = %bb.e
  %i.as = getelementptr i8, ptr %4, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload, i64 220
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.0133.i = phi i64 [ %.127, %.lr.ph.i ], [ %.048.i, %bb.g ] ; 3 uses
  %.04.in.i = add nsw i64 %.0133.i, -1
  %.048.i = lshr i64 %.04.in.i, 1                 ; 4 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.048.i ; 2 uses
  %.val.val.i = load ptr, ptr %i.as, align 8, !tbaa !31 ; 2 uses
  %i.av = getelementptr i8, ptr %.val.val.i, i64 24
  %.val.val.val.i = load ptr, ptr %i.av, align 8, !tbaa !161 ; 2 uses
  %i.aw = getelementptr i8, ptr %.val.val.i, i64 32
  %.val.val.val14.i = load i32, ptr %i.aw, align 8, !tbaa !162 ; 2 uses
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.12.0.copyload.i.i = load ptr, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !tbaa !208
  %i.ax = getelementptr i8, ptr %.sroa.12.0.copyload.i.i, i64 220
  %.val3.val.i.i = load i32, ptr %i.ax, align 4, !tbaa !209
  %i.ay = add i32 %.val3.val.i.i, 1               ; 2 uses
  %i.az = icmp ugt i32 %.val.val.val14.i, %i.ay
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = zext i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !247
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !249
  %i.bf = load i32, ptr %i.at, align 4, !tbaa !209
  %i.bg = add i32 %i.bf, 1                        ; 2 uses
  %i.bh = icmp ugt i32 %.val.val.val14.i, %i.bg
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = zext i32 %i.bg to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.val.val.val.i, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !247
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !249
  %i.bn = icmp ult i32 %i.be, %i.bm
  br i1 %i.bn, label %bb.g, label %"_ZSt11__push_heapIPN4llvm6AMDGPU8IncomingElS2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_T0_SB_T1_RT2_.exit"

bb.g:                                             ; preds = %bb.f
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.0133.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bo, ptr noundef nonnull align 8 dereferenceable(20) %i.au, i64 20, i1 false), !tbaa.struct !252
  %i.bp = icmp samesign ugt i64 %.048.i, %1
  br i1 %i.bp, label %bb.f, label %"_ZSt11__push_heapIPN4llvm6AMDGPU8IncomingElS2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_T0_SB_T1_RT2_.exit", !llvm.loop !651

"_ZSt11__push_heapIPN4llvm6AMDGPU8IncomingElS2_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_17PhiLoweringHelper9lowerPhisEvE3$_0EEEvT_T0_SB_T1_RT2_.exit": ; preds = %bb.f, %bb.g, %bb.e
  %.013.lcssa.i = phi i64 [ %.127, %bb.e ], [ %.0133.i, %bb.f ], [ %.048.i, %bb.g ]
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.013.lcssa.i ; 3 uses
  store i64 %i.ap, ptr %i.bq, align 8
  %.sroa.4.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %.sroa.2.0.copyload, ptr %.sroa.4.0..sroa_idx33, align 8, !tbaa !208
  %.sroa.5.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.5.0.extract.trunc = trunc i64 %i.aq to i32
  store i32 %.sroa.5.0.extract.trunc, ptr %.sroa.5.0..sroa_idx35, align 8, !tbaa !253
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4llvm15AnalysisManagerINS_15MachineFunctionEJEE13getResultImplEPNS_11AnalysisKeyERS1_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #1

declare noundef ptr @_ZNK4llvm19SmallPtrSetImplBase6doFindEPKv(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef) local_unnamed_addr #1

declare void @__once_proxy() #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv() #6 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !160  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !652, !nonnull !150
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !654, !nonnull !150, !align !151
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !655
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(160) %i.f) #19, !inline_history !658
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind allocsize(0) }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !12, i64 8}
!11 = !{!"_ZTSN4llvm6AMDGPU17PhiLoweringHelperE", !12, i64 8, !13, i64 16, !15, i64 24, !16, i64 32, !17, i64 40, !18, i64 48, !19, i64 56, !20, i64 64, !29, i64 80}
!12 = !{!"bool", !6, i64 0}
!13 = !{!"p1 _ZTSN4llvm15MachineFunctionE", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 _ZTSN4llvm20MachineDominatorTreeE", !14, i64 0}
!16 = !{!"p1 _ZTSN4llvm24MachinePostDominatorTreeE", !14, i64 0}
!17 = !{!"p1 _ZTSN4llvm19MachineRegisterInfoE", !14, i64 0}
!18 = !{!"p1 _ZTSN4llvm12GCNSubtargetE", !14, i64 0}
!19 = !{!"p1 _ZTSN4llvm11SIInstrInfoE", !14, i64 0}
!20 = !{!"_ZTSN4llvm19MachineRegisterInfo9VRegAttrsE", !21, i64 0, !26, i64 8}
!21 = !{!"_ZTSN4llvm12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEE", !22, i64 0}
!22 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEELi0EJS5_S8_EEE", !23, i64 0}
!23 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEELi1EJS8_EEE", !24, i64 0}
!24 = !{!"_ZTSN4llvm20pointer_union_detail19PointerUnionMembersINS_12PointerUnionIJPKNS_15MCRegisterClassEPKNS_12RegisterBankEEEELi2EJEEE", !25, i64 0}
!25 = !{!"_ZTSN4llvm6detail13PunnedPointerIPvEE", !6, i64 0}
!26 = !{!"_ZTSN4llvm3LLTE", !27, i64 0, !28, i64 7}
!27 = !{!"long", !6, i64 0}
!28 = !{!"_ZTSN4llvm3LLT4KindE", !6, i64 0}
!29 = !{!"p1 _ZTSN4llvm6AMDGPU17LaneMaskConstantsE", !14, i64 0}
!30 = !{!11, !13, i64 16}
!31 = !{!11, !15, i64 24}
!32 = !{!11, !16, i64 32}
!33 = !{!34, !37, i64 16}
!34 = !{!"_ZTSN4llvm15MachineFunctionE", !35, i64 0, !36, i64 8, !37, i64 16, !38, i64 24, !17, i64 32, !39, i64 40, !40, i64 48, !41, i64 56, !42, i64 64, !43, i64 72, !44, i64 80, !45, i64 88, !5, i64 112, !5, i64 116, !51, i64 120, !63, i64 200, !65, i64 208, !71, i64 288, !73, i64 296, !5, i64 312, !81, i64 316, !12, i64 317, !12, i64 318, !12, i64 319, !82, i64 320, !85, i64 328, !92, i64 336, !97, i64 360, !97, i64 384, !102, i64 408, !107, i64 432, !110, i64 456, !112, i64 480, !114, i64 504, !12, i64 528, !12, i64 529, !12, i64 530, !12, i64 531, !12, i64 532, !12, i64 533, !12, i64 534, !5, i64 536, !119, i64 540, !120, i64 544, !122, i64 568, !127, i64 592, !127, i64 616, !131, i64 640, !132, i64 648, !133, i64 656, !134, i64 664, !136, i64 688, !138, i64 712, !5, i64 856, !143, i64 864, !148, i64 1040, !12, i64 1064}
!35 = !{!"p1 _ZTSN4llvm8FunctionE", !14, i64 0}
!36 = !{!"p1 _ZTSN4llvm13TargetMachineE", !14, i64 0}
!37 = !{!"p1 _ZTSN4llvm19TargetSubtargetInfoE", !14, i64 0}
!38 = !{!"p1 _ZTSN4llvm9MCContextE", !14, i64 0}
!39 = !{!"p1 _ZTSN4llvm19MachineFunctionInfoE", !14, i64 0}
!40 = !{!"p1 _ZTSN4llvm16MachineFrameInfoE", !14, i64 0}
!41 = !{!"p1 _ZTSN4llvm19MachineConstantPoolE", !14, i64 0}
!42 = !{!"p1 _ZTSN4llvm20MachineJumpTableInfoE", !14, i64 0}
!43 = !{!"p1 _ZTSN4llvm9MCSectionE", !14, i64 0}
!44 = !{!"p1 _ZTSN4llvm13WinEHFuncInfoE", !14, i64 0}
!45 = !{!"_ZTSSt6vectorIPN4llvm17MachineBasicBlockESaIS2_EE", !46, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE", !47, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE12_Vector_implE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIPN4llvm17MachineBasicBlockESaIS2_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!49 = !{!"p2 _ZTSN4llvm17MachineBasicBlockE", !50, i64 0}
!50 = !{!"any p2 pointer", !14, i64 0}
!51 = !{!"_ZTSN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EEE", !52, i64 0, !27, i64 8, !53, i64 16, !59, i64 64}
!52 = !{!"p1 omnipotent char", !14, i64 0}
!53 = !{!"_ZTSN4llvm11SmallVectorIPvLj4EEE", !54, i64 0, !58, i64 16}
!54 = !{!"_ZTSN4llvm15SmallVectorImplIPvEE", !55, i64 0}
!55 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPvLb1EEE", !56, i64 0}
!56 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPvvEE", !57, i64 0}
!57 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !14, i64 0, !5, i64 8, !5, i64 12}
!58 = !{!"_ZTSN4llvm18SmallVectorStorageIPvLj4EEE", !6, i64 0}
!59 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPvmELj0EEE", !60, i64 0}
!60 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPvmEEE", !61, i64 0}
!61 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPvmELb1EEE", !62, i64 0}
!62 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPvmEvEE", !57, i64 0}
!63 = !{!"_ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EEE", !64, i64 0}
!64 = !{!"p1 _ZTSN4llvm8RecyclerINS_12MachineInstrELm80ELm8EE8FreeNodeE", !14, i64 0}
!65 = !{!"_ZTSN4llvm13ArrayRecyclerINS_14MachineOperandELm8EEE", !66, i64 0}
!66 = !{!"_ZTSN4llvm11SmallVectorIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELj8EEE", !67, i64 0, !70, i64 16}
!67 = !{!"_ZTSN4llvm15SmallVectorImplIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListEEE", !68, i64 0}
!68 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELb1EEE", !69, i64 0}
!69 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListEvEE", !57, i64 0}
!70 = !{!"_ZTSN4llvm18SmallVectorStorageIPNS_13ArrayRecyclerINS_14MachineOperandELm8EE8FreeListELj8EEE", !6, i64 0}
!71 = !{!"_ZTSN4llvm8RecyclerINS_17MachineBasicBlockELm360ELm8EEE", !72, i64 0}
!72 = !{!"p1 _ZTSN4llvm8RecyclerINS_17MachineBasicBlockELm360ELm8EE8FreeNodeE", !14, i64 0}
!73 = !{!"_ZTSN4llvm6iplistINS_17MachineBasicBlockEJEEE", !74, i64 0}
!74 = !{!"_ZTSN4llvm11iplist_implINS_12simple_ilistINS_17MachineBasicBlockEJEEENS_12ilist_traitsIS2_EEEE", !75, i64 0}
!75 = !{!"_ZTSN4llvm12simple_ilistINS_17MachineBasicBlockEJEEE", !76, i64 0}
!76 = !{!"_ZTSN4llvm14ilist_sentinelINS_12ilist_detail12node_optionsINS_17MachineBasicBlockELb0ELb0EvLb0EvEEEE", !77, i64 0}
!77 = !{!"_ZTSN4llvm15ilist_node_implINS_12ilist_detail12node_optionsINS_17MachineBasicBlockELb0ELb0EvLb0EvEEEE", !78, i64 0}
!78 = !{!"_ZTSN4llvm15ilist_node_baseILb0EvEE", !79, i64 0}
!79 = !{!"_ZTSN4llvm12ilist_detail18node_base_prevnextINS_15ilist_node_baseILb0EvEELb0EEE", !80, i64 0, !80, i64 8}
!80 = !{!"p1 _ZTSN4llvm15ilist_node_baseILb0EvEE", !14, i64 0}
!81 = !{!"_ZTSN4llvm5AlignE", !6, i64 0}
!82 = !{!"_ZTSN4llvm25MachineFunctionPropertiesE", !83, i64 0}
!83 = !{!"_ZTSSt6bitsetILm12EE", !84, i64 0}
!84 = !{!"_ZTSSt12_Base_bitsetILm1EE", !27, i64 0}
!85 = !{!"_ZTSSt10unique_ptrIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EE", !86, i64 0}
!86 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_ELb1ELb1EE", !87, i64 0}
!87 = !{!"_ZTSSt15__uniq_ptr_implIN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EE", !88, i64 0}
!88 = !{!"_ZTSSt5tupleIJPN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EEE", !89, i64 0}
!89 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvm24PseudoSourceValueManagerESt14default_deleteIS1_EEE", !90, i64 0}
!90 = !{!"_ZTSSt10_Head_baseILm0EPN4llvm24PseudoSourceValueManagerELb0EE", !91, i64 0}
!91 = !{!"p1 _ZTSN4llvm24PseudoSourceValueManagerE", !14, i64 0}
!92 = !{!"_ZTSSt6vectorIN4llvm16MCCFIInstructionESaIS1_EE", !93, i64 0}
!93 = !{!"_ZTSSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE", !94, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE12_Vector_implE", !95, i64 0}
!95 = !{!"_ZTSNSt12_Vector_baseIN4llvm16MCCFIInstructionESaIS1_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!96 = !{!"p1 _ZTSN4llvm16MCCFIInstructionE", !14, i64 0}
!97 = !{!"_ZTSSt6vectorIPN4llvm8MCSymbolESaIS2_EE", !98, i64 0}
!98 = !{!"_ZTSSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE", !99, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE12_Vector_implE", !100, i64 0}
!100 = !{!"_ZTSNSt12_Vector_baseIPN4llvm8MCSymbolESaIS2_EE17_Vector_impl_dataE", !101, i64 0, !101, i64 8, !101, i64 16}
!101 = !{!"p2 _ZTSN4llvm8MCSymbolE", !50, i64 0}
!102 = !{!"_ZTSSt6vectorIN4llvm14LandingPadInfoESaIS1_EE", !103, i64 0}
!103 = !{!"_ZTSSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE", !104, i64 0}
!104 = !{!"_ZTSNSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE12_Vector_implE", !105, i64 0}
!105 = !{!"_ZTSNSt12_Vector_baseIN4llvm14LandingPadInfoESaIS1_EE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!106 = !{!"p1 _ZTSN4llvm14LandingPadInfoE", !14, i64 0}
!107 = !{!"_ZTSN4llvm8DenseMapIPNS_8MCSymbolENS_11SmallVectorIjLj4EEENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEE", !108, i64 0, !109, i64 8, !5, i64 16, !5, i64 20}
!108 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_8MCSymbolENS_11SmallVectorIjLj4EEEEE", !14, i64 0}
!109 = !{!"p1 int", !14, i64 0}
!110 = !{!"_ZTSN4llvm8DenseMapIPKNS_17MachineBasicBlockEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEE", !111, i64 0, !109, i64 8, !5, i64 16, !5, i64 20}
!111 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPKNS_17MachineBasicBlockEjEE", !14, i64 0}
!112 = !{!"_ZTSN4llvm8DenseMapIPNS_8MCSymbolEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEE", !113, i64 0, !109, i64 8, !5, i64 16, !5, i64 20}
!113 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_8MCSymbolEjEE", !14, i64 0}
!114 = !{!"_ZTSSt6vectorISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE", !115, i64 0}
!115 = !{!"_ZTSSt12_Vector_baseISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE", !116, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE12_Vector_implE", !117, i64 0}
!117 = !{!"_ZTSNSt12_Vector_baseISt4pairIPN4llvm8MCSymbolEPNS1_6MDNodeEESaIS6_EE17_Vector_impl_dataE", !118, i64 0, !118, i64 8, !118, i64 16}
end_hunk_1
