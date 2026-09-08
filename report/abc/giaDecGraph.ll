Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaDecGraph?download=true
inline.NumInlined: 3483
inline.NumDeleted: 1207
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 68
begin_hunk_0_@_ZN8DecGraph10TruthTable6extendEiSt6vectorIiSaIiEE:bb.a
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !48
  %i.gh = ptrtoint ptr %i.gg to i64
  %i.gi = ptrtoint ptr %i.ge to i64
  %i.gj = sub i64 %i.gh, %i.gi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef %i.gj) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i:             ; preds = %bb.s, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i
  %i.gk = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i
  %i.gm = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !48
  %i.go = ptrtoint ptr %i.gn to i64
  %i.gp = ptrtoint ptr %i.gl to i64
  %i.gq = sub i64 %i.go, %i.gp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gl, i64 noundef %i.gq) #35
  br label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i

_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i:        ; preds = %bb.t, %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 80) #35
  br label %_ZN8DecGraph10TruthTableD2Ev.exit

_ZN8DecGraph10TruthTableD2Ev.exit:                ; preds = %bb.p, %_ZN8DecGraph10TruthTable13resetPositionEv.exit, %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.u

.lr.ph107:                                        ; preds = %_ZNK8DecGraph10TruthTable6nWordsEv.exit.thread, %.lr.ph107
  %.sroa.060.0106 = phi i64 [ %i.gw, %.lr.ph107 ], [ 0, %_ZNK8DecGraph10TruthTable6nWordsEv.exit.thread ] ; 3 uses
  %i.gr = trunc i64 %.sroa.060.0106 to i32
  %i.gs = load ptr, ptr %2, align 8, !tbaa !67
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %.sroa.060.0106
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !46
  %i.gv = trunc i32 %i.gu to i8
  call void @_ZN8DecGraph10TruthTable6moveToEjhb(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.gr, i8 noundef zeroext %i.gv, i1 noundef zeroext false)
  %i.gw = add i64 %.sroa.060.0106, 1              ; 2 uses
  %.not96 = icmp eq i64 %i.gw, %i.dq
  br i1 %.not96, label %._crit_edge108, label %.lr.ph107

bb.u:                                             ; preds = %bb.a, %_ZN8DecGraph10TruthTableD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN8DecGraph10TruthTable13countCofactorEiRSt6vectorIS0_SaIS0_EES4_b(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.DecGraph::TruthTable", align 16 ; 10 uses
  %6 = alloca %"class.DecGraph::TruthTable", align 8 ; 10 uses
  %7 = alloca %"class.DecGraph::TruthTable", align 16 ; 10 uses
  %8 = alloca %"class.DecGraph::TruthTable", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !36
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !49
  %i.i = zext i8 %i.h to i32                      ; 3 uses
  %i.j = sub nsw i32 %i.i, %1                     ; 4 uses
  %i.k = sext i32 %i.j to i64                     ; 4 uses
  %i.l = zext nneg i32 %1 to i64
  %i.m = shl nuw i64 1, %i.l                      ; 4 uses
  br i1 %4, label %bb.c, label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit139.thread

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %2, align 8, !tbaa !70     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !71   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph10TruthTableEEEvT_S5_(ptr noundef %i.n, ptr noundef %i.p)
  store ptr %i.n, ptr %i.o, align 8, !tbaa !71
  br label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit

_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit: ; preds = %bb.c, %bb.d
  %i.q = load ptr, ptr %3, align 8, !tbaa !70     ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !71   ; 2 uses
  %.not.i.i138 = icmp eq ptr %i.s, %i.q
  br i1 %.not.i.i138, label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit139, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit
  tail call void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN8DecGraph10TruthTableEEEvT_S5_(ptr noundef %i.q, ptr noundef %i.s)
  store ptr %i.q, ptr %i.r, align 8, !tbaa !71
  br label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit139

_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit139: ; preds = %bb.e, %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit
  %i.t = icmp eq i32 %1, %i.i
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit139.thread: ; preds = %bb.b
  %i.u = icmp eq i32 %1, %i.i
  br i1 %i.u, label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit

bb.f:                                             ; preds = %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit139
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !71   ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !72
  %.not.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45   ; 3 uses
  %i.aa = load <2 x ptr>, ptr %0, align 8, !tbaa !51
  store <2 x ptr> %i.aa, ptr %i.v, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ac = load i8, ptr %i.g, align 8, !tbaa !49
  store i8 %i.ac, ptr %i.ab, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ae = load i64, ptr %i.c, align 8, !tbaa !37
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !37
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load i32, ptr %i.z, align 4, !tbaa !46
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.z, align 4, !tbaa !46
  br label %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i

_ZN8DecGraph10TruthTableC2ERKS0_.exit.i:          ; preds = %bb.h, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %i.ah, ptr %i.o, align 8, !tbaa !71
  br label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

bb.i:                                             ; preds = %bb.f
  tail call void @_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.v, ptr noundef nonnull align 8 dereferenceable(32) %0)
  br label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit139.thread, %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit139
  %i.ai = tail call noalias noundef nonnull dereferenceable(1024) ptr @_Znwm(i64 noundef 1024) #37 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.ai, i8 0, i64 1024, i1 false), !tbaa !50
  %i.aj = load ptr, ptr %0, align 8, !tbaa !36    ; 2 uses
  %.not.i140 = icmp eq ptr %i.aj, null
  br i1 %.not.i140, label %_ZNK8DecGraph10TruthTable4dataEv.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !47
  br label %_ZNK8DecGraph10TruthTable4dataEv.exit

_ZNK8DecGraph10TruthTable4dataEv.exit:            ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, %bb.j
  %.0.i = phi ptr [ %i.al, %bb.j ], [ null, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit ] ; 5 uses
  %i.am = icmp ult i32 %i.j, 6
  br i1 %i.am, label %bb.k, label %bb.an

bb.k:                                             ; preds = %_ZNK8DecGraph10TruthTable4dataEv.exit
  %i.an = shl nuw nsw i64 1, %i.k                 ; 2 uses
  %notmask = shl nsw i64 -1, %i.an
  %i.ao = xor i64 %notmask, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread196
  %.0235 = phi i64 [ 0, %bb.k ], [ %.1198, %.thread196 ] ; 6 uses
  %.0127234 = phi i64 [ 0, %bb.k ], [ %i.ay, %.thread196 ] ; 5 uses
  %i.au = shl i64 %.0127234, %i.k
  %i.av = lshr i64 %i.au, 6
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !50
  %.neg = xor i64 %.0127234, -1
  %i.ay = add nuw i64 %.0127234, 1                ; 2 uses
  %.neg137 = shl i64 %.neg, %i.k
  %i.az = and i64 %.neg137, 62
  %i.ba = lshr i64 %i.ax, %i.az
  %i.bb = and i64 %i.ba, %i.ao                    ; 3 uses
  %.not243 = icmp eq i64 %.0235, 0
  br i1 %.not243, label %._crit_edge228.thread, label %.lr.ph227

.lr.ph227:                                        ; preds = %bb.l, %bb.m
  %.0122225 = phi i64 [ %i.bf, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.0122225
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !50
  %i.be = icmp eq i64 %i.bb, %i.bd
  br i1 %i.be, label %._crit_edge228, label %bb.m

bb.m:                                             ; preds = %.lr.ph227
  %i.bf = add nuw i64 %.0122225, 1                ; 2 uses
  %exitcond254.not = icmp eq i64 %i.bf, %.0235
  br i1 %exitcond254.not, label %._crit_edge228.thread, label %.lr.ph227, !llvm.loop !253

._crit_edge228:                                   ; preds = %.lr.ph227
  %i.bg = icmp eq i64 %.0122225, %.0235
  br i1 %i.bg, label %._crit_edge228.thread, label %bb.x

._crit_edge228.thread:                            ; preds = %bb.m, %bb.l, %._crit_edge228
  %i.bh = add nsw i64 %.0235, 1                   ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.0235
  store i64 %i.bb, ptr %i.bi, align 8, !tbaa !50
  br i1 %4, label %bb.n, label %.thread196

bb.n:                                             ; preds = %._crit_edge228.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store i64 0, ptr %i.ap, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, i8 0, i64 17, i1 false)
  call void @_ZN8DecGraph10TruthTable6createEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.m)
  %i.bj = load ptr, ptr %i.aq, align 8, !tbaa !71 ; 6 uses
  %i.bk = load ptr, ptr %i.ar, align 8, !tbaa !72
  %.not.i141 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i141, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %i.as, align 8, !tbaa !45 ; 4 uses
  %i.bm = load <2 x ptr>, ptr %5, align 16, !tbaa !51
  store <2 x ptr> %i.bm, ptr %i.bj, align 8, !tbaa !51
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bo = load i8, ptr %i.at, align 16, !tbaa !49
  store i8 %i.bo, ptr %i.bn, align 8, !tbaa !49
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bq = load i64, ptr %i.ap, align 8, !tbaa !37
  store i64 %i.bq, ptr %i.bp, align 8, !tbaa !37
  %.not.i.i.i142 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i142, label %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i143, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = load i32, ptr %i.bl, align 4, !tbaa !46
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bl, align 4, !tbaa !46
  br label %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i143

_ZN8DecGraph10TruthTableC2ERKS0_.exit.i143:       ; preds = %bb.p, %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  store ptr %i.bt, ptr %i.aq, align 8, !tbaa !71
  br label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

bb.q:                                             ; preds = %bb.n
  call void @_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %.pre260 = load ptr, ptr %i.as, align 8, !tbaa !45
  br label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit

_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit: ; preds = %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i143, %bb.q
  %i.bu = phi ptr [ %i.bl, %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i143 ], [ %.pre260, %bb.q ] ; 3 uses
  %.not.i.i145 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i145, label %_ZN8DecGraph10TruthTableD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !46 ; 2 uses
  %i.bw = add nsw i32 %i.bv, -1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !46
  %i.bx = icmp eq i32 %i.bv, 1
  br i1 %i.bx, label %bb.s, label %_ZN8DecGraph10TruthTableD2Ev.exit

bb.s:                                             ; preds = %bb.r
  %i.by = load ptr, ptr %5, align 16, !tbaa !36   ; 8 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %_ZN8DecGraph10TruthTableD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !48
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i:              ; preds = %bb.u, %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i1.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i1.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 48
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !48
  %i.cl = ptrtoint ptr %i.ck to i64
  %i.cm = ptrtoint ptr %i.ci to i64
  %i.cn = sub i64 %i.cl, %i.cm
  call void @_ZdlPvm(ptr noundef nonnull %i.ci, i64 noundef %i.cn) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i

_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i:             ; preds = %bb.v, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i3.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i3.i.i.i, label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !48
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cu) #35
  br label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i

_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i:        ; preds = %bb.w, %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 80) #35
  br label %_ZN8DecGraph10TruthTableD2Ev.exit

_ZN8DecGraph10TruthTableD2Ev.exit:                ; preds = %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit, %bb.r, %bb.s, %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %bb.x

bb.x:                                             ; preds = %_ZN8DecGraph10TruthTableD2Ev.exit, %._crit_edge228
  %.1 = phi i64 [ %i.bh, %_ZN8DecGraph10TruthTableD2Ev.exit ], [ %.0235, %._crit_edge228 ] ; 4 uses
  %9 = icmp ne i64 %.1, 0
  %or.cond = select i1 %4, i1 %9, i1 false
  br i1 %or.cond, label %.lr.ph233, label %.thread196

.lr.ph233:                                        ; preds = %bb.x
  %sext203 = shl i64 %.0127234, 32
  %i.cv = ashr exact i64 %sext203, 32
  %i.cw = and i64 %.0127234, 63
  %i.cx = lshr exact i64 -9223372036854775808, %i.cw
  %i.cy = lshr i64 %i.cv, 6
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph233, %_ZN8DecGraph10TruthTable3setEib.exit
  %.1123232 = phi i64 [ 0, %.lr.ph233 ], [ %i.dp, %_ZN8DecGraph10TruthTable3setEib.exit ] ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.1123232
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !50
  %i.db = icmp eq i64 %i.bb, %i.da
  br i1 %i.db, label %bb.z, label %_ZN8DecGraph10TruthTable3setEib.exit

bb.z:                                             ; preds = %bb.y
  %i.dc = load ptr, ptr %3, align 8, !tbaa !70
  %i.dd = getelementptr inbounds nuw [32 x i8], ptr %i.dc, i64 %.1123232 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !36 ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = icmp eq i64 %i.dh, 0
  %i.dj = select i1 %i.df, i1 true, i1 %i.di
  br i1 %i.dj, label %_ZN8DecGraph10TruthTable3setEib.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !47
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %i.cy ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !50
  %i.do = or i64 %i.dn, %i.cx
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !50
  br label %_ZN8DecGraph10TruthTable3setEib.exit

_ZN8DecGraph10TruthTable3setEib.exit:             ; preds = %bb.aa, %bb.z, %bb.y
  %i.dp = add nuw nsw i64 %.1123232, 1            ; 2 uses
  %exitcond255.not = icmp eq i64 %i.dp, %.1
  br i1 %exitcond255.not, label %.thread196, label %bb.y, !llvm.loop !254

.thread196:                                       ; preds = %_ZN8DecGraph10TruthTable3setEib.exit, %._crit_edge228.thread, %bb.x
  %.1198 = phi i64 [ %.1, %bb.x ], [ %i.bh, %._crit_edge228.thread ], [ %.1, %_ZN8DecGraph10TruthTable3setEib.exit ] ; 5 uses
  %exitcond256.not = icmp eq i64 %i.ay, %i.m
  br i1 %exitcond256.not, label %bb.ab, label %bb.l, !llvm.loop !255

bb.ab:                                            ; preds = %.thread196
  %10 = icmp ne i64 %.1198, 0
  %or.cond238 = select i1 %4, i1 %10, i1 false
  br i1 %or.cond238, label %.lr.ph237, label %_ZNSt6vectorImSaImEED2Ev.exit

.lr.ph237:                                        ; preds = %bb.ab
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph237, %_ZN8DecGraph10TruthTableD2Ev.exit158
  %.2124236 = phi i64 [ 0, %.lr.ph237 ], [ %i.fs, %_ZN8DecGraph10TruthTableD2Ev.exit158 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store i64 0, ptr %i.dq, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 17, i1 false)
  call void @_ZN8DecGraph10TruthTable6createEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.an)
  %i.dv = load ptr, ptr %6, align 8, !tbaa !36    ; 3 uses
  %i.dw = icmp eq ptr %i.dv, null
  %i.dx = load i64, ptr %i.dq, align 8            ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 0
  %i.dz = select i1 %i.dw, i1 true, i1 %i.dy
  br i1 %i.dz, label %_ZN8DecGraph10TruthTable6assignEm.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.2124236
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !50
  %i.ec = call i64 @llvm.usub.sat.i64(i64 64, i64 %i.dx)
  %i.ed = shl i64 %i.eb, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !47
  store i64 %i.ed, ptr %i.ef, align 8, !tbaa !50
  br label %_ZN8DecGraph10TruthTable6assignEm.exit

_ZN8DecGraph10TruthTable6assignEm.exit:           ; preds = %bb.ac, %bb.ad
  %i.eg = load ptr, ptr %i.dr, align 8, !tbaa !71 ; 7 uses
  %i.eh = load ptr, ptr %i.ds, align 8, !tbaa !72
  %.not.i146 = icmp eq ptr %i.eg, %i.eh
  br i1 %.not.i146, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %_ZN8DecGraph10TruthTable6assignEm.exit
  store ptr %i.dv, ptr %i.eg, align 8, !tbaa !36
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ej = load ptr, ptr %i.dt, align 8, !tbaa !45 ; 5 uses
  store ptr %i.ej, ptr %i.ei, align 8, !tbaa !45
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.el = load i8, ptr %i.du, align 8, !tbaa !49
  store i8 %i.el, ptr %i.ek, align 8, !tbaa !49
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.en = load i64, ptr %i.dq, align 8, !tbaa !37
  store i64 %i.en, ptr %i.em, align 8, !tbaa !37
  %.not.i.i.i147 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i147, label %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i148, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eo = load i32, ptr %i.ej, align 4, !tbaa !46
  %i.ep = add nsw i32 %i.eo, 1
  store i32 %i.ep, ptr %i.ej, align 4, !tbaa !46
  br label %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i148

_ZN8DecGraph10TruthTableC2ERKS0_.exit.i148:       ; preds = %bb.af, %bb.ae
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  store ptr %i.eq, ptr %i.dr, align 8, !tbaa !71
  br label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit150

bb.ag:                                            ; preds = %_ZN8DecGraph10TruthTable6assignEm.exit
  call void @_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %6)
  %.pre261 = load ptr, ptr %i.dt, align 8, !tbaa !45
  br label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit150

_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit150: ; preds = %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i148, %bb.ag
  %i.er = phi ptr [ %i.ej, %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i148 ], [ %.pre261, %bb.ag ] ; 3 uses
  %.not.i.i151 = icmp eq ptr %i.er, null
  br i1 %.not.i.i151, label %_ZN8DecGraph10TruthTableD2Ev.exit158, label %bb.ah

bb.ah:                                            ; preds = %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit150
  %i.es = load i32, ptr %i.er, align 4, !tbaa !46 ; 2 uses
  %i.et = add nsw i32 %i.es, -1
  store i32 %i.et, ptr %i.er, align 4, !tbaa !46
  %i.eu = icmp eq i32 %i.es, 1
  br i1 %i.eu, label %bb.ai, label %_ZN8DecGraph10TruthTableD2Ev.exit158

bb.ai:                                            ; preds = %bb.ah
  %i.ev = load ptr, ptr %6, align 8, !tbaa !36    ; 8 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %_ZN8DecGraph10TruthTableD2Ev.exit158, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 56
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i.i.i152 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i.i.i152, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i153, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 72
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !48
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = ptrtoint ptr %i.ey to i64
  %i.fd = sub i64 %i.fb, %i.fc
  call void @_ZdlPvm(ptr noundef nonnull %i.ey, i64 noundef %i.fd) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i153

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i153:           ; preds = %bb.ak, %bb.aj
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i1.i.i.i154 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i1.i.i.i154, label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i155, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i153
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !48
  %i.fi = ptrtoint ptr %i.fh to i64
  %i.fj = ptrtoint ptr %i.ff to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fk) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i155

_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i155:          ; preds = %bb.al, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i153
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i3.i.i.i156 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i.i3.i.i.i156, label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i157, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i155
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !48
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fm to i64
  %i.fr = sub i64 %i.fp, %i.fq
  call void @_ZdlPvm(ptr noundef nonnull %i.fm, i64 noundef %i.fr) #35
  br label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i157

_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i157:     ; preds = %bb.am, %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i155
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef 80) #35
  br label %_ZN8DecGraph10TruthTableD2Ev.exit158

_ZN8DecGraph10TruthTableD2Ev.exit158:             ; preds = %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit150, %bb.ah, %bb.ai, %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i157
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %i.fs = add nuw i64 %.2124236, 1                ; 2 uses
  %exitcond258.not = icmp eq i64 %i.fs, %.1198
  br i1 %exitcond258.not, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ac, !llvm.loop !256

bb.an:                                            ; preds = %_ZNK8DecGraph10TruthTable4dataEv.exit
  %i.ft = icmp slt i32 %i.j, 7                    ; 2 uses
  %i.fu = add nsw i32 %i.j, -6                    ; 2 uses
  %i.fv = shl nuw i32 1, %i.fu
  %i.fw = select i1 %i.ft, i32 1, i32 %i.fv
  %i.fx = zext i32 %i.fw to i64                   ; 5 uses
  %i.fy = select i1 %i.ft, i32 0, i32 %i.fu
  %i.fz = zext nneg i32 %i.fy to i64              ; 4 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.thread199
  %.2217 = phi i64 [ 0, %bb.an ], [ %.3201, %.thread199 ] ; 6 uses
  %.1128215 = phi i64 [ 0, %bb.an ], [ %i.jj, %.thread199 ] ; 5 uses
  %i.gf = shl i64 %.1128215, %i.fz
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.gf ; 2 uses
  %.not241 = icmp eq i64 %.2217, 0
  br i1 %.not241, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ao, %bb.as
  %.3125209 = phi i64 [ %i.gr, %bb.as ], [ 0, %bb.ao ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.3125209
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !50
  %i.gj = shl i64 %i.gi, %i.fz
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.gj
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph, %bb.aq
  %.0119208 = phi i64 [ 0, %.lr.ph ], [ %i.gp, %bb.aq ] ; 4 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.0119208
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !50
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %.0119208
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !50
  %.not = icmp eq i64 %i.gm, %i.go
  br i1 %.not, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gp = add nuw nsw i64 %.0119208, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.gp, %i.fx
  br i1 %exitcond.not, label %._crit_edge, label %bb.ap, !llvm.loop !257

bb.ar:                                            ; preds = %bb.ap
  %i.gq = icmp eq i64 %.0119208, %i.fx
  br i1 %i.gq, label %._crit_edge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gr = add nuw i64 %.3125209, 1                ; 2 uses
  %exitcond247.not = icmp eq i64 %i.gr, %.2217
  br i1 %exitcond247.not, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !258

._crit_edge:                                      ; preds = %bb.ar, %bb.aq
  %i.gs = icmp eq i64 %.3125209, %.2217
  br i1 %i.gs, label %._crit_edge.thread, label %bb.bd

._crit_edge.thread:                               ; preds = %bb.as, %bb.ao, %._crit_edge
  %i.gt = add nsw i64 %.2217, 1                   ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.2217
  store i64 %.1128215, ptr %i.gu, align 8, !tbaa !50
  br i1 %4, label %bb.at, label %.thread199

bb.at:                                            ; preds = %._crit_edge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store i64 0, ptr %i.ga, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 17, i1 false)
  call void @_ZN8DecGraph10TruthTable6createEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.m)
  %i.gv = load ptr, ptr %i.gb, align 8, !tbaa !71 ; 6 uses
  %i.gw = load ptr, ptr %i.gc, align 8, !tbaa !72
  %.not.i159 = icmp eq ptr %i.gv, %i.gw
  br i1 %.not.i159, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gx = load ptr, ptr %i.gd, align 8, !tbaa !45 ; 4 uses
  %i.gy = load <2 x ptr>, ptr %7, align 16, !tbaa !51
  store <2 x ptr> %i.gy, ptr %i.gv, align 8, !tbaa !51
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.ha = load i8, ptr %i.ge, align 16, !tbaa !49
  store i8 %i.ha, ptr %i.gz, align 8, !tbaa !49
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.hc = load i64, ptr %i.ga, align 8, !tbaa !37
  store i64 %i.hc, ptr %i.hb, align 8, !tbaa !37
  %.not.i.i.i160 = icmp eq ptr %i.gx, null
  br i1 %.not.i.i.i160, label %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i161, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hd = load i32, ptr %i.gx, align 4, !tbaa !46
  %i.he = add nsw i32 %i.hd, 1
  store i32 %i.he, ptr %i.gx, align 4, !tbaa !46
  br label %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i161

_ZN8DecGraph10TruthTableC2ERKS0_.exit.i161:       ; preds = %bb.av, %bb.au
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gv, i64 32
  store ptr %i.hf, ptr %i.gb, align 8, !tbaa !71
  br label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit163

bb.aw:                                            ; preds = %bb.at
  call void @_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.gv, ptr noundef nonnull align 8 dereferenceable(32) %7)
  %.pre = load ptr, ptr %i.gd, align 8, !tbaa !45
  br label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit163

_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit163: ; preds = %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i161, %bb.aw
  %i.hg = phi ptr [ %i.gx, %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i161 ], [ %.pre, %bb.aw ] ; 3 uses
  %.not.i.i164 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i164, label %_ZN8DecGraph10TruthTableD2Ev.exit171, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit163
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !46 ; 2 uses
  %i.hi = add nsw i32 %i.hh, -1
  store i32 %i.hi, ptr %i.hg, align 4, !tbaa !46
  %i.hj = icmp eq i32 %i.hh, 1
  br i1 %i.hj, label %bb.ay, label %_ZN8DecGraph10TruthTableD2Ev.exit171

bb.ay:                                            ; preds = %bb.ax
  %i.hk = load ptr, ptr %7, align 16, !tbaa !36   ; 8 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %_ZN8DecGraph10TruthTableD2Ev.exit171, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 56
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i.i.i165 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i.i.i.i165, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i166, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 72
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !48
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = ptrtoint ptr %i.hn to i64
  %i.hs = sub i64 %i.hq, %i.hr
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hs) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i166

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i166:           ; preds = %bb.ba, %bb.az
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i1.i.i.i167 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i1.i.i.i167, label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i168, label %bb.bb

bb.bb:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i166
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hk, i64 48
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !48
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hu to i64
  %i.hz = sub i64 %i.hx, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.hz) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i168

_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i168:          ; preds = %bb.bb, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i166
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i3.i.i.i169 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i3.i.i.i169, label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i170, label %bb.bc

bb.bc:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i168
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !48
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = ptrtoint ptr %i.ib to i64
  %i.ig = sub i64 %i.ie, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %i.ib, i64 noundef %i.ig) #35
  br label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i170

_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i170:     ; preds = %bb.bc, %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i168
  call void @_ZdlPvm(ptr noundef nonnull %i.hk, i64 noundef 80) #35
  br label %_ZN8DecGraph10TruthTableD2Ev.exit171

_ZN8DecGraph10TruthTableD2Ev.exit171:             ; preds = %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJS1_EEERS1_DpOT_.exit163, %bb.ax, %bb.ay, %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN8DecGraph10TruthTableD2Ev.exit171, %._crit_edge
  %.3 = phi i64 [ %i.gt, %_ZN8DecGraph10TruthTableD2Ev.exit171 ], [ %.2217, %._crit_edge ] ; 4 uses
  %11 = icmp ne i64 %.3, 0
  %or.cond239 = select i1 %4, i1 %11, i1 false
  br i1 %or.cond239, label %.lr.ph214, label %.thread199

.lr.ph214:                                        ; preds = %bb.bd
  %sext202 = shl i64 %.1128215, 32
  %i.ih = ashr exact i64 %sext202, 32
  %i.ii = and i64 %.1128215, 63
  %i.ij = lshr exact i64 -9223372036854775808, %i.ii
  %i.ik = lshr i64 %i.ih, 6
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph214, %_ZN8DecGraph10TruthTable3setEib.exit172
  %.4126213 = phi i64 [ 0, %.lr.ph214 ], [ %i.ji, %_ZN8DecGraph10TruthTable3setEib.exit172 ] ; 3 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.4126213
  %i.im = load i64, ptr %i.il, align 8, !tbaa !50
  %i.in = shl i64 %i.im, %i.fz
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.in
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bg
  %.1120212 = phi i64 [ 0, %bb.be ], [ %i.it, %bb.bg ] ; 4 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.1120212
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !50
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %.1120212
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !50
  %.not136 = icmp eq i64 %i.iq, %i.is
  br i1 %.not136, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.it = add nuw nsw i64 %.1120212, 1            ; 2 uses
  %exitcond248.not = icmp eq i64 %i.it, %i.fx
  br i1 %exitcond248.not, label %.thread326, label %bb.bf, !llvm.loop !259

bb.bh:                                            ; preds = %bb.bf
  %i.iu = icmp eq i64 %.1120212, %i.fx
  br i1 %i.iu, label %.thread326, label %_ZN8DecGraph10TruthTable3setEib.exit172

.thread326:                                       ; preds = %bb.bg, %bb.bh
  %i.iv = load ptr, ptr %3, align 8, !tbaa !70
  %i.iw = getelementptr inbounds nuw [32 x i8], ptr %i.iv, i64 %.4126213 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !36 ; 2 uses
  %i.iy = icmp eq ptr %i.ix, null
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 24
  %i.ja = load i64, ptr %i.iz, align 8
  %i.jb = icmp eq i64 %i.ja, 0
  %i.jc = select i1 %i.iy, i1 true, i1 %i.jb
  br i1 %i.jc, label %_ZN8DecGraph10TruthTable3setEib.exit172, label %bb.bi

bb.bi:                                            ; preds = %.thread326
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !47
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %i.ik ; 2 uses
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !50
  %i.jh = or i64 %i.jg, %i.ij
  store i64 %i.jh, ptr %i.jf, align 8, !tbaa !50
  br label %_ZN8DecGraph10TruthTable3setEib.exit172

_ZN8DecGraph10TruthTable3setEib.exit172:          ; preds = %bb.bi, %.thread326, %bb.bh
  %i.ji = add nuw nsw i64 %.4126213, 1            ; 2 uses
  %exitcond249.not = icmp eq i64 %i.ji, %.3
  br i1 %exitcond249.not, label %.thread199, label %bb.be, !llvm.loop !260

.thread199:                                       ; preds = %_ZN8DecGraph10TruthTable3setEib.exit172, %._crit_edge.thread, %bb.bd
  %.3201 = phi i64 [ %.3, %bb.bd ], [ %i.gt, %._crit_edge.thread ], [ %.3, %_ZN8DecGraph10TruthTable3setEib.exit172 ] ; 5 uses
  %i.jj = add nuw i64 %.1128215, 1                ; 2 uses
  %exitcond250.not = icmp eq i64 %i.jj, %i.m
  br i1 %exitcond250.not, label %bb.bj, label %bb.ao, !llvm.loop !261

bb.bj:                                            ; preds = %.thread199
  %12 = icmp ne i64 %.3201, 0
  %or.cond240 = select i1 %4, i1 %12, i1 false
  br i1 %or.cond240, label %.lr.ph224, label %_ZNSt6vectorImSaImEED2Ev.exit

.lr.ph224:                                        ; preds = %bb.bj
  %i.jk = shl nuw i64 1, %i.k
  %i.jl = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %8, i64 16
  br label %bb.bk

bb.bk:                                            ; preds = %.lr.ph224, %_ZN8DecGraph10TruthTableD2Ev.exit185
  %.5223 = phi i64 [ 0, %.lr.ph224 ], [ %i.lt, %_ZN8DecGraph10TruthTableD2Ev.exit185 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store i64 0, ptr %i.jl, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 17, i1 false)
  call void @_ZN8DecGraph10TruthTable6createEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.jk)
  %i.jq = load ptr, ptr %8, align 8, !tbaa !36
  %.fr242 = freeze ptr %i.jq                      ; 3 uses
  %i.jr = icmp eq ptr %.fr242, null
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.5223
  %i.jt = getelementptr inbounds nuw i8, ptr %.fr242, i64 8
  %i.ju = load i64, ptr %i.jl, align 8            ; 2 uses
  %i.jv = icmp eq i64 %i.ju, 0
  %or.cond337 = select i1 %i.jr, i1 true, i1 %i.jv
  br i1 %or.cond337, label %.split220.us, label %.split.split

.split.splitthread-pre-split:                     ; preds = %_ZN8DecGraph10TruthTable6assignEim.exit
  %.pr = load i64, ptr %i.jl, align 8
  br label %.split.split

.split.split:                                     ; preds = %bb.bk, %.split.splitthread-pre-split
  %i.jw = phi i64 [ %.pr, %.split.splitthread-pre-split ], [ %i.ju, %bb.bk ]
  %.2121218 = phi i64 [ %i.kg, %.split.splitthread-pre-split ], [ 0, %bb.bk ] ; 3 uses
  %i.jx = icmp eq i64 %i.jw, 0
  br i1 %i.jx, label %_ZN8DecGraph10TruthTable6assignEim.exit, label %bb.bl

bb.bl:                                            ; preds = %.split.split
  %i.jy = load i64, ptr %i.js, align 8, !tbaa !50
  %i.jz = shl i64 %i.jy, %i.fz
  %i.ka = getelementptr [8 x i8], ptr %.0.i, i64 %i.jz
  %i.kb = getelementptr [8 x i8], ptr %i.ka, i64 %.2121218
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !50
  %sext = shl nuw i64 %.2121218, 32
  %i.kd = load ptr, ptr %i.jt, align 8, !tbaa !47
  %i.ke = ashr exact i64 %sext, 29
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.ke
  store i64 %i.kc, ptr %i.kf, align 8, !tbaa !50
  br label %_ZN8DecGraph10TruthTable6assignEim.exit

_ZN8DecGraph10TruthTable6assignEim.exit:          ; preds = %.split.split, %bb.bl
  %i.kg = add nuw nsw i64 %.2121218, 1            ; 2 uses
  %exitcond251.not = icmp eq i64 %i.kg, %i.fx
  br i1 %exitcond251.not, label %.split220.us, label %.split.splitthread-pre-split, !llvm.loop !262

.split220.us:                                     ; preds = %_ZN8DecGraph10TruthTable6assignEim.exit, %bb.bk
  %i.kh = load ptr, ptr %i.jm, align 8, !tbaa !71 ; 7 uses
  %i.ki = load ptr, ptr %i.jn, align 8, !tbaa !72
  %.not.i173 = icmp eq ptr %i.kh, %i.ki
  br i1 %.not.i173, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %.split220.us
  store ptr %.fr242, ptr %i.kh, align 8, !tbaa !36
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kk = load ptr, ptr %i.jo, align 8, !tbaa !45 ; 5 uses
  store ptr %i.kk, ptr %i.kj, align 8, !tbaa !45
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.km = load i8, ptr %i.jp, align 8, !tbaa !49
  store i8 %i.km, ptr %i.kl, align 8, !tbaa !49
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.ko = load i64, ptr %i.jl, align 8, !tbaa !37
  store i64 %i.ko, ptr %i.kn, align 8, !tbaa !37
  %.not.i.i.i174 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i.i174, label %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i175, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kp = load i32, ptr %i.kk, align 4, !tbaa !46
  %i.kq = add nsw i32 %i.kp, 1
  store i32 %i.kq, ptr %i.kk, align 4, !tbaa !46
  br label %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i175

_ZN8DecGraph10TruthTableC2ERKS0_.exit.i175:       ; preds = %bb.bn, %bb.bm
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  store ptr %i.kr, ptr %i.jm, align 8, !tbaa !71
  br label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit177

bb.bo:                                            ; preds = %.split220.us
  call void @_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.kh, ptr noundef nonnull align 8 dereferenceable(32) %8)
  %.pre259 = load ptr, ptr %i.jo, align 8, !tbaa !45
  br label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit177

_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit177: ; preds = %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i175, %bb.bo
  %i.ks = phi ptr [ %i.kk, %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i175 ], [ %.pre259, %bb.bo ] ; 3 uses
  %.not.i.i178 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i178, label %_ZN8DecGraph10TruthTableD2Ev.exit185, label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit177
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !46 ; 2 uses
  %i.ku = add nsw i32 %i.kt, -1
  store i32 %i.ku, ptr %i.ks, align 4, !tbaa !46
  %i.kv = icmp eq i32 %i.kt, 1
  br i1 %i.kv, label %bb.bq, label %_ZN8DecGraph10TruthTableD2Ev.exit185

bb.bq:                                            ; preds = %bb.bp
  %i.kw = load ptr, ptr %8, align 8, !tbaa !36    ; 8 uses
  %i.kx = icmp eq ptr %i.kw, null
  br i1 %i.kx, label %_ZN8DecGraph10TruthTableD2Ev.exit185, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 56
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i.i.i.i179 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i.i.i.i179, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i180, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.la = getelementptr inbounds nuw i8, ptr %i.kw, i64 72
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !48
  %i.lc = ptrtoint ptr %i.lb to i64
  %i.ld = ptrtoint ptr %i.kz to i64
  %i.le = sub i64 %i.lc, %i.ld
  call void @_ZdlPvm(ptr noundef nonnull %i.kz, i64 noundef %i.le) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i180

_ZNSt6vectorImSaImEED2Ev.exit.i.i.i180:           ; preds = %bb.bs, %bb.br
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kw, i64 32
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i1.i.i.i181 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i.i1.i.i.i181, label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i182, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i180
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kw, i64 48
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !48
  %i.lj = ptrtoint ptr %i.li to i64
  %i.lk = ptrtoint ptr %i.lg to i64
  %i.ll = sub i64 %i.lj, %i.lk
  call void @_ZdlPvm(ptr noundef nonnull %i.lg, i64 noundef %i.ll) #35
  br label %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i182

_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i182:          ; preds = %bb.bt, %_ZNSt6vectorImSaImEED2Ev.exit.i.i.i180
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !47 ; 3 uses
  %.not.i.i.i3.i.i.i183 = icmp eq ptr %i.ln, null
  br i1 %.not.i.i.i3.i.i.i183, label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i184, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i182
  %i.lo = getelementptr inbounds nuw i8, ptr %i.kw, i64 24
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !48
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = ptrtoint ptr %i.ln to i64
  %i.ls = sub i64 %i.lq, %i.lr
  call void @_ZdlPvm(ptr noundef nonnull %i.ln, i64 noundef %i.ls) #35
  br label %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i184

_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i184:     ; preds = %bb.bu, %_ZNSt6vectorImSaImEED2Ev.exit2.i.i.i182
  call void @_ZdlPvm(ptr noundef nonnull %i.kw, i64 noundef 80) #35
  br label %_ZN8DecGraph10TruthTableD2Ev.exit185

_ZN8DecGraph10TruthTableD2Ev.exit185:             ; preds = %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit177, %bb.bp, %bb.bq, %_ZN8DecGraph14TruthTableDataD2Ev.exit.i.i184
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %i.lt = add nuw i64 %.5223, 1                   ; 2 uses
  %exitcond253.not = icmp eq i64 %i.lt, %.3201
  br i1 %exitcond253.not, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bk, !llvm.loop !263

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN8DecGraph10TruthTableD2Ev.exit185, %_ZN8DecGraph10TruthTableD2Ev.exit158, %bb.bj, %bb.ab
  %.4 = phi i64 [ %.1198, %bb.ab ], [ %.3201, %bb.bj ], [ %.1198, %_ZN8DecGraph10TruthTableD2Ev.exit158 ], [ %.3201, %_ZN8DecGraph10TruthTableD2Ev.exit185 ]
  %i.lu = trunc i64 %.4 to i32
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 1024) #35
  br label %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit

_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE12emplace_backIJRS1_EEES5_DpOT_.exit: ; preds = %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit139.thread, %bb.i, %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i, %_ZNSt6vectorImSaImEED2Ev.exit, %bb.a
  %.1131 = phi i32 [ 0, %bb.a ], [ %i.lu, %_ZNSt6vectorImSaImEED2Ev.exit ], [ 1, %bb.i ], [ 1, %_ZNSt6vectorIN8DecGraph10TruthTableESaIS1_EE5clearEv.exit139.thread ], [ 1, %_ZN8DecGraph10TruthTableC2ERKS0_.exit.i ]
  ret i32 %.1131
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8DecGraph10TruthTable6assignEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @llvm.usub.sat.i64(i64 64, i64 %i.d)
  %i.h = shl i64 %1, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47
  store i64 %i.h, ptr %i.j, align 8, !tbaa !50
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN8DecGraph10TruthTable6assignEim(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !36     ; 2 uses
end_hunk_0
