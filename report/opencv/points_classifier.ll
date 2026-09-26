Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/points_classifier?download=true
inline.NumInlined: 726
inline.NumDeleted: 318
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@main:bb.a
  %i.ase = load ptr, ptr %51, align 8, !tbaa !131 ; 2 uses
  %i.asf = icmp eq ptr %i.ase, %i.ex
  br i1 %i.asf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258: ; preds = %bb.lx
  %i.asg = load i64, ptr %i.ex, align 8, !tbaa !28
  %i.ash = add i64 %i.asg, 1
  call void @_ZdlPvm(ptr noundef %i.ase, i64 noundef %i.ash) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260: ; preds = %bb.lx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i258
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #21
  br label %bb.mi

bb.ly:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  %i.asi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

bb.lz:                                            ; preds = %.noexc129
  %i.asj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #21
  %i.ask = load ptr, ptr %53, align 8, !tbaa !131 ; 2 uses
  %i.asl = icmp eq ptr %i.ask, %i.fc
  br i1 %i.asl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261: ; preds = %bb.lz
  %i.asm = load i64, ptr %i.fc, align 8, !tbaa !28
  %i.asn = add i64 %i.asm, 1
  call void @_ZdlPvm(ptr noundef %i.ask, i64 noundef %i.asn) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263: ; preds = %bb.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261, %bb.ly
  %.pn57.pn = phi { ptr, i32 } [ %i.asi, %bb.ly ], [ %i.asj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i261 ], [ %i.asj, %bb.lz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #21
  br label %bb.mi

bb.ma:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.aso = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

bb.mb:                                            ; preds = %.noexc136
  %i.asp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #21
  %i.asq = load ptr, ptr %55, align 8, !tbaa !131 ; 2 uses
  %i.asr = icmp eq ptr %i.asq, %i.fh
  br i1 %i.asr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264: ; preds = %bb.mb
  %i.ass = load i64, ptr %i.fh, align 8, !tbaa !28
  %i.ast = add i64 %i.ass, 1
  call void @_ZdlPvm(ptr noundef %i.asq, i64 noundef %i.ast) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266: ; preds = %bb.mb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264, %bb.ma
  %.pn60.pn = phi { ptr, i32 } [ %i.aso, %bb.ma ], [ %i.asp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i264 ], [ %i.asp, %bb.mb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #21
  br label %bb.mi

bb.mc:                                            ; preds = %_ZL25find_decision_boundary_DTv.exit
  %i.asu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #21
  %i.asv = load ptr, ptr %57, align 8, !tbaa !131 ; 2 uses
  %i.asw = icmp eq ptr %i.asv, %i.fp
  br i1 %i.asw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267: ; preds = %bb.mc
  %i.asx = load i64, ptr %i.fp, align 8, !tbaa !28
  %i.asy = add i64 %i.asx, 1
  call void @_ZdlPvm(ptr noundef %i.asv, i64 noundef %i.asy) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269: ; preds = %bb.mc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #21
  br label %bb.mi

bb.md:                                            ; preds = %_ZL25find_decision_boundary_BTv.exit
  %i.asz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #21
  %i.ata = load ptr, ptr %59, align 8, !tbaa !131 ; 2 uses
  %i.atb = icmp eq ptr %i.ata, %i.fx
  br i1 %i.atb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270: ; preds = %bb.md
  %i.atc = load i64, ptr %i.fx, align 8, !tbaa !28
  %i.atd = add i64 %i.atc, 1
  call void @_ZdlPvm(ptr noundef %i.ata, i64 noundef %i.atd) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272: ; preds = %bb.md, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i270
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #21
  br label %bb.mi

bb.me:                                            ; preds = %_ZL25find_decision_boundary_RFv.exit
  %i.ate = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #21
  %i.atf = load ptr, ptr %61, align 8, !tbaa !131 ; 2 uses
  %i.atg = icmp eq ptr %i.atf, %i.gh
  br i1 %i.atg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273: ; preds = %bb.me
  %i.ath = load i64, ptr %i.gh, align 8, !tbaa !28
  %i.ati = add i64 %i.ath, 1
  call void @_ZdlPvm(ptr noundef %i.atf, i64 noundef %i.ati) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275: ; preds = %bb.me, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i273
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #21
  br label %bb.mi

bb.mf:                                            ; preds = %.noexc241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %_ZN2cv3Mat2atIiEERT_i.exit212
  %i.atj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.mg:                                            ; preds = %._crit_edge.i.i222
  %i.atk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #21
  %i.atl = load ptr, ptr %64, align 8, !tbaa !131 ; 2 uses
  %i.atm = icmp eq ptr %i.atl, %i.hl
  br i1 %i.atm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276: ; preds = %bb.mg
  %i.atn = load i64, ptr %i.hl, align 8, !tbaa !28
  %i.ato = add i64 %i.atn, 1
  call void @_ZdlPvm(ptr noundef %i.atl, i64 noundef %i.ato) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278: ; preds = %bb.mg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i276
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #21
  br label %.body

bb.mh:                                            ; preds = %._crit_edge.i.i245
  %i.atp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #21
  %i.atq = load ptr, ptr %66, align 8, !tbaa !131 ; 2 uses
  %i.atr = icmp eq ptr %i.atq, %i.is
  br i1 %i.atr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279: ; preds = %bb.mh
  %i.ats = load i64, ptr %i.is, align 8, !tbaa !28
  %i.att = add i64 %i.ats, 1
  call void @_ZdlPvm(ptr noundef %i.atq, i64 noundef %i.att) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281: ; preds = %bb.mh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #21
  br label %.body

.body:                                            ; preds = %bb.ik, %_ZNSt6vectorIN2cv3PtrINS0_2ml2EMEEESaIS4_EED2Ev.exit87.i, %bb.mf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278
  %.pn75.pn.pn = phi { ptr, i32 } [ %i.atp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281 ], [ %i.atk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit278 ], [ %.pn25.pn.i, %bb.ik ], [ %i.atj, %bb.mf ], [ %.pn58.pn.pn.pn.i, %_ZNSt6vectorIN2cv3PtrINS0_2ml2EMEEESaIS4_EED2Ev.exit87.i ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %63) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #21
  br label %bb.mi

bb.mi:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %bb.lt, %bb.al
  %.pn75.pn.pn.pn = phi { ptr, i32 } [ %.pn75.pn.pn, %.body ], [ %i.ate, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit275 ], [ %i.asz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit272 ], [ %i.asu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit269 ], [ %.pn60.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit266 ], [ %.pn57.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit263 ], [ %i.asd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit260 ], [ %i.ary, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit257 ], [ %.pn48.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %i.arr, %bb.lt ], [ %i.ln, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %common.resume

.sink.split:                                      ; preds = %.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %.backedge

.backedge:                                        ; preds = %.sink.split, %bb.ag
  br label %bb.w

bb.mj:                                            ; preds = %bb.w
  ret i32 0
}

declare void @_ZN2cv11namedWindowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare void @_ZN2cv16setMouseCallbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFviiiiPvES8_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal void @_ZL8on_mouseiiiiPv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 %3, ptr nofree readnone captures(none) %4) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Scalar_", align 8       ; 4 uses
  %6 = alloca %"class.cv::_InputOutputArray", align 8 ; 6 uses
  %7 = alloca %"class.cv::Scalar_", align 16      ; 6 uses
  %8 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %i.a = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) @img)
  %.not = icmp ne i32 %0, 4
  %or.cond.not = or i1 %.not, %i.a
  br i1 %or.cond.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @trainedPoints, i64 8), align 8, !tbaa !40 ; 6 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @trainedPoints, i64 16), align 8, !tbaa !16
  %.not.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.519.0.insert.ext = zext i32 %2 to i64
  %.sroa.519.0.insert.shift = shl nuw i64 %.sroa.519.0.insert.ext, 32
  %.sroa.014.0.insert.ext = zext i32 %1 to i64
  %.sroa.014.0.insert.insert = or disjoint i64 %.sroa.519.0.insert.shift, %.sroa.014.0.insert.ext
  store i64 %.sroa.014.0.insert.insert, ptr %i.b, align 4, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @trainedPoints, i64 8), align 8, !tbaa !40
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @trainedPoints, align 8, !tbaa !15 ; 5 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = icmp eq i64 %i.h, 9223372036854775800
  br i1 %i.i, label %bb.e, label %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #20
  unreachable

_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.j = ashr exact i64 %i.h, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.j, i64 1)
  %i.k = add nsw i64 %.sroa.speculated.i.i.i.i, %i.j ; 2 uses
  %i.l = icmp ult i64 %i.k, %i.j
  %i.m = tail call i64 @llvm.umin.i64(i64 %i.k, i64 1152921504606846975)
  %i.n = select i1 %i.l, i64 1152921504606846975, i64 %i.m ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.h
  %.sroa.519.0.insert.ext21 = zext i32 %2 to i64
  %.sroa.519.0.insert.shift22 = shl nuw i64 %.sroa.519.0.insert.ext21, 32
  %.sroa.014.0.insert.ext16 = zext i32 %1 to i64
  %.sroa.014.0.insert.insert18 = or disjoint i64 %.sroa.519.0.insert.shift22, %.sroa.014.0.insert.ext16
  store i64 %.sroa.014.0.insert.insert18, ptr %i.q, align 4, !tbaa !42
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.e, %i.b
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.p, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i.i ], [ %i.e, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.r = load i64, ptr %.0911.i.i.i.i.i.i, align 4, !tbaa !42, !alias.scope !168, !noalias !167
  store i64 %i.r, ptr %.012.i.i.i.i.i.i, align 4, !tbaa !42, !alias.scope !167, !noalias !168
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.s, %i.b
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !165

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN2cv6Point_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.t, %.lr.ph.i.i.i.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @trainedPoints, i64 16), align 8, !tbaa !16
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.x) #19
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.p, ptr @trainedPoints, align 8, !tbaa !15
  store ptr %i.u, ptr getelementptr inbounds nuw (i8, ptr @trainedPoints, i64 8), align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.n
  store ptr %i.y, ptr getelementptr inbounds nuw (i8, ptr @trainedPoints, i64 16), align 8, !tbaa !16
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.c, %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @trainedPointsMarkers, i64 8), align 8, !tbaa !41 ; 4 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @trainedPointsMarkers, i64 16), align 8, !tbaa !20
  %.not.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit
  %i.ab = load i32, ptr @currentClass, align 4, !tbaa !42 ; 2 uses
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !42
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store ptr %i.ac, ptr getelementptr inbounds nuw (i8, ptr @trainedPointsMarkers, i64 8), align 8, !tbaa !41
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.h:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EE9push_backEOS2_.exit
  %i.ad = load ptr, ptr @trainedPointsMarkers, align 8, !tbaa !19 ; 4 uses
  %i.ae = ptrtoint ptr %i.z to i64
  %i.af = ptrtoint ptr %i.ad to i64               ; 2 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775804
  br i1 %i.ah, label %bb.i, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #20
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.ai = ashr exact i64 %i.ag, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 2305843009213693951)
  %i.am = select i1 %i.ak, i64 2305843009213693951, i64 %i.al ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.an = shl nuw nsw i64 %i.am, 2
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #22 ; 4 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  %i.aq = load i32, ptr @currentClass, align 4, !tbaa !42 ; 2 uses
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !42
  %i.ar = icmp sgt i64 %i.ag, 0
  br i1 %i.ar, label %bb.j, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ao, ptr align 4 %i.ad, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %.not.i17.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @trainedPointsMarkers, i64 16), align 8, !tbaa !20
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = sub i64 %i.au, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.av) #19
  %.pre.pre = load i32, ptr @currentClass, align 4, !tbaa !42
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %.pre = phi i32 [ %.pre.pre, %bb.k ], [ %i.aq, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i ]
  store ptr %i.ao, ptr @trainedPointsMarkers, align 8, !tbaa !19
  store ptr %i.as, ptr getelementptr inbounds nuw (i8, ptr @trainedPointsMarkers, i64 8), align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.aw, ptr getelementptr inbounds nuw (i8, ptr @trainedPointsMarkers, i64 16), align 8, !tbaa !20
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.g, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.ax = phi i32 [ %i.ab, %bb.g ], [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.ay = sext i32 %i.ax to i64
  %i.az = load ptr, ptr @classCounters, align 8, !tbaa !19
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.ay ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !42
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %i.bd = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208) @img, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @trainedPoints, i64 8), align 8, !tbaa !40
  %i.bf = load ptr, ptr @trainedPoints, align 8, !tbaa !15 ; 2 uses
  %.not26 = icmp eq ptr %i.be, %i.bf
  br i1 %.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 24
  br label %bb.l

._crit_edge:                                      ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.bk, align 8, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %i.bl, align 4, !tbaa !36
  store i32 16842752, ptr %8, align 8, !tbaa !38
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @img, ptr %i.bm, align 8, !tbaa !39
  call void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) @_ZL7winNameB5cxx11, ptr noundef nonnull align 8 dereferenceable(24) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.critedge

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %i.bn = phi ptr [ %i.bf, %.lr.ph ], [ %i.cc, %bb.l ]
  %.01125 = phi i64 [ 0, %.lr.ph ], [ %i.ca, %bb.l ] ; 3 uses
  %i.bo = load ptr, ptr @trainedPointsMarkers, align 8, !tbaa !19
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.01125
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !42
  %i.br = sext i32 %i.bq to i64
  %i.bs = load ptr, ptr @classColors, align 8, !tbaa !23
  %i.bt = getelementptr inbounds nuw [3 x i8], ptr %i.bs, i64 %i.br ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !28
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.01125
  %i.bx = load <2 x i8>, ptr %i.bt, align 1, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i64 0, ptr %i.bh, align 8
  store i32 50397184, ptr %6, align 8, !tbaa !38
  store ptr @img, ptr %i.bg, align 8, !tbaa !39
  %.sroa.0.0.copyload = load i64, ptr %i.bw, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.by = uitofp <2 x i8> %i.bx to <2 x double>
  store <2 x double> %i.by, ptr %7, align 16, !tbaa !44
  %i.bz = uitofp i8 %i.bv to double
  store double %i.bz, ptr %i.bi, align 16, !tbaa !44
  store double 0.000000e+00, ptr %i.bj, align 8, !tbaa !44
  call void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 %.sroa.0.0.copyload, i32 noundef 5, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef -1, i32 noundef 8, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.ca = add nuw i64 %.01125, 1                  ; 2 uses
  %i.cb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @trainedPoints, i64 8), align 8, !tbaa !40
  %i.cc = load ptr, ptr @trainedPoints, align 8, !tbaa !15 ; 2 uses
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = ashr exact i64 %i.cf, 3
  %i.ch = icmp ult i64 %i.ca, %i.cg
  br i1 %i.ch, label %bb.l, label %._crit_edge, !llvm.loop !166

.critedge:                                        ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

declare noundef i32 @_ZN2cv7waitKeyEi(i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSERKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN2cv9minMaxLocERKNS_11_InputArrayEPdS3_PNS_6Point_IiEES6_S2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #5

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress norecurse uwtable
define internal fastcc void @_ZL26find_decision_boundary_KNNi(i32 noundef range(i32 3, 16) %0) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.cv::Ptr.26", align 16      ; 10 uses
  %2 = alloca %"struct.cv::Ptr.16", align 8       ; 7 uses
  %3 = alloca %"struct.cv::Ptr.20", align 16      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @_ZN2cv2ml8KNearest6createEv(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.26") align 8 %1)
  %i.a = load ptr, ptr %1, align 16, !tbaa !172   ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %0)
          to label %bb.b unwind label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 16, !tbaa !172   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.ab

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %1, align 16, !tbaa !172   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke fastcc void @_ZL18prepare_train_datav(ptr dead_on_unwind noalias writable align 8 %2)
          to label %bb.d unwind label %bb.ac

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %2, i32 noundef 0)
          to label %bb.e unwind label %bb.ad      ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47   ; 8 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv2ml9TrainDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.p, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !50
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #21, !inline_history !0
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !26
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #21, !inline_history !0
  br label %_ZNSt12__shared_ptrIN2cv2ml9TrainDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i = phi i32 [ %i.s, %bb.i ], [ %i.ac, %bb.j ]
  %i.ad = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ad, label %bb.k, label %_ZNSt12__shared_ptrIN2cv2ml9TrainDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !51

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #21
  br label %_ZNSt12__shared_ptrIN2cv2ml9TrainDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv2ml9TrainDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !47 ; 2 uses
  %i.ah = load <2 x ptr>, ptr %1, align 16, !tbaa !52
  store <2 x ptr> %i.ah, ptr %3, align 16, !tbaa !52
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %_ZN2cv3PtrINS_2ml9StatModelEEC2INS1_8KNearestEEERKNS0_IT_EE.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN2cv2ml9TrainDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !42
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !42
  br label %_ZN2cv3PtrINS_2ml9StatModelEEC2INS1_8KNearestEEERKNS0_IT_EE.exit

bb.n:                                             ; preds = %bb.l
  %i.am = atomicrmw volatile add ptr %i.ai, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN2cv3PtrINS_2ml9StatModelEEC2INS1_8KNearestEEERKNS0_IT_EE.exit

_ZN2cv3PtrINS_2ml9StatModelEEC2INS1_8KNearestEEERKNS0_IT_EE.exit: ; preds = %_ZNSt12__shared_ptrIN2cv2ml9TrainDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.m, %bb.n
  invoke fastcc void @_ZL17predict_and_paintRKN2cv3PtrINS_2ml9StatModelEEERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.o unwind label %bb.af

bb.o:                                             ; preds = %_ZN2cv3PtrINS_2ml9StatModelEEC2INS1_8KNearestEEERKNS0_IT_EE.exit
  %i.an = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 8 uses
  %.not.i.i7 = icmp eq ptr %i.an, null
  br i1 %.not.i.i7, label %_ZNSt12__shared_ptrIN2cv2ml9StatModelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 4 uses
  %i.ap = load atomic i64, ptr %i.ao acquire, align 8 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 4294967297
  %i.ar = trunc i64 %i.ap to i32                  ; 2 uses
  br i1 %i.aq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ao, align 8, !tbaa !49
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 0, ptr %i.as, align 4, !tbaa !50
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #21, !inline_history !1
  %i.aw = load ptr, ptr %i.an, align 8, !tbaa !26
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #21, !inline_history !1
  br label %_ZNSt12__shared_ptrIN2cv2ml9StatModelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.az = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i8 = icmp eq i8 %i.az, 0
  br i1 %.not.i.i.i8, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = add nsw i32 %i.ar, -1
  store i32 %i.ba, ptr %i.ao, align 8, !tbaa !42
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9

bb.t:                                             ; preds = %bb.r
  %i.bb = atomicrmw volatile add ptr %i.ao, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i10 = phi i32 [ %i.ar, %bb.s ], [ %i.bb, %bb.t ]
  %i.bc = icmp eq i32 %.0.i.i.i.i10, 1
  br i1 %i.bc, label %bb.u, label %_ZNSt12__shared_ptrIN2cv2ml9StatModelELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !51

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i9
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.an) #21
end_hunk_0
