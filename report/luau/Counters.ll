Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Counters?download=true
inline.NumInlined: 651
inline.NumDeleted: 301
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_Z12countersDumpPKc:bb.a
  store ptr %i.ai, ptr %i.t, align 8, !tbaa !41
  %i.av = load i64, ptr %i.g, align 8, !tbaa !34
  %i.aw = getelementptr inbounds i8, ptr %i.s, i64 -48
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !34
  %i.ax = load i64, ptr %i.f, align 8, !tbaa !42
  store i64 %i.ax, ptr %i.ag, align 8, !tbaa !42
  %.not.i60 = icmp eq ptr %i.af, null
  br i1 %.not.i60, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.af, ptr %2, align 8, !tbaa !41
  store i64 %i.au, ptr %i.f, align 8, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.f, ptr %2, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.ay = phi ptr [ %.pre.i61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.af, %bb.m ], [ %i.f, %bb.n ], [ %i.ai, %bb.i ]
  store i64 0, ptr %i.g, align 8, !tbaa !34
  store i8 0, ptr %i.ay, align 1, !tbaa !42
  %i.az = load ptr, ptr %2, align 8, !tbaa !41    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.f
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bb = load i64, ptr %i.f, align 8, !tbaa !42
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_Z15lua_getcountersP9lua_StateiPvPFvS1_PKciEPFvS1_iimE(ptr noundef %i.b, i32 noundef -1, ptr noundef nonnull %i.t, ptr noundef nonnull @_ZL24countersFunctionCallbackPvPKci, ptr noundef nonnull @_ZL21countersValueCallbackPviim)
  call void @_Z10lua_settopP9lua_Statei(ptr noundef %i.b, i32 noundef -2)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0102.0123, i64 4 ; 2 uses
  %.not105 = icmp eq ptr %i.bd, %i.d
  br i1 %.not105, label %._crit_edge, label %bb.b

bb.o:                                             ; preds = %._crit_edge
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !44
  %i.bf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.2, ptr noundef %0) #26 ; 0 uses
  br label %bb.am

bb.p:                                             ; preds = %._crit_edge
  %i.bg = call i64 @fwrite(ptr nonnull @.str.3, i64 11, i64 1, ptr nonnull %i.h) ; 0 uses
  %i.bh = call i64 @fwrite(ptr nonnull @.str.4, i64 19, i64 1, ptr nonnull %i.h) ; 0 uses
  %i.bi = call i64 @fwrite(ptr nonnull @.str.5, i64 32, i64 1, ptr nonnull %i.h) ; 0 uses
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @gCounters, i64 32), align 8, !tbaa !37 ; 2 uses
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @gCounters, i64 40), align 8, !tbaa !37 ; 2 uses
  %.not106143 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not106143, label %._crit_edge147, label %.lr.ph146

.lr.ph146:                                        ; preds = %bb.p
  %.sroa.5.8..sroa_idx.i.i31.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i.i25.i.i.i, i64 4
  %.sroa.4.8..sroa_idx.i32.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i26.i.i.i, i64 4
  %.sroa.5.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i.i.i.i.i, i64 4
  %.sroa.4.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i, i64 4
  %.sroa.5.8..sroa_idx.i.i14.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i.i12.i.i.i, i64 4
  br label %bb.q

._crit_edge147:                                   ; preds = %._crit_edge142, %bb.p
  %i.bl = call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @gCounters, i64 40), align 8, !tbaa !13
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @gCounters, i64 32), align 8, !tbaa !9
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = sdiv exact i64 %i.bq, 56
  %i.bs = trunc i64 %i.br to i32
  %i.bt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef %0, i32 noundef %i.bs) ; 0 uses
  br label %bb.am

bb.q:                                             ; preds = %.lr.ph146, %._crit_edge142
  %.sroa.097.0144 = phi ptr [ %i.bj, %.lr.ph146 ], [ %i.ca, %._crit_edge142 ] ; 4 uses
  %i.bu = load ptr, ptr %.sroa.097.0144, align 8, !tbaa !41
  %i.bv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.6, ptr noundef %i.bu) #25 ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.097.0144, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !46 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.097.0144, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !46 ; 2 uses
  %.not107138 = icmp eq ptr %i.bx, %i.bz
  br i1 %.not107138, label %._crit_edge142, label %.lr.ph141

._crit_edge142:                                   ; preds = %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EED2Ev.exit, %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.097.0144, i64 56 ; 2 uses
  %.not106 = icmp eq ptr %i.ca, %i.bk
  br i1 %.not106, label %._crit_edge147, label %bb.q

.lr.ph141:                                        ; preds = %bb.q, %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EED2Ev.exit
  %.sroa.093.0139 = phi ptr [ %i.gu, %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EED2Ev.exit ], [ %i.bx, %bb.q ] ; 6 uses
  %i.cb = load ptr, ptr %.sroa.093.0139, align 8, !tbaa !41
  %i.cc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.7, ptr noundef %i.cb) #25 ; 0 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.093.0139, i64 32 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.093.0139, i64 40 ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !48 ; 4 uses
  %.not.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not.i.i, label %.loopexit111, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph141
  %i.cg = load ptr, ptr %i.cd, align 8, !tbaa !53
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.093.0139, i64 56
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !29
  br label %bb.r

bb.r:                                             ; preds = %bb.s, %.lr.ph.i.i
  %.04.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cm, %bb.s ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %.04.i.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !29
  %i.cl = icmp eq i32 %i.ck, %i.ci
  br i1 %i.cl, label %bb.s, label %.loopexit111

bb.s:                                             ; preds = %bb.r
  %i.cm = add nuw i64 %.04.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cm, %i.cf
  br i1 %exitcond.not.i.i, label %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EED2Ev.exit, label %bb.r, !llvm.loop !54

.loopexit111:                                     ; preds = %bb.r, %.lr.ph141
  %.0.lcssa.i.i = phi i64 [ 0, %.lr.ph141 ], [ %.04.i.i, %bb.r ] ; 2 uses
  %.not108124 = icmp eq i64 %.0.lcssa.i.i, %i.cf
  br i1 %.not108124, label %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EED2Ev.exit, label %.lr.ph130

.lr.ph130:                                        ; preds = %.loopexit111
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.093.0139, i64 56
  br label %bb.ab

._crit_edge131:                                   ; preds = %_ZN4Luau6detail14DenseHashTableIiSt4pairIi12LineCountersES2_IKiS3_ENS0_16ItemInterfaceMapIiS3_EESt4hashIiESt8equal_toIiEE14const_iteratorppEv.exit
  %i.co = ptrtoint ptr %.sroa.16.1 to i64
  %.not.i.i65 = icmp eq ptr %.sroa.082.1, %.sroa.10.1
  br i1 %.not.i.i65, label %._crit_edge137, label %bb.t

bb.t:                                             ; preds = %._crit_edge131
  %i.cp = ptrtoint ptr %.sroa.10.1 to i64
  %i.cq = ptrtoint ptr %.sroa.082.1 to i64        ; 2 uses
  %i.cr = sub i64 %i.cp, %i.cq                    ; 2 uses
  %i.cs = ashr exact i64 %i.cr, 5
  %i.ct = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cs, i1 true)
  %i.cu = shl nuw nsw i64 %i.ct, 1
  %i.cv = xor i64 %i.cu, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_T0_T1_"(ptr %.sroa.082.1, ptr nonnull %.sroa.10.1, i64 noundef %i.cv)
  %i.cw = icmp sgt i64 %i.cr, 512
  br i1 %i.cw, label %.lr.ph.i.i.i.i, label %.preheader.i27.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.t
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.082.1, i64 8
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i
  %indvar = phi i64 [ %indvar.next, %bb.w ], [ 0, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.08.020.i.idx.i.i.i = phi i64 [ %.sroa.08.020.i.add.i.i.i, %bb.w ], [ 32, %.lr.ph.i.i.i.i ] ; 4 uses
  %.pn19.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i, %bb.w ], [ %.sroa.082.1, %.lr.ph.i.i.i.i ] ; 6 uses
  %.sroa.08.020.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.082.1, i64 %.sroa.08.020.i.idx.i.i.i ; 7 uses
  %.val.i.i.i.i.i = load i32, ptr %.sroa.08.020.i.ptr.i.i.i, align 8, !tbaa !56 ; 5 uses
  %.val1.i.i.i.i.i = load i32, ptr %.sroa.082.1, align 8, !tbaa !56
  %i.cy = icmp slt i32 %.val.i.i.i.i.i, %.val1.i.i.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 36 ; 2 uses
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.preheader.i.i.i.i, label %bb.v

.lr.ph.i.i.i.i.i.preheader.i.i.i.i:               ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx.i.i.i.i, i64 28, i1 false)
  %i.cz = lshr exact i64 %.sroa.08.020.i.idx.i.i.i, 5 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 64
  %i.db = and i64 %.sroa.08.020.i.idx.i.i.i, 32
  %lcmp.mod243.not = icmp eq i64 %i.db, 0
  br i1 %lcmp.mod243.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i.i.i
  %i.dc = getelementptr inbounds i8, ptr %.sroa.08.020.i.ptr.i.i.i, i64 -32 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 32 ; 2 uses
  %i.de = load i32, ptr %i.dc, align 8, !tbaa !29
  store i32 %i.de, ptr %i.dd, align 8, !tbaa !56
  %i.df = getelementptr inbounds i8, ptr %.sroa.08.020.i.ptr.i.i.i, i64 -24
  %i.dg = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %i.df, i64 24, i1 false), !tbaa.struct !59
  %i.dh = add nsw i64 %i.cz, -1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.cz, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.dd, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.020.i.ptr.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i.i ], [ %i.dc, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.di = icmp eq i64 %indvar, 0
  br i1 %i.di, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.078.i.i.i.i.i.i.i.i.i = phi ptr [ %i.do, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.dj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -32
  %i.dk = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -32
  %i.dl = load i32, ptr %i.dj, align 4, !tbaa !29
  store i32 %i.dl, ptr %i.dk, align 8, !tbaa !56
  %i.dm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -24
  %i.dn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 24, i1 false), !tbaa.struct !59
  %i.do = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.dq = load i32, ptr %i.do, align 4, !tbaa !29
  store i32 %i.dq, ptr %i.dp, align 8, !tbaa !56
  %i.dr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.i.i, i64 -56
  %i.ds = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.i.i, i64 -56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i64 24, i1 false), !tbaa.struct !59
  %i.dt = add nsw i64 %.010.i.i.i.i.i.i.i.i.i, -2
  %i.du = icmp sgt i64 %.010.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.du, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i, !llvm.loop !60

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  store i32 %.val.i.i.i.i.i, ptr %.sroa.082.1, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cx, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i.i.i.i, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i)
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx.i.i.i.i, i64 28, i1 false)
  %.val2.i8.i.i.i.i.i = load i32, ptr %.pn19.i.i.i.i, align 8, !tbaa !56 ; 2 uses
  %i.dv = icmp slt i32 %.val.i.i.i.i.i, %.val2.i8.i.i.i.i.i
  br i1 %i.dv, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZ12countersDumpPKcE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.v, %.lr.ph.i.i.i.i.i
  %.val2.i11.i.i.i.i.i = phi i32 [ %.val2.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.val2.i8.i.i.i.i.i, %bb.v ]
  %.sroa.0.010.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.pn19.i.i.i.i, %bb.v ] ; 3 uses
  %.sroa.04.09.i.i.i.i.i = phi ptr [ %.sroa.0.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.08.020.i.ptr.i.i.i, %bb.v ] ; 3 uses
  store i32 %.val2.i11.i.i.i.i.i, ptr %.sroa.04.09.i.i.i.i.i, align 8, !tbaa !56
  %i.dw = getelementptr inbounds i8, ptr %.sroa.04.09.i.i.i.i.i, i64 -24
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull align 8 dereferenceable(24) %i.dw, i64 24, i1 false), !tbaa.struct !59
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.i.i, i64 -32 ; 2 uses
  %.val2.i.i.i.i.i.i = load i32, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !56 ; 2 uses
  %i.dy = icmp slt i32 %.val.i.i.i.i.i, %.val2.i.i.i.i.i.i
  br i1 %i.dy, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZ12countersDumpPKcE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !61

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZ12countersDumpPKcE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.v
  %.sroa.04.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.08.020.i.ptr.i.i.i, %bb.v ], [ %.sroa.0.010.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store i32 %.val.i.i.i.i.i, ptr %.sroa.04.0.lcssa.i.i.i.i.i, align 8, !tbaa !56
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.5.8..sroa_idx.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  br label %bb.w

bb.w:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZ12countersDumpPKcE3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i.i.i
  %.sroa.08.020.i.add.i.i.i = add nuw nsw i64 %.sroa.08.020.i.idx.i.i.i, 32 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.08.020.i.add.i.i.i, 512
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_T0_.exit.i.i.i", label %bb.u, !llvm.loop !62

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_T0_.exit.i.i.i": ; preds = %bb.w
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.082.1, i64 512 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.ea, %.sroa.10.1
  br i1 %.not6.i.i.i.i, label %.lr.ph136.preheader, label %.lr.ph.i13.i.i.i

.lr.ph.i13.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZ12countersDumpPKcE3$_0EEEvT_T0_.exit.i16.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.eg, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZ12countersDumpPKcE3$_0EEEvT_T0_.exit.i16.i.i.i" ], [ %i.ea, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_T0_.exit.i.i.i" ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12.i.i.i)
  %.sroa.03.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.0.07.i.i.i.i, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.i.i12.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.0..sroa_idx.i.i.i.i.i, i64 28, i1 false)
  %.sroa.0.07.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i, i64 -32 ; 2 uses
  %.val2.i8.i.i15.i.i.i = load i32, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !56 ; 2 uses
  %i.eb = icmp slt i32 %.sroa.03.0.copyload.i.i.i.i.i, %.val2.i8.i.i15.i.i.i
  br i1 %i.eb, label %.lr.ph.i.i19.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZ12countersDumpPKcE3$_0EEEvT_T0_.exit.i16.i.i.i"

.lr.ph.i.i19.i.i.i:                               ; preds = %.lr.ph.i13.i.i.i, %.lr.ph.i.i19.i.i.i
  %.val2.i11.i.i20.i.i.i = phi i32 [ %.val2.i.i.i24.i.i.i, %.lr.ph.i.i19.i.i.i ], [ %.val2.i8.i.i15.i.i.i, %.lr.ph.i13.i.i.i ]
  %.sroa.0.010.i.i21.i.i.i = phi ptr [ %.sroa.0.0.i.i23.i.i.i, %.lr.ph.i.i19.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i13.i.i.i ] ; 3 uses
  %.sroa.04.09.i.i22.i.i.i = phi ptr [ %.sroa.0.010.i.i21.i.i.i, %.lr.ph.i.i19.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i13.i.i.i ] ; 3 uses
  store i32 %.val2.i11.i.i20.i.i.i, ptr %.sroa.04.09.i.i22.i.i.i, align 8, !tbaa !56
  %i.ec = getelementptr inbounds i8, ptr %.sroa.04.09.i.i22.i.i.i, i64 -24
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i22.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ed, ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i64 24, i1 false), !tbaa.struct !59
  %.sroa.0.0.i.i23.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i21.i.i.i, i64 -32 ; 2 uses
  %.val2.i.i.i24.i.i.i = load i32, ptr %.sroa.0.0.i.i23.i.i.i, align 8, !tbaa !56 ; 2 uses
  %i.ee = icmp slt i32 %.sroa.03.0.copyload.i.i.i.i.i, %.val2.i.i.i24.i.i.i
  br i1 %i.ee, label %.lr.ph.i.i19.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZ12countersDumpPKcE3$_0EEEvT_T0_.exit.i16.i.i.i", !llvm.loop !61

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZ12countersDumpPKcE3$_0EEEvT_T0_.exit.i16.i.i.i": ; preds = %.lr.ph.i.i19.i.i.i, %.lr.ph.i13.i.i.i
  %.sroa.04.0.lcssa.i.i17.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i13.i.i.i ], [ %.sroa.0.010.i.i21.i.i.i, %.lr.ph.i.i19.i.i.i ] ; 2 uses
  store i32 %.sroa.03.0.copyload.i.i.i.i.i, ptr %.sroa.04.0.lcssa.i.i17.i.i.i, align 8, !tbaa !56
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i17.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.5.8..sroa_idx.i.i14.i.i.i, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i.i.i)
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 32
  %.not.i18.i.i.i = icmp eq ptr %.sroa.0.07.i.i.i.i, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i18.i.i.i, label %.lr.ph136.preheader, label %.lr.ph.i13.i.i.i, !llvm.loop !63

.preheader.i27.i.i.i:                             ; preds = %bb.t
  %.not18.i29.i.i.i = icmp eq ptr %.sroa.082.1, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not18.i29.i.i.i, label %.lr.ph136.preheader, label %.lr.ph.i30.i.i.i

.lr.ph136.preheader:                              ; preds = %bb.aa, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZ12countersDumpPKcE3$_0EEEvT_T0_.exit.i16.i.i.i", %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZ12countersDumpPKcE3$_0EEEvT_SG_T0_.exit.i.i.i", %.preheader.i27.i.i.i
  br label %.lr.ph136

.lr.ph.i30.i.i.i:                                 ; preds = %.preheader.i27.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.082.1, i64 8
  br label %bb.x

bb.x:                                             ; preds = %bb.aa, %.lr.ph.i30.i.i.i
  %.pn19.i34.i.i.i = phi ptr [ %.sroa.082.1, %.lr.ph.i30.i.i.i ], [ %.sroa.08.020.i33.i.i.i, %bb.aa ] ; 10 uses
  %.sroa.08.020.i33.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i34.i.i.i, i64 32 ; 7 uses
  %.val.i.i35.i.i.i = load i32, ptr %.sroa.08.020.i33.i.i.i, align 8, !tbaa !56 ; 5 uses
  %.val1.i.i36.i.i.i = load i32, ptr %.sroa.082.1, align 8, !tbaa !56
  %i.ei = icmp slt i32 %.val.i.i35.i.i.i, %.val1.i.i36.i.i.i
  %.sroa.4.0..sroa_idx.i37.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i34.i.i.i, i64 36 ; 2 uses
  br i1 %i.ei, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i26.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.i26.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx.i37.i.i.i, i64 28, i1 false)
  %i.ej = ptrtoint ptr %.sroa.08.020.i33.i.i.i to i64
  %i.ek = sub i64 %i.ej, %i.cq                    ; 3 uses
  %i.el = ashr exact i64 %i.ek, 5                 ; 3 uses
  %i.em = icmp sgt i64 %i.el, 0
  br i1 %i.em, label %.lr.ph.i.i.i.i.i.preheader.i50.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i49.i.i.i

.lr.ph.i.i.i.i.i.preheader.i50.i.i.i:             ; preds = %bb.y
  %i.en = getelementptr inbounds nuw i8, ptr %.pn19.i34.i.i.i, i64 64
  %i.eo = and i64 %i.ek, 32
  %lcmp.mod.not = icmp eq i64 %i.eo, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i51.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i51.i.i.i.prol

.lr.ph.i.i.i.i.i.i51.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.preheader.i50.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.pn19.i34.i.i.i, i64 32 ; 2 uses
  %i.eq = load i32, ptr %.pn19.i34.i.i.i, align 8, !tbaa !29
  store i32 %i.eq, ptr %i.ep, align 8, !tbaa !56
  %i.er = getelementptr inbounds nuw i8, ptr %.pn19.i34.i.i.i, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %.pn19.i34.i.i.i, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 8 dereferenceable(24) %i.er, i64 24, i1 false), !tbaa.struct !59
  %i.et = add nsw i64 %i.el, -1
  br label %.lr.ph.i.i.i.i.i.i51.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i51.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i51.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i50.i.i.i
  %.010.i.i.i.i.i.i52.i.i.i.unr = phi i64 [ %i.el, %.lr.ph.i.i.i.i.i.preheader.i50.i.i.i ], [ %i.et, %.lr.ph.i.i.i.i.i.i51.i.i.i.prol ]
  %.069.i.i.i.i.i.i53.i.i.i.unr = phi ptr [ %i.en, %.lr.ph.i.i.i.i.i.preheader.i50.i.i.i ], [ %i.ep, %.lr.ph.i.i.i.i.i.i51.i.i.i.prol ]
  %.078.i.i.i.i.i.i54.i.i.i.unr = phi ptr [ %.sroa.08.020.i33.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i50.i.i.i ], [ %.pn19.i34.i.i.i, %.lr.ph.i.i.i.i.i.i51.i.i.i.prol ]
  %i.eu = icmp eq i64 %i.ek, 32
  br i1 %i.eu, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i49.i.i.i, label %.lr.ph.i.i.i.i.i.i51.i.i.i

.lr.ph.i.i.i.i.i.i51.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i51.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i51.i.i.i
  %.010.i.i.i.i.i.i52.i.i.i = phi i64 [ %i.ff, %.lr.ph.i.i.i.i.i.i51.i.i.i ], [ %.010.i.i.i.i.i.i52.i.i.i.unr, %.lr.ph.i.i.i.i.i.i51.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i53.i.i.i = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i51.i.i.i ], [ %.069.i.i.i.i.i.i53.i.i.i.unr, %.lr.ph.i.i.i.i.i.i51.i.i.i.prol.loopexit ] ; 4 uses
  %.078.i.i.i.i.i.i54.i.i.i = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i51.i.i.i ], [ %.078.i.i.i.i.i.i54.i.i.i.unr, %.lr.ph.i.i.i.i.i.i51.i.i.i.prol.loopexit ] ; 4 uses
  %i.ev = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i54.i.i.i, i64 -32
  %i.ew = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i53.i.i.i, i64 -32
  %i.ex = load i32, ptr %i.ev, align 4, !tbaa !29
  store i32 %i.ex, ptr %i.ew, align 8, !tbaa !56
  %i.ey = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i54.i.i.i, i64 -24
  %i.ez = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i53.i.i.i, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, ptr noundef nonnull align 8 dereferenceable(24) %i.ey, i64 24, i1 false), !tbaa.struct !59
  %i.fa = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i54.i.i.i, i64 -64 ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i53.i.i.i, i64 -64 ; 2 uses
  %i.fc = load i32, ptr %i.fa, align 4, !tbaa !29
  store i32 %i.fc, ptr %i.fb, align 8, !tbaa !56
  %i.fd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i54.i.i.i, i64 -56
  %i.fe = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i53.i.i.i, i64 -56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %i.fd, i64 24, i1 false), !tbaa.struct !59
  %i.ff = add nsw i64 %.010.i.i.i.i.i.i52.i.i.i, -2
  %i.fg = icmp sgt i64 %.010.i.i.i.i.i.i52.i.i.i, 2
  br i1 %i.fg, label %.lr.ph.i.i.i.i.i.i51.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i49.i.i.i, !llvm.loop !60

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i49.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i51.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i51.i.i.i, %bb.y
  store i32 %.val.i.i35.i.i.i, ptr %.sroa.082.1, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.4.8..sroa_idx.i32.i.i.i, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i26.i.i.i)
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i25.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.5.i.i25.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx.i37.i.i.i, i64 28, i1 false)
  %.val2.i8.i.i38.i.i.i = load i32, ptr %.pn19.i34.i.i.i, align 8, !tbaa !56 ; 2 uses
  %i.fh = icmp slt i32 %.val.i.i35.i.i.i, %.val2.i8.i.i38.i.i.i
  br i1 %i.fh, label %.lr.ph.i.i43.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZ12countersDumpPKcE3$_0EEEvT_T0_.exit.i39.i.i.i"

.lr.ph.i.i43.i.i.i:                               ; preds = %bb.z, %.lr.ph.i.i43.i.i.i
  %.val2.i11.i.i44.i.i.i = phi i32 [ %.val2.i.i.i48.i.i.i, %.lr.ph.i.i43.i.i.i ], [ %.val2.i8.i.i38.i.i.i, %bb.z ]
  %.sroa.0.010.i.i45.i.i.i = phi ptr [ %.sroa.0.0.i.i47.i.i.i, %.lr.ph.i.i43.i.i.i ], [ %.pn19.i34.i.i.i, %bb.z ] ; 3 uses
  %.sroa.04.09.i.i46.i.i.i = phi ptr [ %.sroa.0.010.i.i45.i.i.i, %.lr.ph.i.i43.i.i.i ], [ %.sroa.08.020.i33.i.i.i, %bb.z ] ; 3 uses
  store i32 %.val2.i11.i.i44.i.i.i, ptr %.sroa.04.09.i.i46.i.i.i, align 8, !tbaa !56
  %i.fi = getelementptr inbounds i8, ptr %.sroa.04.09.i.i46.i.i.i, i64 -24
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.04.09.i.i46.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fj, ptr noundef nonnull align 8 dereferenceable(24) %i.fi, i64 24, i1 false), !tbaa.struct !59
  %.sroa.0.0.i.i47.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i45.i.i.i, i64 -32 ; 2 uses
  %.val2.i.i.i48.i.i.i = load i32, ptr %.sroa.0.0.i.i47.i.i.i, align 8, !tbaa !56 ; 2 uses
  %i.fk = icmp slt i32 %.val.i.i35.i.i.i, %.val2.i.i.i48.i.i.i
  br i1 %i.fk, label %.lr.ph.i.i43.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZ12countersDumpPKcE3$_0EEEvT_T0_.exit.i39.i.i.i", !llvm.loop !61

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZ12countersDumpPKcE3$_0EEEvT_T0_.exit.i39.i.i.i": ; preds = %.lr.ph.i.i43.i.i.i, %bb.z
  %.sroa.04.0.lcssa.i.i40.i.i.i = phi ptr [ %.sroa.08.020.i33.i.i.i, %bb.z ], [ %.sroa.0.010.i.i45.i.i.i, %.lr.ph.i.i43.i.i.i ] ; 2 uses
  store i32 %.val.i.i35.i.i.i, ptr %.sroa.04.0.lcssa.i.i40.i.i.i, align 8, !tbaa !56
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i40.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, ptr noundef nonnull align 4 dereferenceable(24) %.sroa.5.8..sroa_idx.i.i31.i.i.i, i64 24, i1 false), !tbaa.struct !59
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i25.i.i.i)
  br label %bb.aa

bb.aa:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIZ12countersDumpPKcE3$_0EEEvT_T0_.exit.i39.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIi12LineCountersESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i49.i.i.i
  %.not.i42.i.i.i = icmp eq ptr %.sroa.08.020.i33.i.i.i, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i42.i.i.i, label %.lr.ph136.preheader, label %bb.x, !llvm.loop !62

bb.ab:                                            ; preds = %.lr.ph130, %_ZN4Luau6detail14DenseHashTableIiSt4pairIi12LineCountersES2_IKiS3_ENS0_16ItemInterfaceMapIiS3_EESt4hashIiESt8equal_toIiEE14const_iteratorppEv.exit
  %.sroa.7.0128 = phi i64 [ %.0.lcssa.i.i, %.lr.ph130 ], [ %.lcssa.i, %_ZN4Luau6detail14DenseHashTableIiSt4pairIi12LineCountersES2_IKiS3_ENS0_16ItemInterfaceMapIiS3_EESt4hashIiESt8equal_toIiEE14const_iteratorppEv.exit ] ; 4 uses
  %.sroa.16.0127 = phi ptr [ null, %.lr.ph130 ], [ %.sroa.16.1, %_ZN4Luau6detail14DenseHashTableIiSt4pairIi12LineCountersES2_IKiS3_ENS0_16ItemInterfaceMapIiS3_EESt4hashIiESt8equal_toIiEE14const_iteratorppEv.exit ] ; 5 uses
  %.sroa.10.0126 = phi ptr [ null, %.lr.ph130 ], [ %.sroa.10.1, %_ZN4Luau6detail14DenseHashTableIiSt4pairIi12LineCountersES2_IKiS3_ENS0_16ItemInterfaceMapIiS3_EESt4hashIiESt8equal_toIiEE14const_iteratorppEv.exit ] ; 4 uses
  %.sroa.082.0125 = phi ptr [ null, %.lr.ph130 ], [ %.sroa.082.1, %_ZN4Luau6detail14DenseHashTableIiSt4pairIi12LineCountersES2_IKiS3_ENS0_16ItemInterfaceMapIiS3_EESt4hashIiESt8equal_toIiEE14const_iteratorppEv.exit ] ; 8 uses
  %i.fm = load ptr, ptr %i.cd, align 8, !tbaa !53
  %i.fn = getelementptr inbounds nuw [32 x i8], ptr %i.fm, i64 %.sroa.7.0128 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %.not.i66 = icmp eq ptr %.sroa.10.0126, %.sroa.16.0127
  br i1 %.not.i66, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fp = load i32, ptr %i.fn, align 4, !tbaa !29
  store i32 %i.fp, ptr %.sroa.10.0126, align 8, !tbaa !56
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.10.0126, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fq, ptr noundef nonnull align 8 dereferenceable(24) %i.fo, i64 24, i1 false), !tbaa.struct !59
  br label %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EE12emplace_backIJRKiRKS1_EEERS2_DpOT_.exit

bb.ad:                                            ; preds = %bb.ab
  %i.fr = ptrtoint ptr %.sroa.16.0127 to i64
  %i.fs = ptrtoint ptr %.sroa.082.0125 to i64
  %i.ft = sub i64 %i.fr, %i.fs                    ; 5 uses
  %i.fu = icmp eq i64 %i.ft, 9223372036854775776
  br i1 %i.fu, label %bb.ae, label %_ZNKSt6vectorISt4pairIi12LineCountersESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #23
          to label %.noexc68 unwind label %.loopexit.split-lp

.noexc68:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorISt4pairIi12LineCountersESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ad
  %i.fv = ashr exact i64 %i.ft, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fv, i64 1)
  %i.fw = add nsw i64 %.sroa.speculated.i.i.i, %i.fv ; 2 uses
  %i.fx = icmp ult i64 %i.fw, %i.fv
  %i.fy = call i64 @llvm.umin.i64(i64 %i.fw, i64 288230376151711743)
  %i.fz = select i1 %i.fx, i64 288230376151711743, i64 %i.fy ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.fz, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ga = shl nuw nsw i64 %i.fz, 5
  %i.gb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #24
          to label %.noexc69 unwind label %.loopexit ; 5 uses

.noexc69:                                         ; preds = %_ZNKSt6vectorISt4pairIi12LineCountersESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.ft ; 2 uses
  %i.gd = load i32, ptr %i.fn, align 4, !tbaa !29
  store i32 %i.gd, ptr %i.gc, align 8, !tbaa !56
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ge, ptr noundef nonnull align 8 dereferenceable(24) %i.fo, i64 24, i1 false), !tbaa.struct !59
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.082.0125, %.sroa.16.0127
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i, label %.lr.ph.i.i.i.i.i67

.lr.ph.i.i.i.i.i67:                               ; preds = %.noexc69, %.lr.ph.i.i.i.i.i67
  %.012.i.i.i.i.i = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i67 ], [ %i.gb, %.noexc69 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i67 ], [ %.sroa.082.0125, %.noexc69 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 32, i1 false), !alias.scope !64
  %i.gf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.gf, %.sroa.16.0127
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i, label %.lr.ph.i.i.i.i.i67, !llvm.loop !68

_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i67, %.noexc69
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.gb, %.noexc69 ], [ %i.gg, %.lr.ph.i.i.i.i.i67 ]
  %.not.i34.i.i = icmp eq ptr %.sroa.082.0125, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EE17_M_realloc_insertIJRKiRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.082.0125, i64 noundef %i.ft) #21
  br label %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EE17_M_realloc_insertIJRKiRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EE17_M_realloc_insertIJRKiRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit33.i.i
  %i.gh = getelementptr inbounds nuw [32 x i8], ptr %i.gb, i64 %i.fz
  br label %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EE12emplace_backIJRKiRKS1_EEERS2_DpOT_.exit

_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EE12emplace_backIJRKiRKS1_EEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EE17_M_realloc_insertIJRKiRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.ac
  %.sroa.082.1 = phi ptr [ %i.gb, %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EE17_M_realloc_insertIJRKiRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.082.0125, %bb.ac ] ; 19 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EE17_M_realloc_insertIJRKiRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.10.0126, %bb.ac ] ; 5 uses
  %.sroa.16.1 = phi ptr [ %i.gh, %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EE17_M_realloc_insertIJRKiRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i ], [ %.sroa.16.0127, %bb.ac ] ; 2 uses
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 32 ; 5 uses
  %i.gi = load i64, ptr %i.ce, align 8, !tbaa !48
  %i.gj = add i64 %.sroa.7.0128, 1
  %umax.i = call i64 @llvm.umax.i64(i64 %i.gi, i64 %i.gj) ; 3 uses
  %i.gk = add i64 %umax.i, -1                     ; 2 uses
  %exitcond.not229 = icmp eq i64 %.sroa.7.0128, %i.gk
  br i1 %exitcond.not229, label %_ZN4Luau6detail14DenseHashTableIiSt4pairIi12LineCountersES2_IKiS3_ENS0_16ItemInterfaceMapIiS3_EESt4hashIiESt8equal_toIiEE14const_iteratorppEv.exit, label %.lr.ph230.preheader

.lr.ph230.preheader:                              ; preds = %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EE12emplace_backIJRKiRKS1_EEERS2_DpOT_.exit
  %i.gl = load ptr, ptr %i.cd, align 8, !tbaa !53
  %i.gm = load i32, ptr %i.cn, align 8, !tbaa !29
  br label %.lr.ph230

bb.ag:                                            ; preds = %.lr.ph230
  %exitcond.not = icmp eq i64 %i.go, %i.gk
  br i1 %exitcond.not, label %_ZN4Luau6detail14DenseHashTableIiSt4pairIi12LineCountersES2_IKiS3_ENS0_16ItemInterfaceMapIiS3_EESt4hashIiESt8equal_toIiEE14const_iteratorppEv.exit, label %.lr.ph230, !llvm.loop !69

.lr.ph230:                                        ; preds = %.lr.ph230.preheader, %bb.ag
  %i.gn = phi i64 [ %i.go, %bb.ag ], [ %.sroa.7.0128, %.lr.ph230.preheader ]
  %i.go = add i64 %i.gn, 1                        ; 4 uses
  %i.gp = getelementptr inbounds nuw [32 x i8], ptr %i.gl, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !29
  %i.gr = icmp eq i32 %i.gq, %i.gm
  br i1 %i.gr, label %bb.ag, label %._ZN4Luau6detail14DenseHashTableIiSt4pairIi12LineCountersES2_IKiS3_ENS0_16ItemInterfaceMapIiS3_EESt4hashIiESt8equal_toIiEE14const_iteratorppEv.exit_crit_edge231, !llvm.loop !69

._ZN4Luau6detail14DenseHashTableIiSt4pairIi12LineCountersES2_IKiS3_ENS0_16ItemInterfaceMapIiS3_EESt4hashIiESt8equal_toIiEE14const_iteratorppEv.exit_crit_edge231: ; preds = %.lr.ph230
  br label %_ZN4Luau6detail14DenseHashTableIiSt4pairIi12LineCountersES2_IKiS3_ENS0_16ItemInterfaceMapIiS3_EESt4hashIiESt8equal_toIiEE14const_iteratorppEv.exit, !llvm.loop !69

_ZN4Luau6detail14DenseHashTableIiSt4pairIi12LineCountersES2_IKiS3_ENS0_16ItemInterfaceMapIiS3_EESt4hashIiESt8equal_toIiEE14const_iteratorppEv.exit: ; preds = %bb.ag, %._ZN4Luau6detail14DenseHashTableIiSt4pairIi12LineCountersES2_IKiS3_ENS0_16ItemInterfaceMapIiS3_EESt4hashIiESt8equal_toIiEE14const_iteratorppEv.exit_crit_edge231, %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EE12emplace_backIJRKiRKS1_EEERS2_DpOT_.exit
  %.lcssa.i = phi i64 [ %umax.i, %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EE12emplace_backIJRKiRKS1_EEERS2_DpOT_.exit ], [ %i.go, %._ZN4Luau6detail14DenseHashTableIiSt4pairIi12LineCountersES2_IKiS3_ENS0_16ItemInterfaceMapIiS3_EESt4hashIiESt8equal_toIiEE14const_iteratorppEv.exit_crit_edge231 ], [ %umax.i, %bb.ag ] ; 2 uses
  %.not108 = icmp eq i64 %.lcssa.i, %i.cf
  br i1 %.not108, label %._crit_edge131, label %bb.ab

.loopexit:                                        ; preds = %_ZNKSt6vectorISt4pairIi12LineCountersESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i71 = icmp eq ptr %.sroa.082.0125, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EED2Ev.exit72, label %bb.al

._crit_edge137:                                   ; preds = %bb.ak, %._crit_edge131
  %.not.i.i.i70 = icmp eq ptr %.sroa.082.1, null
  br i1 %.not.i.i.i70, label %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge137
  %i.gs = ptrtoint ptr %.sroa.082.1 to i64
  %i.gt = sub i64 %i.co, %i.gs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.082.1, i64 noundef %i.gt) #21
  br label %_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EED2Ev.exit

_ZNSt6vectorISt4pairIi12LineCountersESaIS2_EED2Ev.exit: ; preds = %bb.s, %.loopexit111, %._crit_edge137, %bb.ai
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.093.0139, i64 64 ; 2 uses
  %.not107 = icmp eq ptr %i.gu, %i.bz
  br i1 %.not107, label %._crit_edge142, label %.lr.ph141

.lr.ph136:                                        ; preds = %.lr.ph136.preheader, %bb.ak
  %.sroa.073.0135 = phi ptr [ %i.hd, %bb.ak ], [ %.sroa.082.1, %.lr.ph136.preheader ] ; 6 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.073.0135, i64 8
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !70 ; 2 uses
  %.not48 = icmp eq i64 %i.gw, 0
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.073.0135, i64 16
  %i.gy = load i64, ptr %i.gx, align 8            ; 2 uses
  %.not49 = icmp eq i64 %i.gy, 0
  %or.cond = select i1 %.not48, i1 %.not49, i1 false
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.073.0135, i64 24
  %i.ha = load i64, ptr %i.gz, align 8            ; 2 uses
end_hunk_0
