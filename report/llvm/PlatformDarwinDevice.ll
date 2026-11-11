Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PlatformDarwinDevice?download=true
inline.NumInlined: 1131
inline.NumDeleted: 617
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12lldb_private20PlatformDarwinDevice34GetSDKDirectoryForCurrentOSVersionEv:bb.a
bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN12lldb_private8Platform16GetOSBuildStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %2, ptr noundef nonnull align 8 dereferenceable(528) %0) #20
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !183, !range !46, !noundef !47
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.h, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.h:                                             ; preds = %bb.g
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  %.pre = load i8, ptr %i.ai, align 8, !tbaa !183, !range !46
  %i.al = trunc nuw i8 %.pre to i1
  br i1 %i.al, label %bb.i, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.ai, align 8, !tbaa !183
  %i.am = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !18
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #19
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.i, %bb.g, %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %.pr = load i64, ptr %i.ad, align 8, !tbaa !42
  %i.ar = icmp ne i64 %.pr, 0
  %i.as = icmp ne i32 %i.k, 0
  %or.cond131 = and i1 %i.ar, %i.as
  br i1 %or.cond131, label %.lr.ph.preheader, label %.loopexit115

.critedge108.preheader:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %.old.not = icmp eq i32 %i.k, 0
  br i1 %.old.not, label %.loopexit115, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge108.preheader, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %wide.trip.count = and i64 %i.j, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt14_Bit_referenceaSEb.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt14_Bit_referenceaSEb.exit ] ; 8 uses
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %i.at, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !39
  %i.ax = call noundef i64 @_ZNK12lldb_private11ConstString9GetLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %i.av) #20 ; 3 uses
  %i.ay = load ptr, ptr %1, align 8, !tbaa !17
  %i.az = load i64, ptr %i.ad, align 8, !tbaa !42
  %.not.i = icmp eq i64 %i.ax, %i.az
  br i1 %.not.i, label %bb.j, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread173

_ZN4llvmeqENS_9StringRefES0_.exit.thread173:      ; preds = %.lr.ph
  %i.ba = lshr i64 %indvars.iv, 6
  %.zext98175 = and i64 %i.ba, 67108863
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %.zext98175
  %i.bc = and i64 %indvars.iv, 63
  %i.bd = shl nuw i64 1, %i.bc
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph
  %i.be = icmp eq i64 %i.ax, 0
  br i1 %i.be, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %bb.j
  %i.bf = lshr i64 %indvars.iv, 6
  %.zext98172 = and i64 %i.bf, 67108863
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %.zext98172
  %i.bh = and i64 %indvars.iv, 63
  %i.bi = shl nuw i64 1, %i.bh
  br label %bb.k

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.j
  %bcmp.i = call i32 @bcmp(ptr %i.aw, ptr %i.ay, i64 %i.ax)
  %i.bj = icmp eq i32 %bcmp.i, 0
  %i.bk = lshr i64 %indvars.iv, 6
  %.zext98 = and i64 %i.bk, 67108863
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %.zext98 ; 2 uses
  %i.bm = and i64 %indvars.iv, 63
  %i.bn = shl nuw i64 1, %i.bm                    ; 2 uses
  br i1 %i.bj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread, %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.bo = phi i64 [ %i.bi, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ], [ %i.bn, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  %i.bp = phi ptr [ %i.bg, %_ZN4llvmeqENS_9StringRefES0_.exit.thread ], [ %i.bl, %_ZN4llvmeqENS_9StringRefES0_.exit ] ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !43
  %i.br = or i64 %i.bq, %i.bo
  br label %_ZNSt14_Bit_referenceaSEb.exit

bb.l:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread173, %_ZN4llvmeqENS_9StringRefES0_.exit
  %i.bs = phi i64 [ %i.bd, %_ZN4llvmeqENS_9StringRefES0_.exit.thread173 ], [ %i.bn, %_ZN4llvmeqENS_9StringRefES0_.exit ]
  %i.bt = phi ptr [ %i.bb, %_ZN4llvmeqENS_9StringRefES0_.exit.thread173 ], [ %i.bl, %_ZN4llvmeqENS_9StringRefES0_.exit ] ; 2 uses
  %i.bu = xor i64 %i.bs, -1
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !43
  %i.bw = and i64 %i.bv, %i.bu
  br label %_ZNSt14_Bit_referenceaSEb.exit

_ZNSt14_Bit_referenceaSEb.exit:                   ; preds = %bb.k, %bb.l
  %i.bx = phi ptr [ %i.bt, %bb.l ], [ %i.bp, %bb.k ]
  %storemerge = phi i64 [ %i.bw, %bb.l ], [ %i.br, %bb.k ]
  store i64 %storemerge, ptr %i.bx, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit115, label %.lr.ph, !llvm.loop !175

.loopexit115:                                     ; preds = %_ZNSt14_Bit_referenceaSEb.exit, %.critedge108.preheader, %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit
  %i.by = load ptr, ptr %0, align 8, !tbaa !11
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = call { i64, i64 } %i.ca(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef null) #20 ; 2 uses
  %i.cc = extractvalue { i64, i64 } %i.cb, 0      ; 8 uses
  %i.cd = extractvalue { i64, i64 } %i.cb, 1      ; 2 uses
  %i.ce = and i64 %i.cc, 9223372036854775807
  %or.cond.i.i = icmp eq i64 %i.ce, 0
  %i.cf = and i64 %i.cd, 4611686016279904255
  %i.cg = icmp eq i64 %i.cf, 0
  %or.cond = select i1 %or.cond.i.i, i1 %i.cg, i1 false
  br i1 %or.cond, label %bb.u, label %_ZNK4llvm12VersionTuple5emptyEv.exit.thread

_ZNK4llvm12VersionTuple5emptyEv.exit.thread:      ; preds = %.loopexit115
  %i.ch = call noundef zeroext i1 @_ZN12lldb_private20PlatformDarwinDevice31UpdateSDKDirectoryInfosIfNeededEv(ptr noundef nonnull align 8 dereferenceable(840) %0)
  %.not134 = icmp ne i32 %i.k, 0
  %or.cond187.not = and i1 %.not134, %i.ch
  br i1 %or.cond187.not, label %.lr.ph120, label %.loopexit

.lr.ph120:                                        ; preds = %_ZNK4llvm12VersionTuple5emptyEv.exit.thread
  %i.ci = trunc i64 %i.cc to i32
  %wide.trip.count147 = and i64 %i.j, 4294967295
  br label %bb.m

.lr.ph122:                                        ; preds = %_ZN4llvmeqERKNS_12VersionTupleES2_.exit.thread
  %i.cj = trunc i64 %i.cc to i32
  %.not.i47 = icmp slt i64 %i.cc, 0
  %i.ck = lshr i64 %i.cc, 32
  %i.cl = trunc nuw i64 %i.ck to i32
  %i.cm = and i32 %i.cl, 2147483647
  %.sroa.062.0.extract.trunc = select i1 %.not.i47, i32 %i.cm, i32 0
  %wide.trip.count152 = and i64 %i.j, 4294967295
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph120, %_ZN4llvmeqERKNS_12VersionTupleES2_.exit.thread
  %indvars.iv144 = phi i64 [ 0, %.lr.ph120 ], [ %indvars.iv.next145, %_ZN4llvmeqERKNS_12VersionTupleES2_.exit.thread ] ; 4 uses
  %i.cn = lshr i64 %indvars.iv144, 6
  %.zext92 = and i64 %i.cn, 67108863
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %.zext92
  %i.cp = and i64 %indvars.iv144, 63
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = load i64, ptr %i.co, align 8, !tbaa !43
  %i.cs = and i64 %i.cr, %i.cq
  %.not105 = icmp eq i64 %i.cs, 0
  br i1 %.not105, label %_ZN4llvmeqERKNS_12VersionTupleES2_.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ct = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.cu = getelementptr inbounds nuw [48 x i8], ptr %i.ct, i64 %indvars.iv144 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load i64, ptr %i.cv, align 4, !noalias !184 ; 2 uses
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cz = load i64, ptr %i.cy, align 4, !noalias !184
  %i.da = icmp eq i32 %i.cx, %i.ci
  %i.db = xor i64 %i.cw, %i.cc
  %i.dc = and i64 %i.db, 9223372032559808512
  %i.dd = icmp eq i64 %i.dc, 0
  %or.cond.i = and i1 %i.da, %i.dd
  %i.de = xor i64 %i.cz, %i.cd
  %i.df = and i64 %i.de, 4611686016279904255
  %i.dg = icmp eq i64 %i.df, 0
  %or.cond103 = select i1 %or.cond.i, i1 %i.dg, i1 false
  br i1 %or.cond103, label %.loopexit, label %_ZN4llvmeqERKNS_12VersionTupleES2_.exit.thread

_ZN4llvmeqERKNS_12VersionTupleES2_.exit.thread:   ; preds = %bb.n, %bb.m
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count147
  br i1 %exitcond148.not, label %.lr.ph122, label %bb.m, !llvm.loop !178

.lr.ph124:                                        ; preds = %.critedge
  %i.dh = trunc i64 %i.cc to i32
  %wide.trip.count157 = and i64 %i.j, 4294967295
  br label %bb.r

bb.o:                                             ; preds = %.lr.ph122, %.critedge
  %indvars.iv149 = phi i64 [ 0, %.lr.ph122 ], [ %indvars.iv.next150, %.critedge ] ; 4 uses
  %i.di = lshr i64 %indvars.iv149, 6
  %.zext94 = and i64 %i.di, 67108863
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %.zext94
  %i.dk = and i64 %indvars.iv149, 63
  %i.dl = shl nuw i64 1, %i.dk
  %i.dm = load i64, ptr %i.dj, align 8, !tbaa !43
  %i.dn = and i64 %i.dm, %i.dl
  %.not104 = icmp eq i64 %i.dn, 0
  br i1 %.not104, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.do = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.dp = getelementptr inbounds nuw [48 x i8], ptr %i.do, i64 %indvars.iv149 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = load i64, ptr %i.dq, align 4            ; 5 uses
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = icmp eq i32 %i.ds, %i.cj
  br i1 %i.dt, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %.not.i46 = icmp slt i64 %i.dr, 0
  %i.du = lshr i64 %i.dr, 32
  %i.dv = trunc nuw i64 %i.du to i32
  %i.dw = and i32 %i.dv, 2147483647
  %.sroa.063.0.extract.trunc = select i1 %.not.i46, i32 %i.dw, i32 0
  %.unshifted = xor i64 %i.dr, %i.cc
  %i.dx = icmp sgt i64 %.unshifted, -1
  %i.dy = icmp eq i32 %.sroa.063.0.extract.trunc, %.sroa.062.0.extract.trunc
  %i.dz = icmp sgt i64 %i.dr, -1
  %i.ea = select i1 %i.dz, i1 true, i1 %i.dy
  %i.eb = select i1 %i.dx, i1 %i.ea, i1 false
  br i1 %i.eb, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.p, %bb.o, %bb.q
  %indvars.iv.next150 = add nuw nsw i64 %indvars.iv149, 1 ; 2 uses
  %exitcond153.not = icmp eq i64 %indvars.iv.next150, %wide.trip.count152
  br i1 %exitcond153.not, label %.lr.ph124, label %bb.o, !llvm.loop !179

bb.r:                                             ; preds = %.lr.ph124, %bb.t
  %indvars.iv154 = phi i64 [ 0, %.lr.ph124 ], [ %indvars.iv.next155, %bb.t ] ; 4 uses
  %i.ec = lshr i64 %indvars.iv154, 6
  %.zext96 = and i64 %i.ec, 67108863
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %.zext96
  %i.ee = and i64 %indvars.iv154, 63
  %i.ef = shl nuw i64 1, %i.ee
  %i.eg = load i64, ptr %i.ed, align 8, !tbaa !43
  %i.eh = and i64 %i.eg, %i.ef
  %.not = icmp eq i64 %i.eh, 0
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ei = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.ej = getelementptr inbounds nuw [48 x i8], ptr %i.ei, i64 %indvars.iv154 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.el = load i64, ptr %i.ek, align 4
  %i.em = trunc i64 %i.el to i32
  %i.en = icmp eq i32 %i.em, %i.dh
  br i1 %i.en, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond158.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count157
  br i1 %exitcond158.not, label %.loopexit, label %bb.r, !llvm.loop !180

bb.u:                                             ; preds = %.loopexit115
  %i.eo = load i64, ptr %i.ad, align 8, !tbaa !42
  %i.ep = icmp ne i64 %i.eo, 0
  %i.eq = icmp ne i32 %i.k, 0
  %or.cond133 = and i1 %i.ep, %i.eq
  br i1 %or.cond133, label %.lr.ph130.preheader, label %.loopexit

.lr.ph130.preheader:                              ; preds = %bb.u
  %wide.trip.count162 = and i64 %i.j, 4294967295
  br label %.lr.ph130

bb.v:                                             ; preds = %.lr.ph130
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count162
  br i1 %exitcond163.not, label %.loopexit, label %.lr.ph130, !llvm.loop !181

.lr.ph130:                                        ; preds = %.lr.ph130.preheader, %bb.v
  %indvars.iv159 = phi i64 [ 0, %.lr.ph130.preheader ], [ %indvars.iv.next160, %bb.v ] ; 4 uses
  %i.er = lshr i64 %indvars.iv159, 6
  %.zext = and i64 %i.er, 67108863
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.sroa.083.0, i64 %.zext
  %i.et = and i64 %indvars.iv159, 63
  %i.eu = shl nuw i64 1, %i.et
  %i.ev = load i64, ptr %i.es, align 8, !tbaa !43
  %i.ew = and i64 %i.ev, %i.eu
  %.not106 = icmp eq i64 %i.ew, 0
  br i1 %.not106, label %bb.v, label %bb.w

bb.w:                                             ; preds = %.lr.ph130
  %i.ex = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.ey = getelementptr inbounds nuw [48 x i8], ptr %i.ex, i64 %indvars.iv159
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.q, %bb.t, %bb.s, %bb.v, %_ZNK4llvm12VersionTuple5emptyEv.exit.thread, %bb.u, %bb.w
  %.032 = phi ptr [ %i.dp, %bb.q ], [ %i.ey, %bb.w ], [ undef, %_ZNK4llvm12VersionTuple5emptyEv.exit.thread ], [ %i.ej, %bb.s ], [ undef, %bb.u ], [ undef, %bb.v ], [ undef, %bb.t ], [ %i.cu, %bb.n ]
  %cond = phi i1 [ false, %bb.q ], [ false, %bb.w ], [ true, %_ZNK4llvm12VersionTuple5emptyEv.exit.thread ], [ false, %bb.s ], [ true, %bb.u ], [ true, %bb.v ], [ true, %bb.t ], [ false, %bb.n ]
  %i.ez = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.t
  br i1 %i.fa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit
  %i.fb = load i64, ptr %i.t, align 8, !tbaa !18
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %.not.i.i59 = icmp eq ptr %.sroa.083.0, null
  br i1 %.not.i.i59, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fd = ptrtoint ptr %.sroa.1690.0 to i64
  %i.fe = ptrtoint ptr %.sroa.083.0 to i64
  %i.ff = sub i64 %i.fd, %i.fe                    ; 2 uses
  %i.fg = ashr exact i64 %i.ff, 3
  %i.fh = sub nsw i64 0, %i.fg
  %i.fi = getelementptr inbounds [8 x i8], ptr %.sroa.1690.0, i64 %i.fh
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.ff) #19
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.x
  br i1 %cond, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.a
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.y
  %.1 = phi ptr [ null, %bb.y ], [ %.032, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit ]
  ret ptr %.1
}

declare void @_ZN12lldb_private8Platform16GetOSBuildStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::optional") align 8, ptr noundef nonnull align 8 dereferenceable(528)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN12lldb_private20PlatformDarwinDevice33GetSDKDirectoryForLatestOSVersionEv(ptr noundef nonnull align 8 dereferenceable(840) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN12lldb_private20PlatformDarwinDevice31UpdateSDKDirectoryInfosIfNeededEv(ptr noundef nonnull align 8 dereferenceable(840) %0)
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 4 uses
  %i.f = icmp eq ptr %i.c, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.g, %i.e
  %or.cond.i.i = select i1 %i.f, i1 true, i1 %.not13.i.i
  br i1 %or.cond.i.i, label %"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPN12lldb_private20PlatformDarwinDevice16SDKDirectoryInfoESt6vectorIS4_SaIS4_EEEEZNS3_33GetSDKDirectoryForLatestOSVersionEvE3$_0ET_SB_SB_T0_.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12lldb_private20PlatformDarwinDevice33GetSDKDirectoryForLatestOSVersionEvE3$_0EclINS_17__normal_iteratorIPNS3_16SDKDirectoryInfoESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread11.i.i"
  %i.h = phi ptr [ %i.au, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12lldb_private20PlatformDarwinDevice33GetSDKDirectoryForLatestOSVersionEvE3$_0EclINS_17__normal_iteratorIPNS3_16SDKDirectoryInfoESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread11.i.i" ], [ %i.g, %bb.b ] ; 3 uses
  %.sroa.02.015.i.i = phi ptr [ %i.at, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12lldb_private20PlatformDarwinDevice33GetSDKDirectoryForLatestOSVersionEvE3$_0EclINS_17__normal_iteratorIPNS3_16SDKDirectoryInfoESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread11.i.i" ], [ %i.c, %bb.b ] ; 6 uses
  %.sroa.06.014.i.i = phi ptr [ %i.h, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12lldb_private20PlatformDarwinDevice33GetSDKDirectoryForLatestOSVersionEvE3$_0EclINS_17__normal_iteratorIPNS3_16SDKDirectoryInfoESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread11.i.i" ], [ %i.c, %bb.b ] ; 2 uses
  %i.i = getelementptr i8, ptr %.sroa.02.015.i.i, i64 32
  %.val.i.i.i = load i64, ptr %i.i, align 4, !noalias !189 ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.02.015.i.i, i64 40
  %.val1.i.i.i = load i64, ptr %i.j, align 4, !noalias !189 ; 3 uses
  %i.k = getelementptr i8, ptr %.sroa.06.014.i.i, i64 80
  %.val2.i.i.i = load i64, ptr %i.k, align 4, !noalias !190 ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.06.014.i.i, i64 88
  %.val3.i.i.i = load i64, ptr %i.l, align 4, !noalias !190 ; 3 uses
  %i.m = trunc i64 %.val.i.i.i to i32             ; 2 uses
  %i.n = lshr i64 %.val.i.i.i, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = and i32 %i.o, 2147483647                 ; 2 uses
  %i.q = trunc i64 %.val1.i.i.i to i32
  %i.r = and i32 %i.q, 2147483647                 ; 2 uses
  %i.s = lshr i64 %.val1.i.i.i, 32
  %i.t = trunc nuw i64 %i.s to i32
  %i.u = and i32 %i.t, 1048575                    ; 2 uses
  %i.v = lshr i64 %.val1.i.i.i, 52
  %i.w = trunc nuw nsw i64 %i.v to i32
  %i.x = and i32 %i.w, 1023
  %i.y = trunc i64 %.val2.i.i.i to i32            ; 2 uses
  %i.z = lshr i64 %.val2.i.i.i, 32
  %i.aa = trunc nuw i64 %i.z to i32
  %i.ab = and i32 %i.aa, 2147483647               ; 2 uses
  %i.ac = trunc i64 %.val3.i.i.i to i32
  %i.ad = and i32 %i.ac, 2147483647               ; 2 uses
  %i.ae = lshr i64 %.val3.i.i.i, 32
  %i.af = trunc nuw i64 %i.ae to i32
  %i.ag = and i32 %i.af, 1048575                  ; 2 uses
  %i.ah = lshr i64 %.val3.i.i.i, 52
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 1023
  %i.ak = icmp ult i32 %i.m, %i.y
  br i1 %i.ak, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12lldb_private20PlatformDarwinDevice33GetSDKDirectoryForLatestOSVersionEvE3$_0EclINS_17__normal_iteratorIPNS3_16SDKDirectoryInfoESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i", label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.al = icmp ult i32 %i.y, %i.m
  br i1 %i.al, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12lldb_private20PlatformDarwinDevice33GetSDKDirectoryForLatestOSVersionEvE3$_0EclINS_17__normal_iteratorIPNS3_16SDKDirectoryInfoESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread11.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = icmp samesign ult i32 %i.p, %i.ab
  br i1 %i.am, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12lldb_private20PlatformDarwinDevice33GetSDKDirectoryForLatestOSVersionEvE3$_0EclINS_17__normal_iteratorIPNS3_16SDKDirectoryInfoESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = icmp samesign ult i32 %i.ab, %i.p
  br i1 %i.an, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12lldb_private20PlatformDarwinDevice33GetSDKDirectoryForLatestOSVersionEvE3$_0EclINS_17__normal_iteratorIPNS3_16SDKDirectoryInfoESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread11.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = icmp samesign ult i32 %i.r, %i.ad
  br i1 %i.ao, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12lldb_private20PlatformDarwinDevice33GetSDKDirectoryForLatestOSVersionEvE3$_0EclINS_17__normal_iteratorIPNS3_16SDKDirectoryInfoESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp samesign ult i32 %i.ad, %i.r
  br i1 %i.ap, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12lldb_private20PlatformDarwinDevice33GetSDKDirectoryForLatestOSVersionEvE3$_0EclINS_17__normal_iteratorIPNS3_16SDKDirectoryInfoESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread11.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = icmp samesign ult i32 %i.u, %i.ag
  br i1 %i.aq, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12lldb_private20PlatformDarwinDevice33GetSDKDirectoryForLatestOSVersionEvE3$_0EclINS_17__normal_iteratorIPNS3_16SDKDirectoryInfoESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12lldb_private20PlatformDarwinDevice33GetSDKDirectoryForLatestOSVersionEvE3$_0EclINS_17__normal_iteratorIPNS3_16SDKDirectoryInfoESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12lldb_private20PlatformDarwinDevice33GetSDKDirectoryForLatestOSVersionEvE3$_0EclINS_17__normal_iteratorIPNS3_16SDKDirectoryInfoESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i": ; preds = %bb.h
  %i.ar = icmp samesign uge i32 %i.ag, %i.u
  %i.as = icmp samesign ult i32 %i.x, %i.aj
  %spec.select.i.i.i.i.i = select i1 %i.ar, i1 %i.as, i1 false
  %cond.fr.i.i = freeze i1 %spec.select.i.i.i.i.i
  br i1 %cond.fr.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12lldb_private20PlatformDarwinDevice33GetSDKDirectoryForLatestOSVersionEvE3$_0EclINS_17__normal_iteratorIPNS3_16SDKDirectoryInfoESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12lldb_private20PlatformDarwinDevice33GetSDKDirectoryForLatestOSVersionEvE3$_0EclINS_17__normal_iteratorIPNS3_16SDKDirectoryInfoESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread11.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12lldb_private20PlatformDarwinDevice33GetSDKDirectoryForLatestOSVersionEvE3$_0EclINS_17__normal_iteratorIPNS3_16SDKDirectoryInfoESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12lldb_private20PlatformDarwinDevice33GetSDKDirectoryForLatestOSVersionEvE3$_0EclINS_17__normal_iteratorIPNS3_16SDKDirectoryInfoESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i", %bb.h, %bb.f, %bb.d, %.lr.ph.i.i
  br label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12lldb_private20PlatformDarwinDevice33GetSDKDirectoryForLatestOSVersionEvE3$_0EclINS_17__normal_iteratorIPNS3_16SDKDirectoryInfoESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread11.i.i"

end_hunk_0
