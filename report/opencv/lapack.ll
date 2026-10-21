Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/lapack?download=true
inline.NumInlined: 622
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN2cv5solveERKNS_11_InputArrayES2_RKNS_12_OutputArrayEi:bb.a
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !37 ; 2 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !38 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %17, i64 128
  %i.ux = load i64, ptr %i.uw, align 8, !tbaa !37 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !38 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %18, i64 128
  %i.vb = load i64, ptr %i.va, align 8, !tbaa !37 ; 2 uses
  br i1 %i.p, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  call fastcc void @_ZN2cvL6SVBkSbEiiPKfmS1_mbS1_mbS1_miPfmPh(i32 noundef %.0533, i32 noundef %i.lt, ptr noundef %i.ul, i64 noundef 0, ptr noundef %i.un, i64 noundef %i.up, i1 noundef zeroext true, ptr noundef %i.ur, i64 noundef %i.ut, ptr noundef %i.uv, i64 noundef %i.ux, i32 noundef %i.lv, ptr noundef %i.uz, i64 noundef %i.vb, ptr noundef %i.tr)
  br label %.thread715

bb.fc:                                            ; preds = %bb.fa
  call fastcc void @_ZN2cvL6SVBkSbEiiPKdmS1_mbS1_mbS1_miPdmPh(i32 noundef %.0533, i32 noundef %i.lt, ptr noundef %i.ul, i64 noundef 0, ptr noundef %i.un, i64 noundef %i.up, i1 noundef zeroext true, ptr noundef %i.ur, i64 noundef %i.ut, ptr noundef %i.uv, i64 noundef %i.ux, i32 noundef %i.lv, ptr noundef %i.uz, i64 noundef %i.vb, ptr noundef %i.tr)
  br label %.thread715

.thread715:                                       ; preds = %bb.fb, %bb.fc
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %50) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %49) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #16
  br label %bb.fj

bb.fd:                                            ; preds = %bb.ex, %bb.ew
  %.pn635 = phi { ptr, i32 } [ %i.uf, %bb.ex ], [ %i.ue, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #16
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.ev
  %.pn635.pn = phi { ptr, i32 } [ %.pn635, %bb.fd ], [ %i.ud, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #16
  br label %bb.fl

bb.ff:                                            ; preds = %bb.dr, %bb.dq
  %.8.shrunk = phi i1 [ %i.rx, %bb.dq ], [ %i.ry, %bb.dr ]
  br i1 %.8.shrunk, label %bb.fj, label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %.split, %.split719, %.split720
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %51, i8 0, i64 32, i1 false)
  %i.vc = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) %18, ptr noundef nonnull align 8 dereferenceable(32) %51)
          to label %bb.fh unwind label %bb.fi     ; 0 uses

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #16
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fg
  %i.vd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #16
  br label %bb.fl

bb.fj:                                            ; preds = %.split720, %.split719, %.split, %.thread715, %bb.fh, %bb.ff
  %.8.shrunk717 = phi i1 [ true, %.thread715 ], [ false, %bb.fh ], [ true, %bb.ff ], [ true, %.split ], [ true, %.split719 ], [ true, %.split720 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %i.ve = load ptr, ptr %16, align 8, !tbaa !45   ; 3 uses
  %.not.i.i702 = icmp eq ptr %i.ve, %i.mj
  %i.vf = icmp eq ptr %i.ve, null
  %or.cond.i = or i1 %.not.i.i702, %i.vf
  br i1 %or.cond.i, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  call void @_ZdaPv(ptr noundef nonnull %i.ve) #19
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit:            ; preds = %bb.fj, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.fs

bb.fl:                                            ; preds = %bb.fi, %bb.fe, %bb.ep, %bb.dn, %bb.dj, %bb.da, %bb.cw, %bb.cs, %bb.cr, %bb.cl, %bb.ci
  %.pn649 = phi { ptr, i32 } [ %i.vd, %bb.fi ], [ %i.rn, %bb.dn ], [ %.pn645.pn.pn, %bb.ep ], [ %.pn635.pn, %bb.fe ], [ %i.qk, %bb.da ], [ %.pn627.pn, %bb.dj ], [ %i.px, %bb.cw ], [ %i.pg, %bb.ci ], [ %i.pj, %bb.cl ], [ %i.pt, %bb.cs ], [ %.pn610, %bb.cr ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %23) #16
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.ch
  %.pn649.pn = phi { ptr, i32 } [ %.pn649, %bb.fl ], [ %i.pf, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  br label %bb.fn

bb.fn:                                            ; preds = %bb.cg, %bb.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit691, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688
  %.pn653.pn = phi { ptr, i32 } [ %.pn653, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit688 ], [ %.pn608, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit691 ], [ %.pn649.pn, %bb.fm ], [ %i.pe, %bb.cg ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %18) #16
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.bj
  %.pn653.pn.pn = phi { ptr, i32 } [ %.pn653.pn, %bb.fn ], [ %i.my, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.bi
  %.pn653.pn.pn.pn = phi { ptr, i32 } [ %.pn653.pn.pn, %bb.fo ], [ %i.mx, %bb.bi ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %17) #16
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.bh
  %.pn653.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn653.pn.pn.pn, %bb.fp ], [ %i.mw, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %i.vg = load ptr, ptr %16, align 8, !tbaa !45   ; 3 uses
  %.not.i.i704 = icmp eq ptr %i.vg, %i.mj
  %i.vh = icmp eq ptr %i.vg, null
  %or.cond.i705 = or i1 %.not.i.i704, %i.vh
  br i1 %or.cond.i705, label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit707, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  call void @_ZdaPv(ptr noundef nonnull %i.vg) #19
  br label %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit707

_ZN2cv10AutoBufferIhLm1032EED2Ev.exit707:         ; preds = %bb.fq, %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.fv

bb.fs:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit, %bb.ay
  %.0534 = phi i1 [ %.6, %bb.ay ], [ %.8.shrunk717, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.vi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.vj = load i32, ptr %i.vi, align 8, !tbaa !11
  %.not.i708 = icmp eq i32 %i.vj, 0
  br i1 %.not.i708, label %_ZN2cv5utils5trace7details6RegionD2Ev.exit, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
          to label %_ZN2cv5utils5trace7details6RegionD2Ev.exit unwind label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.vk = landingpad { ptr, i32 }
          catch ptr null
  %i.vl = extractvalue { ptr, i32 } %i.vk, 0
  call void @__clang_call_terminate(ptr %i.vl) #17
  unreachable

_ZN2cv5utils5trace7details6RegionD2Ev.exit:       ; preds = %bb.fs, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret i1 %.0534

bb.fv:                                            ; preds = %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit707, %bb.az, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.i
  %.pn659.pn.pn = phi { ptr, i32 } [ %.pn659.pn, %bb.az ], [ %i.t, %bb.i ], [ %.pn653.pn.pn.pn.pn, %_ZN2cv10AutoBufferIhLm1032EED2Ev.exit707 ], [ %.pn604, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit674 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #16
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.h
  %.pn659.pn.pn.pn = phi { ptr, i32 } [ %.pn659.pn.pn, %bb.fv ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #16
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.g
  %.pn659.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn659.pn.pn.pn, %bb.fw ], [ %i.r, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  resume { ptr, i32 } %.pn659.pn.pn.pn.pn
}

; Function Attrs: noreturn
declare void @_ZN2cv6detail17check_failed_autoEiRKNS0_12CheckContextE(i32 noundef, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZN2cv13mulTransposedERKNS_11_InputArrayERKNS_12_OutputArrayEbS2_di(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(24), double noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv4gemmERKNS_11_InputArrayES2_dS2_dRKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), double noundef, ptr noundef nonnull align 8 dereferenceable(24), double noundef, ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #2

declare void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare noundef i32 @_ZN2cv3hal5QR32fEPfmiiiS1_mS1_(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN2cv3hal5QR64fEPdmiiiS1_mS1_(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN2cvL6SVBkSbEiiPKfmS1_mbS1_mbS1_miPfmPh(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i1 noundef zeroext %6, ptr nofree noundef readonly captures(none) %7, i64 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9, i64 noundef %10, i32 noundef %11, ptr nofree noundef captures(none) %12, i64 noundef %13, ptr noundef %14) unnamed_addr #7 {
bb.a:
  %.not = icmp eq i64 %3, 0
  %i.a = lshr i64 %13, 2                          ; 2 uses
  %i.b = ptrtoint ptr %14 to i64
  %i.c = add i64 %i.b, 7
  %i.d = and i64 %i.c, -8
  %i.e = inttoptr i64 %i.d to ptr                 ; 11 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %1, i32 %0) ; 3 uses
  %.not.i = icmp eq ptr %9, null                  ; 3 uses
  %spec.select.i = select i1 %.not.i, i32 %0, i32 %11 ; 6 uses
  %i.f = icmp sgt i32 %1, 0
  %i.g = icmp sgt i32 %spec.select.i, 0           ; 3 uses
  %or.cond.i = and i1 %i.f, %i.g
  br i1 %or.cond.i, label %.preheader140.preheader.i, label %.preheader139.i

.preheader140.preheader.i:                        ; preds = %bb.a
  %sext = shl i64 %i.a, 32
  %i.h = ashr exact i64 %sext, 30                 ; 9 uses
  %i.i = zext nneg i32 %spec.select.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 9 uses
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.k = icmp ult i32 %1, 8
  br i1 %i.k, label %.preheader140.i.epil.preheader, label %.preheader140.preheader.i.new

.preheader140.preheader.i.new:                    ; preds = %.preheader140.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %.preheader140.i

.preheader140.i:                                  ; preds = %.preheader140.i, %.preheader140.preheader.i.new
  %indvar.i = phi i64 [ 0, %.preheader140.preheader.i.new ], [ %indvar.next.i.7, %.preheader140.i ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader140.preheader.i.new ], [ %niter.next.7, %.preheader140.i ]
  %i.l = mul i64 %indvar.i, %i.h
  %scevgep.i = getelementptr i8, ptr %12, i64 %i.l
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i = or disjoint i64 %indvar.i, 1
  %i.m = mul i64 %indvar.next.i, %i.h
  %scevgep.i.1 = getelementptr i8, ptr %12, i64 %i.m
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.1, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.1 = or disjoint i64 %indvar.i, 2
  %i.n = mul i64 %indvar.next.i.1, %i.h
  %scevgep.i.2 = getelementptr i8, ptr %12, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.2, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.2 = or disjoint i64 %indvar.i, 3
  %i.o = mul i64 %indvar.next.i.2, %i.h
  %scevgep.i.3 = getelementptr i8, ptr %12, i64 %i.o
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.3, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.3 = or disjoint i64 %indvar.i, 4
  %i.p = mul i64 %indvar.next.i.3, %i.h
  %scevgep.i.4 = getelementptr i8, ptr %12, i64 %i.p
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.4, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.4 = or disjoint i64 %indvar.i, 5
  %i.q = mul i64 %indvar.next.i.4, %i.h
  %scevgep.i.5 = getelementptr i8, ptr %12, i64 %i.q
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.5, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.5 = or disjoint i64 %indvar.i, 6
  %i.r = mul i64 %indvar.next.i.5, %i.h
  %scevgep.i.6 = getelementptr i8, ptr %12, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.6, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.6 = or disjoint i64 %indvar.i, 7
  %i.s = mul i64 %indvar.next.i.6, %i.h
  %scevgep.i.7 = getelementptr i8, ptr %12, i64 %i.s
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.7, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.7 = add nuw nsw i64 %indvar.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader139.i.loopexit.unr-lcssa, label %.preheader140.i, !llvm.loop !214

.preheader139.i.loopexit.unr-lcssa:               ; preds = %.preheader140.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader139.i, label %.preheader140.i.epil.preheader

.preheader140.i.epil.preheader:                   ; preds = %.preheader139.i.loopexit.unr-lcssa, %.preheader140.preheader.i
  %indvar.i.epil.init = phi i64 [ 0, %.preheader140.preheader.i ], [ %indvar.next.i.7, %.preheader139.i.loopexit.unr-lcssa ]
  %lcmp.mod56 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %.preheader140.i.epil

.preheader140.i.epil:                             ; preds = %.preheader140.i.epil, %.preheader140.i.epil.preheader
  %indvar.i.epil = phi i64 [ %indvar.i.epil.init, %.preheader140.i.epil.preheader ], [ %indvar.next.i.epil, %.preheader140.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader140.i.epil.preheader ], [ %epil.iter.next, %.preheader140.i.epil ]
  %i.t = mul i64 %indvar.i.epil, %i.h
  %scevgep.i.epil = getelementptr i8, ptr %12, i64 %i.t
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.epil, i8 0, i64 %i.j, i1 false), !tbaa !20
  %indvar.next.i.epil = add nuw nsw i64 %indvar.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader139.i, label %.preheader140.i.epil, !llvm.loop !215

.preheader139.i:                                  ; preds = %.preheader139.i.loopexit.unr-lcssa, %.preheader140.i.epil, %bb.a
  %i.u = icmp sgt i32 %.sroa.speculated.i, 0
  br i1 %i.u, label %.lr.ph.preheader.i, label %_ZN2cvL11SVBkSbImpl_IfEEviiPKT_iS3_ibS3_ibS3_iiPS1_iPdS1_.exit

.lr.ph.preheader.i:                               ; preds = %.preheader139.i
  %i.v = shl i64 %3, 30
  %i.w = ashr i64 %i.v, 32
  %i.x = select i1 %.not, i64 1, i64 %i.w         ; 7 uses
  %wide.trip.count176.i = zext nneg i32 %.sroa.speculated.i to i64 ; 4 uses
  %xtraiter57 = and i64 %wide.trip.count176.i, 3  ; 3 uses
  %i.y = icmp ult i32 %.sroa.speculated.i, 4
  br i1 %i.y, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter62 = and i64 %wide.trip.count176.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.0103143.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.new ], [ %i.as, %.lr.ph.i ]
  %niter63 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter63.next.3, %.lr.ph.i ]
  %i.z = mul nsw i64 %indvars.iv.i, %i.x
  %i.aa = getelementptr inbounds [4 x i8], ptr %2, i64 %i.z
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !20
  %i.ac = fpext float %i.ab to double
  %i.ad = fadd double %.0103143.i, %i.ac
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.ae = mul nsw i64 %indvars.iv.next.i, %i.x
  %i.af = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ae
  %i.ag = load float, ptr %i.af, align 4, !tbaa !20
  %i.ah = fpext float %i.ag to double
  %i.ai = fadd double %i.ad, %i.ah
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.aj = mul nsw i64 %indvars.iv.next.i.1, %i.x
  %i.ak = getelementptr inbounds [4 x i8], ptr %2, i64 %i.aj
  %i.al = load float, ptr %i.ak, align 4, !tbaa !20
  %i.am = fpext float %i.al to double
  %i.an = fadd double %i.ai, %i.am
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %i.ao = mul nsw i64 %indvars.iv.next.i.2, %i.x
  %i.ap = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ao
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !20
  %i.ar = fpext float %i.aq to double
  %i.as = fadd double %i.an, %i.ar                ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter63.next.3 = add i64 %niter63, 4           ; 2 uses
  %niter63.ncmp.3 = icmp eq i64 %niter63.next.3, %unroll_iter62
  br i1 %niter63.ncmp.3, label %.lr.ph168.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !216

.lr.ph168.i.unr-lcssa:                            ; preds = %.lr.ph.i
  %lcmp.mod59.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod59.not, label %.lr.ph168.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph168.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.lr.ph168.i.unr-lcssa ]
  %.0103143.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.as, %.lr.ph168.i.unr-lcssa ]
  %lcmp.mod61 = icmp ne i64 %xtraiter57, 0
  tail call void @llvm.assume(i1 %lcmp.mod61)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.0103143.i.epil = phi double [ %.0103143.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.ax, %.lr.ph.i.epil ]
  %epil.iter58 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter58.next, %.lr.ph.i.epil ]
  %i.at = mul nsw i64 %indvars.iv.i.epil, %i.x
  %i.au = getelementptr inbounds [4 x i8], ptr %2, i64 %i.at
  %i.av = load float, ptr %i.au, align 4, !tbaa !20
  %i.aw = fpext float %i.av to double
  %i.ax = fadd double %.0103143.i.epil, %i.aw     ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter58.next = add i64 %epil.iter58, 1     ; 2 uses
  %epil.iter58.cmp.not = icmp eq i64 %epil.iter58.next, %xtraiter57
  br i1 %epil.iter58.cmp.not, label %.lr.ph168.i, label %.lr.ph.i.epil, !llvm.loop !217

.lr.ph168.i:                                      ; preds = %.lr.ph.i.epil, %.lr.ph168.i.unr-lcssa
  %.lcssa55 = phi double [ %i.as, %.lr.ph168.i.unr-lcssa ], [ %i.ax, %.lr.ph.i.epil ]
  %i.ay = fmul double %.lcssa55, f0x3CC0000000000000 ; 2 uses
  %i.az = icmp eq i32 %spec.select.i, 1
  %i.ba = shl i64 %10, 30
  %i.bb = ashr i64 %i.ba, 32                      ; 4 uses
  %i.bc = shl i64 %5, 30
  %i.bd = ashr i64 %i.bc, 32                      ; 2 uses
  %i.be = select i1 %6, i64 1, i64 %i.bd          ; 8 uses
  %wide.trip.count32.i.i = zext i32 %0 to i64     ; 8 uses
  %wide.trip.count.i.i = zext i32 %spec.select.i to i64 ; 7 uses
  %i.bf = shl i64 %i.a, 32
  %i.bg = ashr exact i64 %i.bf, 32                ; 4 uses
  %wide.trip.count32.i112.i = zext i32 %1 to i64  ; 3 uses
  %i.bh = select i1 %6, i64 %i.bd, i64 1          ; 2 uses
  %i.bi = shl i64 %8, 30
  %i.bj = ashr i64 %i.bi, 32                      ; 2 uses
  %i.bk = shl nuw nsw i64 %wide.trip.count.i.i, 3
  %wide.trip.count184.i = zext i32 %11 to i64     ; 3 uses
  br i1 %i.az, label %.lr.ph168.i.split.us.preheader, label %.lr.ph168.i.split.preheader

.lr.ph168.i.split.preheader:                      ; preds = %.lr.ph168.i
  %min.iters.check36 = icmp ult i32 %spec.select.i, 4
  %n.vec38 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n49 = icmp eq i64 %n.vec38, %wide.trip.count.i.i
  %min.iters.check22 = icmp ult i32 %11, 4
  %n.vec24 = and i64 %wide.trip.count184.i, 4294967292 ; 3 uses
  %cmp.n33 = icmp eq i64 %n.vec24, %wide.trip.count184.i
  %min.iters.check8 = icmp ugt i32 %0, 3
  %ident.check.not = icmp eq i64 %i.be, 1
  %or.cond = and i1 %min.iters.check8, %ident.check.not
  %n.vec10 = and i64 %wide.trip.count32.i.i, 4294967292 ; 3 uses
  %cmp.n19 = icmp eq i64 %n.vec10, %wide.trip.count32.i.i
  %xtraiter64 = and i64 %wide.trip.count32.i.i, 1
  %lcmp.mod65.not = icmp eq i64 %xtraiter64, 0
  %i.bl = add nsw i64 %wide.trip.count32.i.i, -1
  %min.iters.check = icmp ult i32 %spec.select.i, 4
  %n.vec = and i64 %wide.trip.count.i.i, 4294967292 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br label %.lr.ph168.i.split

.lr.ph168.i.split.us.preheader:                   ; preds = %.lr.ph168.i
  %xtraiter66 = and i64 %wide.trip.count32.i.i, 1
  %i.bm = icmp eq i32 %0, 1
  %unroll_iter71 = and i64 %wide.trip.count32.i.i, 4294967294
  %lcmp.mod68.not = icmp eq i64 %xtraiter66, 0
  %lcmp.mod70 = trunc i32 %0 to i1
  %xtraiter73 = and i64 %wide.trip.count32.i112.i, 1
  %i.bn = icmp eq i32 %1, 1
  %unroll_iter77 = and i64 %wide.trip.count32.i112.i, 4294967294
  %lcmp.mod75.not = icmp eq i64 %xtraiter73, 0
  %lcmp.mod76 = trunc i32 %1 to i1
  br label %.lr.ph168.i.split.us

.lr.ph168.i.split.us:                             ; preds = %.lr.ph168.i.split.us.preheader, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us
  %indvars.iv201.i.us = phi i64 [ %indvars.iv.next202.i.us, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us ], [ 0, %.lr.ph168.i.split.us.preheader ] ; 2 uses
  %.0104162.i.us = phi ptr [ %i.ea, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us ], [ %4, %.lr.ph168.i.split.us.preheader ] ; 5 uses
  %.0105160.i.us = phi ptr [ %i.eb, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us ], [ %7, %.lr.ph168.i.split.us.preheader ] ; 4 uses
  %i.bo = mul nsw i64 %indvars.iv201.i.us, %i.x
  %i.bp = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bo
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !20
  %i.br = fpext float %i.bq to double             ; 2 uses
  %i.bs = tail call noundef double @llvm.fabs.f64(double %i.br)
  %i.bt = fcmp ugt double %i.bs, %i.ay
  br i1 %i.bt, label %bb.b, label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us

bb.b:                                             ; preds = %.lr.ph168.i.split.us
  %i.bu = fdiv double 1.000000e+00, %i.br
  br i1 %.not.i, label %bb.c, label %.lr.ph155.i.us.preheader

.lr.ph155.i.us.preheader:                         ; preds = %bb.b
  br i1 %i.bm, label %.lr.ph155.i.us.epil.preheader, label %.lr.ph155.i.us

.lr.ph155.i.us:                                   ; preds = %.lr.ph155.i.us.preheader, %.lr.ph155.i.us
  %indvars.iv191.i.us = phi i64 [ %indvars.iv.next192.i.us.1, %.lr.ph155.i.us ], [ 0, %.lr.ph155.i.us.preheader ] ; 4 uses
  %.0154.i.us = phi double [ %i.cm, %.lr.ph155.i.us ], [ 0.000000e+00, %.lr.ph155.i.us.preheader ]
  %niter72 = phi i64 [ %niter72.next.1, %.lr.ph155.i.us ], [ 0, %.lr.ph155.i.us.preheader ]
  %i.bv = mul nsw i64 %indvars.iv191.i.us, %i.be
  %i.bw = getelementptr inbounds [4 x i8], ptr %.0104162.i.us, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !20
  %i.by = mul nsw i64 %indvars.iv191.i.us, %i.bb
  %i.bz = getelementptr inbounds [4 x i8], ptr %9, i64 %i.by
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !20
  %i.cb = fmul float %i.bx, %i.ca
  %i.cc = fpext float %i.cb to double
  %i.cd = fadd double %.0154.i.us, %i.cc
  %indvars.iv.next192.i.us = or disjoint i64 %indvars.iv191.i.us, 1 ; 2 uses
  %i.ce = mul nsw i64 %indvars.iv.next192.i.us, %i.be
  %i.cf = getelementptr inbounds [4 x i8], ptr %.0104162.i.us, i64 %i.ce
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !20
  %i.ch = mul nsw i64 %indvars.iv.next192.i.us, %i.bb
  %i.ci = getelementptr inbounds [4 x i8], ptr %9, i64 %i.ch
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !20
  %i.ck = fmul float %i.cg, %i.cj
  %i.cl = fpext float %i.ck to double
  %i.cm = fadd double %i.cd, %i.cl                ; 3 uses
  %indvars.iv.next192.i.us.1 = add nuw nsw i64 %indvars.iv191.i.us, 2 ; 2 uses
  %niter72.next.1 = add i64 %niter72, 2           ; 2 uses
  %niter72.ncmp.1 = icmp eq i64 %niter72.next.1, %unroll_iter71
  br i1 %niter72.ncmp.1, label %.lr.ph159.preheader.i.us.loopexit.unr-lcssa, label %.lr.ph155.i.us, !llvm.loop !218

bb.c:                                             ; preds = %bb.b
  %i.cn = load float, ptr %.0104162.i.us, align 4, !tbaa !20
  %i.co = fpext float %i.cn to double
  br label %.lr.ph159.preheader.i.us

.lr.ph159.preheader.i.us.loopexit.unr-lcssa:      ; preds = %.lr.ph155.i.us
  br i1 %lcmp.mod68.not, label %.lr.ph159.preheader.i.us, label %.lr.ph155.i.us.epil.preheader

.lr.ph155.i.us.epil.preheader:                    ; preds = %.lr.ph159.preheader.i.us.loopexit.unr-lcssa, %.lr.ph155.i.us.preheader
  %indvars.iv191.i.us.epil.init = phi i64 [ 0, %.lr.ph155.i.us.preheader ], [ %indvars.iv.next192.i.us.1, %.lr.ph159.preheader.i.us.loopexit.unr-lcssa ] ; 2 uses
  %.0154.i.us.epil.init = phi double [ 0.000000e+00, %.lr.ph155.i.us.preheader ], [ %i.cm, %.lr.ph159.preheader.i.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod70)
  %i.cp = mul nsw i64 %indvars.iv191.i.us.epil.init, %i.be
  %i.cq = getelementptr inbounds [4 x i8], ptr %.0104162.i.us, i64 %i.cp
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !20
  %i.cs = mul nsw i64 %indvars.iv191.i.us.epil.init, %i.bb
  %i.ct = getelementptr inbounds [4 x i8], ptr %9, i64 %i.cs
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !20
  %i.cv = fmul float %i.cr, %i.cu
  %i.cw = fpext float %i.cv to double
  %i.cx = fadd double %.0154.i.us.epil.init, %i.cw
  br label %.lr.ph159.preheader.i.us

.lr.ph159.preheader.i.us:                         ; preds = %.lr.ph155.i.us.epil.preheader, %.lr.ph159.preheader.i.us.loopexit.unr-lcssa, %bb.c
  %.1.i.us = phi double [ %i.co, %bb.c ], [ %i.cm, %.lr.ph159.preheader.i.us.loopexit.unr-lcssa ], [ %i.cx, %.lr.ph155.i.us.epil.preheader ]
  %i.cy = fmul double %i.bu, %.1.i.us             ; 3 uses
  br i1 %i.bn, label %.lr.ph159.i.us.epil.preheader, label %.lr.ph159.i.us

.lr.ph159.i.us:                                   ; preds = %.lr.ph159.preheader.i.us, %.lr.ph159.i.us
  %indvars.iv196.i.us = phi i64 [ %indvars.iv.next197.i.us.1, %.lr.ph159.i.us ], [ 0, %.lr.ph159.preheader.i.us ] ; 4 uses
  %niter78 = phi i64 [ %niter78.next.1, %.lr.ph159.i.us ], [ 0, %.lr.ph159.preheader.i.us ]
  %i.cz = mul nsw i64 %indvars.iv196.i.us, %i.bg
  %i.da = getelementptr inbounds [4 x i8], ptr %12, i64 %i.cz ; 2 uses
  %i.db = load float, ptr %i.da, align 4, !tbaa !20
  %i.dc = fpext float %i.db to double
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.0105160.i.us, i64 %indvars.iv196.i.us
  %i.de = load float, ptr %i.dd, align 4, !tbaa !20
  %i.df = fpext float %i.de to double
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.df, double %i.dc)
  %i.dh = fptrunc double %i.dg to float
  store float %i.dh, ptr %i.da, align 4, !tbaa !20
  %indvars.iv.next197.i.us = or disjoint i64 %indvars.iv196.i.us, 1 ; 2 uses
  %i.di = mul nsw i64 %indvars.iv.next197.i.us, %i.bg
  %i.dj = getelementptr inbounds [4 x i8], ptr %12, i64 %i.di ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !20
  %i.dl = fpext float %i.dk to double
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.0105160.i.us, i64 %indvars.iv.next197.i.us
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !20
  %i.do = fpext float %i.dn to double
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.do, double %i.dl)
  %i.dq = fptrunc double %i.dp to float
  store float %i.dq, ptr %i.dj, align 4, !tbaa !20
  %indvars.iv.next197.i.us.1 = add nuw nsw i64 %indvars.iv196.i.us, 2 ; 2 uses
  %niter78.next.1 = add i64 %niter78, 2           ; 2 uses
  %niter78.ncmp.1 = icmp eq i64 %niter78.next.1, %unroll_iter77
  br i1 %niter78.ncmp.1, label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us.loopexit.unr-lcssa, label %.lr.ph159.i.us, !llvm.loop !219

_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us.loopexit.unr-lcssa: ; preds = %.lr.ph159.i.us
  br i1 %lcmp.mod75.not, label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us, label %.lr.ph159.i.us.epil.preheader

.lr.ph159.i.us.epil.preheader:                    ; preds = %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us.loopexit.unr-lcssa, %.lr.ph159.preheader.i.us
  %indvars.iv196.i.us.epil.init = phi i64 [ 0, %.lr.ph159.preheader.i.us ], [ %indvars.iv.next197.i.us.1, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.dr = mul nsw i64 %indvars.iv196.i.us.epil.init, %i.bg
  %i.ds = getelementptr inbounds [4 x i8], ptr %12, i64 %i.dr ; 2 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !20
  %i.du = fpext float %i.dt to double
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.0105160.i.us, i64 %indvars.iv196.i.us.epil.init
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !20
  %i.dx = fpext float %i.dw to double
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.cy, double %i.dx, double %i.du)
  %i.dz = fptrunc double %i.dy to float
  store float %i.dz, ptr %i.ds, align 4, !tbaa !20
  br label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us

_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us: ; preds = %.lr.ph159.i.us.epil.preheader, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us.loopexit.unr-lcssa, %.lr.ph168.i.split.us
  %indvars.iv.next202.i.us = add nuw nsw i64 %indvars.iv201.i.us, 1 ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %.0104162.i.us, i64 %i.bh
  %i.eb = getelementptr inbounds [4 x i8], ptr %.0105160.i.us, i64 %i.bj
  %exitcond205.not.i.us = icmp eq i64 %indvars.iv.next202.i.us, %wide.trip.count176.i
  br i1 %exitcond205.not.i.us, label %_ZN2cvL11SVBkSbImpl_IfEEviiPKT_iS3_ibS3_ibS3_iiPS1_iPdS1_.exit, label %.lr.ph168.i.split.us, !llvm.loop !220

.lr.ph168.i.split:                                ; preds = %.lr.ph168.i.split.preheader, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i
  %indvars.iv201.i = phi i64 [ %indvars.iv.next202.i, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i ], [ 0, %.lr.ph168.i.split.preheader ] ; 2 uses
  %.0104162.i = phi ptr [ %i.hl, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i ], [ %4, %.lr.ph168.i.split.preheader ] ; 6 uses
  %.0105160.i = phi ptr [ %i.hm, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i ], [ %7, %.lr.ph168.i.split.preheader ] ; 2 uses
  %i.ec = mul nsw i64 %indvars.iv201.i, %i.x
  %i.ed = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ec
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !20
  %i.ef = fpext float %i.ee to double             ; 2 uses
  %i.eg = tail call noundef double @llvm.fabs.f64(double %i.ef)
  %i.eh = fcmp ugt double %i.eg, %i.ay
  br i1 %i.eh, label %bb.d, label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i

bb.d:                                             ; preds = %.lr.ph168.i.split
  %i.ei = fdiv double 1.000000e+00, %i.ef         ; 6 uses
  br i1 %.not.i, label %.preheader135.i, label %.preheader138.i

.preheader138.i:                                  ; preds = %bb.d
  br i1 %i.g, label %.lr.ph.i.preheader.i, label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i

.preheader135.i:                                  ; preds = %bb.d
  br i1 %i.g, label %.lr.ph152.i.preheader, label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i

.lr.ph152.i.preheader:                            ; preds = %.preheader135.i
  br i1 %or.cond, label %vector.ph9, label %.lr.ph152.i.preheader51

vector.ph9:                                       ; preds = %.lr.ph152.i.preheader
  %broadcast.splatinsert11 = insertelement <2 x double> poison, double %i.ei, i64 0
  %broadcast.splat12 = shufflevector <2 x double> %broadcast.splatinsert11, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body13

vector.body13:                                    ; preds = %vector.body13, %vector.ph9
  %index14 = phi i64 [ 0, %vector.ph9 ], [ %index.next17, %vector.body13 ] ; 3 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %.0104162.i, i64 %index14 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %wide.load15 = load <2 x float>, ptr %i.ej, align 4, !tbaa !20
  %wide.load16 = load <2 x float>, ptr %i.ek, align 4, !tbaa !20
  %i.el = fpext <2 x float> %wide.load15 to <2 x double>
  %i.em = fpext <2 x float> %wide.load16 to <2 x double>
  %i.en = fmul <2 x double> %broadcast.splat12, %i.el
  %i.eo = fmul <2 x double> %broadcast.splat12, %i.em
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index14 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <2 x double> %i.en, ptr %i.ep, align 8, !tbaa !18
  store <2 x double> %i.eo, ptr %i.eq, align 8, !tbaa !18
  %index.next17 = add nuw i64 %index14, 4         ; 2 uses
  %i.er = icmp eq i64 %index.next17, %n.vec10
  br i1 %i.er, label %middle.block18, label %vector.body13, !llvm.loop !221

middle.block18:                                   ; preds = %vector.body13
  br i1 %cmp.n19, label %.lr.ph.i114.i.preheader, label %.lr.ph152.i.preheader51

.lr.ph152.i.preheader51:                          ; preds = %.lr.ph152.i.preheader, %middle.block18
  %indvars.iv186.i.ph = phi i64 [ 0, %.lr.ph152.i.preheader ], [ %n.vec10, %middle.block18 ] ; 5 uses
  br i1 %lcmp.mod65.not, label %.lr.ph152.i.prol.loopexit, label %.lr.ph152.i.prol

.lr.ph152.i.prol:                                 ; preds = %.lr.ph152.i.preheader51
  %i.es = mul nsw i64 %indvars.iv186.i.ph, %i.be
  %i.et = getelementptr inbounds [4 x i8], ptr %.0104162.i, i64 %i.es
  %i.eu = load float, ptr %i.et, align 4, !tbaa !20
  %i.ev = fpext float %i.eu to double
  %i.ew = fmul double %i.ei, %i.ev
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv186.i.ph
  store double %i.ew, ptr %i.ex, align 8, !tbaa !18
  %indvars.iv.next187.i.prol = or disjoint i64 %indvars.iv186.i.ph, 1
  br label %.lr.ph152.i.prol.loopexit

.lr.ph152.i.prol.loopexit:                        ; preds = %.lr.ph152.i.prol, %.lr.ph152.i.preheader51
  %indvars.iv186.i.unr = phi i64 [ %indvars.iv186.i.ph, %.lr.ph152.i.preheader51 ], [ %indvars.iv.next187.i.prol, %.lr.ph152.i.prol ]
  %i.ey = icmp eq i64 %indvars.iv186.i.ph, %i.bl
  br i1 %i.ey, label %.lr.ph.i114.i.preheader, label %.lr.ph152.i

.lr.ph.i.preheader.i:                             ; preds = %.preheader138.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.bk, i1 false), !tbaa !18
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph.i.preheader.i
  %indvars.iv29.i.i = phi i64 [ %indvars.iv.next30.i.i, %._crit_edge.i.i ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %.02023.i.i = phi ptr [ %i.fu, %._crit_edge.i.i ], [ %9, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.ez = mul nsw i64 %indvars.iv29.i.i, %i.be
  %i.fa = getelementptr inbounds [4 x i8], ptr %.0104162.i, i64 %i.ez
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !20 ; 2 uses
  br i1 %min.iters.check36, label %scalar.ph35.preheader, label %vector.ph37

vector.ph37:                                      ; preds = %.lr.ph.i.i
  %broadcast.splatinsert39 = insertelement <2 x float> poison, float %i.fb, i64 0
  %broadcast.splat40 = shufflevector <2 x float> %broadcast.splatinsert39, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph37
  %index42 = phi i64 [ 0, %vector.ph37 ], [ %index.next47, %vector.body41 ] ; 3 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index42 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %wide.load43 = load <2 x double>, ptr %i.fc, align 8, !tbaa !18
  %wide.load44 = load <2 x double>, ptr %i.fd, align 8, !tbaa !18
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.02023.i.i, i64 %index42 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %wide.load45 = load <2 x float>, ptr %i.fe, align 4, !tbaa !20
  %wide.load46 = load <2 x float>, ptr %i.ff, align 4, !tbaa !20
  %i.fg = fmul <2 x float> %broadcast.splat40, %wide.load45
  %i.fh = fmul <2 x float> %broadcast.splat40, %wide.load46
  %i.fi = fpext <2 x float> %i.fg to <2 x double>
  %i.fj = fpext <2 x float> %i.fh to <2 x double>
  %i.fk = fadd <2 x double> %wide.load43, %i.fi
  %i.fl = fadd <2 x double> %wide.load44, %i.fj
  store <2 x double> %i.fk, ptr %i.fc, align 8, !tbaa !18
  store <2 x double> %i.fl, ptr %i.fd, align 8, !tbaa !18
  %index.next47 = add nuw i64 %index42, 4         ; 2 uses
  %i.fm = icmp eq i64 %index.next47, %n.vec38
  br i1 %i.fm, label %middle.block48, label %vector.body41, !llvm.loop !222

middle.block48:                                   ; preds = %vector.body41
  br i1 %cmp.n49, label %._crit_edge.i.i, label %scalar.ph35.preheader

scalar.ph35.preheader:                            ; preds = %.lr.ph.i.i, %middle.block48
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec38, %middle.block48 ]
  br label %scalar.ph35

scalar.ph35:                                      ; preds = %scalar.ph35.preheader, %scalar.ph35
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph35 ], [ %indvars.iv.i.i.ph, %scalar.ph35.preheader ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.i ; 2 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !18
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.02023.i.i, i64 %indvars.iv.i.i
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !20
  %i.fr = fmul float %i.fb, %i.fq
  %i.fs = fpext float %i.fr to double
  %i.ft = fadd double %i.fo, %i.fs
  store double %i.ft, ptr %i.fn, align 8, !tbaa !18
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %scalar.ph35, !llvm.loop !223

._crit_edge.i.i:                                  ; preds = %scalar.ph35, %middle.block48
  %indvars.iv.next30.i.i = add nuw nsw i64 %indvars.iv29.i.i, 1 ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %.02023.i.i, i64 %i.bb
  %exitcond33.not.i.i = icmp eq i64 %indvars.iv.next30.i.i, %wide.trip.count32.i.i
  br i1 %exitcond33.not.i.i, label %.lr.ph150.i.preheader, label %.lr.ph.i.i, !llvm.loop !224

.lr.ph150.i.preheader:                            ; preds = %._crit_edge.i.i
  br i1 %min.iters.check22, label %.lr.ph150.i.preheader52, label %vector.ph23

vector.ph23:                                      ; preds = %.lr.ph150.i.preheader
  %broadcast.splatinsert25 = insertelement <2 x double> poison, double %i.ei, i64 0
  %broadcast.splat26 = shufflevector <2 x double> %broadcast.splatinsert25, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body27

vector.body27:                                    ; preds = %vector.body27, %vector.ph23
  %index28 = phi i64 [ 0, %vector.ph23 ], [ %index.next31, %vector.body27 ] ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index28 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 2 uses
  %wide.load29 = load <2 x double>, ptr %i.fv, align 8, !tbaa !18
  %wide.load30 = load <2 x double>, ptr %i.fw, align 8, !tbaa !18
  %i.fx = fmul <2 x double> %broadcast.splat26, %wide.load29
  %i.fy = fmul <2 x double> %broadcast.splat26, %wide.load30
  store <2 x double> %i.fx, ptr %i.fv, align 8, !tbaa !18
  store <2 x double> %i.fy, ptr %i.fw, align 8, !tbaa !18
  %index.next31 = add nuw i64 %index28, 4         ; 2 uses
  %i.fz = icmp eq i64 %index.next31, %n.vec24
  br i1 %i.fz, label %middle.block32, label %vector.body27, !llvm.loop !225

middle.block32:                                   ; preds = %vector.body27
  br i1 %cmp.n33, label %.lr.ph.i114.i.preheader, label %.lr.ph150.i.preheader52

.lr.ph150.i.preheader52:                          ; preds = %.lr.ph150.i.preheader, %middle.block32
  %indvars.iv181.i.ph = phi i64 [ 0, %.lr.ph150.i.preheader ], [ %n.vec24, %middle.block32 ]
  br label %.lr.ph150.i

.lr.ph150.i:                                      ; preds = %.lr.ph150.i.preheader52, %.lr.ph150.i
  %indvars.iv181.i = phi i64 [ %indvars.iv.next182.i, %.lr.ph150.i ], [ %indvars.iv181.i.ph, %.lr.ph150.i.preheader52 ] ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv181.i ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !18
  %i.gc = fmul double %i.ei, %i.gb
  store double %i.gc, ptr %i.ga, align 8, !tbaa !18
  %indvars.iv.next182.i = add nuw nsw i64 %indvars.iv181.i, 1 ; 2 uses
  %exitcond185.not.i = icmp eq i64 %indvars.iv.next182.i, %wide.trip.count184.i
  br i1 %exitcond185.not.i, label %.lr.ph.i114.i.preheader, label %.lr.ph150.i, !llvm.loop !226

.lr.ph152.i:                                      ; preds = %.lr.ph152.i.prol.loopexit, %.lr.ph152.i
  %indvars.iv186.i = phi i64 [ %indvars.iv.next187.i.1, %.lr.ph152.i ], [ %indvars.iv186.i.unr, %.lr.ph152.i.prol.loopexit ] ; 4 uses
  %i.gd = mul nsw i64 %indvars.iv186.i, %i.be
  %i.ge = getelementptr inbounds [4 x i8], ptr %.0104162.i, i64 %i.gd
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !20
  %i.gg = fpext float %i.gf to double
  %i.gh = fmul double %i.ei, %i.gg
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv186.i
  store double %i.gh, ptr %i.gi, align 8, !tbaa !18
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 1 ; 2 uses
  %i.gj = mul nsw i64 %indvars.iv.next187.i, %i.be
  %i.gk = getelementptr inbounds [4 x i8], ptr %.0104162.i, i64 %i.gj
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !20
  %i.gm = fpext float %i.gl to double
  %i.gn = fmul double %i.ei, %i.gm
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next187.i
  store double %i.gn, ptr %i.go, align 8, !tbaa !18
  %indvars.iv.next187.i.1 = add nuw nsw i64 %indvars.iv186.i, 2 ; 2 uses
  %exitcond190.not.i.1 = icmp eq i64 %indvars.iv.next187.i.1, %wide.trip.count32.i.i
  br i1 %exitcond190.not.i.1, label %.lr.ph.i114.i.preheader, label %.lr.ph152.i, !llvm.loop !227

.lr.ph.i114.i.preheader:                          ; preds = %.lr.ph150.i, %.lr.ph152.i.prol.loopexit, %.lr.ph152.i, %middle.block32, %middle.block18
  br label %.lr.ph.i114.i

.lr.ph.i114.i:                                    ; preds = %.lr.ph.i114.i.preheader, %._crit_edge.i119.i
  %indvars.iv29.i115.i = phi i64 [ %indvars.iv.next30.i120.i, %._crit_edge.i119.i ], [ 0, %.lr.ph.i114.i.preheader ] ; 2 uses
  %.02123.i.i = phi ptr [ %i.hk, %._crit_edge.i119.i ], [ %12, %.lr.ph.i114.i.preheader ] ; 3 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.0105160.i, i64 %indvars.iv29.i115.i
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !20
  %i.gr = fpext float %i.gq to double             ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i114.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gr, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.02123.i.i, i64 %index ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8 ; 2 uses
  %wide.load = load <2 x float>, ptr %i.gs, align 4, !tbaa !20
  %wide.load4 = load <2 x float>, ptr %i.gt, align 4, !tbaa !20
  %i.gu = fpext <2 x float> %wide.load to <2 x double>
  %i.gv = fpext <2 x float> %wide.load4 to <2 x double>
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %wide.load5 = load <2 x double>, ptr %i.gw, align 8, !tbaa !18
  %wide.load6 = load <2 x double>, ptr %i.gx, align 8, !tbaa !18
  %i.gy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load5, <2 x double> %i.gu)
  %i.gz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load6, <2 x double> %i.gv)
  %i.ha = fptrunc <2 x double> %i.gy to <2 x float>
  %i.hb = fptrunc <2 x double> %i.gz to <2 x float>
  store <2 x float> %i.ha, ptr %i.gs, align 4, !tbaa !20
  store <2 x float> %i.hb, ptr %i.gt, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hc = icmp eq i64 %index.next, %n.vec
  br i1 %i.hc, label %middle.block, label %vector.body, !llvm.loop !228

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i119.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i114.i, %middle.block
  %indvars.iv.i116.i.ph = phi i64 [ 0, %.lr.ph.i114.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i116.i = phi i64 [ %indvars.iv.next.i117.i, %scalar.ph ], [ %indvars.iv.i116.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %.02123.i.i, i64 %indvars.iv.i116.i ; 2 uses
  %i.he = load float, ptr %i.hd, align 4, !tbaa !20
  %i.hf = fpext float %i.he to double
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i116.i
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !18
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.gr, double %i.hh, double %i.hf)
  %i.hj = fptrunc double %i.hi to float
  store float %i.hj, ptr %i.hd, align 4, !tbaa !20
  %indvars.iv.next.i117.i = add nuw nsw i64 %indvars.iv.i116.i, 1 ; 2 uses
  %exitcond.not.i118.i = icmp eq i64 %indvars.iv.next.i117.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i118.i, label %._crit_edge.i119.i, label %scalar.ph, !llvm.loop !229

._crit_edge.i119.i:                               ; preds = %scalar.ph, %middle.block
  %indvars.iv.next30.i120.i = add nuw nsw i64 %indvars.iv29.i115.i, 1 ; 2 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %.02123.i.i, i64 %i.bg
  %exitcond33.not.i121.i = icmp eq i64 %indvars.iv.next30.i120.i, %wide.trip.count32.i112.i
  br i1 %exitcond33.not.i121.i, label %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i, label %.lr.ph.i114.i, !llvm.loop !230

_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i: ; preds = %._crit_edge.i119.i, %.preheader135.i, %.preheader138.i, %.lr.ph168.i.split
  %indvars.iv.next202.i = add nuw nsw i64 %indvars.iv201.i, 1 ; 2 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %.0104162.i, i64 %i.bh
  %i.hm = getelementptr inbounds [4 x i8], ptr %.0105160.i, i64 %i.bj
  %exitcond205.not.i = icmp eq i64 %indvars.iv.next202.i, %wide.trip.count176.i
  br i1 %exitcond205.not.i, label %_ZN2cvL11SVBkSbImpl_IfEEviiPKT_iS3_ibS3_ibS3_iiPS1_iPdS1_.exit, label %.lr.ph168.i.split, !llvm.loop !220

_ZN2cvL11SVBkSbImpl_IfEEviiPKT_iS3_ibS3_ibS3_iiPS1_iPdS1_.exit: ; preds = %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i, %_ZN2cvL8MatrAXPYIdffEEviiPKT_iPKT0_iPT1_i.exit.i.us, %.preheader139.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN2cvL6SVBkSbEiiPKdmS1_mbS1_mbS1_miPdmPh(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5, i1 noundef zeroext %6, ptr nofree noundef readonly captures(none) %7, i64 noundef %8, ptr nofree noundef readonly captures(address_is_null) %9, i64 noundef %10, i32 noundef %11, ptr nofree noundef captures(none) %12, i64 noundef %13, ptr noundef %14) unnamed_addr #7 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64
  %.not = icmp eq i64 %3, 0
  %i.b = lshr i64 %13, 3                          ; 2 uses
  %i.c = ptrtoint ptr %14 to i64
  %i.d = add i64 %i.c, 7
  %i.e = and i64 %i.d, -8                         ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 21 uses
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %1, i32 %0) ; 3 uses
  %.not.i = icmp eq ptr %9, null                  ; 3 uses
  %spec.select.i = select i1 %.not.i, i32 %0, i32 %11 ; 6 uses
  %i.g = icmp sgt i32 %1, 0
  %i.h = icmp sgt i32 %spec.select.i, 0           ; 3 uses
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %.preheader143.preheader.i, label %.preheader142.i

.preheader143.preheader.i:                        ; preds = %bb.a
  %sext = shl i64 %i.b, 32
  %i.i = ashr exact i64 %sext, 29                 ; 9 uses
  %i.j = zext nneg i32 %spec.select.i to i64
  %i.k = shl nuw nsw i64 %i.j, 3                  ; 9 uses
  %wide.trip.count.i = zext nneg i32 %1 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 7       ; 3 uses
  %i.l = icmp ult i32 %1, 8
  br i1 %i.l, label %.preheader143.i.epil.preheader, label %.preheader143.preheader.i.new

.preheader143.preheader.i.new:                    ; preds = %.preheader143.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483640
  br label %.preheader143.i

.preheader143.i:                                  ; preds = %.preheader143.i, %.preheader143.preheader.i.new
  %indvar.i = phi i64 [ 0, %.preheader143.preheader.i.new ], [ %indvar.next.i.7, %.preheader143.i ] ; 9 uses
  %niter = phi i64 [ 0, %.preheader143.preheader.i.new ], [ %niter.next.7, %.preheader143.i ]
  %i.m = mul i64 %indvar.i, %i.i
  %scevgep.i = getelementptr i8, ptr %12, i64 %i.m
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.k, i1 false), !tbaa !18
  %indvar.next.i = or disjoint i64 %indvar.i, 1
  %i.n = mul i64 %indvar.next.i, %i.i
  %scevgep.i.1 = getelementptr i8, ptr %12, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.1, i8 0, i64 %i.k, i1 false), !tbaa !18
  %indvar.next.i.1 = or disjoint i64 %indvar.i, 2
  %i.o = mul i64 %indvar.next.i.1, %i.i
  %scevgep.i.2 = getelementptr i8, ptr %12, i64 %i.o
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.2, i8 0, i64 %i.k, i1 false), !tbaa !18
  %indvar.next.i.2 = or disjoint i64 %indvar.i, 3
  %i.p = mul i64 %indvar.next.i.2, %i.i
  %scevgep.i.3 = getelementptr i8, ptr %12, i64 %i.p
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.3, i8 0, i64 %i.k, i1 false), !tbaa !18
  %indvar.next.i.3 = or disjoint i64 %indvar.i, 4
  %i.q = mul i64 %indvar.next.i.3, %i.i
  %scevgep.i.4 = getelementptr i8, ptr %12, i64 %i.q
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.4, i8 0, i64 %i.k, i1 false), !tbaa !18
  %indvar.next.i.4 = or disjoint i64 %indvar.i, 5
  %i.r = mul i64 %indvar.next.i.4, %i.i
  %scevgep.i.5 = getelementptr i8, ptr %12, i64 %i.r
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.5, i8 0, i64 %i.k, i1 false), !tbaa !18
  %indvar.next.i.5 = or disjoint i64 %indvar.i, 6
  %i.s = mul i64 %indvar.next.i.5, %i.i
  %scevgep.i.6 = getelementptr i8, ptr %12, i64 %i.s
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.6, i8 0, i64 %i.k, i1 false), !tbaa !18
  %indvar.next.i.6 = or disjoint i64 %indvar.i, 7
  %i.t = mul i64 %indvar.next.i.6, %i.i
  %scevgep.i.7 = getelementptr i8, ptr %12, i64 %i.t
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.7, i8 0, i64 %i.k, i1 false), !tbaa !18
  %indvar.next.i.7 = add nuw nsw i64 %indvar.i, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.preheader142.i.loopexit.unr-lcssa, label %.preheader143.i, !llvm.loop !231

.preheader142.i.loopexit.unr-lcssa:               ; preds = %.preheader143.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader142.i, label %.preheader143.i.epil.preheader

.preheader143.i.epil.preheader:                   ; preds = %.preheader142.i.loopexit.unr-lcssa, %.preheader143.preheader.i
  %indvar.i.epil.init = phi i64 [ 0, %.preheader143.preheader.i ], [ %indvar.next.i.7, %.preheader142.i.loopexit.unr-lcssa ]
  %lcmp.mod67 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod67)
  br label %.preheader143.i.epil

.preheader143.i.epil:                             ; preds = %.preheader143.i.epil, %.preheader143.i.epil.preheader
  %indvar.i.epil = phi i64 [ %indvar.i.epil.init, %.preheader143.i.epil.preheader ], [ %indvar.next.i.epil, %.preheader143.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader143.i.epil.preheader ], [ %epil.iter.next, %.preheader143.i.epil ]
  %i.u = mul i64 %indvar.i.epil, %i.i
  %scevgep.i.epil = getelementptr i8, ptr %12, i64 %i.u
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i.epil, i8 0, i64 %i.k, i1 false), !tbaa !18
  %indvar.next.i.epil = add nuw nsw i64 %indvar.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader142.i, label %.preheader143.i.epil, !llvm.loop !232

.preheader142.i:                                  ; preds = %.preheader142.i.loopexit.unr-lcssa, %.preheader143.i.epil, %bb.a
  %i.v = icmp sgt i32 %.sroa.speculated.i, 0
  br i1 %i.v, label %.lr.ph.preheader.i, label %_ZN2cvL11SVBkSbImpl_IdEEviiPKT_iS3_ibS3_ibS3_iiPS1_iPdS1_.exit

.lr.ph.preheader.i:                               ; preds = %.preheader142.i
  %i.w = shl i64 %3, 29
  %i.x = ashr i64 %i.w, 32
  %i.y = select i1 %.not, i64 1, i64 %i.x         ; 7 uses
  %wide.trip.count179.i = zext nneg i32 %.sroa.speculated.i to i64 ; 4 uses
  %xtraiter68 = and i64 %wide.trip.count179.i, 3  ; 3 uses
  %i.z = icmp ult i32 %.sroa.speculated.i, 4
  br i1 %i.z, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter73 = and i64 %wide.trip.count179.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 5 uses
  %.0103146.i = phi double [ 0.000000e+00, %.lr.ph.preheader.i.new ], [ %i.ap, %.lr.ph.i ]
  %niter74 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter74.next.3, %.lr.ph.i ]
  %i.aa = mul nsw i64 %indvars.iv.i, %i.y
  %i.ab = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !18
  %i.ad = fadd double %.0103146.i, %i.ac
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1
  %i.ae = mul nsw i64 %indvars.iv.next.i, %i.y
  %i.af = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ae
  %i.ag = load double, ptr %i.af, align 8, !tbaa !18
  %i.ah = fadd double %i.ad, %i.ag
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2
  %i.ai = mul nsw i64 %indvars.iv.next.i.1, %i.y
  %i.aj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ai
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !18
  %i.al = fadd double %i.ah, %i.ak
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3
  %i.am = mul nsw i64 %indvars.iv.next.i.2, %i.y
  %i.an = getelementptr inbounds [8 x i8], ptr %2, i64 %i.am
  %i.ao = load double, ptr %i.an, align 8, !tbaa !18
  %i.ap = fadd double %i.al, %i.ao                ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter74.next.3 = add i64 %niter74, 4           ; 2 uses
  %niter74.ncmp.3 = icmp eq i64 %niter74.next.3, %unroll_iter73
  br i1 %niter74.ncmp.3, label %.lr.ph171.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !233

.lr.ph171.i.unr-lcssa:                            ; preds = %.lr.ph.i
  %lcmp.mod70.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod70.not, label %.lr.ph171.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph171.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.lr.ph171.i.unr-lcssa ]
  %.0103146.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i ], [ %i.ap, %.lr.ph171.i.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter68, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 2 uses
  %.0103146.i.epil = phi double [ %.0103146.i.epil.init, %.lr.ph.i.epil.preheader ], [ %i.at, %.lr.ph.i.epil ]
  %epil.iter69 = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter69.next, %.lr.ph.i.epil ]
  %i.aq = mul nsw i64 %indvars.iv.i.epil, %i.y
  %i.ar = getelementptr inbounds [8 x i8], ptr %2, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !18
  %i.at = fadd double %.0103146.i.epil, %i.as     ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter69.next = add i64 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i64 %epil.iter69.next, %xtraiter68
  br i1 %epil.iter69.cmp.not, label %.lr.ph171.i, label %.lr.ph.i.epil, !llvm.loop !234

.lr.ph171.i:                                      ; preds = %.lr.ph.i.epil, %.lr.ph171.i.unr-lcssa
  %.lcssa66 = phi double [ %i.ap, %.lr.ph171.i.unr-lcssa ], [ %i.at, %.lr.ph.i.epil ]
  %i.au = fmul double %.lcssa66, f0x3CC0000000000000 ; 2 uses
  %i.av = icmp eq i32 %spec.select.i, 1
  %i.aw = shl i64 %10, 29
  %i.ax = ashr i64 %i.aw, 32                      ; 6 uses
  %i.ay = shl i64 %5, 29
  %i.az = ashr i64 %i.ay, 32                      ; 2 uses
  %i.ba = select i1 %6, i64 1, i64 %i.az          ; 10 uses
  %wide.trip.count33.i.i = zext i32 %0 to i64     ; 9 uses
  %wide.trip.count.i.i = zext i32 %spec.select.i to i64 ; 14 uses
  %i.bb = shl i64 %i.b, 32                        ; 2 uses
  %i.bc = ashr exact i64 %i.bb, 32                ; 5 uses
  %wide.trip.count33.i112.i = zext i32 %1 to i64  ; 4 uses
  %i.bd = select i1 %6, i64 %i.az, i64 1          ; 3 uses
  %i.be = shl i64 %8, 29
  %i.bf = ashr i64 %i.be, 32                      ; 2 uses
  br i1 %i.av, label %.lr.ph171.split.us.i.preheader, label %.lr.ph171.split.preheader.i

.lr.ph171.split.us.i.preheader:                   ; preds = %.lr.ph171.i
  %xtraiter82 = and i64 %wide.trip.count33.i.i, 1
  %i.bg = icmp eq i32 %0, 1
  %unroll_iter87 = and i64 %wide.trip.count33.i.i, 4294967294
  %lcmp.mod84.not = icmp eq i64 %xtraiter82, 0
  %lcmp.mod86 = trunc i32 %0 to i1
  %xtraiter89 = and i64 %wide.trip.count33.i112.i, 1
  %i.bh = icmp eq i32 %1, 1
  %unroll_iter93 = and i64 %wide.trip.count33.i112.i, 4294967294
  %lcmp.mod91.not = icmp eq i64 %xtraiter89, 0
  %lcmp.mod92 = trunc i32 %1 to i1
  br label %.lr.ph171.split.us.i

.lr.ph171.split.preheader.i:                      ; preds = %.lr.ph171.i
  %i.bi = shl nuw nsw i64 %wide.trip.count.i.i, 3 ; 2 uses
  %wide.trip.count187.i = zext i32 %11 to i64     ; 3 uses
  %i.bj = add nuw nsw i64 %wide.trip.count33.i112.i, 2305843009213693951
  %i.bk = mul i64 %i.bj, %i.bc
  %i.bl = add i64 %i.bk, %wide.trip.count.i.i
  %i.bm = shl i64 %i.bl, 3
  %scevgep = getelementptr i8, ptr %12, i64 %i.bm
  %scevgep4 = getelementptr i8, ptr %i.f, i64 %i.bi
  %i.bn = sub i64 %i.e, %i.a
  %i.bo = mul nsw i64 %i.bd, -8
  %i.bp = shl nuw nsw i64 %wide.trip.count.i.i, 3
  %scevgep38 = getelementptr i8, ptr %i.f, i64 %i.bp
  %i.bq = add nuw nsw i64 %wide.trip.count33.i.i, 2305843009213693951
  %i.br = mul i64 %i.ax, %i.bq
  %i.bs = add i64 %i.br, %wide.trip.count.i.i
  %i.bt = shl i64 %i.bs, 3
  %scevgep39 = getelementptr i8, ptr %9, i64 %i.bt
  %min.iters.check45 = icmp ult i32 %spec.select.i, 4
  %bound040 = icmp ugt ptr %scevgep39, %i.f
  %bound141 = icmp ult ptr %9, %scevgep38
  %found.conflict42 = and i1 %bound040, %bound141
  %stride.check43 = icmp slt i64 %i.ax, 0
  %i.bu = or i1 %found.conflict42, %stride.check43
  %n.vec47 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %cmp.n58 = icmp eq i64 %n.vec47, %wide.trip.count.i.i
  %xtraiter75 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod76.not = icmp eq i64 %xtraiter75, 0
  %i.bv = add nsw i64 %wide.trip.count.i.i, -1
  %min.iters.check24 = icmp ult i32 %11, 4
  %n.vec26 = and i64 %wide.trip.count187.i, 4294967292 ; 3 uses
  %cmp.n35 = icmp eq i64 %n.vec26, %wide.trip.count187.i
  %min.iters.check10 = icmp ult i32 %0, 4
  %ident.check.not = icmp ne i64 %i.ba, 1
  %or.cond.not61 = or i1 %min.iters.check10, %ident.check.not
  %invariant.op = add i64 %i.bn, -1
  %n.vec12 = and i64 %wide.trip.count33.i.i, 4294967292 ; 3 uses
  %cmp.n21 = icmp eq i64 %n.vec12, %wide.trip.count33.i.i
  %xtraiter77 = and i64 %wide.trip.count33.i.i, 3 ; 2 uses
  %lcmp.mod78.not = icmp eq i64 %xtraiter77, 0
  %min.iters.check = icmp ult i32 %spec.select.i, 4
  %bound0 = icmp ult ptr %12, %scevgep4
  %bound1 = icmp ugt ptr %scevgep, %i.f
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.bb, 0
  %i.bw = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %wide.trip.count.i.i, 4294967292 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  %xtraiter79 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod80.not = icmp eq i64 %xtraiter79, 0
  %i.bx = add nsw i64 %wide.trip.count.i.i, -1
  br label %.lr.ph171.split.i

.lr.ph171.split.us.i:                             ; preds = %.lr.ph171.split.us.i.preheader, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i
  %indvars.iv209.i = phi i64 [ %indvars.iv.next210.i, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i ], [ 0, %.lr.ph171.split.us.i.preheader ] ; 2 uses
  %.0104165.us.i = phi ptr [ %i.dt, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i ], [ %4, %.lr.ph171.split.us.i.preheader ] ; 5 uses
  %.0105163.us.i = phi ptr [ %i.du, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i ], [ %7, %.lr.ph171.split.us.i.preheader ] ; 4 uses
  %i.by = mul nsw i64 %indvars.iv209.i, %i.y
  %i.bz = getelementptr inbounds [8 x i8], ptr %2, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !18 ; 2 uses
  %i.cb = tail call noundef double @llvm.fabs.f64(double %i.ca)
  %i.cc = fcmp ugt double %i.cb, %i.au
  br i1 %i.cc, label %bb.b, label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i

bb.b:                                             ; preds = %.lr.ph171.split.us.i
  %i.cd = fdiv double 1.000000e+00, %i.ca
  br i1 %.not.i, label %bb.c, label %.lr.ph158.us.i.preheader

.lr.ph158.us.i.preheader:                         ; preds = %bb.b
  br i1 %i.bg, label %.lr.ph158.us.i.epil.preheader, label %.lr.ph158.us.i

.lr.ph158.us.i:                                   ; preds = %.lr.ph158.us.i.preheader, %.lr.ph158.us.i
  %indvars.iv199.i = phi i64 [ %indvars.iv.next200.i.1, %.lr.ph158.us.i ], [ 0, %.lr.ph158.us.i.preheader ] ; 4 uses
  %.0157.us.i = phi double [ %i.cr, %.lr.ph158.us.i ], [ 0.000000e+00, %.lr.ph158.us.i.preheader ]
  %niter88 = phi i64 [ %niter88.next.1, %.lr.ph158.us.i ], [ 0, %.lr.ph158.us.i.preheader ]
  %i.ce = mul nsw i64 %indvars.iv199.i, %i.ba
  %i.cf = getelementptr inbounds [8 x i8], ptr %.0104165.us.i, i64 %i.ce
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !18
  %i.ch = mul nsw i64 %indvars.iv199.i, %i.ax
  %i.ci = getelementptr inbounds [8 x i8], ptr %9, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !18
  %i.ck = tail call double @llvm.fmuladd.f64(double %i.cg, double %i.cj, double %.0157.us.i)
  %indvars.iv.next200.i = or disjoint i64 %indvars.iv199.i, 1 ; 2 uses
  %i.cl = mul nsw i64 %indvars.iv.next200.i, %i.ba
  %i.cm = getelementptr inbounds [8 x i8], ptr %.0104165.us.i, i64 %i.cl
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !18
  %i.co = mul nsw i64 %indvars.iv.next200.i, %i.ax
  %i.cp = getelementptr inbounds [8 x i8], ptr %9, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !18
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.cq, double %i.ck) ; 3 uses
  %indvars.iv.next200.i.1 = add nuw nsw i64 %indvars.iv199.i, 2 ; 2 uses
  %niter88.next.1 = add i64 %niter88, 2           ; 2 uses
  %niter88.ncmp.1 = icmp eq i64 %niter88.next.1, %unroll_iter87
  br i1 %niter88.ncmp.1, label %.lr.ph162.us.preheader.i.loopexit.unr-lcssa, label %.lr.ph158.us.i, !llvm.loop !235

bb.c:                                             ; preds = %bb.b
  %i.cs = load double, ptr %.0104165.us.i, align 8, !tbaa !18
  br label %.lr.ph162.us.preheader.i

.lr.ph162.us.preheader.i.loopexit.unr-lcssa:      ; preds = %.lr.ph158.us.i
  br i1 %lcmp.mod84.not, label %.lr.ph162.us.preheader.i, label %.lr.ph158.us.i.epil.preheader

.lr.ph158.us.i.epil.preheader:                    ; preds = %.lr.ph162.us.preheader.i.loopexit.unr-lcssa, %.lr.ph158.us.i.preheader
  %indvars.iv199.i.epil.init = phi i64 [ 0, %.lr.ph158.us.i.preheader ], [ %indvars.iv.next200.i.1, %.lr.ph162.us.preheader.i.loopexit.unr-lcssa ] ; 2 uses
  %.0157.us.i.epil.init = phi double [ 0.000000e+00, %.lr.ph158.us.i.preheader ], [ %i.cr, %.lr.ph162.us.preheader.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.ct = mul nsw i64 %indvars.iv199.i.epil.init, %i.ba
  %i.cu = getelementptr inbounds [8 x i8], ptr %.0104165.us.i, i64 %i.ct
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !18
  %i.cw = mul nsw i64 %indvars.iv199.i.epil.init, %i.ax
  %i.cx = getelementptr inbounds [8 x i8], ptr %9, i64 %i.cw
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !18
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cv, double %i.cy, double %.0157.us.i.epil.init)
  br label %.lr.ph162.us.preheader.i

.lr.ph162.us.preheader.i:                         ; preds = %.lr.ph158.us.i.epil.preheader, %.lr.ph162.us.preheader.i.loopexit.unr-lcssa, %bb.c
  %.1.us.i = phi double [ %i.cs, %bb.c ], [ %i.cr, %.lr.ph162.us.preheader.i.loopexit.unr-lcssa ], [ %i.cz, %.lr.ph158.us.i.epil.preheader ]
  %i.da = fmul double %i.cd, %.1.us.i             ; 3 uses
  br i1 %i.bh, label %.lr.ph162.us.i.epil.preheader, label %.lr.ph162.us.i

.lr.ph162.us.i:                                   ; preds = %.lr.ph162.us.preheader.i, %.lr.ph162.us.i
  %indvars.iv204.i = phi i64 [ %indvars.iv.next205.i.1, %.lr.ph162.us.i ], [ 0, %.lr.ph162.us.preheader.i ] ; 4 uses
  %niter94 = phi i64 [ %niter94.next.1, %.lr.ph162.us.i ], [ 0, %.lr.ph162.us.preheader.i ]
  %i.db = mul nsw i64 %indvars.iv204.i, %i.bc
  %i.dc = getelementptr inbounds [8 x i8], ptr %12, i64 %i.db ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !18
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.0105163.us.i, i64 %indvars.iv204.i
  %i.df = load double, ptr %i.de, align 8, !tbaa !18
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.da, double %i.df, double %i.dd)
  store double %i.dg, ptr %i.dc, align 8, !tbaa !18
  %indvars.iv.next205.i = or disjoint i64 %indvars.iv204.i, 1 ; 2 uses
  %i.dh = mul nsw i64 %indvars.iv.next205.i, %i.bc
  %i.di = getelementptr inbounds [8 x i8], ptr %12, i64 %i.dh ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.0105163.us.i, i64 %indvars.iv.next205.i
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !18
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.da, double %i.dl, double %i.dj)
  store double %i.dm, ptr %i.di, align 8, !tbaa !18
  %indvars.iv.next205.i.1 = add nuw nsw i64 %indvars.iv204.i, 2 ; 2 uses
  %niter94.next.1 = add i64 %niter94, 2           ; 2 uses
  %niter94.ncmp.1 = icmp eq i64 %niter94.next.1, %unroll_iter93
  br i1 %niter94.ncmp.1, label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i.loopexit.unr-lcssa, label %.lr.ph162.us.i, !llvm.loop !236

_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i.loopexit.unr-lcssa: ; preds = %.lr.ph162.us.i
  br i1 %lcmp.mod91.not, label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i, label %.lr.ph162.us.i.epil.preheader

.lr.ph162.us.i.epil.preheader:                    ; preds = %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i.loopexit.unr-lcssa, %.lr.ph162.us.preheader.i
  %indvars.iv204.i.epil.init = phi i64 [ 0, %.lr.ph162.us.preheader.i ], [ %indvars.iv.next205.i.1, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.dn = mul nsw i64 %indvars.iv204.i.epil.init, %i.bc
  %i.do = getelementptr inbounds [8 x i8], ptr %12, i64 %i.dn ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !18
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.0105163.us.i, i64 %indvars.iv204.i.epil.init
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !18
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.da, double %i.dr, double %i.dp)
  store double %i.ds, ptr %i.do, align 8, !tbaa !18
  br label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i

_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i: ; preds = %.lr.ph162.us.i.epil.preheader, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i.loopexit.unr-lcssa, %.lr.ph171.split.us.i
  %indvars.iv.next210.i = add nuw nsw i64 %indvars.iv209.i, 1 ; 2 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %.0104165.us.i, i64 %i.bd
  %i.du = getelementptr inbounds [8 x i8], ptr %.0105163.us.i, i64 %i.bf
  %exitcond213.not.i = icmp eq i64 %indvars.iv.next210.i, %wide.trip.count179.i
  br i1 %exitcond213.not.i, label %_ZN2cvL11SVBkSbImpl_IdEEviiPKT_iS3_ibS3_ibS3_iiPS1_iPdS1_.exit, label %.lr.ph171.split.us.i, !llvm.loop !237

.lr.ph171.split.i:                                ; preds = %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i, %.lr.ph171.split.preheader.i
  %indvars.iv194.i = phi i64 [ 0, %.lr.ph171.split.preheader.i ], [ %indvars.iv.next195.i, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i ] ; 3 uses
  %.0104165.i = phi ptr [ %4, %.lr.ph171.split.preheader.i ], [ %i.ht, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i ] ; 8 uses
  %.0105163.i = phi ptr [ %7, %.lr.ph171.split.preheader.i ], [ %i.hu, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i ] ; 2 uses
  %i.dv = mul i64 %i.bo, %indvars.iv194.i
  %i.dw = mul nsw i64 %indvars.iv194.i, %i.y
  %i.dx = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dw
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !18 ; 2 uses
  %i.dz = tail call noundef double @llvm.fabs.f64(double %i.dy)
  %i.ea = fcmp ugt double %i.dz, %i.au
  br i1 %i.ea, label %bb.d, label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i

bb.d:                                             ; preds = %.lr.ph171.split.i
  %i.eb = fdiv double 1.000000e+00, %i.dy         ; 8 uses
  br i1 %.not.i, label %.preheader138.i, label %.preheader141.i

.preheader141.i:                                  ; preds = %bb.d
  br i1 %i.h, label %.lr.ph.i.preheader.i, label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i

.preheader138.i:                                  ; preds = %bb.d
  br i1 %i.h, label %.lr.ph155.i.preheader, label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i

.lr.ph155.i.preheader:                            ; preds = %.preheader138.i
  %.reass = add i64 %i.dv, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond60 = select i1 %or.cond.not61, i1 true, i1 %diff.check
  br i1 %or.cond60, label %.lr.ph155.i.preheader62, label %vector.ph11

vector.ph11:                                      ; preds = %.lr.ph155.i.preheader
  %broadcast.splatinsert13 = insertelement <2 x double> poison, double %i.eb, i64 0
  %broadcast.splat14 = shufflevector <2 x double> %broadcast.splatinsert13, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body15

vector.body15:                                    ; preds = %vector.body15, %vector.ph11
  %index16 = phi i64 [ 0, %vector.ph11 ], [ %index.next19, %vector.body15 ] ; 3 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %.0104165.i, i64 %index16 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %wide.load17 = load <2 x double>, ptr %i.ec, align 8, !tbaa !18
  %wide.load18 = load <2 x double>, ptr %i.ed, align 8, !tbaa !18
  %i.ee = fmul <2 x double> %broadcast.splat14, %wide.load17
  %i.ef = fmul <2 x double> %broadcast.splat14, %wide.load18
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store <2 x double> %i.ee, ptr %i.eg, align 8, !tbaa !18
  store <2 x double> %i.ef, ptr %i.eh, align 8, !tbaa !18
  %index.next19 = add nuw i64 %index16, 4         ; 2 uses
  %i.ei = icmp eq i64 %index.next19, %n.vec12
  br i1 %i.ei, label %middle.block20, label %vector.body15, !llvm.loop !238

middle.block20:                                   ; preds = %vector.body15
  br i1 %cmp.n21, label %.lr.ph.i114.i.preheader, label %.lr.ph155.i.preheader62

.lr.ph155.i.preheader62:                          ; preds = %.lr.ph155.i.preheader, %middle.block20
  %indvars.iv189.i.ph = phi i64 [ 0, %.lr.ph155.i.preheader ], [ %n.vec12, %middle.block20 ] ; 3 uses
  br i1 %lcmp.mod78.not, label %.lr.ph155.i.prol.loopexit, label %.lr.ph155.i.prol

.lr.ph155.i.prol:                                 ; preds = %.lr.ph155.i.preheader62, %.lr.ph155.i.prol
  %indvars.iv189.i.prol = phi i64 [ %indvars.iv.next190.i.prol, %.lr.ph155.i.prol ], [ %indvars.iv189.i.ph, %.lr.ph155.i.preheader62 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph155.i.prol ], [ 0, %.lr.ph155.i.preheader62 ]
  %i.ej = mul nsw i64 %indvars.iv189.i.prol, %i.ba
  %i.ek = getelementptr inbounds [8 x i8], ptr %.0104165.i, i64 %i.ej
  %i.el = load double, ptr %i.ek, align 8, !tbaa !18
  %i.em = fmul double %i.eb, %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv189.i.prol
  store double %i.em, ptr %i.en, align 8, !tbaa !18
  %indvars.iv.next190.i.prol = add nuw nsw i64 %indvars.iv189.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter77
  br i1 %prol.iter.cmp.not, label %.lr.ph155.i.prol.loopexit, label %.lr.ph155.i.prol, !llvm.loop !239

.lr.ph155.i.prol.loopexit:                        ; preds = %.lr.ph155.i.prol, %.lr.ph155.i.preheader62
  %indvars.iv189.i.unr = phi i64 [ %indvars.iv189.i.ph, %.lr.ph155.i.preheader62 ], [ %indvars.iv.next190.i.prol, %.lr.ph155.i.prol ]
  %i.eo = sub nsw i64 %indvars.iv189.i.ph, %wide.trip.count33.i.i
  %i.ep = icmp ugt i64 %i.eo, -4
  br i1 %i.ep, label %.lr.ph.i114.i.preheader, label %.lr.ph155.i

.lr.ph.i.preheader.i:                             ; preds = %.preheader141.i
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %i.bi, i1 false), !tbaa !18
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge.i.i, %.lr.ph.i.preheader.i
  %indvars.iv30.i.i = phi i64 [ %indvars.iv.next31.i.i, %._crit_edge.i.i ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %.02024.i.i = phi ptr [ %i.fq, %._crit_edge.i.i ], [ %9, %.lr.ph.i.preheader.i ] ; 5 uses
  %i.eq = mul nsw i64 %indvars.iv30.i.i, %i.ba
  %i.er = getelementptr inbounds [8 x i8], ptr %.0104165.i, i64 %i.eq
  %i.es = load double, ptr %i.er, align 8, !tbaa !18 ; 4 uses
  %brmerge = select i1 %min.iters.check45, i1 true, i1 %i.bu
  br i1 %brmerge, label %scalar.ph44.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %.lr.ph.i.i
  %broadcast.splatinsert48 = insertelement <2 x double> poison, double %i.es, i64 0
  %broadcast.splat49 = shufflevector <2 x double> %broadcast.splatinsert48, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph46
  %index51 = phi i64 [ 0, %vector.ph46 ], [ %index.next56, %vector.body50 ] ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index51 ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %wide.load52 = load <2 x double>, ptr %i.et, align 8, !tbaa !18, !alias.scope !254, !noalias !255
  %wide.load53 = load <2 x double>, ptr %i.eu, align 8, !tbaa !18, !alias.scope !254, !noalias !255
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %.02024.i.i, i64 %index51 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %wide.load54 = load <2 x double>, ptr %i.ev, align 8, !tbaa !18, !alias.scope !255
  %wide.load55 = load <2 x double>, ptr %i.ew, align 8, !tbaa !18, !alias.scope !255
  %i.ex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat49, <2 x double> %wide.load54, <2 x double> %wide.load52)
  %i.ey = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat49, <2 x double> %wide.load55, <2 x double> %wide.load53)
  store <2 x double> %i.ex, ptr %i.et, align 8, !tbaa !18, !alias.scope !254, !noalias !255
  store <2 x double> %i.ey, ptr %i.eu, align 8, !tbaa !18, !alias.scope !254, !noalias !255
  %index.next56 = add nuw i64 %index51, 4         ; 2 uses
  %i.ez = icmp eq i64 %index.next56, %n.vec47
  br i1 %i.ez, label %middle.block57, label %vector.body50, !llvm.loop !243

middle.block57:                                   ; preds = %vector.body50
  br i1 %cmp.n58, label %._crit_edge.i.i, label %scalar.ph44.preheader

scalar.ph44.preheader:                            ; preds = %.lr.ph.i.i, %middle.block57
  %indvars.iv.i.i.ph = phi i64 [ %n.vec47, %middle.block57 ], [ 0, %.lr.ph.i.i ] ; 5 uses
  br i1 %lcmp.mod76.not, label %scalar.ph44.prol.loopexit, label %scalar.ph44.prol

scalar.ph44.prol:                                 ; preds = %scalar.ph44.preheader
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i.ph ; 2 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !18
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.02024.i.i, i64 %indvars.iv.i.i.ph
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !18
  %i.fe = tail call double @llvm.fmuladd.f64(double %i.es, double %i.fd, double %i.fb)
  store double %i.fe, ptr %i.fa, align 8, !tbaa !18
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %scalar.ph44.prol.loopexit

scalar.ph44.prol.loopexit:                        ; preds = %scalar.ph44.prol, %scalar.ph44.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph44.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph44.prol ]
  %i.ff = icmp eq i64 %indvars.iv.i.i.ph, %i.bv
  br i1 %i.ff, label %._crit_edge.i.i, label %scalar.ph44

scalar.ph44:                                      ; preds = %scalar.ph44.prol.loopexit, %scalar.ph44
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %scalar.ph44 ], [ %indvars.iv.i.i.unr, %scalar.ph44.prol.loopexit ] ; 4 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i ; 2 uses
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !18
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.02024.i.i, i64 %indvars.iv.i.i
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !18
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.es, double %i.fj, double %i.fh)
  store double %i.fk, ptr %i.fg, align 8, !tbaa !18
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.i.i ; 2 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !18
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.02024.i.i, i64 %indvars.iv.next.i.i
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !18
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.es, double %i.fo, double %i.fm)
  store double %i.fp, ptr %i.fl, align 8, !tbaa !18
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %scalar.ph44, !llvm.loop !244

._crit_edge.i.i:                                  ; preds = %scalar.ph44.prol.loopexit, %scalar.ph44, %middle.block57
  %indvars.iv.next31.i.i = add nuw nsw i64 %indvars.iv30.i.i, 1 ; 2 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %.02024.i.i, i64 %i.ax
  %exitcond34.not.i.i = icmp eq i64 %indvars.iv.next31.i.i, %wide.trip.count33.i.i
  br i1 %exitcond34.not.i.i, label %.lr.ph153.i.preheader, label %.lr.ph.i.i, !llvm.loop !245

.lr.ph153.i.preheader:                            ; preds = %._crit_edge.i.i
  br i1 %min.iters.check24, label %.lr.ph153.i.preheader63, label %vector.ph25

vector.ph25:                                      ; preds = %.lr.ph153.i.preheader
  %broadcast.splatinsert27 = insertelement <2 x double> poison, double %i.eb, i64 0
  %broadcast.splat28 = shufflevector <2 x double> %broadcast.splatinsert27, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body29

vector.body29:                                    ; preds = %vector.body29, %vector.ph25
  %index30 = phi i64 [ 0, %vector.ph25 ], [ %index.next33, %vector.body29 ] ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index30 ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %wide.load31 = load <2 x double>, ptr %i.fr, align 8, !tbaa !18
  %wide.load32 = load <2 x double>, ptr %i.fs, align 8, !tbaa !18
  %i.ft = fmul <2 x double> %broadcast.splat28, %wide.load31
  %i.fu = fmul <2 x double> %broadcast.splat28, %wide.load32
  store <2 x double> %i.ft, ptr %i.fr, align 8, !tbaa !18
  store <2 x double> %i.fu, ptr %i.fs, align 8, !tbaa !18
  %index.next33 = add nuw i64 %index30, 4         ; 2 uses
  %i.fv = icmp eq i64 %index.next33, %n.vec26
  br i1 %i.fv, label %middle.block34, label %vector.body29, !llvm.loop !246

middle.block34:                                   ; preds = %vector.body29
  br i1 %cmp.n35, label %.lr.ph.i114.i.preheader, label %.lr.ph153.i.preheader63

.lr.ph153.i.preheader63:                          ; preds = %.lr.ph153.i.preheader, %middle.block34
  %indvars.iv184.i.ph = phi i64 [ 0, %.lr.ph153.i.preheader ], [ %n.vec26, %middle.block34 ]
  br label %.lr.ph153.i

.lr.ph153.i:                                      ; preds = %.lr.ph153.i.preheader63, %.lr.ph153.i
  %indvars.iv184.i = phi i64 [ %indvars.iv.next185.i, %.lr.ph153.i ], [ %indvars.iv184.i.ph, %.lr.ph153.i.preheader63 ] ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv184.i ; 2 uses
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !18
  %i.fy = fmul double %i.eb, %i.fx
  store double %i.fy, ptr %i.fw, align 8, !tbaa !18
  %indvars.iv.next185.i = add nuw nsw i64 %indvars.iv184.i, 1 ; 2 uses
  %exitcond188.not.i = icmp eq i64 %indvars.iv.next185.i, %wide.trip.count187.i
  br i1 %exitcond188.not.i, label %.lr.ph.i114.i.preheader, label %.lr.ph153.i, !llvm.loop !247

.lr.ph155.i:                                      ; preds = %.lr.ph155.i.prol.loopexit, %.lr.ph155.i
  %indvars.iv189.i = phi i64 [ %indvars.iv.next190.i.3, %.lr.ph155.i ], [ %indvars.iv189.i.unr, %.lr.ph155.i.prol.loopexit ] ; 6 uses
  %i.fz = mul nsw i64 %indvars.iv189.i, %i.ba
  %i.ga = getelementptr inbounds [8 x i8], ptr %.0104165.i, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !18
  %i.gc = fmul double %i.eb, %i.gb
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv189.i
  store double %i.gc, ptr %i.gd, align 8, !tbaa !18
  %indvars.iv.next190.i = add nuw nsw i64 %indvars.iv189.i, 1 ; 2 uses
  %i.ge = mul nsw i64 %indvars.iv.next190.i, %i.ba
  %i.gf = getelementptr inbounds [8 x i8], ptr %.0104165.i, i64 %i.ge
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !18
  %i.gh = fmul double %i.eb, %i.gg
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next190.i
  store double %i.gh, ptr %i.gi, align 8, !tbaa !18
  %indvars.iv.next190.i.1 = add nuw nsw i64 %indvars.iv189.i, 2 ; 2 uses
  %i.gj = mul nsw i64 %indvars.iv.next190.i.1, %i.ba
  %i.gk = getelementptr inbounds [8 x i8], ptr %.0104165.i, i64 %i.gj
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !18
  %i.gm = fmul double %i.eb, %i.gl
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next190.i.1
  store double %i.gm, ptr %i.gn, align 8, !tbaa !18
  %indvars.iv.next190.i.2 = add nuw nsw i64 %indvars.iv189.i, 3 ; 2 uses
  %i.go = mul nsw i64 %indvars.iv.next190.i.2, %i.ba
  %i.gp = getelementptr inbounds [8 x i8], ptr %.0104165.i, i64 %i.go
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !18
  %i.gr = fmul double %i.eb, %i.gq
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next190.i.2
  store double %i.gr, ptr %i.gs, align 8, !tbaa !18
  %indvars.iv.next190.i.3 = add nuw nsw i64 %indvars.iv189.i, 4 ; 2 uses
  %exitcond193.not.i.3 = icmp eq i64 %indvars.iv.next190.i.3, %wide.trip.count33.i.i
  br i1 %exitcond193.not.i.3, label %.lr.ph.i114.i.preheader, label %.lr.ph155.i, !llvm.loop !248

.lr.ph.i114.i.preheader:                          ; preds = %.lr.ph153.i, %.lr.ph155.i.prol.loopexit, %.lr.ph155.i, %middle.block34, %middle.block20
  br label %.lr.ph.i114.i

.lr.ph.i114.i:                                    ; preds = %.lr.ph.i114.i.preheader, %._crit_edge.i121.i
  %indvars.iv30.i115.i = phi i64 [ %indvars.iv.next31.i122.i, %._crit_edge.i121.i ], [ 0, %.lr.ph.i114.i.preheader ] ; 2 uses
  %.02123.i117.i = phi ptr [ %i.hs, %._crit_edge.i121.i ], [ %12, %.lr.ph.i114.i.preheader ] ; 5 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %.0105163.i, i64 %indvars.iv30.i115.i
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !18 ; 4 uses
  %brmerge98 = select i1 %min.iters.check, i1 true, i1 %i.bw
  br i1 %brmerge98, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i114.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.gu, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.02123.i117.i, i64 %index ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.gv, align 8, !tbaa !18, !alias.scope !256, !noalias !257
  %wide.load5 = load <2 x double>, ptr %i.gw, align 8, !tbaa !18, !alias.scope !256, !noalias !257
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %wide.load6 = load <2 x double>, ptr %i.gx, align 8, !tbaa !18, !alias.scope !257
  %wide.load7 = load <2 x double>, ptr %i.gy, align 8, !tbaa !18, !alias.scope !257
  %i.gz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load6, <2 x double> %wide.load)
  %i.ha = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load7, <2 x double> %wide.load5)
  store <2 x double> %i.gz, ptr %i.gv, align 8, !tbaa !18, !alias.scope !256, !noalias !257
  store <2 x double> %i.ha, ptr %i.gw, align 8, !tbaa !18, !alias.scope !256, !noalias !257
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hb = icmp eq i64 %index.next, %n.vec
  br i1 %i.hb, label %middle.block, label %vector.body, !llvm.loop !252

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i121.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i114.i, %middle.block
  %indvars.iv.i118.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i114.i ] ; 5 uses
  br i1 %lcmp.mod80.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.02123.i117.i, i64 %indvars.iv.i118.i.ph ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !18
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i118.i.ph
  %i.hf = load double, ptr %i.he, align 8, !tbaa !18
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.gu, double %i.hf, double %i.hd)
  store double %i.hg, ptr %i.hc, align 8, !tbaa !18
  %indvars.iv.next.i119.i.prol = or disjoint i64 %indvars.iv.i118.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i118.i.unr = phi i64 [ %indvars.iv.i118.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i119.i.prol, %scalar.ph.prol ]
  %i.hh = icmp eq i64 %indvars.iv.i118.i.ph, %i.bx
  br i1 %i.hh, label %._crit_edge.i121.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i118.i = phi i64 [ %indvars.iv.next.i119.i.1, %scalar.ph ], [ %indvars.iv.i118.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.02123.i117.i, i64 %indvars.iv.i118.i ; 2 uses
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !18
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i118.i
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !18
  %i.hm = tail call double @llvm.fmuladd.f64(double %i.gu, double %i.hl, double %i.hj)
  store double %i.hm, ptr %i.hi, align 8, !tbaa !18
  %indvars.iv.next.i119.i = add nuw nsw i64 %indvars.iv.i118.i, 1 ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.02123.i117.i, i64 %indvars.iv.next.i119.i ; 2 uses
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !18
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.i119.i
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !18
  %i.hr = tail call double @llvm.fmuladd.f64(double %i.gu, double %i.hq, double %i.ho)
  store double %i.hr, ptr %i.hn, align 8, !tbaa !18
  %indvars.iv.next.i119.i.1 = add nuw nsw i64 %indvars.iv.i118.i, 2 ; 2 uses
  %exitcond.not.i120.i.1 = icmp eq i64 %indvars.iv.next.i119.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i120.i.1, label %._crit_edge.i121.i, label %scalar.ph, !llvm.loop !253

._crit_edge.i121.i:                               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next31.i122.i = add nuw nsw i64 %indvars.iv30.i115.i, 1 ; 2 uses
  %i.hs = getelementptr inbounds [8 x i8], ptr %.02123.i117.i, i64 %i.bc
  %exitcond34.not.i123.i = icmp eq i64 %indvars.iv.next31.i122.i, %wide.trip.count33.i112.i
  br i1 %exitcond34.not.i123.i, label %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i, label %.lr.ph.i114.i, !llvm.loop !245

_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i: ; preds = %._crit_edge.i121.i, %.preheader138.i, %.preheader141.i, %.lr.ph171.split.i
  %indvars.iv.next195.i = add nuw nsw i64 %indvars.iv194.i, 1 ; 2 uses
  %i.ht = getelementptr inbounds [8 x i8], ptr %.0104165.i, i64 %i.bd
  %i.hu = getelementptr inbounds [8 x i8], ptr %.0105163.i, i64 %i.bf
  %exitcond198.not.i = icmp eq i64 %indvars.iv.next195.i, %wide.trip.count179.i
  br i1 %exitcond198.not.i, label %_ZN2cvL11SVBkSbImpl_IdEEviiPKT_iS3_ibS3_ibS3_iiPS1_iPdS1_.exit, label %.lr.ph171.split.i, !llvm.loop !237

_ZN2cvL11SVBkSbImpl_IdEEviiPKT_iS3_ibS3_ibS3_iiPS1_iPdS1_.exit: ; preds = %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.i, %_ZN2cvL8MatrAXPYIdddEEviiPKT_iPKT0_iPT1_i.exit124.us.i, %.preheader142.i
  ret void
}

declare noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL11_SVDcomputeERKNS_11_InputArrayERKNS_12_OutputArrayES5_S5_i(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Mat", align 8           ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.cv::AutoBuffer", align 8    ; 9 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 10 uses
  %12 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %13 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %14 = alloca %"class.cv::Scalar_", align 8      ; 5 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %16 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %19 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0), !noalias !260
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27, !noalias !260
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !43   ; 3 uses
  %i.i = load i32, ptr %5, align 8, !tbaa !35
  %i.j = and i32 %i.i, 4095                       ; 6 uses
  %i.k = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.d unwind label %bb.o

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = invoke noundef zeroext i1 @_ZNK2cv12_OutputArray6neededEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi i1 [ true, %bb.d ], [ %i.l, %bb.e ]
  %i.n = icmp eq i32 %i.j, 5
  %i.o = add nsw i32 %i.j, -5
  %or.cond = icmp ult i32 %i.o, 2
  br i1 %or.cond, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cvL11_SVDcomputeERKNS_11_InputArrayERKNS_12_OutputArrayES5_S5_i, ptr noundef nonnull @.str.1, i32 noundef 1415) #20
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = load ptr, ptr %6, align 8, !tbaa !41     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.u = load i64, ptr %i.s, align 8, !tbaa !42
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %.pn = phi { ptr, i32 } [ %i.p, %bb.j ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.q, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.bo

bb.l:                                             ; preds = %bb.f
  %i.w = trunc i32 %4 to i8
  %i.x = lshr i8 %i.w, 2
  %i.y = and i32 %4, 2
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZNK2cv12_OutputArray7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
end_hunk_0
