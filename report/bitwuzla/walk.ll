Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/walk?download=true
inline.NumInlined: 365
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL8Internal13walk_flip_litERNS_6WalkerEi:bb.a
  %cmp.n = icmp eq i64 %n.vec, %i.am
  br i1 %cmp.n, label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit, label %.lr.ph143.preheader262

.lr.ph143.preheader262:                           ; preds = %.lr.ph143.preheader, %middle.block
  %indvars.iv175.ph = phi i64 [ %i.ar, %.lr.ph143.preheader ], [ %i.as, %middle.block ]
  %.291141.ph = phi i32 [ %i.ao, %.lr.ph143.preheader ], [ %vector.recur.extract, %middle.block ]
  br label %.lr.ph143

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  store i32 %2, ptr %i.ai, align 8, !tbaa !180
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !180 ; 2 uses
  %i.az = load ptr, ptr %i.x, align 8, !tbaa !171
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.z ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !191 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !192
  %.not.i.i.i = icmp eq ptr %i.bc, %i.be
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.ag, ptr %i.bc, align 8, !tbaa !170
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 %i.ay, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !180
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 %i.ak, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !180
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store ptr %i.bf, ptr %i.bb, align 8, !tbaa !191
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit

bb.e:                                             ; preds = %bb.c
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !193 ; 5 uses
  %i.bh = ptrtoint ptr %i.bc to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 3 uses
  %i.bk = icmp eq i64 %i.bj, 9223372036854775792
  br i1 %i.bk, label %bb.f, label %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #13
  unreachable

_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.e
  %i.bl = ashr exact i64 %i.bj, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bm = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bl ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 576460752303423487)
  %i.bp = select i1 %i.bn, i64 576460752303423487, i64 %i.bo ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.bq = shl nuw nsw i64 %i.bp, 4
  %i.br = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #14 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bj ; 3 uses
  store ptr %i.ag, ptr %i.bs, align 8, !tbaa !170
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 %i.ay, ptr %.sroa.5.0..sroa_idx5.i, align 8, !tbaa !180
  %.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 %i.ak, ptr %.sroa.6.0..sroa_idx7.i, align 4, !tbaa !180
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, %i.bc
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.br, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bg, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !194, !alias.scope !225
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bt, %i.bc
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.br, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bg) #15
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  store ptr %i.br, ptr %i.ba, align 8, !tbaa !193
  store ptr %i.bv, ptr %i.bb, align 8, !tbaa !191
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bp
  store ptr %i.bw, ptr %i.bd, align 8, !tbaa !192
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit

.lr.ph143:                                        ; preds = %.lr.ph143.preheader262, %.lr.ph143
  %indvars.iv175 = phi i64 [ %indvars.iv.next176, %.lr.ph143 ], [ %indvars.iv175.ph, %.lr.ph143.preheader262 ] ; 2 uses
  %.291141 = phi i32 [ %i.by, %.lr.ph143 ], [ %.291141.ph, %.lr.ph143.preheader262 ]
  %indvars.iv.next176 = add nsw i64 %indvars.iv175, -1 ; 2 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.next176 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !180
  store i32 %.291141, ptr %i.bx, align 4, !tbaa !180
  %i.bz = icmp samesign ugt i64 %indvars.iv175, 1
  br i1 %i.bz, label %.lr.ph143, label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit, !llvm.loop !217

_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit: ; preds = %.lr.ph143, %middle.block, %._crit_edge.thread, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.d
  %.sroa.0128.1 = phi ptr [ %.sroa.0128.0146, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.sroa.0128.0146, %bb.d ], [ %i.ah, %._crit_edge.thread ], [ %i.ah, %middle.block ], [ %i.ah, %.lr.ph143 ] ; 2 uses
  %.not96 = icmp eq i64 %.092147, 0
  br i1 %.not96, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit
  %i.ca = add nsw i64 %.092147, -1
  br label %bb.j, !llvm.loop !218

bb.i:                                             ; preds = %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit
  %i.cb = load i64, ptr %i.ac, align 8, !tbaa !159
  %i.cc = add nsw i64 %i.cb, 1
  store i64 %i.cc, ptr %i.ac, align 8, !tbaa !159
  %i.cd = load i64, ptr %i.ad, align 8, !tbaa !183
  %i.ce = add nsw i64 %i.cd, 1
  store i64 %i.ce, ptr %i.ad, align 8, !tbaa !183
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.193 = phi i64 [ %i.ca, %bb.h ], [ %i.ab, %bb.i ]
  %.not132 = icmp eq ptr %i.af, %i.n
  br i1 %.not132, label %._crit_edge150.loopexit, label %bb.b

._crit_edge150.loopexit:                          ; preds = %bb.j
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !187
  %.pre184 = load ptr, ptr %i.m, align 8, !tbaa !169
  br label %._crit_edge150

._crit_edge150:                                   ; preds = %._crit_edge150.loopexit, %bb.a
  %i.cf = phi ptr [ %i.n, %bb.a ], [ %.pre184, %._crit_edge150.loopexit ] ; 2 uses
  %i.cg = phi ptr [ %i.o, %bb.a ], [ %.pre, %._crit_edge150.loopexit ] ; 2 uses
  %.sroa.0128.0.lcssa = phi ptr [ %i.n, %bb.a ], [ %.sroa.0128.1, %._crit_edge150.loopexit ] ; 2 uses
  %i.ch = ptrtoint ptr %.sroa.0128.0.lcssa to i64
  %i.ci = ptrtoint ptr %i.cg to i64               ; 2 uses
  %i.cj = sub i64 %i.ch, %i.ci                    ; 2 uses
  %i.ck = ashr exact i64 %i.cj, 3                 ; 3 uses
  %i.cl = ptrtoint ptr %i.cf to i64
  %i.cm = sub i64 %i.cl, %i.ci
  %i.cn = ashr exact i64 %i.cm, 3                 ; 3 uses
  %i.co = icmp ugt i64 %i.ck, %i.cn
  br i1 %i.co, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge150
  %i.cp = sub nuw nsw i64 %i.ck, %i.cn
  tail call void @_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.cp)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit

bb.l:                                             ; preds = %._crit_edge150
  %i.cq = icmp uge i64 %i.ck, %i.cn
  %.not.i.i = icmp eq ptr %i.cf, %.sroa.0128.0.lcssa
  %or.cond = or i1 %i.cq, %.not.i.i
  br i1 %or.cond, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cj
  store ptr %i.cr, ptr %i.m, align 8, !tbaa !169
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit: ; preds = %bb.k, %bb.l, %_ZSt8_DestroyIPPN7CaDiCaL6ClauseES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !159
  %i.cu = add nsw i64 %i.ct, 1
  store i64 %i.cu, ptr %i.cs, align 8, !tbaa !159
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 3992 ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !183
  %i.cx = add nsw i64 %i.cw, 1
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !183
  %i.cy = sub nsw i32 0, %2                       ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.da = tail call noundef i32 @llvm.fshl.i32(i32 %i.a, i32 %i.cy, i32 1)
  %i.db = zext i32 %i.da to i64
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !171
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %i.db ; 3 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !173 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !173 ; 2 uses
  %.not133166 = icmp eq ptr %i.de, %i.dg
  br i1 %.not133166, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE5clearEv.exit, label %.lr.ph168

.lr.ph168:                                        ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br label %bb.m

._crit_edge169:                                   ; preds = %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit115
  %.pre185 = load ptr, ptr %i.dd, align 8, !tbaa !193 ; 2 uses
  %.pre186 = load ptr, ptr %i.df, align 8, !tbaa !191
  %i.di = icmp eq ptr %.pre186, %.pre185
  br i1 %i.di, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE5clearEv.exit, label %_ZSt8_DestroyIPN7CaDiCaL5WatchES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN7CaDiCaL5WatchES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %._crit_edge169
  store ptr %.pre185, ptr %i.df, align 8, !tbaa !191
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE5clearEv.exit: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE6resizeEm.exit, %._crit_edge169, %_ZSt8_DestroyIPN7CaDiCaL5WatchES1_EvT_S3_RSaIT0_E.exit.i.i
  ret void

bb.m:                                             ; preds = %.lr.ph168, %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit115
  %.sroa.0120.0167 = phi ptr [ %i.de, %.lr.ph168 ], [ %i.ga, %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit115 ] ; 2 uses
  %i.dj = load ptr, ptr %.sroa.0120.0167, align 8, !tbaa !179 ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !180 ; 6 uses
  %i.dn = icmp sgt i32 %i.dm, 1
  br i1 %i.dn, label %.lr.ph155, label %._crit_edge165

.lr.ph155:                                        ; preds = %bb.m
  %i.do = load ptr, ptr %i.c, align 8, !tbaa !174
  %wide.trip.count = zext nneg i32 %i.dm to i64   ; 2 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph164.preheader, label %bb.o, !llvm.loop !219

bb.o:                                             ; preds = %.lr.ph155, %bb.n
  %indvars.iv178 = phi i64 [ 1, %.lr.ph155 ], [ %indvars.iv.next179, %bb.n ] ; 2 uses
  %.081152 = phi i32 [ %i.cy, %.lr.ph155 ], [ %i.dq, %bb.n ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv178 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !180 ; 8 uses
  store i32 %.081152, ptr %i.dp, align 4, !tbaa !180
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr %i.do, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !177
  %i.du = icmp slt i8 %i.dt, 0
  br i1 %i.du, label %bb.n, label %._crit_edge156

._crit_edge156:                                   ; preds = %bb.o
  %.not = icmp eq i32 %i.dq, 0
  br i1 %.not, label %.lr.ph164.preheader, label %bb.p

.lr.ph164.preheader:                              ; preds = %bb.n, %._crit_edge156
  %i.dv = zext nneg i32 %i.dm to i64              ; 3 uses
  %i.dw = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check240 = icmp ult i32 %i.dm, 9
  br i1 %min.iters.check240, label %.lr.ph164.preheader259, label %vector.ph241

vector.ph241:                                     ; preds = %.lr.ph164.preheader
  %n.vec242 = and i64 %i.dw, -8                   ; 3 uses
  %i.dx = sub nsw i64 %i.dv, %n.vec242
  %vector.recur.init245 = insertelement <4 x i32> poison, i32 %i.dq, i64 3
  %invariant.gep269 = getelementptr [4 x i8], ptr %i.dk, i64 %i.dv
  br label %vector.body243

vector.body243:                                   ; preds = %vector.body243, %vector.ph241
  %index244 = phi i64 [ 0, %vector.ph241 ], [ %index.next253, %vector.body243 ] ; 2 uses
  %vector.recur246 = phi <4 x i32> [ %vector.recur.init245, %vector.ph241 ], [ %reverse250, %vector.body243 ]
  %i.dy = xor i64 %index244, -1
  %gep270 = getelementptr [4 x i8], ptr %invariant.gep269, i64 %i.dy ; 2 uses
  %i.dz = getelementptr inbounds i8, ptr %gep270, i64 -12 ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %gep270, i64 -28 ; 2 uses
  %wide.load247 = load <4 x i32>, ptr %i.dz, align 4, !tbaa !180 ; 2 uses
  %wide.load248 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !180 ; 3 uses
  %reverse250 = shufflevector <4 x i32> %wide.load248, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse251 = shufflevector <4 x i32> %wide.load247, <4 x i32> %vector.recur246, <4 x i32> <i32 1, i32 2, i32 3, i32 7>
  %reverse252 = shufflevector <4 x i32> %wide.load248, <4 x i32> %wide.load247, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  store <4 x i32> %reverse251, ptr %i.dz, align 4, !tbaa !180
  store <4 x i32> %reverse252, ptr %i.ea, align 4, !tbaa !180
  %index.next253 = add nuw i64 %index244, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next253, %n.vec242
  br i1 %i.eb, label %middle.block254, label %vector.body243, !llvm.loop !220

middle.block254:                                  ; preds = %vector.body243
  %vector.recur.extract255 = extractelement <4 x i32> %wide.load248, i64 0
  %cmp.n256 = icmp eq i64 %i.dw, %n.vec242
  br i1 %cmp.n256, label %._crit_edge165, label %.lr.ph164.preheader259

.lr.ph164.preheader259:                           ; preds = %.lr.ph164.preheader, %middle.block254
  %indvars.iv181.ph = phi i64 [ %i.dv, %.lr.ph164.preheader ], [ %i.dx, %middle.block254 ]
  %.2162.ph = phi i32 [ %i.dq, %.lr.ph164.preheader ], [ %vector.recur.extract255, %middle.block254 ]
  br label %.lr.ph164

bb.p:                                             ; preds = %._crit_edge156
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  store i32 %i.cy, ptr %i.ec, align 4, !tbaa !180
  store i32 %i.dq, ptr %i.dk, align 8, !tbaa !180
  %i.ed = tail call noundef i32 @llvm.abs.i32(i32 %i.dq, i1 true)
  %i.ee = tail call noundef i32 @llvm.fshl.i32(i32 %i.ed, i32 %i.dq, i32 1)
  %i.ef = zext i32 %i.ee to i64
  %i.eg = load ptr, ptr %i.cz, align 8, !tbaa !171
  %i.eh = getelementptr inbounds nuw [24 x i8], ptr %i.eg, i64 %i.ef ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 3 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !191 ; 8 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !192
  %.not.i.i.i98 = icmp eq ptr %i.ej, %i.el
  br i1 %.not.i.i.i98, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.dj, ptr %i.ej, align 8, !tbaa !170
  %.sroa.5.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i32 %i.cy, ptr %.sroa.5.0..sroa_idx.i99, align 8, !tbaa !180
  %.sroa.6.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  store i32 %i.dm, ptr %.sroa.6.0..sroa_idx.i100, align 4, !tbaa !180
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store ptr %i.em, ptr %i.ei, align 8, !tbaa !191
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit115

bb.r:                                             ; preds = %bb.p
  %i.en = load ptr, ptr %i.eh, align 8, !tbaa !193 ; 5 uses
  %i.eo = ptrtoint ptr %i.ej to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep                    ; 3 uses
  %i.er = icmp eq i64 %i.eq, 9223372036854775792
  br i1 %i.er, label %bb.s, label %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i101

bb.s:                                             ; preds = %bb.r
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #13
  unreachable

_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i101: ; preds = %bb.r
  %i.es = ashr exact i64 %i.eq, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i102 = tail call i64 @llvm.umax.i64(i64 %i.es, i64 1)
  %i.et = add nsw i64 %.sroa.speculated.i.i.i.i.i102, %i.es ; 2 uses
  %i.eu = icmp ult i64 %i.et, %i.es
  %i.ev = tail call i64 @llvm.umin.i64(i64 %i.et, i64 576460752303423487)
  %i.ew = select i1 %i.eu, i64 576460752303423487, i64 %i.ev ; 3 uses
  %.not.i.i.i.i.i103 = icmp ne i64 %i.ew, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i103)
  %i.ex = shl nuw nsw i64 %i.ew, 4
  %i.ey = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ex) #14 ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.eq ; 3 uses
  store ptr %i.dj, ptr %i.ez, align 8, !tbaa !170
  %.sroa.5.0..sroa_idx5.i104 = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i32 %i.cy, ptr %.sroa.5.0..sroa_idx5.i104, align 8, !tbaa !180
  %.sroa.6.0..sroa_idx7.i105 = getelementptr inbounds nuw i8, ptr %i.ez, i64 12
  store i32 %i.dm, ptr %.sroa.6.0..sroa_idx7.i105, align 4, !tbaa !180
  %.not10.i.i.i.i.i.i.i.i106 = icmp eq ptr %i.en, %i.ej
  br i1 %.not10.i.i.i.i.i.i.i.i106, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i111, label %.lr.ph.i.i.i.i.i.i.i.i107

.lr.ph.i.i.i.i.i.i.i.i107:                        ; preds = %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i101, %.lr.ph.i.i.i.i.i.i.i.i107
  %.012.i.i.i.i.i.i.i.i108 = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i.i.i107 ], [ %i.ey, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i101 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i109 = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i.i.i107 ], [ %i.en, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i101 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i.i108, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i109, i64 16, i1 false), !tbaa.struct !194, !alias.scope !226
  %i.fa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i109, i64 16 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i108, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i110 = icmp eq ptr %i.fa, %i.ej
  br i1 %.not.i.i.i.i.i.i.i.i110, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i111, label %.lr.ph.i.i.i.i.i.i.i.i107, !llvm.loop !1

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i111: ; preds = %.lr.ph.i.i.i.i.i.i.i.i107, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i101
  %.0.lcssa.i.i.i.i.i.i.i.i112 = phi ptr [ %i.ey, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i101 ], [ %i.fb, %.lr.ph.i.i.i.i.i.i.i.i107 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i112, i64 16
  %.not.i23.i.i.i.i113 = icmp eq ptr %i.en, null
  br i1 %.not.i23.i.i.i.i113, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i114, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i111
  tail call void @_ZdlPv(ptr noundef nonnull %i.en) #15
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i114

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i114: ; preds = %bb.t, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i111
  store ptr %i.ey, ptr %i.eh, align 8, !tbaa !193
  store ptr %i.fc, ptr %i.ei, align 8, !tbaa !191
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.ey, i64 %i.ew
  store ptr %i.fd, ptr %i.ek, align 8, !tbaa !192
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit115

._crit_edge165:                                   ; preds = %.lr.ph164, %middle.block254, %bb.m
  %i.fe = load ptr, ptr %i.m, align 8, !tbaa !169 ; 4 uses
  %i.ff = load ptr, ptr %i.dh, align 8, !tbaa !195
  %.not.i116 = icmp eq ptr %i.fe, %i.ff
  br i1 %.not.i116, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge165
  store ptr %i.dj, ptr %i.fe, align 8, !tbaa !170
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store ptr %i.fg, ptr %i.m, align 8, !tbaa !169
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit115

bb.v:                                             ; preds = %._crit_edge165
  %i.fh = load ptr, ptr %i.l, align 8, !tbaa !168 ; 4 uses
  %i.fi = ptrtoint ptr %i.fe to i64
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = sub i64 %i.fi, %i.fj                    ; 5 uses
  %i.fl = icmp eq i64 %i.fk, 9223372036854775800
  br i1 %i.fl, label %bb.w, label %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #13
  unreachable

_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.fm = ashr exact i64 %i.fk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.fm, i64 1)
  %i.fn = add nsw i64 %.sroa.speculated.i.i.i, %i.fm ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.fm
  %i.fp = tail call i64 @llvm.umin.i64(i64 %i.fn, i64 1152921504606846975)
  %i.fq = select i1 %i.fo, i64 1152921504606846975, i64 %i.fp ; 3 uses
  %.not.i.i.i117 = icmp ne i64 %i.fq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i117)
  %i.fr = shl nuw nsw i64 %i.fq, 3
  %i.fs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #14 ; 4 uses
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 %i.fk ; 2 uses
  store ptr %i.dj, ptr %i.ft, align 8, !tbaa !170
  %i.fu = icmp sgt i64 %i.fk, 0
  br i1 %i.fu, label %bb.x, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.x:                                             ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fs, ptr align 8 %i.fh, i64 %i.fk, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.x, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %.not.i17.i.i = icmp eq ptr %i.fh, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.fh) #15
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.fs, ptr %i.l, align 8, !tbaa !168
  store ptr %i.fv, ptr %i.m, align 8, !tbaa !169
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fq
  store ptr %i.fw, ptr %i.dh, align 8, !tbaa !195
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit115

.lr.ph164:                                        ; preds = %.lr.ph164.preheader259, %.lr.ph164
  %indvars.iv181 = phi i64 [ %indvars.iv.next182, %.lr.ph164 ], [ %indvars.iv181.ph, %.lr.ph164.preheader259 ] ; 2 uses
  %.2162 = phi i32 [ %i.fy, %.lr.ph164 ], [ %.2162.ph, %.lr.ph164.preheader259 ]
  %indvars.iv.next182 = add nsw i64 %indvars.iv181, -1 ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.next182 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !180
  store i32 %.2162, ptr %i.fx, align 4, !tbaa !180
  %i.fz = icmp samesign ugt i64 %indvars.iv181, 2
  br i1 %i.fz, label %.lr.ph164, label %._crit_edge165, !llvm.loop !224

_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit115: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.u, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i114, %bb.q
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0120.0167, i64 16 ; 2 uses
  %.not133 = icmp eq ptr %i.ga, %i.dg
  br i1 %.not133, label %._crit_edge169, label %bb.m
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL8Internal4walkEv:bb.a

_ZN7CaDiCaL8Internal4timeEv.exit26:               ; preds = %bb.i, %bb.j
  %i.au = phi double [ %i.as, %bb.i ], [ %i.at, %bb.j ] ; 4 uses
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !198 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 3608
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !281 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 7120
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !285
  %.not22 = icmp sgt i32 %i.az, %i.ax
  br i1 %.not22, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit26
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 7088
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.av, ptr noundef nonnull align 8 dereferenceable(36) %i.ba, double noundef %i.au)
  %.pre31.pre33.pre = load ptr, ptr %i.f, align 8, !tbaa !198
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN7CaDiCaL8Internal4timeEv.exit26
  %.pre31.pre33 = phi ptr [ %.pre31.pre33.pre, %bb.k ], [ %i.av, %_ZN7CaDiCaL8Internal4timeEv.exit26 ] ; 5 uses
  %i.bb = load i8, ptr %i.j, align 4, !tbaa !282, !range !196, !noundef !197
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.m, label %.thread42

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre31.pre33, i64 6800
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !283
  %.not23 = icmp sgt i32 %i.be, %i.ax
  br i1 %.not23, label %.thread40, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre31.pre33, i64 6768
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %.pre31.pre33, ptr noundef nonnull align 8 dereferenceable(36) %i.bf, double noundef %i.au)
  %.pre29 = load i8, ptr %i.j, align 4, !tbaa !282, !range !196
  %.pre31.pre = load ptr, ptr %i.f, align 8, !tbaa !198 ; 2 uses
  %i.bg = trunc nuw i8 %.pre29 to i1
  br i1 %i.bg, label %.thread40, label %.thread42

.thread42:                                        ; preds = %bb.l, %bb.n
  %.pre3144 = phi ptr [ %.pre31.pre, %bb.n ], [ %.pre31.pre33, %bb.l ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre3144, i64 7040
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !284
  %.not24 = icmp sgt i32 %i.bi, %i.ax
  br i1 %.not24, label %.thread40, label %bb.o

bb.o:                                             ; preds = %.thread42
  %i.bj = getelementptr inbounds nuw i8, ptr %.pre3144, i64 7008
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %.pre3144, ptr noundef nonnull align 8 dereferenceable(36) %i.bj, double noundef %i.au)
  %.pre30 = load ptr, ptr %i.f, align 8, !tbaa !198
  br label %.thread40

.thread40:                                        ; preds = %bb.m, %bb.o, %.thread42, %bb.n
  %i.bk = phi ptr [ %.pre30, %bb.o ], [ %.pre3144, %.thread42 ], [ %.pre31.pre, %bb.n ], [ %.pre31.pre33, %bb.m ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 7104
  store double %i.au, ptr %i.bl, align 8, !tbaa !200
  ret void
}

declare void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #2

declare void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

declare noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #2

declare noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !168    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !195
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !170
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !170
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !169
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #13
  unreachable

_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #14 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !170
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !170
  br label %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE13_M_deallocateEPS2_m.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #15
  br label %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE13_M_deallocateEPS2_m.exit36

_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE13_M_deallocateEPS2_m.exit36: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !168
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !169
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !195
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE13_M_deallocateEPS2_m.exit36, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !167}
!1 = distinct !{!1, !167}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTSN7CaDiCaL8InternalE", !10, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"_ZTSN7CaDiCaL6RandomE", !12, i64 0}
!14 = !{!"any p2 pointer", !10, i64 0}
!15 = !{!"p2 _ZTSN7CaDiCaL6ClauseE", !14, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE12_Vector_implE", !16, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE", !17, i64 0}
!19 = !{!"_ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !18, i64 0}
!20 = !{!"double", !6, i64 0}
!21 = !{!"p1 double", !10, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !22, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !23, i64 0}
!25 = !{!"_ZTSSt6vectorIdSaIdEE", !24, i64 0}
!26 = !{!"_ZTSN7CaDiCaL6WalkerE", !11, i64 0, !13, i64 8, !12, i64 16, !12, i64 24, !19, i64 32, !20, i64 56, !25, i64 64, !25, i64 88}
!27 = !{!"bool", !6, i64 0}
!28 = !{!"_ZTSN7CaDiCaL9ReluctantE", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !27, i64 40, !27, i64 41}
!29 = !{!"p1 long", !10, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!31 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !30, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseImSaImEE", !31, i64 0}
!33 = !{!"_ZTSSt6vectorImSaImEE", !32, i64 0}
!34 = !{!"p1 _ZTSSt6vectorIS_ImSaImEESaIS1_EE", !10, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!36 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE12_Vector_implE", !35, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE", !36, i64 0}
!38 = !{!"_ZTSSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE", !37, i64 0}
!39 = !{!"p1 omnipotent char", !10, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !40, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !41, i64 0}
!43 = !{!"_ZTSSt6vectorIaSaIaEE", !42, i64 0}
!44 = !{!"_ZTSN7CaDiCaL6PhasesE", !43, i64 0, !43, i64 24, !43, i64 48, !43, i64 72, !43, i64 96, !43, i64 120}
!45 = !{!"p1 int", !10, i64 0}
!46 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!47 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !46, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !47, i64 0}
!49 = !{!"_ZTSSt6vectorIjSaIjEE", !48, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !45, i64 0, !45, i64 8, !45, i64 16}
!51 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !50, i64 0}
!52 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !51, i64 0}
!53 = !{!"_ZTSSt6vectorIiSaIiEE", !52, i64 0}
!54 = !{!"_ZTSN7CaDiCaL5QueueE", !7, i64 0, !7, i64 4, !7, i64 8, !12, i64 16}
!55 = !{!"p1 _ZTSN7CaDiCaL4LinkE", !10, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE12_Vector_implE", !56, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE", !57, i64 0}
!59 = !{!"_ZTSSt6vectorIN7CaDiCaL4LinkESaIS1_EE", !58, i64 0}
!60 = !{!"_ZTSN7CaDiCaL13score_smallerE", !11, i64 0}
!61 = !{!"_ZTSN7CaDiCaL4heapINS_13score_smallerEEE", !49, i64 0, !49, i64 24, !60, i64 48}
!62 = !{!"p1 _ZTSN7CaDiCaL3VarE", !10, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!64 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE12_Vector_implE", !63, i64 0}
!65 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE", !64, i64 0}
!66 = !{!"_ZTSSt6vectorIN7CaDiCaL3VarESaIS1_EE", !65, i64 0}
!67 = !{!"p1 _ZTSN7CaDiCaL5FlagsE", !10, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE17_Vector_impl_dataE", !67, i64 0, !67, i64 8, !67, i64 16}
!69 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE12_Vector_implE", !68, i64 0}
!70 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE", !69, i64 0}
!71 = !{!"_ZTSSt6vectorIN7CaDiCaL5FlagsESaIS1_EE", !70, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!73 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !72, i64 0}
!74 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !73, i64 0}
!75 = !{!"_ZTSSt6vectorIlSaIlEE", !74, i64 0}
!76 = !{!"p1 _ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !10, i64 0}
!77 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!78 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE12_Vector_implE", !77, i64 0}
!79 = !{!"_ZTSSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE", !78, i64 0}
!80 = !{!"_ZTSSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EE", !79, i64 0}
!81 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL3BinESaIS1_EE", !10, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!83 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE12_Vector_implE", !82, i64 0}
!84 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE", !83, i64 0}
!85 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL3BinESaIS1_EESaIS3_EE", !84, i64 0}
!86 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL5WatchESaIS1_EE", !10, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!88 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE12_Vector_implE", !87, i64 0}
!89 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE", !88, i64 0}
!90 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE", !89, i64 0}
!91 = !{!"p1 _ZTSN7CaDiCaL6ClauseE", !10, i64 0}
!92 = !{!"_ZTS4Reap", !12, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !6, i64 24}
!93 = !{!"p1 _ZTSN7CaDiCaL5LevelE", !10, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!95 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE12_Vector_implE", !94, i64 0}
!96 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE", !95, i64 0}
!97 = !{!"_ZTSSt6vectorIN7CaDiCaL5LevelESaIS1_EE", !96, i64 0}
!98 = !{!"_ZTSN7CaDiCaL3EMAE", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32}
!99 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut_E", !98, i64 0, !98, i64 40}
!100 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut0_E", !98, i64 0, !98, i64 40}
!101 = !{!"_ZTSN7CaDiCaL8AveragesUt_E", !99, i64 0, !100, i64 80, !98, i64 160, !98, i64 200, !98, i64 240}
!102 = !{!"_ZTSN7CaDiCaL8AveragesE", !12, i64 0, !101, i64 8, !101, i64 288}
!103 = !{!"_ZTSN7CaDiCaL5LimitUt_E", !7, i64 0, !7, i64 4}
!104 = !{!"_ZTSN7CaDiCaL5LimitE", !27, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !7, i64 128, !7, i64 132, !6, i64 136, !12, i64 152, !103, i64 160}
!105 = !{!"_ZTSN7CaDiCaL4LastUt_E", !12, i64 0}
!106 = !{!"_ZTSN7CaDiCaL4LastUt0_E", !12, i64 0, !12, i64 8, !12, i64 16}
!107 = !{!"_ZTSN7CaDiCaL4LastUt1_E", !12, i64 0, !12, i64 8}
!108 = !{!"_ZTSN7CaDiCaL4LastUt2_E", !12, i64 0}
!109 = !{!"_ZTSN7CaDiCaL4LastUt3_E", !12, i64 0}
!110 = !{!"_ZTSN7CaDiCaL4LastUt4_E", !12, i64 0}
!111 = !{!"_ZTSN7CaDiCaL4LastE", !105, i64 0, !105, i64 8, !106, i64 16, !107, i64 40, !108, i64 56, !108, i64 64, !109, i64 72, !110, i64 80}
!112 = !{!"_ZTSN7CaDiCaL3IncE", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!113 = !{!"p1 _ZTSN7CaDiCaL5ProofE", !10, i64 0}
!114 = !{!"p1 _ZTSN7CaDiCaL11LratBuilderE", !10, i64 0}
!115 = !{!"p2 _ZTSN7CaDiCaL6TracerE", !14, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE17_Vector_impl_dataE", !115, i64 0, !115, i64 8, !115, i64 16}
!117 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE12_Vector_implE", !116, i64 0}
!118 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE", !117, i64 0}
!119 = !{!"_ZTSSt6vectorIPN7CaDiCaL6TracerESaIS2_EE", !118, i64 0}
!120 = !{!"p2 _ZTSN7CaDiCaL10FileTracerE", !14, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE17_Vector_impl_dataE", !120, i64 0, !120, i64 8, !120, i64 16}
!122 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE12_Vector_implE", !121, i64 0}
!123 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE", !122, i64 0}
!124 = !{!"_ZTSSt6vectorIPN7CaDiCaL10FileTracerESaIS2_EE", !123, i64 0}
!125 = !{!"p2 _ZTSN7CaDiCaL10StatTracerE", !14, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!127 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE12_Vector_implE", !126, i64 0}
!128 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE", !127, i64 0}
!129 = !{!"_ZTSSt6vectorIPN7CaDiCaL10StatTracerESaIS2_EE", !128, i64 0}
!130 = !{!"_ZTSN7CaDiCaL7OptionsE", !11, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !7, i64 232, !7, i64 236, !7, i64 240, !7, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !7, i64 300, !7, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !7, i64 328, !7, i64 332, !7, i64 336, !7, i64 340, !7, i64 344, !7, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !7, i64 368, !7, i64 372, !7, i64 376, !7, i64 380, !7, i64 384, !7, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !7, i64 420, !7, i64 424, !7, i64 428, !7, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !7, i64 456, !7, i64 460, !7, i64 464, !7, i64 468, !7, i64 472, !7, i64 476, !7, i64 480, !7, i64 484, !7, i64 488, !7, i64 492, !7, i64 496, !7, i64 500, !7, i64 504, !7, i64 508, !7, i64 512, !7, i64 516, !7, i64 520, !7, i64 524, !7, i64 528, !7, i64 532, !7, i64 536, !7, i64 540, !7, i64 544, !7, i64 548, !7, i64 552, !7, i64 556, !7, i64 560, !7, i64 564, !7, i64 568, !7, i64 572, !7, i64 576, !7, i64 580, !7, i64 584, !7, i64 588, !7, i64 592, !7, i64 596, !7, i64 600, !7, i64 604, !7, i64 608, !7, i64 612, !7, i64 616, !7, i64 620, !7, i64 624, !7, i64 628, !7, i64 632, !7, i64 636, !7, i64 640, !7, i64 644, !7, i64 648, !7, i64 652, !7, i64 656, !7, i64 660, !7, i64 664, !7, i64 668, !7, i64 672, !7, i64 676, !7, i64 680, !7, i64 684, !7, i64 688, !7, i64 692, !7, i64 696, !7, i64 700, !7, i64 704, !7, i64 708, !7, i64 712, !7, i64 716}
!131 = !{!"_ZTSN7CaDiCaL5StatsUt_E", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48}
!132 = !{!"_ZTSN7CaDiCaL5StatsUt0_E", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72}
!133 = !{!"_ZTSN7CaDiCaL5StatsUt1_E", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!134 = !{!"_ZTSN7CaDiCaL5StatsUt2_E", !12, i64 0, !12, i64 8, !12, i64 16}
!135 = !{!"_ZTSN7CaDiCaL5StatsUt3_E", !20, i64 0, !20, i64 8}
!136 = !{!"_ZTSN7CaDiCaL5StatsUt4_E", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!137 = !{!"_ZTSN7CaDiCaL5StatsUt5_Ut_E", !12, i64 0, !12, i64 8}
!138 = !{!"_ZTSN7CaDiCaL5StatsUt5_Ut0_E", !12, i64 0, !12, i64 8}
!139 = !{!"_ZTSN7CaDiCaL5StatsUt5_E", !12, i64 0, !12, i64 8, !137, i64 16, !137, i64 32, !137, i64 48, !138, i64 64}
!140 = !{!"_ZTSN7CaDiCaL5StatsUt6_E", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48}
!141 = !{!"_ZTSN7CaDiCaL5StatsUt7_E", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!142 = !{!"_ZTSN7CaDiCaL5StatsUt8_E", !12, i64 0, !12, i64 8, !12, i64 16}
!143 = !{!"_ZTSN7CaDiCaL5StatsUt9_E", !12, i64 0, !12, i64 8}
!144 = !{!"_ZTSN7CaDiCaL5StatsUt10_E", !12, i64 0, !12, i64 8, !12, i64 16}
!145 = !{!"_ZTSN7CaDiCaL5StatsUt11_E", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!146 = !{!"_ZTSN7CaDiCaL5StatsUt12_E", !12, i64 0, !12, i64 8}
!147 = !{!"_ZTSN7CaDiCaL5StatsE", !11, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !131, i64 32, !132, i64 88, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !133, i64 264, !134, i64 296, !134, i64 320, !135, i64 344, !136, i64 360, !139, i64 392, !140, i64 472, !141, i64 528, !142, i64 560, !12, i64 584, !12, i64 592, !12, i64 600, !12, i64 608, !12, i64 616, !12, i64 624, !12, i64 632, !12, i64 640, !12, i64 648, !12, i64 656, !12, i64 664, !12, i64 672, !12, i64 680, !12, i64 688, !12, i64 696, !12, i64 704, !12, i64 712, !12, i64 720, !12, i64 728, !12, i64 736, !12, i64 744, !12, i64 752, !12, i64 760, !12, i64 768, !12, i64 776, !12, i64 784, !12, i64 792, !12, i64 800, !12, i64 808, !12, i64 816, !12, i64 824, !12, i64 832, !12, i64 840, !12, i64 848, !12, i64 856, !12, i64 864, !12, i64 872, !12, i64 880, !12, i64 888, !12, i64 896, !12, i64 904, !12, i64 912, !12, i64 920, !12, i64 928, !12, i64 936, !12, i64 944, !12, i64 952, !12, i64 960, !12, i64 968, !12, i64 976, !12, i64 984, !12, i64 992, !12, i64 1000, !12, i64 1008, !12, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !12, i64 1048, !12, i64 1056, !12, i64 1064, !12, i64 1072, !12, i64 1080, !12, i64 1088, !12, i64 1096, !12, i64 1104, !12, i64 1112, !12, i64 1120, !12, i64 1128, !12, i64 1136, !12, i64 1144, !12, i64 1152, !12, i64 1160, !12, i64 1168, !12, i64 1176, !12, i64 1184, !12, i64 1192, !12, i64 1200, !12, i64 1208, !12, i64 1216, !12, i64 1224, !143, i64 1232, !12, i64 1248, !12, i64 1256, !12, i64 1264, !12, i64 1272, !144, i64 1280, !12, i64 1304, !12, i64 1312, !12, i64 1320, !12, i64 1328, !12, i64 1336, !12, i64 1344, !12, i64 1352, !12, i64 1360, !12, i64 1368, !12, i64 1376, !12, i64 1384, !12, i64 1392, !12, i64 1400, !12, i64 1408, !12, i64 1416, !12, i64 1424, !12, i64 1432, !12, i64 1440, !12, i64 1448, !12, i64 1456, !12, i64 1464, !12, i64 1472, !12, i64 1480, !12, i64 1488, !12, i64 1496, !12, i64 1504, !12, i64 1512, !12, i64 1520, !12, i64 1528, !12, i64 1536, !145, i64 1544, !145, i64 1576, !146, i64 1608, !12, i64 1624, !12, i64 1632, !12, i64 1640}
!148 = !{!"_ZTSN7CaDiCaL7ProfileE", !27, i64 0, !20, i64 8, !20, i64 16, !39, i64 24, !7, i64 32}
!149 = !{!"_ZTSN7CaDiCaL8ProfilesE", !11, i64 0, !148, i64 8, !148, i64 48, !148, i64 88, !148, i64 128, !148, i64 168, !148, i64 208, !148, i64 248, !148, i64 288, !148, i64 328, !148, i64 368, !148, i64 408, !148, i64 448, !148, i64 488, !148, i64 528, !148, i64 568, !148, i64 608, !148, i64 648, !148, i64 688, !148, i64 728, !148, i64 768, !148, i64 808, !148, i64 848, !148, i64 888, !148, i64 928, !148, i64 968, !148, i64 1008, !148, i64 1048, !148, i64 1088, !148, i64 1128, !148, i64 1168, !148, i64 1208, !148, i64 1248, !148, i64 1288, !148, i64 1328, !148, i64 1368, !148, i64 1408, !148, i64 1448, !148, i64 1488, !148, i64 1528}
!150 = !{!"_ZTSN7CaDiCaL5ArenaUt_E", !39, i64 0, !39, i64 8, !39, i64 16}
!151 = !{!"_ZTSN7CaDiCaL5ArenaE", !11, i64 0, !150, i64 8, !150, i64 32}
!152 = !{!"_ZTSN7CaDiCaL6FormatE", !39, i64 0, !12, i64 8, !12, i64 16}
!153 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !39, i64 0}
!154 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !153, i64 0, !12, i64 8, !6, i64 16}
!155 = !{!"p1 _ZTSN7CaDiCaL8ExternalE", !10, i64 0}
!156 = !{!"_ZTSN7CaDiCaL5RangeE", !45, i64 0}
!157 = !{!"_ZTSN7CaDiCaL5SangeE", !45, i64 0}
!158 = !{!"_ZTSN7CaDiCaL8InternalE", !7, i64 0, !27, i64 4, !27, i64 5, !27, i64 6, !27, i64 7, !27, i64 8, !27, i64 9, !27, i64 10, !27, i64 11, !27, i64 12, !27, i64 13, !27, i64 14, !27, i64 15, !27, i64 16, !27, i64 17, !27, i64 18, !6, i64 19, !28, i64 24, !12, i64 72, !7, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !27, i64 120, !33, i64 128, !33, i64 152, !33, i64 176, !33, i64 200, !33, i64 224, !33, i64 248, !19, i64 272, !38, i64 296, !27, i64 320, !27, i64 321, !7, i64 324, !44, i64 328, !39, i64 472, !43, i64 480, !49, i64 504, !53, i64 528, !49, i64 552, !54, i64 576, !59, i64 600, !20, i64 624, !61, i64 632, !25, i64 688, !66, i64 712, !53, i64 736, !71, i64 760, !75, i64 784, !75, i64 808, !80, i64 832, !53, i64 856, !75, i64 880, !85, i64 904, !90, i64 928, !91, i64 952, !91, i64 960, !91, i64 968, !91, i64 976, !91, i64 984, !27, i64 992, !27, i64 993, !27, i64 994, !7, i64 996, !12, i64 1000, !91, i64 1008, !12, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !12, i64 1048, !12, i64 1056, !53, i64 1064, !53, i64 1088, !53, i64 1112, !53, i64 1136, !27, i64 1160, !27, i64 1161, !53, i64 1168, !53, i64 1192, !53, i64 1216, !53, i64 1240, !53, i64 1264, !53, i64 1288, !53, i64 1312, !92, i64 1336, !12, i64 2152, !53, i64 2160, !97, i64 2184, !19, i64 2208, !102, i64 2232, !104, i64 2800, !111, i64 2968, !112, i64 3056, !113, i64 3104, !114, i64 3112, !119, i64 3120, !124, i64 3144, !129, i64 3168, !130, i64 3192, !147, i64 3912, !149, i64 5560, !27, i64 7128, !151, i64 7136, !152, i64 7192, !154, i64 7216, !11, i64 7248, !155, i64 7256, !27, i64 7264, !156, i64 7272, !157, i64 7280}
!159 = !{!26, !12, i64 16}
!160 = !{!26, !12, i64 24}
!161 = !{!158, !12, i64 4440}
!162 = !{!13, !12, i64 0}
!163 = !{!20, !20, i64 0}
!164 = !{!22, !21, i64 8}
!165 = !{!22, !21, i64 0}
!166 = !{!22, !21, i64 16}
!167 = !{!"llvm.loop.mustprogress"}
!168 = !{!16, !15, i64 0}
!169 = !{!16, !15, i64 8}
!170 = !{!91, !91, i64 0}
!171 = !{!87, !86, i64 0}
!172 = !{!"p1 _ZTSN7CaDiCaL5WatchE", !10, i64 0}
!173 = !{!172, !172, i64 0}
!174 = !{!158, !39, i64 472}
!175 = !{!"_ZTSN7CaDiCaL5WatchE", !91, i64 0, !7, i64 8, !7, i64 12}
!176 = !{!175, !7, i64 8}
!177 = !{!6, !6, i64 0}
end_hunk_1
