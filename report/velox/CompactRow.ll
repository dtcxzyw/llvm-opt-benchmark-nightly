Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/CompactRow?download=true
inline.NumInlined: 3028
inline.NumDeleted: 1097
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8facebook5velox3row12_GLOBAL__N_117deserializeArraysERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE:bb.a
  %i.bam = and i64 %i.azx, 448
  %min.epilog.iters.check = icmp eq i64 %i.bam, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i189.preheader, label %vec.epilog.ph, !prof !150

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bal, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec708 = and i64 %i.azy, -4                  ; 3 uses
  %i.ban = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index709 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next712, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi710 = phi <4 x i32> [ %i.ban, %vec.epilog.ph ], [ %i.bap, %vec.epilog.vector.body ]
  %i.bao = getelementptr inbounds nuw [4 x i8], ptr %i.bab, i64 %index709
  %wide.load711 = load <4 x i32>, ptr %i.bao, align 4, !tbaa !129, !noalias !1068
  %i.bap = add <4 x i32> %wide.load711, %vec.phi710 ; 2 uses
  %index.next712 = add nuw i64 %index709, 4       ; 2 uses
  %i.baq = icmp eq i64 %index.next712, %n.vec708
  br i1 %i.baq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !976

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bar = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bap) ; 2 uses
  %cmp.n713 = icmp eq i64 %i.azy, %n.vec708
  br i1 %cmp.n713, label %_ZN8facebook5velox3row12_GLOBAL__N_19totalSizeEPKim.exit, label %.lr.ph.i189.preheader

.lr.ph.i189.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i190.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec708, %vec.epilog.middle.block ]
  %.068.i.ph = phi i32 [ 0, %iter.check ], [ %i.bal, %vec.epilog.iter.check ], [ %i.bar, %vec.epilog.middle.block ]
  br label %.lr.ph.i189

.lr.ph.i189:                                      ; preds = %.lr.ph.i189.preheader, %.lr.ph.i189
  %indvars.iv.i190 = phi i64 [ %indvars.iv.next.i191, %.lr.ph.i189 ], [ %indvars.iv.i190.ph, %.lr.ph.i189.preheader ] ; 2 uses
  %.068.i = phi i32 [ %i.bau, %.lr.ph.i189 ], [ %.068.i.ph, %.lr.ph.i189.preheader ]
  %i.bas = getelementptr inbounds nuw [4 x i8], ptr %i.bab, i64 %indvars.iv.i190
  %i.bat = load i32, ptr %i.bas, align 4, !tbaa !129, !noalias !1068
  %i.bau = add nsw i32 %i.bat, %.068.i            ; 2 uses
  %indvars.iv.next.i191 = add nuw nsw i64 %indvars.iv.i190, 1 ; 2 uses
  %exitcond.not.i192 = icmp eq i64 %indvars.iv.next.i191, %i.azy
  br i1 %exitcond.not.i192, label %_ZN8facebook5velox3row12_GLOBAL__N_19totalSizeEPKim.exit, label %.lr.ph.i189, !llvm.loop !977

_ZN8facebook5velox3row12_GLOBAL__N_19totalSizeEPKim.exit: ; preds = %.lr.ph.i189, %middle.block, %vec.epilog.middle.block, %bb.ep
  %.06.lcssa.i = phi i32 [ 0, %bb.ep ], [ %i.bar, %vec.epilog.middle.block ], [ %i.bal, %middle.block ], [ %i.bau, %.lr.ph.i189 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !1068
  %i.bav = sext i32 %.06.lcssa.i to i64           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26, !noalias !1069
  store i8 -1, ptr %6, align 1, !tbaa !114, !noalias !1069
  %i.baw = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 1, ptr %i.baw, align 1, !tbaa !182, !noalias !1069
  %i.bax = add nsw i64 %i.bav, 7
  %i.bay = lshr i64 %i.bax, 3
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %8, i64 noundef %i.bay, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(2) %6, i1 noundef zeroext false)
          to label %.noexc129 unwind label %bb.fy

.noexc129:                                        ; preds = %_ZN8facebook5velox3row12_GLOBAL__N_19totalSizeEPKim.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26, !noalias !1069
  %i.baz = load ptr, ptr %8, align 8, !tbaa !168, !noalias !1068 ; 2 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %i.baz, i64 44
  %i.bbb = load i8, ptr %i.bba, align 4, !tbaa !183, !noalias !1068
  %i.bbc = and i8 %i.bbb, 2
  %.not.i185 = icmp eq i8 %i.bbc, 0
  br i1 %.not.i185, label %bb.er, label %bb.eq, !prof !184

bb.eq:                                            ; preds = %.noexc129
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #27
          to label %.noexc186 unwind label %bb.eu

.noexc186:                                        ; preds = %bb.eq
  unreachable

bb.er:                                            ; preds = %.noexc129
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.baz, i64 16
  %i.bbe = load ptr, ptr %i.bbd, align 8, !tbaa !175, !noalias !1068
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !1068
  %i.bbf = icmp slt i32 %.06.lcssa.i, 0
  br i1 %i.bbf, label %bb.es, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.es:                                            ; preds = %bb.er
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
          to label %.noexc183 unwind label %bb.ev

.noexc183:                                        ; preds = %bb.es
  unreachable

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.er
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false), !noalias !1068
  %.not.i.i.i.i182 = icmp eq i32 %.06.lcssa.i, 0
  br i1 %.not.i.i.i.i182, label %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.bbg = shl nuw nsw i64 %i.bav, 4              ; 3 uses
  %i.bbh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bbg) #28
          to label %bb.et unwind label %bb.ev     ; 6 uses

_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.bbi = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !1068
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br label %.loopexit

bb.et:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.bbh, ptr %9, align 8, !tbaa !165, !noalias !1068
  %i.bbj = getelementptr inbounds nuw [16 x i8], ptr %i.bbh, i64 %i.bav
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bbh, i8 0, i64 %i.bbg, i1 false), !noalias !1068
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.bbh, i64 %i.bbg
  %i.bbk = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bbl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store ptr %i.bbj, ptr %i.bbl, align 8, !tbaa !1070, !noalias !1068
  store ptr %scevgep.i.i.i.i.i, ptr %i.bbk, align 8, !tbaa !164, !noalias !1068
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26, !noalias !1068
  %i.bbm = shl nuw nsw i64 %i.bav, 3              ; 3 uses
  %i.bbn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bbm) #28
          to label %.noexc181 unwind label %_ZNSt6vectorImSaImEED2Ev.exit.thread ; 5 uses

.noexc181:                                        ; preds = %bb.et
  store ptr %i.bbn, ptr %10, align 8, !tbaa !96, !noalias !1068
  %i.bbo = getelementptr inbounds nuw [8 x i8], ptr %i.bbn, i64 %i.bav ; 2 uses
  %i.bbp = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.bbo, ptr %i.bbp, align 8, !tbaa !90, !noalias !1068
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bbn, i8 0, i64 %i.bbm, i1 false), !tbaa !103, !noalias !1068
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbn, i64 %i.bbm
  %i.bbr = ptrtoint ptr %i.bbo to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc181, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i
  %i.bbs = phi i64 [ 0, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i ], [ %i.bbr, %.noexc181 ] ; 2 uses
  %i.bbt = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i ], [ %i.bbh, %.noexc181 ] ; 6 uses
  %i.bbu = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i ], [ %i.bbn, %.noexc181 ] ; 7 uses
  %i.bbv = phi ptr [ %i.bbi, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i ], [ %i.bbl, %.noexc181 ] ; 2 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.thread.i ], [ %i.bbq, %.noexc181 ]
  %i.bbw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.bbw, align 8, !tbaa !166, !noalias !1068
  br i1 %.not.i188, label %._crit_edge304, label %.lr.ph303

._crit_edge304:                                   ; preds = %bb.fc, %.loopexit
  invoke fastcc void @_ZN8facebook5velox3row12_GLOBAL__N_111deserializeERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE(ptr dead_on_unwind noalias nonnull writable align 8 %47, ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %5)
          to label %_ZN8facebook5velox3row12_GLOBAL__N_124deserializeComplexArraysERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE.exit unwind label %bb.fd, !inline_history !982

bb.eu:                                            ; preds = %bb.eq
  %i.bbx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fg

bb.ev:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.es
  %i.bby = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit.thread:             ; preds = %bb.et
  %i.bbz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !1068
  br label %bb.ff

.lr.ph303:                                        ; preds = %.loopexit, %bb.fc
  %indvars.iv365 = phi i64 [ %indvars.iv.next366, %bb.fc ], [ 0, %.loopexit ] ; 7 uses
  %.055.i300 = phi i32 [ %.2.i127, %bb.fc ], [ 0, %.loopexit ] ; 2 uses
  %i.bca = getelementptr inbounds nuw [4 x i8], ptr %i.bab, i64 %indvars.iv365
  %i.bcb = load i32, ptr %i.bca, align 4, !tbaa !129, !noalias !1068 ; 3 uses
  %i.bcc = icmp sgt i32 %i.bcb, 0
  br i1 %i.bcc, label %bb.ew, label %bb.fc

bb.ew:                                            ; preds = %.lr.ph303
  %i.bcd = load ptr, ptr %2, align 8, !tbaa !165, !noalias !1068
  %i.bce = getelementptr inbounds nuw [16 x i8], ptr %i.bcd, i64 %indvars.iv365
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bce, i64 8
  %i.bcg = load ptr, ptr %i.bcf, align 8, !tbaa !186, !noalias !1068 ; 3 uses
  %i.bch = load ptr, ptr %4, align 8, !tbaa !96, !noalias !1068
  %i.bci = getelementptr inbounds nuw [8 x i8], ptr %i.bch, i64 %indvars.iv365 ; 3 uses
  %i.bcj = load i64, ptr %i.bci, align 8, !tbaa !103, !noalias !1068 ; 2 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %i.bcg, i64 %i.bcj
  %narrow = add nuw i32 %i.bcb, 7
  %i.bcl = lshr i32 %narrow, 3
  %i.bcm = zext nneg i32 %i.bcl to i64
  %i.bcn = add i64 %i.bcj, %i.bcm                 ; 3 uses
  store i64 %i.bcn, ptr %i.bci, align 8, !tbaa !103, !noalias !1068
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcg, i64 %i.bcn
  %.val69.i = load i32, ptr %i.bco, align 1, !noalias !1068
  %i.bcp = add i64 %i.bcn, 4                      ; 2 uses
  store i64 %i.bcp, ptr %i.bci, align 8, !tbaa !103, !noalias !1068
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcg, i64 %i.bcp
  %i.bcr = sext i32 %.055.i300 to i64
  %wide.trip.count = zext nneg i32 %i.bcb to i64
  br label %bb.ey

bb.ex:                                            ; preds = %bb.fb
  %i.bcs = trunc nsw i64 %indvars.iv.next361 to i32
  %i.bct = sext i32 %.val69.i to i64
  %i.bcu = load ptr, ptr %4, align 8, !tbaa !96, !noalias !1068
  %i.bcv = getelementptr inbounds nuw [8 x i8], ptr %i.bcu, i64 %indvars.iv365 ; 2 uses
  %i.bcw = load i64, ptr %i.bcv, align 8, !tbaa !103, !noalias !1068
  %i.bcx = add i64 %i.bcw, %i.bct
  store i64 %i.bcx, ptr %i.bcv, align 8, !tbaa !103, !noalias !1068
  br label %bb.fc

bb.ey:                                            ; preds = %bb.ew, %bb.fb
  %indvars.iv360 = phi i64 [ %i.bcr, %bb.ew ], [ %indvars.iv.next361, %bb.fb ] ; 5 uses
  %indvars.iv358 = phi i64 [ 0, %bb.ew ], [ %indvars.iv.next359, %bb.fb ] ; 4 uses
  %i.bcy = lshr i64 %indvars.iv358, 3
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bck, i64 %i.bcy
  %i.bda = load i8, ptr %i.bcz, align 1, !tbaa !114, !noalias !1068
  %i.bdb = zext i8 %i.bda to i32
  %i.bdc = trunc nuw nsw i64 %indvars.iv358 to i32
  %i.bdd = and i32 %i.bdc, 7
  %i.bde = shl nuw nsw i32 1, %i.bdd
  %i.bdf = and i32 %i.bde, %i.bdb
  %.not = icmp eq i32 %i.bdf, 0
  br i1 %.not, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.bdg = and i64 %indvars.iv360, 7
  %i.bdh = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bdg
  %i.bdi = load i8, ptr %i.bdh, align 1, !tbaa !114, !noalias !1068
  %i.bdj = lshr i64 %indvars.iv360, 3
  %i.bdk = and i64 %i.bdj, 536870911
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bbe, i64 %i.bdk ; 2 uses
  %i.bdm = load i8, ptr %i.bdl, align 1, !tbaa !114, !noalias !1068
  %i.bdn = and i8 %i.bdm, %i.bdi
  store i8 %i.bdn, ptr %i.bdl, align 1, !tbaa !114, !noalias !1068
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ey
  %i.bdo = shl nuw nsw i64 %indvars.iv358, 2
  %i.bdp = getelementptr inbounds nuw i8, ptr %i.bcq, i64 %i.bdo
  %.val.i128 = load i32, ptr %i.bdp, align 1, !noalias !1068
  %i.bdq = load ptr, ptr %4, align 8, !tbaa !96, !noalias !1068
  %i.bdr = getelementptr inbounds nuw [8 x i8], ptr %i.bdq, i64 %indvars.iv365
  %i.bds = load i64, ptr %i.bdr, align 8, !tbaa !103, !noalias !1068
  %i.bdt = sext i32 %.val.i128 to i64
  %i.bdu = add i64 %i.bds, %i.bdt
  %i.bdv = getelementptr inbounds nuw [8 x i8], ptr %i.bbu, i64 %indvars.iv360
  store i64 %i.bdu, ptr %i.bdv, align 8, !tbaa !103, !noalias !1068
  %i.bdw = load ptr, ptr %2, align 8, !tbaa !165, !noalias !1068
  %i.bdx = getelementptr inbounds nuw [16 x i8], ptr %i.bdw, i64 %indvars.iv365
  %i.bdy = getelementptr inbounds nuw [16 x i8], ptr %i.bbt, i64 %indvars.iv360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bdy, ptr noundef nonnull align 8 dereferenceable(16) %i.bdx, i64 16, i1 false), !tbaa.struct !1071, !noalias !1068
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %indvars.iv.next361 = add nsw i64 %indvars.iv360, 1 ; 2 uses
  %indvars.iv.next359 = add nuw nsw i64 %indvars.iv358, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next359, %wide.trip.count
  br i1 %exitcond.not, label %bb.ex, label %bb.ey, !llvm.loop !983

bb.fc:                                            ; preds = %bb.ex, %.lr.ph303
  %.2.i127 = phi i32 [ %i.bcs, %bb.ex ], [ %.055.i300, %.lr.ph303 ]
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1 ; 2 uses
  %exitcond368.not = icmp eq i64 %indvars.iv.next366, %i.azy
  br i1 %exitcond368.not, label %._crit_edge304, label %.lr.ph303, !llvm.loop !984

bb.fd:                                            ; preds = %._crit_edge304
  %i.bdz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i167 = icmp eq ptr %i.bbu, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.bea = ptrtoint ptr %i.bbu to i64
  %i.beb = sub i64 %i.bbs, %i.bea
  call void @_ZdlPvm(ptr noundef nonnull %i.bbu, i64 noundef %i.beb) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.fe, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !1068
  %.not.i.i.i166 = icmp eq ptr %i.bbt, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, label %bb.ff

bb.ff:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.thread, %_ZNSt6vectorImSaImEED2Ev.exit
  %.pn.pn.i633 = phi { ptr, i32 } [ %i.bbz, %_ZNSt6vectorImSaImEED2Ev.exit.thread ], [ %i.bdz, %_ZNSt6vectorImSaImEED2Ev.exit ]
  %i.bec = phi ptr [ %i.bbl, %_ZNSt6vectorImSaImEED2Ev.exit.thread ], [ %i.bbv, %_ZNSt6vectorImSaImEED2Ev.exit ]
  %i.bed = phi ptr [ %i.bbh, %_ZNSt6vectorImSaImEED2Ev.exit.thread ], [ %i.bbt, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 2 uses
  %i.bee = load ptr, ptr %i.bec, align 8, !tbaa !1070
  %i.bef = ptrtoint ptr %i.bee to i64
  %i.beg = ptrtoint ptr %i.bed to i64
  %i.beh = sub i64 %i.bef, %i.beg
  call void @_ZdlPvm(ptr noundef nonnull %i.bed, i64 noundef %i.beh) #25
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit: ; preds = %bb.ff, %_ZNSt6vectorImSaImEED2Ev.exit, %bb.ev
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.bby, %bb.ev ], [ %i.bdz, %_ZNSt6vectorImSaImEED2Ev.exit ], [ %.pn.pn.i633, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !1068
  br label %bb.fg

bb.fg:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit, %bb.eu
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.pn.i, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit ], [ %i.bbx, %bb.eu ]
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #26, !inline_history !982
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !1068
  br label %.body130

_ZN8facebook5velox3row12_GLOBAL__N_124deserializeComplexArraysERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE.exit: ; preds = %._crit_edge304
  %.not.i.i.i176 = icmp eq ptr %i.bbu, null
  br i1 %.not.i.i.i176, label %_ZNSt6vectorImSaImEED2Ev.exit177, label %bb.fh

bb.fh:                                            ; preds = %_ZN8facebook5velox3row12_GLOBAL__N_124deserializeComplexArraysERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE.exit
  %i.bei = ptrtoint ptr %i.bbu to i64
  %i.bej = sub i64 %i.bbs, %i.bei
  call void @_ZdlPvm(ptr noundef nonnull %i.bbu, i64 noundef %i.bej) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit177

_ZNSt6vectorImSaImEED2Ev.exit177:                 ; preds = %_ZN8facebook5velox3row12_GLOBAL__N_124deserializeComplexArraysERKSt10shared_ptrIKNS0_4TypeEERKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaISD_EERKN5boost13intrusive_ptrINS0_6BufferEEERS9_ImSaImEEPNS0_6memory10MemoryPoolE.exit, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26, !noalias !1068
  %.not.i.i.i174 = icmp eq ptr %i.bbt, null
  br i1 %.not.i.i.i174, label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit175, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit177
  %i.bek = load ptr, ptr %i.bbv, align 8, !tbaa !1070
  %i.bel = ptrtoint ptr %i.bek to i64
  %i.bem = ptrtoint ptr %i.bbt to i64
  %i.ben = sub i64 %i.bel, %i.bem
  call void @_ZdlPvm(ptr noundef nonnull %i.bbt, i64 noundef %i.ben) #25
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit175

_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit175: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit177, %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !1068
  %i.beo = load ptr, ptr %8, align 8, !tbaa !168  ; 7 uses
  %.not.i168 = icmp eq ptr %i.beo, null
  br i1 %.not.i168, label %bb.fl, label %bb.fj

bb.fj:                                            ; preds = %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit175
  %i.bep = getelementptr inbounds nuw i8, ptr %i.beo, i64 40
  %i.beq = atomicrmw add ptr %i.bep, i32 -1 acq_rel, align 4
  %i.ber = icmp eq i32 %i.beq, 1
  br i1 %i.ber, label %.sink.split.i.i169, label %bb.fl

.sink.split.i.i169:                               ; preds = %bb.fj
  %i.bes = load ptr, ptr %i.beo, align 8, !tbaa !102
  %i.bet = getelementptr inbounds nuw i8, ptr %i.bes, i64 64
  %i.beu = load ptr, ptr %i.bet, align 8
  invoke void %i.beu(ptr noundef nonnull align 8 dereferenceable(64) %i.beo)
          to label %.noexc.i170 unwind label %bb.fk, !inline_history !6

.noexc.i170:                                      ; preds = %.sink.split.i.i169
  %i.bev = getelementptr inbounds nuw i8, ptr %i.beo, i64 8
  %i.bew = load ptr, ptr %i.bev, align 8, !tbaa !173
  %.not.i.i171 = icmp eq ptr %i.bew, null
  %i.bex = load ptr, ptr %i.beo, align 8, !tbaa !102
  %..i.i172 = select i1 %.not.i.i171, i64 8, i64 48
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bex, i64 %..i.i172
  %i.bez = load ptr, ptr %i.bey, align 8
  invoke void %i.bez(ptr noundef nonnull align 8 dereferenceable(64) %i.beo)
          to label %bb.fl unwind label %bb.fk, !inline_history !6

bb.fk:                                            ; preds = %.noexc.i170, %.sink.split.i.i169
  %i.bfa = landingpad { ptr, i32 }
          catch ptr null
  %i.bfb = extractvalue { ptr, i32 } %i.bfa, 0
  call void @__clang_call_terminate(ptr %i.bfb) #29
  unreachable

bb.fl:                                            ; preds = %.noexc.i170, %bb.fj, %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit175
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !1068
  %i.bfc = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.bfd = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.bfe = load <2 x ptr>, ptr %47, align 16, !tbaa !167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %47, i8 0, i64 16, i1 false)
  %i.bff = load ptr, ptr %i.bfd, align 8, !tbaa !135 ; 8 uses
  store <2 x ptr> %i.bfe, ptr %45, align 16, !tbaa !167
  %.not.i.i.i.i132 = icmp eq ptr %i.bff, null
  br i1 %.not.i.i.i.i132, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit136, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bff, i64 8 ; 4 uses
  %i.bfh = load atomic i64, ptr %i.bfg acquire, align 8 ; 2 uses
  %i.bfi = icmp eq i64 %i.bfh, 4294967297
  %i.bfj = trunc i64 %i.bfh to i32                ; 2 uses
  br i1 %i.bfi, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  store i32 0, ptr %i.bfg, align 8, !tbaa !137
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bff, i64 12
  store i32 0, ptr %i.bfk, align 4, !tbaa !138
  %i.bfl = load ptr, ptr %i.bff, align 8, !tbaa !102
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfl, i64 16
  %i.bfn = load ptr, ptr %i.bfm, align 8
  call void %i.bfn(ptr noundef nonnull align 8 dereferenceable(16) %i.bff) #26, !inline_history !834
  %i.bfo = load ptr, ptr %i.bff, align 8, !tbaa !102
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfo, i64 24
  %i.bfq = load ptr, ptr %i.bfp, align 8
  call void %i.bfq(ptr noundef nonnull align 8 dereferenceable(16) %i.bff) #26, !inline_history !834
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit136

bb.fo:                                            ; preds = %bb.fm
  %i.bfr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !114
  %.not.i.i.i.i.i133 = icmp eq i8 %i.bfr, 0
  br i1 %.not.i.i.i.i.i133, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.bfs = add nsw i32 %i.bfj, -1
  store i32 %i.bfs, ptr %i.bfg, align 8, !tbaa !129
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i134

bb.fq:                                            ; preds = %bb.fo
  %i.bft = atomicrmw volatile add ptr %i.bfg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i134

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i134: ; preds = %bb.fq, %bb.fp
  %.0.i.i.i.i.i.i135 = phi i32 [ %i.bfj, %bb.fp ], [ %i.bft, %bb.fq ]
  %i.bfu = icmp eq i32 %.0.i.i.i.i.i.i135, 1
  br i1 %i.bfu, label %bb.fr, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEaSEOS3_.exit136, !prof !139

bb.fr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i134
end_hunk_0
