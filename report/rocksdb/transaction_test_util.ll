Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/transaction_test_util?download=true
inline.NumInlined: 636
inline.NumDeleted: 263
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7rocksdb25RandomTransactionInserter6VerifyEPNS_2DBEtmbPNS_8Random64Em:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.v = load ptr, ptr %1, align 8, !tbaa !57
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 920
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr dead_on_unwind nonnull writable sret(%"struct.rocksdb::DBOptions") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !129  ; 2 uses
  %i.aa = trunc i64 %6 to i32
  %i.ab = mul i32 %i.aa, 1000
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !57
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 472
  %i.ae = load ptr, ptr %i.ad, align 8
  invoke void %i.ae(ptr noundef nonnull align 8 dereferenceable(72) %i.z, i32 noundef %i.ab)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(753) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(753) %8) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %i.af, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZNSt6vectorItSaItEED2Ev.exit163

bb.i:                                             ; preds = %bb.e, %bb.a
  %i.ah = zext i16 %2 to i64                      ; 3 uses
  %.not.i.i.i.i = icmp eq i16 %2, 0
  br i1 %.not.i.i.i.i, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = shl nuw nsw i64 %i.ah, 1
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #26
          to label %.noexc unwind label %bb.k     ; 10 uses

.noexc:                                           ; preds = %bb.j
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.ah
  store i16 0, ptr %i.aj, align 2, !tbaa !61
  %i.am = getelementptr i8, ptr %i.aj, i64 2      ; 3 uses
  %i.an = add nsw i64 %i.ah, -1                   ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %iter.check, label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit

_ZNSt6vectorItSaItEEC2EmRKS0_.exit:               ; preds = %.noexc
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.an, 1  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %i.am, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx.i.i.i.i.i.i.i
  br label %iter.check

iter.check:                                       ; preds = %_ZNSt6vectorItSaItEEC2EmRKS0_.exit, %.noexc
  %.0.i.i.i.i.i436 = phi ptr [ %i.ap, %_ZNSt6vectorItSaItEEC2EmRKS0_.exit ], [ %i.am, %.noexc ] ; 3 uses
  %.0.i.i.i.i.i436618 = ptrtoaddr ptr %.0.i.i.i.i.i436 to i64
  %i.aq = add i64 %.0.i.i.i.i.i436618, -2
  %i.ar = sub i64 %i.aq, %i.ak                    ; 3 uses
  %i.as = lshr i64 %i.ar, 1
  %i.at = add nuw i64 %i.as, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.ar, 14
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check619 = icmp ult i64 %i.ar, 126
  br i1 %min.iters.check619, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.au = and i64 %i.at, 56
  %n.vec = and i64 %i.at, -64                     ; 5 uses
  %i.av = trunc i64 %n.vec to i16                 ; 2 uses
  %i.aw = shl i64 %n.vec, 1
  %i.ax = getelementptr i8, ptr %i.aj, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <16 x i16> %vec.ind, splat (i16 16)
  %step.add.2 = add <16 x i16> %vec.ind, splat (i16 32)
  %step.add.3 = add <16 x i16> %vec.ind, splat (i16 48)
  %i.ay = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.ay ; 4 uses
  %i.az = getelementptr i8, ptr %next.gep, i64 32
  %i.ba = getelementptr i8, ptr %next.gep, i64 64
  %i.bb = getelementptr i8, ptr %next.gep, i64 96
  store <16 x i16> %vec.ind, ptr %next.gep, align 2, !tbaa !61
  store <16 x i16> %step.add, ptr %i.az, align 2, !tbaa !61
  store <16 x i16> %step.add.2, ptr %i.ba, align 2, !tbaa !61
  store <16 x i16> %step.add.3, ptr %i.bb, align 2, !tbaa !61
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %vec.ind.next = add <16 x i16> %vec.ind, splat (i16 64)
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !186

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !65

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i16 [ %i.av, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec621 = and i64 %i.at, -8                   ; 4 uses
  %i.bd = trunc i64 %n.vec621 to i16
  %i.be = shl i64 %n.vec621, 1
  %i.bf = getelementptr i8, ptr %i.aj, i64 %i.be
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %bc.resume.val, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index622 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next625, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind623 = phi <8 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next626, %vec.epilog.vector.body ] ; 2 uses
  %i.bg = shl i64 %index622, 1
  %next.gep624 = getelementptr i8, ptr %i.aj, i64 %i.bg
  store <8 x i16> %vec.ind623, ptr %next.gep624, align 2, !tbaa !61
  %index.next625 = add nuw i64 %index622, 8       ; 2 uses
  %vec.ind.next626 = add <8 x i16> %vec.ind623, splat (i16 8)
  %i.bh = icmp eq i64 %index.next625, %n.vec621
  br i1 %i.bh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !187

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n627 = icmp eq i64 %i.at, %n.vec621
  br i1 %cmp.n627, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.ph = phi i16 [ 0, %iter.check ], [ %i.av, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ]
  %.sroa.02.05.i.ph = phi ptr [ %i.aj, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bf, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.06.i = phi i16 [ %i.bi, %.lr.ph.i ], [ %.06.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.bj, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  store i16 %.06.i, ptr %.sroa.02.05.i, align 2, !tbaa !61
  %i.bi = add i16 %.06.i, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 2 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %.0.i.i.i.i.i436
  br i1 %i.bk, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !188

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit.loopexit: ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.bl = ptrtoint ptr %i.al to i64
  br label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit: ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit.loopexit, %bb.i
  %.0.i.i.i.i.i201 = phi ptr [ null, %bb.i ], [ %.0.i.i.i.i.i436, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit.loopexit ] ; 3 uses
  %.sroa.0170.0191 = phi ptr [ null, %bb.i ], [ %i.aj, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit.loopexit ] ; 9 uses
  %.sroa.15.0181 = phi i64 [ 0, %bb.i ], [ %i.bl, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit.loopexit ] ; 2 uses
  invoke void @_ZN7rocksdb13RandomShuffleIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEEEvT_S8_(ptr %.sroa.0170.0191, ptr %.0.i.i.i.i.i201)
          to label %.preheader unwind label %bb.l

.preheader:                                       ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit
  %i.bm = icmp eq ptr %.sroa.0170.0191, %.0.i.i.i.i.i201
  br i1 %i.bm, label %.critedge133, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bn = icmp ne i64 %3, 0
  %i.bo = icmp ne ptr %5, null
  %or.cond = and i1 %i.bn, %i.bo
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %18, i64 56
  %i.bw = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.by = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 76
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 80
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 120 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 152
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 153
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 154
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 160
  %i.ci = getelementptr inbounds nuw i8, ptr %9, i64 176
  %i.cj = getelementptr inbounds nuw i8, ptr %9, i64 184
  %i.ck = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 136 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %21, i64 56
  %umax = call i64 @llvm.umax.i64(i64 %3, i64 1)
  br label %bb.m

bb.k:                                             ; preds = %bb.b, %bb.j
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit163

bb.l:                                             ; preds = %bb.cc, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEtEvT_S7_T0_.exit
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.m:                                             ; preds = %.lr.ph, %bb.by
  %.070315 = phi i64 [ 0, %.lr.ph ], [ %.6, %bb.by ] ; 2 uses
  %.072314 = phi i32 [ 0, %.lr.ph ], [ %i.cs, %bb.by ]
  %.not130313 = phi i1 [ true, %.lr.ph ], [ false, %bb.by ]
  %.sroa.0166.0312 = phi ptr [ %.sroa.0170.0191, %.lr.ph ], [ %i.iw, %bb.by ] ; 2 uses
  %i.cr = load i16, ptr %.sroa.0166.0312, align 2, !tbaa !61 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.cs = zext i16 %i.cr to i32                   ; 3 uses
  %i.ct = add nuw nsw i32 %i.cs, 1
  %i.cu = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 6, ptr noundef nonnull @.str.1, i32 noundef %i.ct) #23 ; 0 uses
  br i1 %or.cond, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.cv = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %5)
          to label %.noexc134 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc134:                                        ; preds = %bb.n
  %i.cw = zext i64 %i.cv to i128
  %i.cx = mul nuw nsw i128 %i.cw, 10              ; 2 uses
  %i.cy = trunc i128 %i.cx to i64
  %extract15.i.i.i.i.i = lshr i128 %i.cx, 64
  %extract.t16.i.i.i.i.i = trunc nuw nsw i128 %extract15.i.i.i.i.i to i64
  %or.cond214 = icmp ult i64 %i.cy, 6
  br i1 %or.cond214, label %.lr.ph.i.i.i.i.i, label %bb.o

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc134, %.noexc135
  %i.cz = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %5)
          to label %.noexc135 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc135:                                        ; preds = %.lr.ph.i.i.i.i.i
  %i.da = zext i64 %i.cz to i128
  %i.db = mul nuw nsw i128 %i.da, 10              ; 2 uses
  %i.dc = trunc i128 %i.db to i64
  %i.dd = icmp ult i64 %i.dc, 6
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i, label %..loopexit_crit_edge.i.i.i.i.i, !llvm.loop !2

..loopexit_crit_edge.i.i.i.i.i:                   ; preds = %.noexc135
  %extract19.le.i.i.i.i.i = lshr i128 %i.db, 64
  %extract.t20.le.i.i.i.i.i = trunc nuw nsw i128 %extract19.le.i.i.i.i.i to i64
  br label %bb.o

bb.o:                                             ; preds = %..loopexit_crit_edge.i.i.i.i.i, %.noexc134
  %.0.i.i.i.i = phi i64 [ %extract.t20.le.i.i.i.i.i, %..loopexit_crit_edge.i.i.i.i.i ], [ %extract.t16.i.i.i.i.i, %.noexc134 ]
  %i.de = icmp eq i64 %.0.i.i.i.i, 0
  br i1 %i.de, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %9, i8 0, i64 44, i1 false)
  store i32 4, ptr %i.bx, align 4, !tbaa !197
  store i64 -1, ptr %i.by, align 8, !tbaa !198
  store i8 0, ptr %i.bz, align 8, !tbaa !199
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.ca, align 8, !tbaa !48
  store i8 1, ptr %i.cb, align 4, !tbaa !200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i8 0, i64 32, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(39) %i.cc, i8 0, i64 39, i1 false)
  store i8 1, ptr %i.ce, align 8, !tbaa !201
  store i8 0, ptr %i.cf, align 1, !tbaa !202
  store i8 0, ptr %i.cg, align 2, !tbaa !203
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i8 0, i64 16, i1 false)
  store i8 -1, ptr %i.ci, align 8, !tbaa !204
  store ptr null, ptr %i.cj, align 8, !tbaa !205
  br label %bb.t

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.df = load ptr, ptr %i.cn, align 8, !tbaa !50 ; 2 uses
  %.not.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i, label %_ZN7rocksdb11ReadOptionsD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = invoke noundef zeroext i1 %i.df(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i32 noundef 3)
          to label %_ZN7rocksdb11ReadOptionsD2Ev.exit unwind label %bb.s ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #22
  unreachable

_ZN7rocksdb11ReadOptionsD2Ev.exit:                ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bl

bb.t:                                             ; preds = %bb.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0311 = phi i64 [ 0, %bb.p ], [ %i.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.064310 = phi i64 [ 0, %bb.p ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %i.ck, ptr %10, align 8, !tbaa !67
  store i64 0, ptr %i.cl, align 8, !tbaa !69
  store i8 0, ptr %i.ck, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 0, ptr %i.c, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZN7rocksdb25RandomTransactionInserter5DBGetEPNS_2DBEPNS_11TransactionERNS_11ReadOptionsEtmbPmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPb(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %11, ptr noundef %1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(192) %7, i16 noundef zeroext %i.cr, i64 noundef %.0311, i1 noundef zeroext false, ptr noundef nonnull %i.c, ptr noundef nonnull %10, ptr noundef nonnull %i.d)
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dj = load i64, ptr %i.c, align 8, !tbaa !49
  %i.dk = add i64 %i.dj, %.064310                 ; 2 uses
  %i.dl = load ptr, ptr %i.cm, align 8, !tbaa !59 ; 2 uses
  %.not.i.i136 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i136, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.dl) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.u, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.dm = load ptr, ptr %10, align 8, !tbaa !76   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.ck
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.do = load i64, ptr %i.ck, align 8, !tbaa !70
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.dq = add nuw i64 %.0311, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %umax
  br i1 %exitcond.not, label %bb.q, label %bb.t, !llvm.loop !189

bb.v:                                             ; preds = %bb.t
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.ds = load ptr, ptr %10, align 8, !tbaa !76   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.ck
  br i1 %i.dt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.v
  %i.du = load i64, ptr %i.ck, align 8, !tbaa !70
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dv) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.dw = load ptr, ptr %i.cn, align 8, !tbaa !50 ; 2 uses
  %.not.i.i140 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i140, label %_ZN7rocksdb11ReadOptionsD2Ev.exit141, label %bb.w

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.dx = invoke noundef zeroext i1 %i.dw(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i32 noundef 3)
          to label %_ZN7rocksdb11ReadOptionsD2Ev.exit141 unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #22
  unreachable

_ZN7rocksdb11ReadOptionsD2Ev.exit141:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.loopexit.split-lp

.thread:                                          ; preds = %bb.m, %bb.o
  %i.ea = load ptr, ptr %1, align 8, !tbaa !57
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 472
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = invoke noundef ptr %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(192) %7)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 14 uses

bb.y:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr %i.b, ptr %12, align 8, !tbaa !78
  store i64 4, ptr %i.bp, align 8, !tbaa !79
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !57
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  %i.eg = load ptr, ptr %i.ef, align 8
  invoke void %i.eg(ptr noundef nonnull align 8 dereferenceable(40) %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %bb.z unwind label %bb.af

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.aa

bb.aa:                                            ; preds = %bb.bd, %bb.z
  %.1 = phi i64 [ 0, %bb.z ], [ %i.ha, %bb.bd ]   ; 2 uses
  %i.eh = load ptr, ptr %i.ed, align 8, !tbaa !57
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = invoke noundef zeroext i1 %i.ej(ptr noundef nonnull align 8 dereferenceable(40) %i.ed)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.ek, label %bb.ac, label %.loopexit215

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.el = load ptr, ptr %i.ed, align 8, !tbaa !57
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 96
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = invoke { ptr, i64 } %i.en(ptr noundef nonnull align 8 dereferenceable(40) %i.ed)
          to label %bb.ad unwind label %bb.ag     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  %i.ep = extractvalue { ptr, i64 } %i.eo, 0
  store ptr %i.ep, ptr %13, align 8
  %i.eq = extractvalue { ptr, i64 } %i.eo, 1
  store i64 %i.eq, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(16) %13, i1 noundef zeroext false)
          to label %bb.ae unwind label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.er = load i64, ptr %i.br, align 8, !tbaa !69 ; 2 uses
  %spec.select.i.i = call noundef i64 @llvm.umin.i64(i64 %i.er, i64 4) ; 2 uses
  %i.es = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #23 ; 2 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.es, i64 %spec.select.i.i) ; 2 uses
  %i.et = icmp eq i64 %.sroa.speculated.i, 0
  %.pre.pre = load ptr, ptr %14, align 8, !tbaa !76 ; 3 uses
  br i1 %i.et, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.ae
  %bcmp = call i32 @bcmp(ptr %.pre.pre, ptr nonnull %i.b, i64 %.sroa.speculated.i)
  %.not.i = icmp eq i32 %bcmp, 0
  br i1 %.not.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.ae
  %i.eu = icmp eq i64 %spec.select.i.i, %i.es
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %.0.i = phi i1 [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ], [ %i.eu, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i ]
  %i.ev = icmp eq ptr %.pre.pre, %i.bs
  br i1 %i.ev, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i143: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit
  %i.ew = icmp ult i64 %i.er, 16
  call void @llvm.assume(i1 %i.ew)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit
  %i.ex = load i64, ptr %i.bs, align 8, !tbaa !70
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %.pre.pre, i64 noundef %i.ey) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br i1 %.0.i, label %bb.ai, label %.thread204

.thread204:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %.loopexit215

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i.i.i.i.i, %bb.aa, %bb.bd, %bb.n, %.thread, %bb.bp
  %lpad.loopexit.split-lp634 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.af:                                            ; preds = %bb.y
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.loopexit.split-lp

bb.ag:                                            ; preds = %bb.ac
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

bb.ah:                                            ; preds = %bb.ad
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.bi

bb.ai:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.fc = load ptr, ptr %i.ed, align 8, !tbaa !57
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 112
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = invoke { ptr, i64 } %i.fe(ptr noundef nonnull align 8 dereferenceable(40) %i.ed)
          to label %bb.aj unwind label %bb.ax     ; 2 uses

bb.aj:                                            ; preds = %bb.ai
  %i.fg = extractvalue { ptr, i64 } %i.ff, 0
  store ptr %i.fg, ptr %15, align 8
  %i.fh = extractvalue { ptr, i64 } %i.ff, 1
  store i64 %i.fh, ptr %i.bt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNK7rocksdb5Slice8ToStringB5cxx11Eb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(16) %15, i1 noundef zeroext false)
          to label %bb.ak unwind label %bb.av

bb.ak:                                            ; preds = %bb.aj
  %i.fi = load ptr, ptr %16, align 8, !tbaa !76   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.fj = tail call ptr @__errno_location() #25   ; 6 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !131 ; 2 uses
  store i32 0, ptr %i.fj, align 4, !tbaa !131
  %i.fl = call noundef i64 @__isoc23_strtoull(ptr noundef %i.fi, ptr noundef nonnull %i.a, i32 noundef 10) ; 3 uses
  %i.fm = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.fn = icmp eq ptr %i.fm, %i.fi
  br i1 %i.fn, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.28) #28
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  unreachable

bb.an:                                            ; preds = %.critedge.i.i, %bb.al
  %i.fo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fp = load i32, ptr %i.fj, align 4, !tbaa !131
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.ao, label %_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

bb.ao:                                            ; preds = %bb.an
  store i32 %i.fk, ptr %i.fj, align 4, !tbaa !131
  br label %_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %bb.ao, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
end_hunk_0
begin_hunk_1_@_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv:bb.a
  %i.ag = lshr exact <4 x i64> %i.y, splat (i64 1)
  %i.ah = xor <4 x i64> %i.ad, %wide.load12
  %i.ai = xor <4 x i64> %i.ae, %wide.load13
  %i.aj = xor <4 x i64> %i.af, %wide.load14
  %i.ak = xor <4 x i64> %i.ag, %wide.load15
  %i.al = and <4 x i64> %wide.load, splat (i64 1)
  %i.am = and <4 x i64> %wide.load9, splat (i64 1)
  %i.an = and <4 x i64> %wide.load10, splat (i64 1)
  %i.ao = and <4 x i64> %wide.load11, splat (i64 1)
  %i.ap = icmp eq <4 x i64> %i.al, zeroinitializer
  %i.aq = icmp eq <4 x i64> %i.am, zeroinitializer
  %i.ar = icmp eq <4 x i64> %i.an, zeroinitializer
  %i.as = icmp eq <4 x i64> %i.ao, zeroinitializer
  %i.at = select <4 x i1> %i.ap, <4 x i64> zeroinitializer, <4 x i64> splat (i64 2567483615)
  %i.au = select <4 x i1> %i.aq, <4 x i64> zeroinitializer, <4 x i64> splat (i64 2567483615)
  %i.av = select <4 x i1> %i.ar, <4 x i64> zeroinitializer, <4 x i64> splat (i64 2567483615)
  %i.aw = select <4 x i1> %i.as, <4 x i64> zeroinitializer, <4 x i64> splat (i64 2567483615)
  %i.ax = xor <4 x i64> %i.ah, %i.at
  %i.ay = xor <4 x i64> %i.ai, %i.au
  %i.az = xor <4 x i64> %i.aj, %i.av
  %i.ba = xor <4 x i64> %i.ak, %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store <4 x i64> %i.ax, ptr %i.d, align 8, !tbaa !49
  store <4 x i64> %i.ay, ptr %i.bb, align 8, !tbaa !49
  store <4 x i64> %i.az, ptr %i.bc, align 8, !tbaa !49
  store <4 x i64> %i.ba, ptr %i.bd, align 8, !tbaa !49
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.be = icmp eq i64 %index.next, 224
  br i1 %i.be, label %vector.ph17, label %vector.body, !llvm.loop !237

vector.ph17:                                      ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i64> %wide.load11, i64 3
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.bg = and i64 %vector.recur.extract, -2147483648
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !49 ; 3 uses
  %i.bj = and i64 %i.bi, 2147483646
  %i.bk = or disjoint i64 %i.bj, %i.bg
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4968
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !49
  %i.bn = lshr exact i64 %i.bk, 1
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = and i64 %i.bi, 1
  %.not20.i = icmp eq i64 %i.bp, 0
  %i.bq = select i1 %.not20.i, i64 0, i64 2567483615
  %i.br = xor i64 %i.bo, %i.bq
  store i64 %i.br, ptr %i.bf, align 8, !tbaa !49
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.bt = and i64 %i.bi, -2147483648
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !49 ; 3 uses
  %i.bw = and i64 %i.bv, 2147483646
  %i.bx = or disjoint i64 %i.bw, %i.bt
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4976
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !49
  %i.ca = lshr exact i64 %i.bx, 1
  %i.cb = xor i64 %i.ca, %i.bz
  %i.cc = and i64 %i.bv, 1
  %.not20.i.1 = icmp eq i64 %i.cc, 0
  %i.cd = select i1 %.not20.i.1, i64 0, i64 2567483615
  %i.ce = xor i64 %i.cb, %i.cd
  store i64 %i.ce, ptr %i.bs, align 8, !tbaa !49
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.cg = and i64 %i.bv, -2147483648
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !49 ; 2 uses
  %i.cj = and i64 %i.ci, 2147483646
  %i.ck = or disjoint i64 %i.cj, %i.cg
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4984
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !49
  %i.cn = lshr exact i64 %i.ck, 1
  %i.co = xor i64 %i.cn, %i.cm
  %i.cp = and i64 %i.ci, 1
  %.not20.i.2 = icmp eq i64 %i.cp, 0
  %i.cq = select i1 %.not20.i.2, i64 0, i64 2567483615
  %i.cr = xor i64 %i.co, %i.cq
  store i64 %i.cr, ptr %i.cf, align 8, !tbaa !49
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %.pre24.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !49
  %vector.recur.init20 = insertelement <2 x i64> poison, i64 %.pre24.i, i64 1
  br label %vector.body18

vector.body18:                                    ; preds = %vector.body18, %vector.ph17
  %index19 = phi i64 [ 0, %vector.ph17 ], [ %index.next24.2, %vector.body18 ] ; 5 uses
  %vector.recur21 = phi <2 x i64> [ %vector.recur.init20, %vector.ph17 ], [ %wide.load22.2, %vector.body18 ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index19 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1816
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index19
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1824
  %wide.load22 = load <2 x i64>, ptr %i.cv, align 8, !tbaa !49 ; 4 uses
  %i.cw = shufflevector <2 x i64> %vector.recur21, <2 x i64> %wide.load22, <2 x i32> <i32 1, i32 2>
  %i.cx = and <2 x i64> %i.cw, splat (i64 -2147483648)
  %i.cy = and <2 x i64> %wide.load22, splat (i64 2147483646)
  %i.cz = or disjoint <2 x i64> %i.cy, %i.cx
  %wide.load23 = load <2 x i64>, ptr %i.cs, align 8, !tbaa !49
  %i.da = lshr exact <2 x i64> %i.cz, splat (i64 1)
  %i.db = xor <2 x i64> %i.da, %wide.load23
  %i.dc = and <2 x i64> %wide.load22, splat (i64 1)
  %i.dd = icmp eq <2 x i64> %i.dc, zeroinitializer
  %i.de = select <2 x i1> %i.dd, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.df = xor <2 x i64> %i.db, %i.de
  store <2 x i64> %i.df, ptr %i.ct, align 8, !tbaa !49
  %index.next24 = add nuw nsw i64 %index19, 2     ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index.next24 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1816
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index.next24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1824
  %wide.load22.1 = load <2 x i64>, ptr %i.dj, align 8, !tbaa !49 ; 4 uses
  %i.dk = shufflevector <2 x i64> %wide.load22, <2 x i64> %wide.load22.1, <2 x i32> <i32 1, i32 2>
  %i.dl = and <2 x i64> %i.dk, splat (i64 -2147483648)
  %i.dm = and <2 x i64> %wide.load22.1, splat (i64 2147483646)
  %i.dn = or disjoint <2 x i64> %i.dm, %i.dl
  %wide.load23.1 = load <2 x i64>, ptr %i.dg, align 8, !tbaa !49
  %i.do = lshr exact <2 x i64> %i.dn, splat (i64 1)
  %i.dp = xor <2 x i64> %i.do, %wide.load23.1
  %i.dq = and <2 x i64> %wide.load22.1, splat (i64 1)
  %i.dr = icmp eq <2 x i64> %i.dq, zeroinitializer
  %i.ds = select <2 x i1> %i.dr, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.dt = xor <2 x i64> %i.dp, %i.ds
  store <2 x i64> %i.dt, ptr %i.dh, align 8, !tbaa !49
  %index.next24.1 = add nuw nsw i64 %index19, 4   ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index.next24.1 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1816
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index.next24.1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1824
  %wide.load22.2 = load <2 x i64>, ptr %i.dx, align 8, !tbaa !49 ; 4 uses
  %i.dy = shufflevector <2 x i64> %wide.load22.1, <2 x i64> %wide.load22.2, <2 x i32> <i32 1, i32 2>
  %i.dz = and <2 x i64> %i.dy, splat (i64 -2147483648)
  %i.ea = and <2 x i64> %wide.load22.2, splat (i64 2147483646)
  %i.eb = or disjoint <2 x i64> %i.ea, %i.dz
  %wide.load23.2 = load <2 x i64>, ptr %i.du, align 8, !tbaa !49
  %i.ec = lshr exact <2 x i64> %i.eb, splat (i64 1)
  %i.ed = xor <2 x i64> %i.ec, %wide.load23.2
  %i.ee = and <2 x i64> %wide.load22.2, splat (i64 1)
  %i.ef = icmp eq <2 x i64> %i.ee, zeroinitializer
  %i.eg = select <2 x i1> %i.ef, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.eh = xor <2 x i64> %i.ed, %i.eg
  store <2 x i64> %i.eh, ptr %i.dv, align 8, !tbaa !49
  %index.next24.2 = add nuw nsw i64 %index19, 6   ; 2 uses
  %i.ei = icmp eq i64 %index.next24.2, 396
  br i1 %i.ei, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit, label %vector.body18, !llvm.loop !238

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit: ; preds = %vector.body18
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 4984 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !49
  %i.el = and i64 %i.ek, -2147483648
  %i.em = load i64, ptr %0, align 8, !tbaa !49    ; 2 uses
  %i.en = and i64 %i.em, 2147483646
  %i.eo = or disjoint i64 %i.en, %i.el
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !49
  %i.er = lshr exact i64 %i.eo, 1
  %i.es = xor i64 %i.er, %i.eq
  %i.et = and i64 %i.em, 1
  %.not.i = icmp eq i64 %i.et, 0
  %i.eu = select i1 %.not.i, i64 0, i64 2567483615
  %i.ev = xor i64 %i.es, %i.eu
  store i64 %i.ev, ptr %i.ej, align 8, !tbaa !49
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit, %bb.a
  %i.ew = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.ex = add nuw nsw i64 %i.ew, 1
  store i64 %i.ex, ptr %i.a, align 8, !tbaa !133
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ew
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !49 ; 2 uses
  %i.fa = lshr i64 %i.ez, 11
  %i.fb = and i64 %i.fa, 4294967295
  %i.fc = xor i64 %i.fb, %i.ez                    ; 2 uses
  %i.fd = shl i64 %i.fc, 7
  %i.fe = and i64 %i.fd, 2636928640
  %i.ff = xor i64 %i.fe, %i.fc                    ; 2 uses
  %i.fg = shl i64 %i.ff, 15
  %i.fh = and i64 %i.fg, 4022730752
  %i.fi = xor i64 %i.fh, %i.ff                    ; 2 uses
  %i.fj = lshr i64 %i.fi, 18
  %i.fk = xor i64 %i.fj, %i.fi
  ret i64 %i.fk
}

declare void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

declare noundef i32 @_ZNSt13random_device9_M_getvalEv(ptr noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #6

declare void @_ZNSt13random_device7_M_finiEv(ptr noundef nonnull align 8 dereferenceable(5000)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { noinline noreturn nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nobuiltin nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { noreturn "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { cold "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress noinline nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind }
attributes #24 = { builtin nounwind }
attributes #25 = { nounwind willreturn memory(none) }
attributes #26 = { builtin allocsize(0) }
attributes #27 = { cold nounwind }
attributes #28 = { noreturn }
attributes #29 = { cold }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !62}
!1 = distinct !{!1, !62}
!2 = distinct !{!2, !62}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 4}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTSN7rocksdb8Random64E", !12, i64 0}
!14 = !{!"bool", !8, i64 0}
!15 = !{!"_ZTSN7rocksdb3Env10IOPriorityE", !8, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!"_ZTSN7rocksdb3Env10IOActivityE", !8, i64 0}
!18 = !{!"_ZTSN7rocksdb12WriteOptionsE", !14, i64 0, !14, i64 1, !14, i64 2, !14, i64 3, !14, i64 4, !14, i64 5, !15, i64 8, !16, i64 16, !17, i64 24}
!19 = !{!"p1 _ZTSN7rocksdb8SnapshotE", !12, i64 0}
!20 = !{!"p1 _ZTSN7rocksdb5SliceE", !12, i64 0}
!21 = !{!"_ZTSNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEE", !16, i64 0}
!22 = !{!"_ZTSN7rocksdb8ReadTierE", !8, i64 0}
!23 = !{!"_ZTSSt22_Optional_payload_baseImE", !8, i64 0, !14, i64 8}
!24 = !{!"_ZTSSt17_Optional_payloadImLb1ELb1ELb1EE", !23, i64 0}
!25 = !{!"_ZTSSt14_Optional_baseImLb1ELb1EE", !24, i64 0}
!26 = !{!"_ZTSSt8optionalImE", !25, i64 0}
!27 = !{!"_ZTSSt14_Function_base", !8, i64 0, !12, i64 16}
!28 = !{!"_ZTSSt8functionIFbRKN7rocksdb15TablePropertiesEEE", !27, i64 0, !12, i64 24}
!29 = !{!"p1 _ZTSN7rocksdb23UserDefinedIndexFactoryE", !12, i64 0}
!30 = !{!"p1 _ZTSN7rocksdb29ReadScopedBlockBufferProviderE", !12, i64 0}
!31 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!32 = !{!"_ZTSN7rocksdb11ReadOptionsE", !19, i64 0, !20, i64 8, !20, i64 16, !21, i64 24, !21, i64 32, !22, i64 40, !15, i64 44, !16, i64 48, !26, i64 56, !14, i64 72, !14, i64 73, !14, i64 74, !14, i64 75, !14, i64 76, !16, i64 80, !16, i64 88, !20, i64 96, !20, i64 104, !14, i64 112, !14, i64 113, !14, i64 114, !14, i64 115, !14, i64 116, !14, i64 117, !14, i64 118, !28, i64 120, !14, i64 152, !14, i64 153, !14, i64 154, !29, i64 160, !30, i64 168, !17, i64 176, !31, i64 184}
!33 = !{!"short", !8, i64 0}
!34 = !{!"_ZTSN7rocksdb6Status4CodeE", !8, i64 0}
!35 = !{!"_ZTSN7rocksdb6Status7SubCodeE", !8, i64 0}
!36 = !{!"_ZTSN7rocksdb6Status8SeverityE", !8, i64 0}
!37 = !{!"p1 omnipotent char", !12, i64 0}
!38 = !{!"_ZTSSt10_Head_baseILm0EPKcLb0EE", !37, i64 0}
!39 = !{!"_ZTSSt11_Tuple_implILm0EJPKcSt14default_deleteIA_S0_EEE", !38, i64 0}
!40 = !{!"_ZTSSt5tupleIJPKcSt14default_deleteIA_S0_EEE", !39, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_implIKcSt14default_deleteIA_S0_EE", !40, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_dataIKcSt14default_deleteIA_S0_ELb1ELb1EE", !41, i64 0}
!43 = !{!"_ZTSSt10unique_ptrIA_KcSt14default_deleteIS1_EE", !42, i64 0}
!44 = !{!"_ZTSN7rocksdb6StatusE", !34, i64 0, !35, i64 1, !36, i64 2, !14, i64 3, !14, i64 4, !8, i64 5, !43, i64 8}
!45 = !{!"p1 _ZTSN7rocksdb11TransactionE", !12, i64 0}
!46 = !{!"_ZTSN7rocksdb25RandomTransactionInserterE", !13, i64 0, !18, i64 8, !32, i64 40, !16, i64 232, !33, i64 240, !16, i64 248, !16, i64 256, !16, i64 264, !44, i64 272, !45, i64 288, !45, i64 296, !16, i64 304, !16, i64 312}
!47 = !{!46, !13, i64 0}
!48 = !{!14, !14, i64 0}
!49 = !{!16, !16, i64 0}
!50 = !{!27, !12, i64 16}
!51 = !{!46, !16, i64 232}
!52 = !{!46, !33, i64 240}
!53 = !{!46, !16, i64 304}
!54 = !{!46, !16, i64 312}
!55 = !{!46, !45, i64 288}
!56 = !{!"vtable pointer", !7, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!46, !45, i64 296}
!59 = !{!37, !37, i64 0}
!60 = !{!38, !37, i64 0}
!61 = !{!33, !33, i64 0}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.isvectorized", i32 1}
!64 = !{!"llvm.loop.unroll.runtime.disable"}
!65 = !{!"branch_weights", i32 8, i32 56}
!66 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !37, i64 0}
!67 = !{!66, !37, i64 0}
!68 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !66, i64 0, !16, i64 8, !8, i64 16}
!69 = !{!68, !16, i64 8}
!70 = !{!8, !8, i64 0}
!71 = !{i8 0, i8 2}
!72 = !{}
!73 = !{!44, !14, i64 4}
!74 = !{!44, !8, i64 5}
!75 = !{!44, !34, i64 0}
!76 = !{!68, !37, i64 0}
!77 = !{!"_ZTSN7rocksdb5SliceE", !37, i64 0, !16, i64 8}
!78 = !{!77, !37, i64 0}
!79 = !{!77, !16, i64 8}
!80 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!"p1 _ZTSN7rocksdb3EnvE", !12, i64 0}
!83 = !{!"p1 _ZTSN7rocksdb11RateLimiterE", !12, i64 0}
!84 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!85 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !84, i64 0}
!86 = !{!"_ZTSSt12__shared_ptrIN7rocksdb11RateLimiterELN9__gnu_cxx12_Lock_policyE2EE", !83, i64 0, !85, i64 8}
!87 = !{!"_ZTSSt10shared_ptrIN7rocksdb11RateLimiterEE", !86, i64 0}
!88 = !{!"p1 _ZTSN7rocksdb14SstFileManagerE", !12, i64 0}
!89 = !{!"_ZTSSt12__shared_ptrIN7rocksdb14SstFileManagerELN9__gnu_cxx12_Lock_policyE2EE", !88, i64 0, !85, i64 8}
!90 = !{!"_ZTSSt10shared_ptrIN7rocksdb14SstFileManagerEE", !89, i64 0}
!91 = !{!"p1 _ZTSN7rocksdb6LoggerE", !12, i64 0}
!92 = !{!"_ZTSSt12__shared_ptrIN7rocksdb6LoggerELN9__gnu_cxx12_Lock_policyE2EE", !91, i64 0, !85, i64 8}
!93 = !{!"_ZTSSt10shared_ptrIN7rocksdb6LoggerEE", !92, i64 0}
!94 = !{!"_ZTSN7rocksdb12InfoLogLevelE", !8, i64 0}
!95 = !{!"p1 _ZTSN7rocksdb10StatisticsE", !12, i64 0}
!96 = !{!"_ZTSSt12__shared_ptrIN7rocksdb10StatisticsELN9__gnu_cxx12_Lock_policyE2EE", !95, i64 0, !85, i64 8}
!97 = !{!"_ZTSSt10shared_ptrIN7rocksdb10StatisticsEE", !96, i64 0}
!98 = !{!"p1 _ZTSN7rocksdb6DbPathE", !12, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb6DbPathESaIS1_EE17_Vector_impl_dataE", !98, i64 0, !98, i64 8, !98, i64 16}
!100 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb6DbPathESaIS1_EE12_Vector_implE", !99, i64 0}
!101 = !{!"_ZTSSt12_Vector_baseIN7rocksdb6DbPathESaIS1_EE", !100, i64 0}
!102 = !{!"_ZTSSt6vectorIN7rocksdb6DbPathESaIS1_EE", !101, i64 0}
!103 = !{!"p1 _ZTSN7rocksdb18WriteBufferManagerE", !12, i64 0}
!104 = !{!"_ZTSSt12__shared_ptrIN7rocksdb18WriteBufferManagerELN9__gnu_cxx12_Lock_policyE2EE", !103, i64 0, !85, i64 8}
!105 = !{!"_ZTSSt10shared_ptrIN7rocksdb18WriteBufferManagerEE", !104, i64 0}
!106 = !{!"p1 _ZTSSt10shared_ptrIN7rocksdb13EventListenerEE", !12, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE17_Vector_impl_dataE", !106, i64 0, !106, i64 8, !106, i64 16}
!108 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE12_Vector_implE", !107, i64 0}
!109 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE", !108, i64 0}
!110 = !{!"_ZTSSt6vectorISt10shared_ptrIN7rocksdb13EventListenerEESaIS3_EE", !109, i64 0}
!111 = !{!"_ZTSN7rocksdb15WALRecoveryModeE", !8, i64 0}
!112 = !{!"p1 _ZTSN7rocksdb5CacheE", !12, i64 0}
!113 = !{!"_ZTSSt12__shared_ptrIN7rocksdb5CacheELN9__gnu_cxx12_Lock_policyE2EE", !112, i64 0, !85, i64 8}
!114 = !{!"_ZTSSt10shared_ptrIN7rocksdb5CacheEE", !113, i64 0}
!115 = !{!"p1 _ZTSN7rocksdb9WalFilterE", !12, i64 0}
!116 = !{!"_ZTSN7rocksdb15CompressionTypeE", !8, i64 0}
!117 = !{!"p1 _ZTSN7rocksdb22FileChecksumGenFactoryE", !12, i64 0}
!118 = !{!"_ZTSSt12__shared_ptrIN7rocksdb22FileChecksumGenFactoryELN9__gnu_cxx12_Lock_policyE2EE", !117, i64 0, !85, i64 8}
!119 = !{!"_ZTSSt10shared_ptrIN7rocksdb22FileChecksumGenFactoryEE", !118, i64 0}
!120 = !{!"_ZTSSt5arrayImLm1EE", !8, i64 0}
!121 = !{!"_ZTSN7rocksdb12SmallEnumSetINS_8FileTypeELS1_10EEE", !120, i64 0}
!122 = !{!"p1 _ZTSN7rocksdb17CompactionServiceE", !12, i64 0}
!123 = !{!"_ZTSSt12__shared_ptrIN7rocksdb17CompactionServiceELN9__gnu_cxx12_Lock_policyE2EE", !122, i64 0, !85, i64 8}
!124 = !{!"_ZTSSt10shared_ptrIN7rocksdb17CompactionServiceEE", !123, i64 0}
!125 = !{!"_ZTSN7rocksdb9CacheTierE", !8, i64 0}
!126 = !{!"_ZTSN7rocksdb11TemperatureE", !8, i64 0}
!127 = !{!"_ZTSN7rocksdb12SmallEnumSetINS_15CompactionStyleELS1_3EEE", !120, i64 0}
!128 = !{!"_ZTSN7rocksdb9DBOptionsE", !14, i64 0, !14, i64 1, !14, i64 2, !14, i64 3, !14, i64 4, !14, i64 5, !14, i64 6, !14, i64 7, !14, i64 8, !82, i64 16, !87, i64 24, !90, i64 40, !93, i64 56, !94, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !14, i64 88, !16, i64 96, !97, i64 104, !14, i64 120, !102, i64 128, !68, i64 152, !68, i64 184, !16, i64 216, !9, i64 224, !9, i64 228, !9, i64 232, !9, i64 236, !16, i64 240, !16, i64 248, !16, i64 256, !16, i64 264, !14, i64 272, !16, i64 280, !14, i64 288, !14, i64 289, !14, i64 290, !9, i64 292, !9, i64 296, !16, i64 304, !16, i64 312, !16, i64 320, !14, i64 328, !14, i64 329, !14, i64 330, !14, i64 331, !14, i64 332, !14, i64 333, !14, i64 334, !9, i64 336, !9, i64 340, !14, i64 344, !16, i64 352, !14, i64 360, !16, i64 368, !105, i64 376, !16, i64 392, !16, i64 400, !14, i64 408, !16, i64 416, !16, i64 424, !14, i64 432, !110, i64 440, !14, i64 464, !16, i64 472, !14, i64 480, !14, i64 481, !14, i64 482, !14, i64 483, !16, i64 488, !16, i64 496, !16, i64 504, !14, i64 512, !111, i64 513, !14, i64 514, !114, i64 520, !115, i64 536, !14, i64 544, !14, i64 545, !14, i64 546, !14, i64 547, !14, i64 548, !14, i64 549, !14, i64 550, !116, i64 551, !14, i64 552, !14, i64 553, !14, i64 554, !14, i64 555, !14, i64 556, !14, i64 557, !16, i64 560, !119, i64 568, !14, i64 584, !9, i64 588, !16, i64 592, !14, i64 600, !68, i64 608, !121, i64 640, !124, i64 648, !125, i64 664, !14, i64 665, !68, i64 672, !16, i64 704, !16, i64 712, !16, i64 720, !16, i64 728, !126, i64 736, !126, i64 737, !127, i64 744, !14, i64 752}
!129 = !{!128, !82, i64 16}
!130 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!131 = !{!9, !9, i64 0}
!132 = !{!"_ZTSSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE", !8, i64 0, !16, i64 4992}
!133 = !{!132, !16, i64 4992}
!134 = !{!"_ZTSNSt24uniform_int_distributionImE10param_typeE", !16, i64 0, !16, i64 8}
!135 = !{!134, !16, i64 0}
!136 = !{!134, !16, i64 8}
!137 = !{!15, !15, i64 0}
!138 = !{!17, !17, i64 0}
!139 = !{i64 0, i64 1, !48, i64 1, i64 1, !48, i64 2, i64 1, !48, i64 3, i64 1, !48, i64 4, i64 1, !48, i64 5, i64 1, !48, i64 8, i64 4, !137, i64 16, i64 8, !49, i64 24, i64 1, !138}
!140 = !{!12, !12, i64 0}
!141 = !{!46, !19, i64 40}
!142 = distinct !{!142, !62, !63, !64}
!143 = distinct !{!143, !62, !63, !64}
!144 = distinct !{!144, !62, !64, !63}
!145 = distinct !{!145, i1 true, !"_ZNSt7__cxx119to_stringEm"}
!146 = distinct !{!146, !145, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!147 = distinct !{!147, i1 true, !"_ZN7rocksdb10WriteBatch3PutERKNS_5SliceES3_"}
!148 = distinct !{!148, !147, !"_ZN7rocksdb10WriteBatch3PutERKNS_5SliceES3_: argument 0"}
!149 = distinct !{null}
!150 = !{!34, !34, i64 0}
!151 = !{!146}
!152 = !{!148}
!153 = !{!46, !16, i64 264}
!154 = !{!"_ZTSN7rocksdb11Transaction16TransactionStateE", !8, i64 0}
!155 = !{!"_ZTSSt6atomicIN7rocksdb11Transaction16TransactionStateEE", !154, i64 0}
!156 = !{!"_ZTSN7rocksdb11TransactionE", !16, i64 8, !68, i64 16, !155, i64 48, !16, i64 56}
!157 = !{!156, !16, i64 56}
!158 = distinct !{!158, i1 true, !"_ZNSt7__cxx119to_stringEm"}
!159 = distinct !{!159, !158, !"_ZNSt7__cxx119to_stringEm: argument 0"}
!160 = distinct !{!160, i1 true, !"_ZN7rocksdb2DB3GetERKNS_11ReadOptionsERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!161 = distinct !{!161, !160, !"_ZN7rocksdb2DB3GetERKNS_11ReadOptionsERKNS_5SliceEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!162 = distinct !{null}
!163 = !{!159}
!164 = !{!161}
end_hunk_1
