Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/AbstractLJpegDecoder?download=true
inline.NumInlined: 1191
inline.NumDeleted: 704
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13setCodeValuesENS_10Array1DRefIKhEE:bb.a
  %next.gep49 = getelementptr i8, ptr %i.c, i64 %i.ac
  %wide.load50 = load <8 x i32>, ptr %next.gep49, align 4, !tbaa !271
  %i.ad = add <8 x i32> %wide.load50, %vec.phi48  ; 2 uses
  %index.next51 = add nuw i64 %index47, 8         ; 2 uses
  %i.ae = icmp eq i64 %index.next51, %n.vec46
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6157

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.af = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ad) ; 2 uses
  %cmp.n52 = icmp eq i64 %i.l, %n.vec46
  br i1 %cmp.n52, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.ph = phi i32 [ 0, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  %.sroa.02.05.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.o, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.06.i.i = phi i32 [ %i.ah, %.lr.ph.i.i ], [ %.06.i.i.ph, %.lr.ph.i.i.preheader ]
  %.sroa.02.05.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %.sroa.02.05.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.02.05.i.i, align 4, !tbaa !271
  %i.ah = add i32 %i.ag, %.06.i.i                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 4 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.f
  br i1 %i.aj, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit, label %.lr.ph.i.i, !llvm.loop !6158

_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit: ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.a
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %i.af, %vec.epilog.middle.block ], [ %i.y, %middle.block ], [ %i.ah, %.lr.ph.i.i ]
  %i.ak = icmp eq i32 %2, %.0.lcssa.i.i
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load ptr, ptr %0, align 8, !tbaa !288   ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !5962 ; 2 uses
  %.not.i.i = icmp eq ptr %i.an, %i.al
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit
  store ptr %i.al, ptr %i.am, align 8, !tbaa !5962
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit

_ZNSt6vectorIhSaIhEE5clearEv.exit:                ; preds = %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.ao = phi ptr [ %i.an, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit ], [ %i.al, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  br i1 %i.h, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit10.thread, label %iter.check76

iter.check76:                                     ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit
  %i.ap = add i64 %i.g, -4
  %i.aq = sub i64 %i.ap, %i.d                     ; 3 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 5 uses
  %min.iters.check54 = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check54, label %.lr.ph.i.i6.preheader, label %vector.main.loop.iter.check55

vector.main.loop.iter.check55:                    ; preds = %iter.check76
  %min.iters.check56 = icmp ult i64 %i.aq, 124
  br i1 %min.iters.check56, label %vec.epilog.ph80, label %vector.ph57

vector.ph57:                                      ; preds = %vector.main.loop.iter.check55
  %i.at = and i64 %i.as, 24
  %n.vec58 = and i64 %i.as, 9223372036854775776   ; 4 uses
  %i.au = shl i64 %n.vec58, 2
  %i.av = getelementptr i8, ptr %i.c, i64 %i.au
  br label %vector.body59

vector.body59:                                    ; preds = %vector.ph57, %vector.body59
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next70, %vector.body59 ] ; 2 uses
  %vec.phi61 = phi <8 x i32> [ zeroinitializer, %vector.ph57 ], [ %i.ba, %vector.body59 ]
  %vec.phi62 = phi <8 x i32> [ zeroinitializer, %vector.ph57 ], [ %i.bb, %vector.body59 ]
  %vec.phi63 = phi <8 x i32> [ zeroinitializer, %vector.ph57 ], [ %i.bc, %vector.body59 ]
  %vec.phi64 = phi <8 x i32> [ zeroinitializer, %vector.ph57 ], [ %i.bd, %vector.body59 ]
  %i.aw = shl i64 %index60, 2
  %next.gep65 = getelementptr i8, ptr %i.c, i64 %i.aw ; 4 uses
  %i.ax = getelementptr i8, ptr %next.gep65, i64 32
  %i.ay = getelementptr i8, ptr %next.gep65, i64 64
  %i.az = getelementptr i8, ptr %next.gep65, i64 96
  %wide.load66 = load <8 x i32>, ptr %next.gep65, align 4, !tbaa !271
  %wide.load67 = load <8 x i32>, ptr %i.ax, align 4, !tbaa !271
  %wide.load68 = load <8 x i32>, ptr %i.ay, align 4, !tbaa !271
  %wide.load69 = load <8 x i32>, ptr %i.az, align 4, !tbaa !271
  %i.ba = add <8 x i32> %wide.load66, %vec.phi61  ; 2 uses
  %i.bb = add <8 x i32> %wide.load67, %vec.phi62  ; 2 uses
  %i.bc = add <8 x i32> %wide.load68, %vec.phi63  ; 2 uses
  %i.bd = add <8 x i32> %wide.load69, %vec.phi64  ; 2 uses
  %index.next70 = add nuw i64 %index60, 32        ; 2 uses
  %i.be = icmp eq i64 %index.next70, %n.vec58
  br i1 %i.be, label %middle.block71, label %vector.body59, !llvm.loop !6159

middle.block71:                                   ; preds = %vector.body59
  %bin.rdx72 = add <8 x i32> %i.bb, %i.ba
  %bin.rdx73 = add <8 x i32> %i.bc, %bin.rdx72
  %bin.rdx74 = add <8 x i32> %i.bd, %bin.rdx73
  %i.bf = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx74) ; 3 uses
  %cmp.n75 = icmp eq i64 %i.as, %n.vec58
  br i1 %cmp.n75, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit10, label %vec.epilog.iter.check77

vec.epilog.iter.check77:                          ; preds = %middle.block71
  %min.epilog.iters.check79 = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check79, label %.lr.ph.i.i6.preheader, label %vec.epilog.ph80, !prof !5986

vec.epilog.ph80:                                  ; preds = %vector.main.loop.iter.check55, %vec.epilog.iter.check77
  %vec.epilog.resume.val81 = phi i64 [ %n.vec58, %vec.epilog.iter.check77 ], [ 0, %vector.main.loop.iter.check55 ]
  %bc.merge.rdx82 = phi i32 [ %i.bf, %vec.epilog.iter.check77 ], [ 0, %vector.main.loop.iter.check55 ]
  %n.vec83 = and i64 %i.as, 9223372036854775800   ; 3 uses
  %i.bg = shl i64 %n.vec83, 2
  %i.bh = getelementptr i8, ptr %i.c, i64 %i.bg
  %i.bi = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx82, i64 0
  br label %vec.epilog.vector.body84

vec.epilog.vector.body84:                         ; preds = %vec.epilog.vector.body84, %vec.epilog.ph80
  %index85 = phi i64 [ %vec.epilog.resume.val81, %vec.epilog.ph80 ], [ %index.next89, %vec.epilog.vector.body84 ] ; 2 uses
  %vec.phi86 = phi <8 x i32> [ %i.bi, %vec.epilog.ph80 ], [ %i.bk, %vec.epilog.vector.body84 ]
  %i.bj = shl i64 %index85, 2
  %next.gep87 = getelementptr i8, ptr %i.c, i64 %i.bj
  %wide.load88 = load <8 x i32>, ptr %next.gep87, align 4, !tbaa !271
  %i.bk = add <8 x i32> %wide.load88, %vec.phi86  ; 2 uses
  %index.next89 = add nuw i64 %index85, 8         ; 2 uses
  %i.bl = icmp eq i64 %index.next89, %n.vec83
  br i1 %i.bl, label %vec.epilog.middle.block90, label %vec.epilog.vector.body84, !llvm.loop !6160

vec.epilog.middle.block90:                        ; preds = %vec.epilog.vector.body84
  %i.bm = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bk) ; 2 uses
  %cmp.n91 = icmp eq i64 %i.as, %n.vec83
  br i1 %cmp.n91, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit10, label %.lr.ph.i.i6.preheader

.lr.ph.i.i6.preheader:                            ; preds = %iter.check76, %vec.epilog.iter.check77, %vec.epilog.middle.block90
  %.06.i.i7.ph = phi i32 [ 0, %iter.check76 ], [ %i.bf, %vec.epilog.iter.check77 ], [ %i.bm, %vec.epilog.middle.block90 ]
  %.sroa.02.05.i.i8.ph = phi ptr [ %i.c, %iter.check76 ], [ %i.av, %vec.epilog.iter.check77 ], [ %i.bh, %vec.epilog.middle.block90 ]
  br label %.lr.ph.i.i6

_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit10.thread: ; preds = %_ZNSt6vectorIhSaIhEE5clearEv.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !289
  br label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

.lr.ph.i.i6:                                      ; preds = %.lr.ph.i.i6.preheader, %.lr.ph.i.i6
  %.06.i.i7 = phi i32 [ %i.bq, %.lr.ph.i.i6 ], [ %.06.i.i7.ph, %.lr.ph.i.i6.preheader ]
  %.sroa.02.05.i.i8 = phi ptr [ %i.br, %.lr.ph.i.i6 ], [ %.sroa.02.05.i.i8.ph, %.lr.ph.i.i6.preheader ] ; 2 uses
  %i.bp = load i32, ptr %.sroa.02.05.i.i8, align 4, !tbaa !271
  %i.bq = add i32 %i.bp, %.06.i.i7                ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i8, i64 4 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.f
  br i1 %i.bs, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit10, label %.lr.ph.i.i6, !llvm.loop !6161

_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit10: ; preds = %.lr.ph.i.i6, %vec.epilog.middle.block90, %middle.block71
  %.lcssa = phi i32 [ %i.bm, %vec.epilog.middle.block90 ], [ %i.bf, %middle.block71 ], [ %i.bq, %.lr.ph.i.i6 ]
  %i.bt = zext i32 %.lcssa to i64                 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !289 ; 2 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = icmp ult i64 %i.by, %i.bt
  br i1 %i.bz, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit10
  %i.ca = ptrtoint ptr %i.ao to i64
  %i.cb = sub i64 %i.ca, %i.bx
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #27 ; 4 uses
  %i.cd = load ptr, ptr %0, align 8, !tbaa !288   ; 4 uses
  %i.ce = load ptr, ptr %i.am, align 8, !tbaa !5962
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 0
  br i1 %i.ci, label %bb.b, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr align 1 %i.cd, i64 %i.ch, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.b, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.cd, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.cj = load ptr, ptr %i.bu, align 8, !tbaa !289
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.cl) #26
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %bb.c, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.cc, ptr %0, align 8, !tbaa !288
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cb ; 2 uses
  store ptr %i.cm, ptr %i.am, align 8, !tbaa !5962
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bt ; 2 uses
  store ptr %i.cn, ptr %i.bu, align 8, !tbaa !289
  br label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt6vectorIhSaIhEE7reserveEm.exit:              ; preds = %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit10.thread, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit10, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i
  %i.co = phi ptr [ %i.bu, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit10 ], [ %i.bu, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ], [ %i.bn, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit10.thread ] ; 3 uses
  %.pre9.i.i.i.i.i = phi ptr [ %i.bv, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit10 ], [ %i.cn, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ], [ %i.bo, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit10.thread ]
  %.pre.i.i.i.i.i = phi ptr [ %i.ao, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit10 ], [ %i.cm, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ], [ %i.ao, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit10.thread ]
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %_ZSt4copyIPKhSt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_S8_S7_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %i.cp = zext nneg i32 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSERKh.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.cq = phi ptr [ %.pre9.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.dn, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSERKh.exit.i.i.i.i.i ] ; 2 uses
  %i.cr = phi ptr [ %.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.do, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSERKh.exit.i.i.i.i.i ] ; 2 uses
  %.07.i.i.i.i.i = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.i ], [ %i.dq, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSERKh.exit.i.i.i.i.i ] ; 2 uses
  %.056.i.i.i.i.i = phi ptr [ %1, %.lr.ph.i.i.i.i.i ], [ %i.dp, %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSERKh.exit.i.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cr, %i.cq
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cs = load i8, ptr %.056.i.i.i.i.i, align 1, !tbaa !270
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !270
  %i.ct = load ptr, ptr %i.am, align 8, !tbaa !5962
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1 ; 2 uses
  store ptr %i.cu, ptr %i.am, align 8, !tbaa !5962
  %.pre8.i.i.i.i.i = load ptr, ptr %i.co, align 8, !tbaa !289
  br label %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSERKh.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.cv = load ptr, ptr %0, align 8, !tbaa !288   ; 4 uses
  %i.cw = ptrtoint ptr %i.cq to i64
  %i.cx = ptrtoint ptr %i.cv to i64               ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 7 uses
  %i.cz = icmp eq i64 %i.cy, 9223372036854775807
  br i1 %i.cz, label %bb.g, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #25
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %.sroa.speculated.i.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.da = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i, %i.cy ; 2 uses
  %i.db = icmp ult i64 %i.da, %i.cy
  %i.dc = tail call i64 @llvm.umin.i64(i64 %i.da, i64 9223372036854775807)
  %i.dd = select i1 %i.db, i64 9223372036854775807, i64 %i.dc ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.dd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i)
  %i.de = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #27 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cy ; 2 uses
  %i.dg = load i8, ptr %.056.i.i.i.i.i, align 1, !tbaa !270
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !270
  %i.dh = icmp sgt i64 %i.cy, 0
  br i1 %i.dh, label %bb.h, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.de, ptr align 1 %i.cv, i64 %i.cy, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i17.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i
  %i.dj = load ptr, ptr %i.co, align 8, !tbaa !289
  %i.dk = ptrtoint ptr %i.dj to i64
  %i.dl = sub i64 %i.dk, %i.cx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cv, i64 noundef %i.dl) #26
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i.i.i.i
  store ptr %i.de, ptr %0, align 8, !tbaa !288
  store ptr %i.di, ptr %i.am, align 8, !tbaa !5962
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dd ; 2 uses
  store ptr %i.dm, ptr %i.co, align 8, !tbaa !289
  br label %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSERKh.exit.i.i.i.i.i

_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSERKh.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i, %bb.e
  %i.dn = phi ptr [ %.pre8.i.i.i.i.i, %bb.e ], [ %i.dm, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i ]
  %i.do = phi ptr [ %i.cu, %bb.e ], [ %i.di, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i.i.i.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %.056.i.i.i.i.i, i64 1
  %i.dq = add nsw i64 %.07.i.i.i.i.i, -1
  %i.dr = icmp sgt i64 %.07.i.i.i.i.i, 1
  br i1 %i.dr, label %bb.d, label %_ZSt4copyIPKhSt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_S8_S7_.exit, !llvm.loop !6162

_ZSt4copyIPKhSt20back_insert_iteratorISt6vectorIhSaIhEEEET0_T_S8_S7_.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIhSaIhEEEaSERKh.exit.i.i.i.i.i, %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !282    ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !285  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !286
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i:                ; preds = %bb.c, %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !288  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEEEclEPS3_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !289
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #26
  br label %_ZNKSt14default_deleteIN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEEEclEPS3_.exit

_ZNKSt14default_deleteIN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEEEclEPS3_.exit: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 48) #26
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIN8rawspeed11HuffmanCodeINS0_15BaselineCodeTagEEEEclEPS3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed20PrefixCodeLUTDecoderINS_15BaselineCodeTagENS_23PrefixCodeLookupDecoderIS1_EEE5setupEbb(ptr noundef nonnull align 8 dereferenceable(152) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN8rawspeed23PrefixCodeLookupDecoderINS_15BaselineCodeTagEE5setupEbb(ptr noundef nonnull align 8 dereferenceable(128) %0, i1 noundef zeroext %1, i1 noundef zeroext %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5988 ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !5989 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 2                   ; 2 uses
  %i.i = icmp ult i64 %i.h, 2048
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = sub nuw nsw i64 2048, %i.h
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.j)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %.not59 = icmp eq i64 %i.g, 8192
  br i1 %.not59, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8192 ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.k
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.k, ptr %i.b, align 8, !tbaa !5988
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !5990 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !5991 ; 3 uses
  %.not70 = icmp eq ptr %i.o, %i.p
  br i1 %.not70, label %.critedge, label %.lr.ph68

.lr.ph68:                                         ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph68, %._crit_edge
  %.04767 = phi i64 [ 0, %.lr.ph68 ], [ %i.ho, %._crit_edge ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.04767 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.x = load i8, ptr %i.w, align 2, !tbaa !5993
  %.fr73 = freeze i8 %i.x                         ; 2 uses
  %i.y = zext i8 %.fr73 to i32                    ; 6 uses
  %i.z = icmp ult i8 %.fr73, 12
  br i1 %i.z, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.aa = load i16, ptr %i.v, align 2, !tbaa !5994
  %i.ab = zext i16 %i.aa to i32
  %i.ac = sub nuw nsw i32 11, %i.y
  %i.ad = shl nuw nsw i32 %i.ab, %i.ac            ; 12 uses
  %i.ae = trunc i32 %i.ad to i16                  ; 21 uses
  %i.af = lshr exact i32 2048, %i.y
  %i.ag = add nuw nsw i32 %i.af, 65535
  %i.ah = or i32 %i.ad, %i.ag                     ; 6 uses
  %i.ai = trunc i32 %i.ah to i16                  ; 5 uses
  %.not5260 = icmp ugt i16 %i.ae, %i.ai
  br i1 %.not5260, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.aj = load ptr, ptr %i.l, align 8, !tbaa !288
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.04767
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !270
  %.fr71 = freeze i8 %i.al                        ; 3 uses
  %i.am = zext i8 %.fr71 to i32                   ; 5 uses
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !5988
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !5989 ; 8 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2                 ; 9 uses
  %i.at = shl nuw nsw i32 %i.am, 9
  %i.au = or disjoint i32 %i.at, %i.y             ; 3 uses
  %i.av = or disjoint i32 %i.au, 256              ; 7 uses
  %i.aw = add nuw nsw i32 %i.am, %i.y             ; 3 uses
  %i.ax = icmp samesign ugt i32 %i.aw, 11
  %i.ay = icmp ne i8 %.fr71, 16                   ; 2 uses
  %or.cond4 = and i1 %i.ax, %i.ay
  %i.az = or disjoint i32 %i.y, 256               ; 2 uses
  %i.ba = or disjoint i32 %i.y, 272
  %i.bb = add nuw nsw i32 %i.az, %i.am            ; 4 uses
  %.not.not = icmp eq i8 %.fr71, 0
  %i.bc = icmp samesign ult i32 %i.aw, 12
end_hunk_0
begin_hunk_1_@_ZN8rawspeed11HuffmanCodeINS_15BaselineCodeTagEEcvNS_10PrefixCodeIS1_EEEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE19generateCodeSymbolsEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.99") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !5985 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !5985 ; 5 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.a
  %i.f = ptrtoaddr ptr %i.d to i64
  %i.g = ptrtoaddr ptr %i.b to i64
  %i.h = add i64 %i.f, -4
  %i.i = sub i64 %i.h, %i.g                       ; 3 uses
  %i.j = lshr i64 %i.i, 2
  %i.k = add nuw nsw i64 %i.j, 1                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.i, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check94 = icmp ult i64 %i.i, 124
  br i1 %min.iters.check94, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.k, 24
  %n.vec = and i64 %i.k, 9223372036854775776      ; 4 uses
  %i.m = shl i64 %n.vec, 2
  %i.n = getelementptr i8, ptr %i.b, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi95 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %vec.phi96 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi97 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %i.o = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.o ; 4 uses
  %i.p = getelementptr i8, ptr %next.gep, i64 32
  %i.q = getelementptr i8, ptr %next.gep, i64 64
  %i.r = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep, align 4, !tbaa !271
  %wide.load98 = load <8 x i32>, ptr %i.p, align 4, !tbaa !271
  %wide.load99 = load <8 x i32>, ptr %i.q, align 4, !tbaa !271
  %wide.load100 = load <8 x i32>, ptr %i.r, align 4, !tbaa !271
  %i.s = add <8 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.t = add <8 x i32> %wide.load98, %vec.phi95   ; 2 uses
  %i.u = add <8 x i32> %wide.load99, %vec.phi96   ; 2 uses
  %i.v = add <8 x i32> %wide.load100, %vec.phi97  ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !6185

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.t, %i.s
  %bin.rdx101 = add <8 x i32> %i.u, %bin.rdx
  %bin.rdx102 = add <8 x i32> %i.v, %bin.rdx101
  %i.x = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx102) ; 3 uses
  %cmp.n = icmp eq i64 %i.k, %n.vec
  br i1 %cmp.n, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !5986

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.x, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec103 = and i64 %i.k, 9223372036854775800   ; 3 uses
  %i.y = shl i64 %n.vec103, 2
  %i.z = getelementptr i8, ptr %i.b, i64 %i.y
  %i.aa = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index104 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next108, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi105 = phi <8 x i32> [ %i.aa, %vec.epilog.ph ], [ %i.ac, %vec.epilog.vector.body ]
  %i.ab = shl i64 %index104, 2
  %next.gep106 = getelementptr i8, ptr %i.b, i64 %i.ab
  %wide.load107 = load <8 x i32>, ptr %next.gep106, align 4, !tbaa !271
  %i.ac = add <8 x i32> %wide.load107, %vec.phi105 ; 2 uses
  %index.next108 = add nuw i64 %index104, 8       ; 2 uses
  %i.ad = icmp eq i64 %index.next108, %n.vec103
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6186

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ae = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ac) ; 2 uses
  %cmp.n109 = icmp eq i64 %i.k, %n.vec103
  br i1 %cmp.n109, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.ph = phi i32 [ 0, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  %.sroa.02.05.i.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.n, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit.thread: ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE7reserveEm.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.06.i.i = phi i32 [ %i.ah, %.lr.ph.i.i ], [ %.06.i.i.ph, %.lr.ph.i.i.preheader ]
  %.sroa.02.05.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %.sroa.02.05.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.02.05.i.i, align 4, !tbaa !271
  %i.ah = add i32 %i.ag, %.06.i.i                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i, i64 4 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.d
  br i1 %i.aj, label %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit, label %.lr.ph.i.i, !llvm.loop !6187

_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit: ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.lcssa93 = phi i32 [ %i.ae, %vec.epilog.middle.block ], [ %i.x, %middle.block ], [ %i.ah, %.lr.ph.i.i ] ; 2 uses
  %i.ak = zext i32 %.lcssa93 to i64               ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not63 = icmp eq i32 %.lcssa93, 0
  br i1 %.not63, label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE11_M_allocateEm.exit.i: ; preds = %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit
  %i.am = shl nuw nsw i64 %i.ak, 2
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #27
          to label %.noexc unwind label %.loopexit.split-lp ; 4 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE11_M_allocateEm.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.an, ptr %0, align 8, !tbaa !5991
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !5990
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ak ; 2 uses
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !5981
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !5961
  %.pre46 = load ptr, ptr %i.a, align 8, !tbaa !285
  br label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE7reserveEm.exit

_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE7reserveEm.exit: ; preds = %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit.thread, %.noexc, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit
  %i.aq = phi ptr [ %i.al, %.noexc ], [ %i.al, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit ], [ %i.af, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit.thread ] ; 3 uses
  %.promoted2450 = phi ptr [ %i.an, %.noexc ], [ null, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit ], [ null, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit.thread ] ; 2 uses
  %.promoted48 = phi ptr [ %i.ap, %.noexc ], [ null, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit ], [ null, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit.thread ]
  %i.ar = phi ptr [ %.pre46, %.noexc ], [ %i.b, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit ], [ %i.b, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit.thread ] ; 2 uses
  %i.as = phi ptr [ %.pre, %.noexc ], [ %i.d, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit ], [ %i.d, %_ZNK8rawspeed11HuffmanCodeINS_15BaselineCodeTagEE13maxCodesCountEv.exit.thread ] ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.ar to i64
  %i.av = sub i64 %i.at, %i.au
  %.not32 = icmp eq i64 %i.av, 4
  br i1 %.not32, label %._crit_edge35, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE7reserveEm.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.ax = phi ptr [ %i.ar, %.preheader.lr.ph ], [ %i.be, %._crit_edge ] ; 4 uses
  %i.ay = phi ptr [ %i.as, %.preheader.lr.ph ], [ %i.bf, %._crit_edge ]
  %i.az = phi ptr [ %.promoted2450, %.preheader.lr.ph ], [ %i.bg, %._crit_edge ] ; 2 uses
  %.promoted24 = phi ptr [ %.promoted2450, %.preheader.lr.ph ], [ %.lcssa25, %._crit_edge ] ; 2 uses
  %.promoted = phi ptr [ %.promoted48, %.preheader.lr.ph ], [ %.lcssa21, %._crit_edge ] ; 2 uses
  %i.ba = phi i64 [ 1, %.preheader.lr.ph ], [ %i.bj, %._crit_edge ] ; 2 uses
  %storemerge34 = phi i32 [ 1, %.preheader.lr.ph ], [ %i.bi, %._crit_edge ] ; 2 uses
  %.01833 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.bh, %._crit_edge ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !271
  %.not36 = icmp eq i32 %i.bc, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bd = trunc i32 %storemerge34 to i8           ; 2 uses
  br label %bb.b

._crit_edge35:                                    ; preds = %._crit_edge, %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE7reserveEm.exit
  ret void

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE12emplace_backIJRjS8_EEERS4_DpOT_.exit
  %.pre52 = load ptr, ptr %i.c, align 8, !tbaa !5961
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.be = phi ptr [ %i.ax, %.preheader ], [ %i.co, %._crit_edge.loopexit ] ; 2 uses
  %i.bf = phi ptr [ %i.ay, %.preheader ], [ %.pre52, %._crit_edge.loopexit ] ; 2 uses
  %i.bg = phi ptr [ %i.az, %.preheader ], [ %i.cq, %._crit_edge.loopexit ]
  %.lcssa25 = phi ptr [ %.promoted24, %.preheader ], [ %i.cr, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa21 = phi ptr [ %.promoted, %.preheader ], [ %i.cs, %._crit_edge.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.01833, %.preheader ], [ %i.ct, %._crit_edge.loopexit ]
  store ptr %.lcssa21, ptr %i.aq, align 1
  store ptr %.lcssa25, ptr %0, align 8
  %i.bh = shl i32 %.1.lcssa, 1
  %i.bi = add i32 %storemerge34, 1                ; 2 uses
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = ptrtoint ptr %i.bf to i64
  %i.bl = ptrtoint ptr %i.be to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = ashr exact i64 %i.bm, 2
  %i.bo = add nsw i64 %i.bn, -1
  %.not = icmp ult i64 %i.bo, %i.bj
  br i1 %.not, label %._crit_edge35, label %.preheader, !llvm.loop !6188

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE12emplace_backIJRjS8_EEERS4_DpOT_.exit
  %i.bp = phi ptr [ %i.ax, %.lr.ph ], [ %i.co, %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE12emplace_backIJRjS8_EEERS4_DpOT_.exit ]
  %i.bq = phi ptr [ %i.ax, %.lr.ph ], [ %i.cp, %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE12emplace_backIJRjS8_EEERS4_DpOT_.exit ]
  %i.br = phi ptr [ %i.az, %.lr.ph ], [ %i.cq, %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE12emplace_backIJRjS8_EEERS4_DpOT_.exit ] ; 7 uses
  %.029 = phi i32 [ 0, %.lr.ph ], [ %i.cu, %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE12emplace_backIJRjS8_EEERS4_DpOT_.exit ]
  %.128 = phi i32 [ %.01833, %.lr.ph ], [ %i.ct, %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE12emplace_backIJRjS8_EEERS4_DpOT_.exit ] ; 3 uses
  %i.bs = phi ptr [ %.promoted, %.lr.ph ], [ %i.cs, %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE12emplace_backIJRjS8_EEERS4_DpOT_.exit ] ; 4 uses
  %i.bt = phi ptr [ %.promoted24, %.lr.ph ], [ %i.cr, %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE12emplace_backIJRjS8_EEERS4_DpOT_.exit ] ; 9 uses
  %.not.i = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bu = trunc i32 %.128 to i16
  store i16 %i.bu, ptr %i.br, align 2, !tbaa !5994
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i8 %i.bd, ptr %i.bv, align 2, !tbaa !5993
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 4 ; 2 uses
  store ptr %i.bw, ptr %i.aw, align 8, !tbaa !5990
  br label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE12emplace_backIJRjS8_EEERS4_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.bx = ptrtoint ptr %i.br to i64
  %i.by = ptrtoint ptr %i.bt to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 6 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775804
  br i1 %i.ca, label %bb.e, label %_ZNKSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  store ptr %i.bs, ptr %i.aq, align 1
  store ptr %i.bt, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.38) #25
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %bb.e
  unreachable

_ZNKSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.cb = ashr exact i64 %i.bz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 2305843009213693951)
  %i.cf = select i1 %i.cd, i64 2305843009213693951, i64 %i.ce ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.cg = shl nuw nsw i64 %i.cf, 2
  %i.ch = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #27
          to label %.noexc9 unwind label %.loopexit ; 4 uses

.noexc9:                                          ; preds = %_ZNKSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.bz ; 3 uses
  %i.cj = trunc i32 %.128 to i16
  store i16 %i.cj, ptr %i.ci, align 2, !tbaa !5994
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  store i8 %i.bd, ptr %i.ck, align 2, !tbaa !5993
  %i.cl = icmp sgt i64 %i.bz, 0
  br i1 %i.cl, label %bb.f, label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i.i

bb.f:                                             ; preds = %.noexc9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ch, ptr align 2 %i.bt, i64 %i.bz, i1 false)
  br label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i.i

_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i.i: ; preds = %bb.f, %.noexc9
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %.not.i28.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i28.i.i, label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE17_M_realloc_insertIJRjS8_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bt, i64 noundef %i.bz) #26
  br label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE17_M_realloc_insertIJRjS8_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE17_M_realloc_insertIJRjS8_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit27.i.i
  store ptr %i.cm, ptr %i.aw, align 8, !tbaa !5990
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %i.cf
  %.pre51 = load ptr, ptr %i.a, align 8, !tbaa !285 ; 2 uses
  br label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE12emplace_backIJRjS8_EEERS4_DpOT_.exit

_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE12emplace_backIJRjS8_EEERS4_DpOT_.exit: ; preds = %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE17_M_realloc_insertIJRjS8_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.c
  %i.co = phi ptr [ %.pre51, %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE17_M_realloc_insertIJRjS8_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.bp, %bb.c ] ; 2 uses
  %i.cp = phi ptr [ %.pre51, %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE17_M_realloc_insertIJRjS8_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.bq, %bb.c ] ; 2 uses
  %i.cq = phi ptr [ %i.cm, %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE17_M_realloc_insertIJRjS8_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.bw, %bb.c ] ; 2 uses
  %i.cr = phi ptr [ %i.ch, %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE17_M_realloc_insertIJRjS8_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.bt, %bb.c ] ; 2 uses
  %i.cs = phi ptr [ %i.cn, %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE17_M_realloc_insertIJRjS8_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.bs, %bb.c ] ; 2 uses
  %i.ct = add i32 %.128, 1                        ; 2 uses
  %i.cu = add nuw i32 %.029, 1                    ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.ba
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !271
  %i.cx = icmp ult i32 %i.cu, %i.cw
  br i1 %i.cx, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !6189

.loopexit:                                        ; preds = %_ZNKSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bs, ptr %i.aq, align 1
  store ptr %i.bt, ptr %0, align 8
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.e, %_ZNSt12_Vector_baseIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE11_M_allocateEm.exit.i
  %i.cy = phi ptr [ %i.br, %bb.e ], [ null, %_ZNSt12_Vector_baseIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE11_M_allocateEm.exit.i ]
  %i.cz = phi ptr [ %i.bt, %bb.e ], [ null, %_ZNSt12_Vector_baseIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EE11_M_allocateEm.exit.i ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %i.da = phi ptr [ %i.br, %.loopexit ], [ %i.cy, %.loopexit.split-lp ]
  %i.db = phi ptr [ %i.bt, %.loopexit ], [ %i.cz, %.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i10 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef %i.de) #26
  br label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit

_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed10PrefixCodeINS_15BaselineCodeTagEEC2ESt6vectorINS_18AbstractPrefixCodeIS1_E10CodeSymbolESaIS6_EES3_IhSaIhEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef align 8 %1, ptr noundef align 8 %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !288    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !6001
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !5962
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !288
  store <2 x ptr> %i.e, ptr %i.c, align 8, !tbaa !6001
  %i.g = icmp eq ptr %i.a, %i.f
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.47, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed18AbstractPrefixCodeINS_15BaselineCodeTagEEC2ESt6vectorIhSaIhEE) #15
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !288    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit8, label %_ZNSt6vectorIhSaIhEED2Ev.exit8.sink.split

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = load <2 x ptr>, ptr %1, align 8, !tbaa !6002
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !6002
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !5981
  store ptr %i.p, ptr %i.n, align 8, !tbaa !5981
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !6002 ; 5 uses
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !6002 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !6001   ; 2 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !6001 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = ptrtoint ptr %i.q to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 2
  %i.aa = ptrtoint ptr %i.u to i64
  %i.ab = ptrtoint ptr %i.t to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %.not = icmp eq i64 %i.z, %i.ac
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %_ZNSt6vectorIhSaIhEED2Ev.exit
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.46, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10PrefixCodeINS_15BaselineCodeTagEEC2ESt6vectorINS_18AbstractPrefixCodeIS1_E10CodeSymbolESaIS6_EES3_IhSaIhEE) #15
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.m, %bb.q, %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %i.k, align 8, !tbaa !5991 ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !5981
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #26
  br label %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit

_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit: ; preds = %bb.i, %bb.j
  %i.aj = load ptr, ptr %i.j, align 8, !tbaa !285 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !286
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN8rawspeed18AbstractPrefixCodeINS0_15BaselineCodeTagEE10CodeSymbolESaIS4_EED2Ev.exit, %bb.k
  %i.ap = load ptr, ptr %0, align 8, !tbaa !288   ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i11, label %_ZNSt6vectorIhSaIhEED2Ev.exit8, label %_ZNSt6vectorIhSaIhEED2Ev.exit8.sink.split

bb.l:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !5961 ; 2 uses
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !285 ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = ashr exact i64 %i.av, 2                 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 17
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = sub nuw nsw i64 17, %i.aw
  invoke void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.ay)
          to label %._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge unwind label %bb.i

._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge:    ; preds = %bb.m
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !6002
  %.pre24 = load ptr, ptr %i.l, align 8, !tbaa !6002
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.n:                                             ; preds = %bb.l
  %.not21 = icmp eq i64 %i.av, 68
  br i1 %.not21, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 68 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.az
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.o
  store ptr %i.az, ptr %i.aq, align 8, !tbaa !5961
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i, %bb.o, %bb.n
  %i.ba = phi ptr [ %.pre24, %._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge ], [ %i.r, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ], [ %i.r, %bb.o ], [ %i.r, %bb.n ] ; 2 uses
  %i.bb = phi ptr [ %.pre, %._ZNSt6vectorIjSaIjEE6resizeEm.exit_crit_edge ], [ %i.q, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ], [ %i.q, %bb.o ], [ %i.q, %bb.n ] ; 2 uses
  %i.bc = icmp eq ptr %i.bb, %i.ba
  br i1 %i.bc, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !285
  br label %bb.p

.preheader:                                       ; preds = %bb.p, %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %.promoted = load ptr, ptr %i.aq, align 8, !tbaa !5985
  %i.be = getelementptr inbounds i8, ptr %.promoted, i64 -4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !271
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph23, label %bb.q

bb.p:                                             ; preds = %.lr.ph, %bb.p
  %.sroa.013.022 = phi ptr [ %i.bb, %.lr.ph ], [ %i.bn, %bb.p ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.013.022, i64 2
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !5993
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !271
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !271
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.013.022, i64 4 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.ba
  br i1 %i.bo, label %.preheader, label %bb.p

.lr.ph23:                                         ; preds = %.preheader, %.lr.ph23
  %i.bp = phi ptr [ %i.bq, %.lr.ph23 ], [ %i.be, %.preheader ] ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !271
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph23, label %._crit_edge, !llvm.loop !6190

._crit_edge:                                      ; preds = %.lr.ph23
  store ptr %i.bp, ptr %i.aq, align 8, !tbaa !5961
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %.preheader
  invoke void @_ZN8rawspeed10PrefixCodeINS_15BaselineCodeTagEE17verifyCodeSymbolsEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.r unwind label %bb.i

bb.r:                                             ; preds = %bb.q
end_hunk_1
