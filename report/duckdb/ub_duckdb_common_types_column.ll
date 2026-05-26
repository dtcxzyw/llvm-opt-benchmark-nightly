inline.NumInlined: 5552
inline.NumDeleted: 2531
begin_hunk_0_@_ZN6duckdb31ColumnDataCopyCompressedStringsERNS_18ColumnDataMetaDataERKNS_15VectorDataIndexERS2_RKNS_19UnifiedVectorFormatERNS_6VectorERKmSC_RmSD_RPh:bb.a
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.b
  %i.i = load i64, ptr %i.h, align 8, !tbaa !103
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %.thread

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.b, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  %i.k = load i32, ptr %i.f, align 8, !tbaa !43   ; 2 uses
  %i.l = icmp ult i32 %i.k, 13
  br i1 %i.l, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.m = zext i32 %i.k to i64                     ; 2 uses
  store i64 %i.m, ptr %8, align 8, !tbaa !103
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.o = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.q = load i64, ptr %i.p, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq i64 %i.q, -1
  br i1 %.not.i, label %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit, label %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread

_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread: ; preds = %bb.d
  store i64 %i.q, ptr %10, align 8
  br label %bb.e

_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.s = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.t, align 8, !tbaa !103 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %10, align 8
  %.not196 = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not196, label %.thread192, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread, %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit
  %i.u = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %i.v = load i64, ptr %6, align 8, !tbaa !103
  %i.w = lshr i64 %i.v, 1
  %.not = icmp ult i64 %i.u, %i.w
  br i1 %.not, label %bb.f, label %.thread192

bb.f:                                             ; preds = %bb.e
  call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %4)
  %i.x = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48 ; 2 uses
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !165 ; 10 uses
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.y)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.ac = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %10) ; 9 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !189 ; 2 uses
  %.not.i160 = icmp eq ptr %i.ad, null
  %.promoted205 = load i64, ptr %8, align 8       ; 6 uses
  %.not219 = icmp eq i64 %i.ac, 0                 ; 2 uses
  br i1 %.not.i160, label %.preheader201, label %.preheader202

.preheader202:                                    ; preds = %bb.f
  br i1 %.not219, label %.loopexit, label %.lr.ph

.preheader201:                                    ; preds = %bb.f
  br i1 %.not219, label %.loopexit, label %.lr.ph207.preheader

.lr.ph207.preheader:                              ; preds = %.preheader201
  %min.iters.check = icmp ult i64 %i.ac, 13
  br i1 %min.iters.check, label %.lr.ph207.preheader278, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph207.preheader
  %scevgep = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ae = shl i64 %i.ac, 4
  %i.af = getelementptr i8, ptr %i.aa, i64 %i.ae
  %scevgep259 = getelementptr i8, ptr %i.af, i64 -12
  %bound0 = icmp ult ptr %8, %scevgep259
  %bound1 = icmp ult ptr %i.aa, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph207.preheader278, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %i.ac, 3                    ; 2 uses
  %i.ag = icmp eq i64 %n.mod.vf, 0
  %i.ah = select i1 %i.ag, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %i.ac, %i.ah                   ; 2 uses
  %i.ai = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted205, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.phi = phi <2 x i64> [ %i.ai, %vector.ph ], [ %i.be, %vector.body ]
  %vec.phi260 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bf, %vector.body ]
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %index
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %index
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %index
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %index
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %i.aq = load i32, ptr %i.aj, align 8, !tbaa !43, !alias.scope !494
  %i.ar = load i32, ptr %i.al, align 8, !tbaa !43, !alias.scope !494
  %i.as = insertelement <2 x i32> poison, i32 %i.aq, i64 0
  %i.at = insertelement <2 x i32> %i.as, i32 %i.ar, i64 1 ; 2 uses
  %i.au = load i32, ptr %i.an, align 8, !tbaa !43, !alias.scope !494
  %i.av = load i32, ptr %i.ap, align 8, !tbaa !43, !alias.scope !494
  %i.aw = insertelement <2 x i32> poison, i32 %i.au, i64 0
  %i.ax = insertelement <2 x i32> %i.aw, i32 %i.av, i64 1 ; 2 uses
  %i.ay = icmp ult <2 x i32> %i.at, splat (i32 13)
  %i.az = icmp ult <2 x i32> %i.ax, splat (i32 13)
  %i.ba = select <2 x i1> %i.ay, <2 x i32> zeroinitializer, <2 x i32> %i.at
  %i.bb = select <2 x i1> %i.az, <2 x i32> zeroinitializer, <2 x i32> %i.ax
  %i.bc = zext <2 x i32> %i.ba to <2 x i64>
  %i.bd = zext <2 x i32> %i.bb to <2 x i64>
  %i.be = add <2 x i64> %vec.phi, %i.bc           ; 2 uses
  %i.bf = add <2 x i64> %vec.phi260, %i.bd        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !497

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bf, %i.be
  %i.bh = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  store i64 %i.bh, ptr %8, align 8, !tbaa !103, !alias.scope !498, !noalias !494
  br label %.lr.ph207.preheader278

.lr.ph207.preheader278:                           ; preds = %vector.memcheck, %.lr.ph207.preheader, %middle.block
  %.0128206.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph207.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.ph = phi i64 [ %.promoted205, %vector.memcheck ], [ %.promoted205, %.lr.ph207.preheader ], [ %i.bh, %middle.block ] ; 2 uses
  %i.bi = sub i64 %i.ac, %.0128206.ph
  %.neg = add i64 %.0128206.ph, 1
  %xtraiter = and i64 %i.bi, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph207.prol.loopexit, label %.lr.ph207.prol

.lr.ph207.prol:                                   ; preds = %.lr.ph207.preheader278
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.0128206.ph
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !43 ; 2 uses
  %i.bl = icmp ult i32 %i.bk, 13
  %narrow.prol = select i1 %i.bl, i32 0, i32 %i.bk
  %i.bm = zext i32 %narrow.prol to i64
  %i.bn = add i64 %.ph, %i.bm                     ; 3 uses
  store i64 %i.bn, ptr %8, align 8, !tbaa !103
  %i.bo = add nuw i64 %.0128206.ph, 1
  br label %.lr.ph207.prol.loopexit

.lr.ph207.prol.loopexit:                          ; preds = %.lr.ph207.prol, %.lr.ph207.preheader278
  %.lcssa279.unr = phi i64 [ poison, %.lr.ph207.preheader278 ], [ %i.bn, %.lr.ph207.prol ]
  %.0128206.unr = phi i64 [ %.0128206.ph, %.lr.ph207.preheader278 ], [ %i.bo, %.lr.ph207.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph207.preheader278 ], [ %i.bn, %.lr.ph207.prol ]
  %i.bp = icmp eq i64 %i.ac, %.neg
  br i1 %i.bp, label %.loopexit, label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.prol.loopexit, %.lr.ph207
  %.0128206 = phi i64 [ %i.cc, %.lr.ph207 ], [ %.0128206.unr, %.lr.ph207.prol.loopexit ] ; 3 uses
  %i.bq = phi i64 [ %i.cb, %.lr.ph207 ], [ %.unr, %.lr.ph207.prol.loopexit ]
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.0128206
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !43 ; 2 uses
  %i.bt = icmp ult i32 %i.bs, 13
  %narrow = select i1 %i.bt, i32 0, i32 %i.bs
  %i.bu = zext i32 %narrow to i64
  %i.bv = add i64 %i.bq, %i.bu                    ; 2 uses
  store i64 %i.bv, ptr %8, align 8, !tbaa !103
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.0128206
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !43 ; 2 uses
  %i.bz = icmp ult i32 %i.by, 13
  %narrow.1 = select i1 %i.bz, i32 0, i32 %i.by
  %i.ca = zext i32 %narrow.1 to i64
  %i.cb = add i64 %i.bv, %i.ca                    ; 3 uses
  store i64 %i.cb, ptr %8, align 8, !tbaa !103
  %i.cc = add nuw i64 %.0128206, 2                ; 2 uses
  %exitcond224.not.1 = icmp eq i64 %i.cc, %i.ac
  br i1 %exitcond224.not.1, label %.loopexit, label %.lr.ph207, !llvm.loop !500

.lr.ph:                                           ; preds = %.preheader202, %.lr.ph
  %.0129204 = phi i64 [ %i.cp, %.lr.ph ], [ 0, %.preheader202 ] ; 4 uses
  %i.cd = phi i64 [ %i.co, %.lr.ph ], [ %.promoted205, %.preheader202 ]
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %.0129204
  %i.cf = lshr i64 %.0129204, 6
  %i.cg = and i64 %.0129204, 63
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.cf
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !103
  %i.cj = shl nuw i64 1, %i.cg
  %i.ck = and i64 %i.ci, %i.cj
  %.not197 = icmp ne i64 %i.ck, 0
  %.pre = load i32, ptr %i.ce, align 8, !tbaa !43 ; 2 uses
  %i.cl = icmp ugt i32 %.pre, 12
  %narrow253 = select i1 %.not197, i1 %i.cl, i1 false
  %i.cm = zext i32 %.pre to i64
  %i.cn = select i1 %narrow253, i64 %i.cm, i64 0
  %i.co = add i64 %i.cn, %i.cd                    ; 3 uses
  store i64 %i.co, ptr %8, align 8, !tbaa !103
  %i.cp = add nuw i64 %.0129204, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cp, %i.ac
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !501

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph207.prol.loopexit, %.lr.ph207, %.preheader202, %.preheader201
  %i.cq = phi i64 [ %i.cb, %.lr.ph207 ], [ %.promoted205, %.preheader201 ], [ %.promoted205, %.preheader202 ], [ %.lcssa279.unr, %.lr.ph207.prol.loopexit ], [ %i.co, %.lr.ph ]
  %.fr = freeze i64 %i.cq                         ; 2 uses
  %i.cr = icmp eq i64 %.fr, 0
  br i1 %i.cr, label %.thread192, label %bb.g

.thread192:                                       ; preds = %bb.e, %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %.thread

bb.g:                                             ; preds = %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %i.cs = phi i64 [ %.fr, %bb.g ], [ %i.m, %bb.c ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !502, !nonnull !64, !align !94 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !505, !nonnull !64, !align !94 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !506, !nonnull !64, !align !94
  %.sroa.051.0.copyload = load i64, ptr %2, align 8, !tbaa !103
  %i.cz = call i64 @_ZN6duckdb27ColumnDataCollectionSegment18AllocateStringHeapEmRNS_13ChunkMetaDataERNS_21ColumnDataAppendStateENS_15VectorDataIndexE(ptr noundef nonnull align 8 dereferenceable(136) %i.cu, i64 noundef %i.cs, ptr noundef nonnull align 8 dereferenceable(82) %i.cy, ptr noundef nonnull align 8 dereferenceable(88) %i.cw, i64 %.sroa.051.0.copyload)
  store i64 %i.cz, ptr %2, align 8, !tbaa !103
  %i.da = load ptr, ptr %i.ct, align 8, !tbaa !502, !nonnull !64, !align !94
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.db, align 8, !tbaa !103
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  %i.dd = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dc, i64 noundef %.sroa.0.0.copyload.i)
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.df = load i64, ptr %i.de, align 8, !tbaa !507
  %.not198 = icmp eq i64 %i.df, -1
  br i1 %.not198, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.dg = load ptr, ptr %i.ct, align 8, !tbaa !502 ; 5 uses
  %.sroa.049.0.copyload = load i64, ptr %2, align 8, !tbaa !103 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 96 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 104 ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !458 ; 6 uses
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !455 ; 7 uses
  %i.dl = ptrtoint ptr %i.dj to i64               ; 2 uses
  %i.dm = ptrtoint ptr %i.dk to i64               ; 3 uses
  %i.dn = sub i64 %i.dl, %i.dm                    ; 3 uses
  %i.do = ashr exact i64 %i.dn, 3                 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 112 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !459
  %.not.i.i161 = icmp eq ptr %i.dj, %i.dq
  br i1 %.not.i.i161, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %.sroa.049.0.copyload, ptr %i.dj, align 8, !tbaa !103
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  store ptr %i.dr, ptr %i.di, align 8, !tbaa !458
  br label %_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit

bb.k:                                             ; preds = %bb.i
  %i.ds = icmp eq i64 %i.dn, 9223372036854775800
  br i1 %i.ds, label %bb.l, label %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #26
  unreachable

_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.do, i64 1)
  %i.dt = add nsw i64 %.sroa.speculated.i.i.i.i, %i.do ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.do
  %i.dv = call i64 @llvm.umin.i64(i64 %i.dt, i64 1152921504606846975)
  %i.dw = select i1 %i.du, i64 1152921504606846975, i64 %i.dv ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dx = shl nuw nsw i64 %i.dw, 3
  %i.dy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #28 ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dn
  store i64 %.sroa.049.0.copyload, ptr %i.dz, align 8, !tbaa !103
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.dk, %i.dj
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ea = ptrtoaddr ptr %i.dy to i64
  %i.eb = add i64 %i.dl, -8
  %i.ec = sub i64 %i.eb, %i.dm                    ; 2 uses
  %i.ed = lshr i64 %i.ec, 3
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %min.iters.check263 = icmp ult i64 %i.ec, 56
  %i.ef = sub i64 %i.ea, %i.dm
  %diff.check = icmp ult i64 %i.ef, 32
  %or.cond = or i1 %min.iters.check263, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader276, label %vector.ph264

vector.ph264:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec266 = and i64 %i.ee, 4611686018427387900  ; 3 uses
  %i.eg = shl i64 %n.vec266, 3                    ; 2 uses
  %i.eh = getelementptr i8, ptr %i.dy, i64 %i.eg  ; 2 uses
  %i.ei = getelementptr i8, ptr %i.dk, i64 %i.eg
  br label %vector.body267

vector.body267:                                   ; preds = %vector.body267, %vector.ph264
  %index268 = phi i64 [ 0, %vector.ph264 ], [ %index.next271, %vector.body267 ] ; 2 uses
  %i.ej = shl i64 %index268, 3                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.dy, i64 %i.ej ; 2 uses
  %next.gep269 = getelementptr i8, ptr %i.dk, i64 %i.ej ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.ek = getelementptr i8, ptr %next.gep269, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep269, align 8, !tbaa !103, !alias.scope !511, !noalias !508
  %wide.load270 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !103, !alias.scope !511, !noalias !508
  %i.el = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !103, !alias.scope !508, !noalias !511
  store <2 x i64> %wide.load270, ptr %i.el, align 8, !tbaa !103, !alias.scope !508, !noalias !511
  %index.next271 = add nuw i64 %index268, 4       ; 2 uses
  %i.em = icmp eq i64 %index.next271, %n.vec266
  br i1 %i.em, label %middle.block272, label %vector.body267, !llvm.loop !513

middle.block272:                                  ; preds = %vector.body267
  %cmp.n = icmp eq i64 %i.ee, %n.vec266
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader276

.lr.ph.i.i.i.i.i.i.i.preheader276:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block272
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.dy, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.eh, %middle.block272 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ei, %middle.block272 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader276, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader276 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader276 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !508)
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.en = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !103, !alias.scope !511, !noalias !508
  store i64 %i.en, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !103, !alias.scope !508, !noalias !511
  %i.eo = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.eo, %i.dj
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !514

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block272, %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.dy, %_ZNKSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.eh, %middle.block272 ], [ %i.ep, %.lr.ph.i.i.i.i.i.i.i ]
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.dk) #25
  %.pre226.pre = load ptr, ptr %i.ct, align 8, !tbaa !502
  br label %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  %.pre226 = phi ptr [ %.pre226.pre, %bb.m ], [ %i.dg, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i ]
  store ptr %i.dy, ptr %i.dh, align 8, !tbaa !455
  store ptr %i.eq, ptr %i.di, align 8, !tbaa !458
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dw
  store ptr %i.er, ptr %i.dp, align 8, !tbaa !459
  br label %_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit

_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit: ; preds = %bb.j, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.es = phi ptr [ %i.dg, %bb.j ], [ %.pre226, %_ZNSt6vectorIN6duckdb15VectorDataIndexESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ]
  %.sroa.0.0.copyload.i162 = load i64, ptr %i.db, align 8, !tbaa !103
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 72
  %i.eu = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.et, i64 noundef %.sroa.0.0.copyload.i162)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  store i64 %i.do, ptr %i.ev, align 8, !tbaa !103
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb27ColumnDataCollectionSegment13AddChildIndexENS_15VectorDataIndexE.exit, %bb.h
  %.sroa.046.0.copyload = load i64, ptr %2, align 8, !tbaa !103
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cu, i64 72 ; 2 uses
  %i.ex = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, i64 noundef %.sroa.046.0.copyload) ; 3 uses
  %i.ey = call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu)
  %i.ez = load i8, ptr %i.ey, align 8, !tbaa !7
  %i.fa = icmp eq i8 %i.ez, 1
  br i1 %i.fa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.fb = load i64, ptr %i.ex, align 8
  %i.fc = inttoptr i64 %i.fb to ptr
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit

bb.p:                                             ; preds = %bb.n
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !155
  %i.ff = load i32, ptr %i.ex, align 8, !tbaa !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.fg = zext i32 %i.ff to i64
  store i64 %i.fg, ptr %i.b, align 8, !tbaa !103
  %i.fh = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseImSt4pairIKmN6duckdb12BufferHandleEESaIS5_ENS_10_Select1stESt8equal_toImESt4hashImENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOm(ptr noundef nonnull align 8 dereferenceable(57) %i.cw, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fi)
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !144
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !147
  %i.fm = zext i32 %i.fe to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit

_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit: ; preds = %bb.o, %bb.p
  %.0.i = phi ptr [ %i.fc, %bb.o ], [ %i.fn, %bb.p ]
  store ptr %.0.i, ptr %9, align 8, !tbaa !515
  %.sroa.0.0.copyload = load i64, ptr %1, align 8, !tbaa !103
  %i.fo = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN6duckdb6vectorINS_14VectorMetaDataELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ew, i64 noundef %.sroa.0.0.copyload) ; 4 uses
  %i.fp = call noundef ptr @_ZNK6duckdb10shared_ptrINS_19ColumnDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cu)
  %i.fq = load i8, ptr %i.fp, align 8, !tbaa !7
  %i.fr = icmp eq i8 %i.fq, 1
  br i1 %i.fr, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit
  %i.fs = load i64, ptr %i.fo, align 8
  %i.ft = inttoptr i64 %i.fs to ptr
  br label %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit164

bb.r:                                             ; preds = %_ZN6duckdb19ColumnDataAllocator14GetDataPointerERNS_20ChunkManagementStateEjj.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !155
  %i.fw = load i32, ptr %i.fo, align 8, !tbaa !164
end_hunk_0
