Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/block?download=true
inline.NumInlined: 1466
inline.NumDeleted: 494
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN7rocksdb13DataBlockIter8PrevImplEv:bb.a
  %i.bv = icmp eq i64 %indvars.iv.next, 0
  br i1 %i.bv, label %.lr.ph._crit_edge, label %.lr.ph110, !llvm.loop !123

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !50
  store i32 %i.bx, ptr %i.bi, align 8, !tbaa !48
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !51
  store i32 %i.bz, ptr %i.bk, align 8, !tbaa !52
  br label %bb.ai

.lr.ph110:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv109 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.br, %.lr.ph.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv109, -1 ; 4 uses
  %indvars = trunc nuw i64 %indvars.iv.next to i32 ; 2 uses
  store i32 %indvars, ptr %i.bk, align 8, !tbaa !52
  %i.ca = shl nuw nsw i64 %indvars.iv.next, 2     ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ca
  %.0.copyload.i.i = load i32, ptr %i.cb, align 1
  %.not = icmp ult i32 %.0.copyload.i.i, %i.bj
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !123

._crit_edge:                                      ; preds = %.lr.ph110, %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE5clearEv.exit
  %.lcssa76 = phi i64 [ %i.bs, %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE5clearEv.exit ], [ %i.ca, %.lr.ph110 ]
  %.lcssa71 = phi i32 [ %.promoted, %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE5clearEv.exit ], [ %indvars, %.lr.ph110 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.lcssa76
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store i64 0, ptr %i.cd, align 8, !tbaa !56
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !55
  %i.cg = mul i32 %i.cf, %.lcssa71
  %i.ch = add nsw i32 %i.cg, -1
  store i32 %i.ch, ptr %i.f, align 8, !tbaa !49
  %.0.copyload.i.i.i = load i32, ptr %i.cc, align 1
  %i.ci = zext i32 %.0.copyload.i.i.i to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !63
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !64
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %.sroa.2.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.ah, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i8 0, ptr %i.a, align 1, !tbaa !25
  %i.cu = call noundef zeroext i1 @_ZN7rocksdb9BlockIterINS_5SliceEE12ParseNextKeyINS_11DecodeEntryELb0EEEbPb(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr noundef nonnull %i.a)
  br i1 %i.cu, label %bb.i, label %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE12emplace_backIJRjjPKcimNS0_5SliceEEEERS2_DpOT_.exit

bb.i:                                             ; preds = %bb.h
  %i.cv = load ptr, ptr %i.cm, align 8, !tbaa !70 ; 7 uses
  %i.cw = load i64, ptr %i.cd, align 8, !tbaa !56 ; 9 uses
  %i.cx = load ptr, ptr %i.cl, align 8, !tbaa !71
  %.not.i = icmp ne ptr %i.cv, %i.cx
  %i.cy = load ptr, ptr %i.cn, align 8
  %i.cz = icmp ne ptr %i.cv, %i.cy
  %i.da = select i1 %.not.i, i1 %i.cz, i1 false
  br i1 %i.da, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.db = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14 ; 2 uses
  %i.dc = trunc i64 %i.db to i32                  ; 2 uses
  %i.dd = load ptr, ptr %i.cp, align 8, !tbaa !124 ; 6 uses
  %.not.i22 = icmp eq ptr %i.dd, null
  br i1 %.not.i22, label %_ZNK7rocksdb13DataBlockIter5valueEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.de = load i32, ptr %i.bi, align 8, !tbaa !48 ; 3 uses
  %i.df = load i32, ptr %i.bn, align 4, !tbaa !73
  %i.dg = icmp ult i32 %i.de, %i.df
  br i1 %i.dg, label %bb.l, label %_ZNK7rocksdb13DataBlockIter5valueEv.exit

bb.l:                                             ; preds = %bb.k
  %i.dh = load i32, ptr %i.cq, align 8, !tbaa !125
  %.not2.i = icmp eq i32 %i.de, %i.dh
  br i1 %.not2.i, label %_ZNK7rocksdb13DataBlockIter5valueEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.di = load ptr, ptr %i.ck, align 8, !tbaa !9
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.db
  %i.dk = load ptr, ptr %i.bl, align 8, !tbaa !27
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = trunc i64 %i.dn to i32
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 8, !tbaa !126
  %i.dr = zext i8 %i.dq to i32                    ; 3 uses
  %i.ds = shl nuw i32 1, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !132
  %i.dv = xor i32 %i.du, -1
  %i.dw = add i32 %i.ds, %i.dv                    ; 2 uses
  %i.dx = add i32 %i.dw, %i.de
  %i.dy = lshr i32 %i.dx, %i.dr                   ; 4 uses
  %i.dz = add i32 %i.dw, %i.do
  %i.ea = lshr i32 %i.dz, %i.dr                   ; 2 uses
  %.not.i.i25 = icmp ult i32 %i.dy, %i.ea
  br i1 %.not.i.i25, label %bb.n, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i

bb.n:                                             ; preds = %bb.m
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !133 ; 2 uses
  %i.ed = udiv i32 %i.dy, %i.ec
  %i.ee = urem i32 %i.dy, %i.ec
  %i.ef = shl nuw i32 1, %i.ee                    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !134
  %i.ei = zext i32 %i.ed to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.ei
  %i.ek = atomicrmw or ptr %i.ej, i32 %i.ef monotonic, align 4
  %i.el = and i32 %i.ek, %i.ef
  %.not9.i.i = icmp eq i32 %i.el, 0
  br i1 %.not9.i.i, label %bb.o, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i

bb.o:                                             ; preds = %bb.n
  %i.em = load i8, ptr %i.dp, align 8, !tbaa !126
  %i.en = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.eo = load atomic ptr, ptr %i.en monotonic, align 8 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ep = sub i32 %i.ea, %i.dy
  %i.eq = zext nneg i8 %i.em to i32
  %i.er = shl i32 %i.ep, %i.eq
  %i.es = zext i32 %i.er to i64
  %i.et = load ptr, ptr %i.eo, align 8, !tbaa !22
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 176
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(33) %i.eo, i32 noundef 122, i64 noundef %i.es), !inline_history !135
  br label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i

_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i:   ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.ew = load i32, ptr %i.bi, align 8, !tbaa !48
  store i32 %i.ew, ptr %i.cq, align 8, !tbaa !125
  br label %_ZNK7rocksdb13DataBlockIter5valueEv.exit

_ZNK7rocksdb13DataBlockIter5valueEv.exit:         ; preds = %bb.j, %bb.k, %bb.l, %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i
  %.sroa.0.0.copyload.i = load ptr, ptr %i.cr, align 8, !tbaa !63 ; 2 uses
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i30, align 8, !tbaa !64 ; 2 uses
  %i.ex = load ptr, ptr %i.bd, align 8, !tbaa !122 ; 12 uses
  %i.ey = load ptr, ptr %i.ct, align 8, !tbaa !136
  %.not.i26 = icmp eq ptr %i.ex, %i.ey
  br i1 %.not.i26, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNK7rocksdb13DataBlockIter5valueEv.exit
  %i.ez = load i32, ptr %i.bi, align 8, !tbaa !53
  store i32 %i.ez, ptr %i.ex, align 8, !tbaa !115
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  store i32 %i.dc, ptr %i.fa, align 4, !tbaa !121
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.cv, ptr %i.fb, align 8, !tbaa !117
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  store i64 0, ptr %i.fc, align 8, !tbaa !119
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  store i64 %i.cw, ptr %i.fd, align 8, !tbaa !118
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  store ptr %.sroa.0.0.copyload.i, ptr %i.fe, align 8, !tbaa !63
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.459.0..sroa_idx, align 8, !tbaa !64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 48
  store ptr %i.ff, ptr %i.bd, align 8, !tbaa !122
  br label %bb.ah

bb.r:                                             ; preds = %_ZNK7rocksdb13DataBlockIter5valueEv.exit
  %i.fg = load ptr, ptr %i.bc, align 8, !tbaa !114 ; 5 uses
  %i.fh = ptrtoint ptr %i.ex to i64
  %i.fi = ptrtoint ptr %i.fg to i64               ; 2 uses
  %i.fj = sub i64 %i.fh, %i.fi                    ; 3 uses
  %i.fk = icmp eq i64 %i.fj, 9223372036854775776
  br i1 %i.fk, label %bb.s, label %_ZNKSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.s:                                             ; preds = %bb.r
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNKSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.r
  %i.fl = sdiv exact i64 %i.fj, 48                ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.fl, i64 1)
  %i.fm = add nsw i64 %.sroa.speculated.i.i, %i.fl ; 2 uses
  %i.fn = icmp ult i64 %i.fm, %i.fl
  %i.fo = call i64 @llvm.umin.i64(i64 %i.fm, i64 192153584101141162)
  %i.fp = select i1 %i.fn, i64 192153584101141162, i64 %i.fo ; 3 uses
  %.not.i.i40 = icmp ne i64 %i.fp, 0
  call void @llvm.assume(i1 %.not.i.i40)
  %i.fq = mul nuw nsw i64 %i.fp, 48
  %i.fr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fq) #23 ; 5 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fj ; 7 uses
  %i.ft = load i32, ptr %i.bi, align 8, !tbaa !53
  store i32 %i.ft, ptr %i.fs, align 8, !tbaa !115
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store i32 %i.dc, ptr %i.fu, align 4, !tbaa !121
  %2 = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store ptr %i.cv, ptr %2, align 8, !tbaa !117
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store i64 0, ptr %i.fv, align 8, !tbaa !119
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  store i64 %i.cw, ptr %i.fw, align 8, !tbaa !118
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  store ptr %.sroa.0.0.copyload.i, ptr %i.fx, align 8
  %.sroa.5.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.5.0..sroa_idx42, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.fg, %i.ex
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.fz, %.lr.ph.i.i.i.i ], [ %i.fr, %_ZNKSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.fy, %.lr.ph.i.i.i.i ], [ %i.fg, %_ZNKSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i, i64 48, i1 false), !tbaa.struct !137, !alias.scope !138
  %i.fy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fy, %i.ex
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i, label %.lr.ph.i.i.i.i, !llvm.loop !142

_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.fr, %_ZNKSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %i.fz, %.lr.ph.i.i.i.i ]
  %i.ga = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48
  %.not.i38.i = icmp eq ptr %i.fg, null
  br i1 %.not.i38.i, label %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE17_M_realloc_insertIJRjjPKcimNS0_5SliceEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i
  %i.gb = load ptr, ptr %i.ct, align 8, !tbaa !136
  %i.gc = ptrtoint ptr %i.gb to i64
  %i.gd = sub i64 %i.gc, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.fg, i64 noundef %i.gd) #24
  br label %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE17_M_realloc_insertIJRjjPKcimNS0_5SliceEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit

_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE17_M_realloc_insertIJRjjPKcimNS0_5SliceEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i, %bb.t
  store ptr %i.fr, ptr %i.bc, align 8, !tbaa !114
  store ptr %i.ga, ptr %i.bd, align 8, !tbaa !122
  %i.ge = getelementptr inbounds nuw [48 x i8], ptr %i.fr, i64 %i.fp
  store ptr %i.ge, ptr %i.ct, align 8, !tbaa !136
  br label %bb.ah

bb.u:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.gf = load i64, ptr %i.bg, align 8, !tbaa !62 ; 6 uses
  store i64 %i.gf, ptr %i.b, align 8, !tbaa !64
  %i.gg = sub i64 9223372036854775807, %i.gf
  %i.gh = icmp ult i64 %i.gg, %i.cw
  br i1 %i.gh, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i

bb.v:                                             ; preds = %bb.u
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #25
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i: ; preds = %bb.u
  %i.gi = add i64 %i.gf, %i.cw                    ; 3 uses
  %i.gj = load ptr, ptr %i.bf, align 8, !tbaa !59 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.co
  br i1 %i.gk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.gl = icmp ult i64 %i.gf, 16
  call void @llvm.assume(i1 %i.gl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
  %i.gm = load i64, ptr %i.co, align 8, !tbaa !61
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.gn = phi i64 [ %i.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %.not.i.i27 = icmp ugt i64 %i.gi, %i.gn
  br i1 %.not.i.i27, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %.not8.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not8.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gf ; 2 uses
  %cond.i.i = icmp eq i64 %i.cw, 1
  br i1 %cond.i.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gp = load i8, ptr %i.cv, align 1, !tbaa !61
  store i8 %i.gp, ptr %i.go, align 1, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.go, ptr align 1 %i.cv, i64 %i.cw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, i64 noundef %i.gf, i64 noundef 0, ptr noundef %i.cv, i64 noundef %i.cw)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit: ; preds = %bb.w, %bb.y, %bb.z, %bb.aa
  store i64 %i.gi, ptr %i.bg, align 8, !tbaa !62
  %i.gq = load ptr, ptr %i.bf, align 8, !tbaa !59
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gi
  store i8 0, ptr %i.gr, align 1, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.gs = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14 ; 2 uses
  %i.gt = trunc i64 %i.gs to i32
  store i32 %i.gt, ptr %i.c, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store ptr null, ptr %i.d, align 8, !tbaa !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i64 %i.cw, ptr %i.e, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.gu = load ptr, ptr %i.cp, align 8, !tbaa !124 ; 6 uses
  %.not.i28 = icmp eq ptr %i.gu, null
  br i1 %.not.i28, label %_ZNK7rocksdb13DataBlockIter5valueEv.exit39, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit
  %i.gv = load i32, ptr %i.bi, align 8, !tbaa !48 ; 3 uses
  %i.gw = load i32, ptr %i.bn, align 4, !tbaa !73
  %i.gx = icmp ult i32 %i.gv, %i.gw
  br i1 %i.gx, label %bb.ac, label %_ZNK7rocksdb13DataBlockIter5valueEv.exit39

bb.ac:                                            ; preds = %bb.ab
  %i.gy = load i32, ptr %i.cq, align 8, !tbaa !125
  %.not2.i34 = icmp eq i32 %i.gv, %i.gy
  br i1 %.not2.i34, label %_ZNK7rocksdb13DataBlockIter5valueEv.exit39, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gz = load ptr, ptr %i.ck, align 8, !tbaa !9
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.gs
  %i.hb = load ptr, ptr %i.bl, align 8, !tbaa !27
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = trunc i64 %i.he to i32
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 8, !tbaa !126
  %i.hi = zext i8 %i.hh to i32                    ; 3 uses
  %i.hj = shl nuw i32 1, %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  %i.hl = load i32, ptr %i.hk, align 8, !tbaa !132
  %i.hm = xor i32 %i.hl, -1
  %i.hn = add i32 %i.hj, %i.hm                    ; 2 uses
  %i.ho = add i32 %i.hn, %i.gv
  %i.hp = lshr i32 %i.ho, %i.hi                   ; 4 uses
  %i.hq = add i32 %i.hn, %i.hf
  %i.hr = lshr i32 %i.hq, %i.hi                   ; 2 uses
  %.not.i.i35 = icmp ult i32 %i.hp, %i.hr
  br i1 %.not.i.i35, label %bb.ae, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i36

bb.ae:                                            ; preds = %bb.ad
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !133 ; 2 uses
  %i.hu = udiv i32 %i.hp, %i.ht
  %i.hv = urem i32 %i.hp, %i.ht
  %i.hw = shl nuw i32 1, %i.hv                    ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !134
  %i.hz = zext i32 %i.hu to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %i.hz
  %i.ib = atomicrmw or ptr %i.ia, i32 %i.hw monotonic, align 4
  %i.ic = and i32 %i.ib, %i.hw
  %.not9.i.i37 = icmp eq i32 %i.ic, 0
  br i1 %.not9.i.i37, label %bb.af, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i36

bb.af:                                            ; preds = %bb.ae
  %i.id = load i8, ptr %i.hg, align 8, !tbaa !126
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.if = load atomic ptr, ptr %i.ie monotonic, align 8 ; 3 uses
  %.not.i.i.i38 = icmp eq ptr %i.if, null
  br i1 %.not.i.i.i38, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i36, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ig = sub i32 %i.hr, %i.hp
  %i.ih = zext nneg i8 %i.id to i32
  %i.ii = shl i32 %i.ig, %i.ih
  %i.ij = zext i32 %i.ii to i64
  %i.ik = load ptr, ptr %i.if, align 8, !tbaa !22
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 176
  %i.im = load ptr, ptr %i.il, align 8
  call void %i.im(ptr noundef nonnull align 8 dereferenceable(33) %i.if, i32 noundef 122, i64 noundef %i.ij), !inline_history !135
  br label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i36

_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i36: ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %i.in = load i32, ptr %i.bi, align 8, !tbaa !48
  store i32 %i.in, ptr %i.cq, align 8, !tbaa !125
  br label %_ZNK7rocksdb13DataBlockIter5valueEv.exit39

_ZNK7rocksdb13DataBlockIter5valueEv.exit39:       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit, %bb.ab, %bb.ac, %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit.i36
  %.sroa.0.0.copyload.i29 = load ptr, ptr %i.cr, align 8, !tbaa !63
  %.sroa.2.0.copyload.i31 = load i64, ptr %.sroa.2.0..sroa_idx.i30, align 8, !tbaa !64
  store ptr %.sroa.0.0.copyload.i29, ptr %1, align 8
  store i64 %.sroa.2.0.copyload.i31, ptr %i.cs, align 8
  %i.io = call noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE12emplace_backIJRjjDnRmmNS0_5SliceEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 4 dereferenceable(4) %i.bi, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.ah

_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE12emplace_backIJRjjPKcimNS0_5SliceEEEERS2_DpOT_.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %.loopexit

bb.ah:                                            ; preds = %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE17_M_realloc_insertIJRjjPKcimNS0_5SliceEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, %bb.q, %_ZNK7rocksdb13DataBlockIter5valueEv.exit39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ip = load ptr, ptr %i.ck, align 8, !tbaa !9
  %i.iq = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.iq
  %i.is = load ptr, ptr %i.bl, align 8, !tbaa !27
  %i.it = ptrtoint ptr %i.ir to i64
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = trunc i64 %i.iv to i32
  %i.ix = icmp ugt i32 %i.bj, %i.iw
  br i1 %i.ix, label %bb.h, label %.loopexit, !llvm.loop !145

.loopexit:                                        ; preds = %bb.ah, %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE12emplace_backIJRjjPKcimNS0_5SliceEEEERS2_DpOT_.exit
  %i.iy = load ptr, ptr %i.bd, align 8, !tbaa !122
  %i.iz = load ptr, ptr %i.bc, align 8, !tbaa !114
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = sub i64 %i.ja, %i.jb
  %i.jd = sdiv exact i64 %i.jc, 48
  %i.je = trunc i64 %i.jd to i32
  %i.jf = add nsw i32 %i.je, -1
  store i32 %i.jf, ptr %i.h, align 8, !tbaa !105
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph._crit_edge, %.loopexit, %_ZN7rocksdb7IterKey6SetKeyERKNS_5SliceEb.exit
  %i.jg = add nsw i32 %i.g, -1
  store i32 %i.jg, ptr %i.f, align 8, !tbaa !49
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i64 } @_ZNK7rocksdb13DataBlockIter5valueEv(ptr noundef nonnull align 8 dereferenceable(720) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 6 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !48   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.f = load i32, ptr %i.e, align 4, !tbaa !73
  %i.g = icmp ult i32 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !125
  %.not2 = icmp eq i32 %i.d, %i.i
  br i1 %.not2, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load i64, ptr %i.l, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !tbaa !126
  %i.w = zext i8 %i.v to i32                      ; 3 uses
  %i.x = shl nuw i32 1, %i.w                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !132
  %i.aa = xor i32 %i.z, -1                        ; 2 uses
  %i.ab = add i32 %i.d, %i.aa
  %i.ac = add i32 %i.ab, %i.x
  %i.ad = lshr i32 %i.ac, %i.w                    ; 4 uses
  %i.ae = add i32 %i.t, %i.aa
  %i.af = add i32 %i.ae, %i.x
  %i.ag = lshr i32 %i.af, %i.w                    ; 2 uses
  %.not.i = icmp ult i32 %i.ad, %i.ag
  br i1 %.not.i, label %bb.e, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !133 ; 2 uses
  %i.aj = udiv i32 %i.ad, %i.ai
  %i.ak = urem i32 %i.ad, %i.ai
  %i.al = shl nuw i32 1, %i.ak                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !134
  %i.ao = zext i32 %i.aj to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = atomicrmw or ptr %i.ap, i32 %i.al monotonic, align 4
  %i.ar = and i32 %i.aq, %i.al
  %.not9.i = icmp eq i32 %i.ar, 0
  br i1 %.not9.i, label %bb.f, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit

bb.f:                                             ; preds = %bb.e
  %i.as = load i8, ptr %i.u, align 8, !tbaa !126
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.au = load atomic ptr, ptr %i.at monotonic, align 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = sub i32 %i.ag, %i.ad
  %i.aw = zext nneg i8 %i.as to i32
  %i.ax = shl i32 %i.av, %i.aw
  %i.ay = zext i32 %i.ax to i64
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 176
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(33) %i.au, i32 noundef 122, i64 noundef %i.ay), !inline_history !146
  br label %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit

_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit:     ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.bc = load i32, ptr %i.c, align 8, !tbaa !48
  store i32 %i.bc, ptr %i.h, align 8, !tbaa !125
  br label %bb.h

bb.h:                                             ; preds = %_ZN7rocksdb18BlockReadAmpBitmap4MarkEjj.exit, %bb.c, %bb.b, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 528
  %.sroa.0.0.copyload = load ptr, ptr %i.bd, align 8, !tbaa !63
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 536
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !64
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.2.0.copyload, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE12emplace_backIJRjjDnRmmNS0_5SliceEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !136
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !53
  %i.f = load i32, ptr %2, align 4, !tbaa !53
  %i.g = load i64, ptr %4, align 8, !tbaa !64
  %i.h = load i64, ptr %5, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  store i32 %i.e, ptr %i.b, align 8, !tbaa !115
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.f, ptr %i.i, align 4, !tbaa !121
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %i.j, align 8, !tbaa !117
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.g, ptr %i.k, align 8, !tbaa !119
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.h, ptr %i.l, align 8, !tbaa !118
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !120
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !122  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store ptr %i.o, ptr %i.a, align 8, !tbaa !122
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %0, align 8, !tbaa !114    ; 5 uses
  %i.q = ptrtoint ptr %i.b to i64
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = icmp eq i64 %i.s, 9223372036854775776
  br i1 %i.t, label %bb.d, label %_ZNKSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNKSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.u = sdiv exact i64 %i.s, 48                  ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 1)
  %i.v = add nsw i64 %.sroa.speculated.i.i, %i.u  ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.u
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 192153584101141162)
  %i.y = select i1 %i.w, i64 192153584101141162, i64 %i.x ; 3 uses
  %.not.i.i = icmp ne i64 %i.y, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.z = mul nuw nsw i64 %i.y, 48
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #23 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s ; 6 uses
  %i.ac = load i32, ptr %1, align 4, !tbaa !53
  %i.ad = load i32, ptr %2, align 4, !tbaa !53
  %i.ae = load i64, ptr %4, align 8, !tbaa !64
  %i.af = load i64, ptr %5, align 8, !tbaa !64
  store i32 %i.ac, ptr %i.ab, align 8, !tbaa !115
  %8 = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %i.ad, ptr %8, align 4, !tbaa !121
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr null, ptr %i.ag, align 8, !tbaa !117
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %i.ae, ptr %i.ah, align 8, !tbaa !119
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 %i.af, ptr %i.ai, align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  %.not10.i.i.i.i = icmp eq ptr %i.p, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %i.aa, %_ZNKSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.0911.i.i.i.i, i64 48, i1 false), !tbaa.struct !137, !alias.scope !147
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i, label %.lr.ph.i.i.i.i, !llvm.loop !142

_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.aa, %_ZNKSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %i.al, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 48
  %.not.i38.i = icmp eq ptr %i.p, null
  br i1 %.not.i38.i, label %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE17_M_realloc_insertIJRjjDnRmmNS0_5SliceEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !136
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.ap) #24
  br label %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE17_M_realloc_insertIJRjjDnRmmNS0_5SliceEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit

_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE17_M_realloc_insertIJRjjDnRmmNS0_5SliceEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit37.i, %bb.e
  store ptr %i.aa, ptr %0, align 8, !tbaa !114
  store ptr %i.am, ptr %i.a, align 8, !tbaa !122
  %i.aq = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %i.y
  store ptr %i.aq, ptr %i.c, align 8, !tbaa !136
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE17_M_realloc_insertIJRjjDnRmmNS0_5SliceEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, %bb.b
  %i.ar = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorIN7rocksdb13DataBlockIter15CachedPrevEntryESaIS2_EE17_M_realloc_insertIJRjjDnRmmNS0_5SliceEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit ], [ %i.n, %bb.b ]
  ret ptr %i.ar
}

; Function Attrs: uwtable
define void @_ZN7rocksdb13DataBlockIter8SeekImplERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(720) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %3 = alloca %"class.rocksdb::PerfStepTimer", align 8 ; 14 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !120
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %.not.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null
  br i1 %.not.i, label %_ZTWN7rocksdb12perf_contextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit

_ZTWN7rocksdb12perf_contextE.exit:                ; preds = %bb.a, %bb.b
  %i.c = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 552 ; 4 uses
  %.not.i.i = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null
  br i1 %.not.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZTWN7rocksdb12perf_contextE.exit
  tail call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit.i

_ZTWN7rocksdb10perf_levelE.exit.i:                ; preds = %bb.c, %_ZTWN7rocksdb12perf_contextE.exit
  %i.e = tail call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE)
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15
  %i.g = icmp ugt i8 %i.f, 3                      ; 3 uses
  %i.h = zext i1 %i.g to i8
  store i8 %i.h, ptr %3, align 8, !tbaa !151
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.i, align 1, !tbaa !155
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 0, ptr %i.j, align 4, !tbaa !156
  br i1 %i.g, label %bb.d, label %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit

_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit: ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store ptr %i.d, ptr %i.l, align 8, !tbaa !157
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr null, ptr %i.m, align 8, !tbaa !158
  br label %_ZN7rocksdb13PerfStepTimer5StartEv.exit

bb.d:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i
  %i.n = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb11SystemClock7DefaultEv()
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !159  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !163
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !tbaa !164
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %i.d, ptr %i.r, align 8, !tbaa !157
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr null, ptr %i.s, align 8, !tbaa !158
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 160
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = invoke noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %.noexc unwind label %bb.e, !inline_history !165 ; 2 uses

.noexc:                                           ; preds = %bb.d
  store i64 %i.w, ptr %i.q, align 8, !tbaa !164
  br label %_ZN7rocksdb13PerfStepTimer5StartEv.exit

_ZN7rocksdb13PerfStepTimer5StartEv.exit:          ; preds = %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit, %.noexc
  %i.x = phi ptr [ %i.o, %.noexc ], [ null, %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit ] ; 2 uses
  %i.y = phi i64 [ %i.w, %.noexc ], [ 0, %_ZN7rocksdb13PerfStepTimerC2EPmPNS_11SystemClockEbNS_9PerfLevelEPNS_10StatisticsEj.exit ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.k, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.f:                                             ; preds = %_ZN7rocksdb13PerfStepTimer5StartEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i8 0, ptr %i.b, align 1, !tbaa !25
  %i.ad = invoke noundef zeroext i1 @_ZN7rocksdb9BlockIterINS_5SliceEE27BinarySeekRestartPointIndexINS_9DecodeKeyEEEbRKS1_PjPb(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %i.ad, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.i, %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  %i.af = load i32, ptr %i.a, align 4, !tbaa !53
  %i.ag = load i8, ptr %i.b, align 1, !tbaa !25, !range !66, !noundef !67
  %i.ah = trunc nuw i8 %i.ag to i1
  invoke void @_ZN7rocksdb9BlockIterINS_5SliceEE22FindKeyAfterBinarySeekERKS1_jb(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef %i.af, i1 noundef zeroext %i.ah)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.k

bb.k:                                             ; preds = %_ZN7rocksdb13PerfStepTimer5StartEv.exit, %bb.j
  %.not.i.i7 = icmp eq i64 %i.y, 0
  br i1 %.not.i.i7, label %_ZN7rocksdb13PerfStepTimerD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 160
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %.noexc.i unwind label %bb.n, !inline_history !166

.noexc.i:                                         ; preds = %bb.l
  br i1 %i.g, label %bb.m, label %_ZN7rocksdb13PerfStepTimerD2Ev.exit

bb.m:                                             ; preds = %.noexc.i
  %i.am = sub i64 %i.al, %i.y
  %i.an = load i64, ptr %i.d, align 8, !tbaa !64
  %i.ao = add i64 %i.an, %i.am
  store i64 %i.ao, ptr %i.d, align 8, !tbaa !64
  br label %_ZN7rocksdb13PerfStepTimerD2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #26
  unreachable

_ZN7rocksdb13PerfStepTimerD2Ev.exit:              ; preds = %.noexc.i, %bb.m, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.o:                                             ; preds = %bb.h, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.ac, %bb.e ]
  call void @_ZN7rocksdb13PerfStepTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7rocksdb9BlockIterINS_5SliceEE27BinarySeekRestartPointIndexINS_9DecodeKeyEEEbRKS1_PjPb(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %4 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %5 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73
end_hunk_0
