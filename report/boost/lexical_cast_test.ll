Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/lexical_cast_test?download=true
inline.NumInlined: 4748
inline.NumDeleted: 1558
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5boost6detail22lexical_converter_implIbwE11try_convertERKwRb:bb.a

_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEE9stream_inIwEEbNS1_5exactIT_EE.exit: ; preds = %_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEEC2Ev.exit
  br i1 %i.q, label %bb.c, label %_ZN5boost6detail5lcast16to_target_streamIwSt11char_traitsIwEE10stream_outERb.exit

bb.b:                                             ; preds = %_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEEC2Ev.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEED2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %common.resume

bb.c:                                             ; preds = %_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEE9stream_inIwEEbNS1_5exactIT_EE.exit
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !228  ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !229  ; 2 uses
  store i8 0, ptr %1, align 1, !tbaa !103
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %_ZN5boost6detail5lcast16to_target_streamIwSt11char_traitsIwEE10stream_outERb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -4 ; 4 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !91   ; 2 uses
  %i.y = icmp eq i32 %i.x, 49                     ; 2 uses
  %i.z = zext i1 %i.y to i8
  store i8 %i.z, ptr %1, align 1, !tbaa !103
  %i.aa = and i32 %i.x, -2
  %i.ab = icmp eq i32 %i.aa, 48
  br i1 %i.ab, label %bb.e, label %_ZN5boost6detail5lcast16to_target_streamIwSt11char_traitsIwEE10stream_outERb.exit

bb.e:                                             ; preds = %bb.d
  %i.ac = icmp eq ptr %i.s, %i.w
  br i1 %i.ac, label %_ZN5boost6detail5lcast16to_target_streamIwSt11char_traitsIwEE10stream_outERb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %i.s, align 4, !tbaa !91  ; 2 uses
  %i.ae = icmp ne i32 %i.ad, 43
  %i.af = icmp ne i32 %i.ad, 45
  %brmerge.i = or i1 %i.y, %i.af
  %or.cond.i = and i1 %i.ae, %brmerge.i
  %spec.select.idx = select i1 %or.cond.i, i64 0, i64 4
  %spec.select = getelementptr inbounds nuw i8, ptr %i.s, i64 %spec.select.idx ; 2 uses
  %.not18.i = icmp eq ptr %spec.select, %i.w
  br i1 %.not18.i, label %_ZN5boost6detail5lcast16to_target_streamIwSt11char_traitsIwEE10stream_outERb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %i.ag = phi ptr [ %i.aj, %.lr.ph.i ], [ %spec.select, %bb.f ] ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !91
  %i.ai = icmp eq i32 %i.ah, 48                   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %.not.i = icmp ne ptr %i.aj, %i.w
  %or.cond.not = select i1 %i.ai, i1 %.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost6detail5lcast16to_target_streamIwSt11char_traitsIwEE10stream_outERb.exit, !llvm.loop !2

_ZN5boost6detail5lcast16to_target_streamIwSt11char_traitsIwEE10stream_outERb.exit: ; preds = %.lr.ph.i, %bb.f, %bb.e, %bb.d, %bb.c, %_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEE9stream_inIwEEbNS1_5exactIT_EE.exit
  %.1 = phi i1 [ false, %_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEE9stream_inIwEEbNS1_5exactIT_EE.exit ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.e ], [ true, %bb.f ], [ %i.ai, %.lr.ph.i ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.h) #33
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIwSt11char_traitsIwESaIwEEE, i64 16), ptr %2, align 8, !tbaa !37
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !147 ; 2 uses
  %i.al = icmp eq ptr %i.ak, %i.e
  br i1 %i.al, label %_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5boost6detail5lcast16to_target_streamIwSt11char_traitsIwEE10stream_outERb.exit
  %i.am = load i64, ptr %i.e, align 8, !tbaa !25
  %i.an = shl i64 %i.am, 2
  %i.ao = add i64 %i.an, 4
  call void @_ZdlPvm(ptr noundef %i.ak, i64 noundef %i.ao) #35
  br label %_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEED2Ev.exit

_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEED2Ev.exit: ; preds = %_ZN5boost6detail5lcast16to_target_streamIwSt11char_traitsIwEE10stream_outERb.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIwSt11char_traitsIwEE, i64 16), ptr %2, align 8, !tbaa !37
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE7convertEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::locale", align 8       ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #33
  %i.a = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv()
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = call noundef zeroext i1 @_ZNKSt6localeeqERKS_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #33
  br i1 %i.b, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %.pr.i = load i32, ptr %0, align 8, !tbaa !136
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !139
  %.promoted.i = load ptr, ptr %i.c, align 8, !tbaa !137
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.f = phi ptr [ %i.h, %bb.d ], [ %.promoted.i, %bb.c ]
  %i.g = phi i32 [ %i.k, %bb.d ], [ %.pr.i, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -4 ; 4 uses
  %i.i = urem i32 %i.g, 10
  %i.j = add i32 %i.i, %i.e
  store i32 %i.j, ptr %i.h, align 4, !tbaa !91
  %i.k = udiv i32 %i.g, 10                        ; 2 uses
  %i.l = icmp ugt i32 %i.g, 9
  br i1 %i.l, label %bb.d, label %_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE17main_convert_loopEv.exit, !llvm.loop !537

_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE17main_convert_loopEv.exit: ; preds = %bb.d
  store ptr %i.h, ptr %i.c, align 8, !tbaa !137
  store i32 %i.k, ptr %0, align 8, !tbaa !136
  br label %bb.t

bb.e:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.f:                                             ; preds = %bb.b
  %i.n = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIwE2idE) #33
  %i.o = load ptr, ptr %1, align 8, !tbaa !151
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !156
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.n
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !158  ; 5 uses
  %.not.not.i = icmp eq ptr %i.s, null
  br i1 %.not.not.i, label %bb.g, label %_ZSt9use_facetINSt7__cxx118numpunctIwEEERKT_RKSt6locale.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt16__throw_bad_castv() #34
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.g
  unreachable

_ZSt9use_facetINSt7__cxx118numpunctIwEEERKT_RKSt6locale.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37, !noalias !541
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !noalias !541
  invoke void %i.v(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_ZNKSt7__cxx118numpunctIwE8groupingEv.exit unwind label %bb.l, !inline_history !8

_ZNKSt7__cxx118numpunctIwE8groupingEv.exit:       ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIwEEERKT_RKSt6locale.exit
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !51   ; 2 uses
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx118numpunctIwE8groupingEv.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !52
  %i.z = load i8, ptr %i.y, align 1, !tbaa !25
  %i.aa = icmp slt i8 %i.z, 1
  br i1 %i.aa, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h, %_ZNKSt7__cxx118numpunctIwE8groupingEv.exit
  %.pr.i34 = load i32, ptr %0, align 8, !tbaa !136
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !139
  %.promoted.i35 = load ptr, ptr %i.ab, align 8, !tbaa !137
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %i.ae = phi ptr [ %i.ag, %bb.j ], [ %.promoted.i35, %bb.i ]
  %i.af = phi i32 [ %i.aj, %bb.j ], [ %.pr.i34, %bb.i ] ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 4 uses
  %i.ah = urem i32 %i.af, 10
  %i.ai = add i32 %i.ah, %i.ad
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !91
  %i.aj = udiv i32 %i.af, 10                      ; 2 uses
  %i.ak = icmp ugt i32 %i.af, 9
  br i1 %i.ak, label %bb.j, label %_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE17main_convert_loopEv.exit36, !llvm.loop !537

_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE17main_convert_loopEv.exit36: ; preds = %bb.j
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !137
  store i32 %i.aj, ptr %0, align 8, !tbaa !136
  %.pre50 = load ptr, ptr %2, align 8, !tbaa !52
  br label %.loopexit

bb.k:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.l:                                             ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIwEEERKT_RKSt6locale.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.m:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef signext i32 %i.ap(ptr noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_ZNKSt7__cxx118numpunctIwE13thousands_sepEv.exit unwind label %bb.q, !inline_history !9

_ZNKSt7__cxx118numpunctIwE13thousands_sepEv.exit: ; preds = %bb.m
  %i.ar = load ptr, ptr %2, align 8, !tbaa !52    ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !25  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.av = load i32, ptr %i.au, align 4, !tbaa !139
  %.promoted = load i32, ptr %0, align 8, !tbaa !136
  %.promoted63 = load ptr, ptr %i.at, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.s, %_ZNKSt7__cxx118numpunctIwE13thousands_sepEv.exit
  %.pre64 = phi ptr [ %.promoted63, %_ZNKSt7__cxx118numpunctIwE13thousands_sepEv.exit ], [ %i.bn, %bb.s ] ; 2 uses
  %i.aw = phi i32 [ %.promoted, %_ZNKSt7__cxx118numpunctIwE13thousands_sepEv.exit ], [ %i.bq, %bb.s ] ; 3 uses
  %.020 = phi i64 [ 0, %_ZNKSt7__cxx118numpunctIwE13thousands_sepEv.exit ], [ %.121, %bb.s ] ; 2 uses
  %.018 = phi i8 [ %i.as, %_ZNKSt7__cxx118numpunctIwE13thousands_sepEv.exit ], [ %.2, %bb.s ] ; 2 uses
  %.016 = phi i8 [ %i.as, %_ZNKSt7__cxx118numpunctIwE13thousands_sepEv.exit ], [ %i.bm, %bb.s ] ; 2 uses
  %i.ax = icmp eq i8 %.016, 0
  br i1 %i.ax, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ay = add i64 %.020, 1                        ; 3 uses
  %i.az = icmp ult i64 %i.ay, %i.x
  br i1 %i.az, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ay
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !25  ; 2 uses
  %i.bc = icmp slt i8 %i.bb, 1
  %i.bd = select i1 %i.bc, i8 127, i8 %i.bb
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = load ptr, ptr %2, align 8, !tbaa !52    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !25
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.r:                                             ; preds = %bb.p, %bb.o
  %.119 = phi i8 [ %i.bd, %bb.p ], [ %.018, %bb.o ] ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %.pre64, i64 -4 ; 3 uses
  store ptr %i.bk, ptr %i.at, align 8, !tbaa !137
  store i32 %i.aq, ptr %i.bk, align 4, !tbaa !91
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.r
  %i.bl = phi ptr [ %i.bk, %bb.r ], [ %.pre64, %bb.n ] ; 2 uses
  %.121 = phi i64 [ %i.ay, %bb.r ], [ %.020, %bb.n ]
  %.2 = phi i8 [ %.119, %bb.r ], [ %.018, %bb.n ]
  %.117 = phi i8 [ %.119, %bb.r ], [ %.016, %bb.n ]
  %i.bm = add i8 %.117, -1
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -4 ; 3 uses
  store ptr %i.bn, ptr %i.at, align 8, !tbaa !137
  %i.bo = urem i32 %i.aw, 10
  %i.bp = add i32 %i.av, %i.bo
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !91
  %i.bq = udiv i32 %i.aw, 10                      ; 2 uses
  store i32 %i.bq, ptr %0, align 8, !tbaa !136
  %i.br = icmp ugt i32 %i.aw, 9
  br i1 %i.br, label %bb.n, label %.loopexit.loopexit, !llvm.loop !540

.loopexit.loopexit:                               ; preds = %bb.s
  %i.bs = getelementptr inbounds i8, ptr %i.bl, i64 -4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE17main_convert_loopEv.exit36
  %i.bt = phi ptr [ %.pre50, %_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE17main_convert_loopEv.exit36 ], [ %i.ar, %.loopexit.loopexit ] ; 2 uses
  %.0 = phi ptr [ %i.ag, %_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE17main_convert_loopEv.exit36 ], [ %i.bs, %.loopexit.loopexit ]
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %.loopexit
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !25
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bx) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.l
  %.pn = phi { ptr, i32 } [ %i.am, %bb.l ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.be, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.u

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE17main_convert_loopEv.exit
  %.1 = phi ptr [ %i.h, %_ZN5boost6detail18lcast_put_unsignedISt11char_traitsIwEjwE17main_convert_loopEv.exit ], [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret ptr %.1

bb.u:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.m, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.al, %bb.k ]
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nounwind
declare i32 @swprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #17

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6detail22lexical_converter_implIwwE11try_convertERKwRw(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::detail::lcast::ios_src_stream", align 8 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIwSt11char_traitsIwEE, i64 16), ptr %2, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #33
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 24, ptr %i.c, align 8, !tbaa !214
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !144
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 0, ptr %i.f, align 8, !tbaa !146
  store i32 0, ptr %i.e, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5boost6detail5lcast17basic_unlockedbufINSt7__cxx1115basic_stringbufIwSt11char_traitsIwESaIwEEEwEE, i64 16), ptr %2, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.h) #33
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 328
  store ptr null, ptr %i.i, align 8, !tbaa !221
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i32 0, ptr %i.j, align 8, !tbaa !222
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 340
  store i8 0, ptr %i.k, align 4, !tbaa !223
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSt13basic_ostreamIwSt11char_traitsIwEE, i64 24), ptr %i.g, align 8, !tbaa !37
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSt13basic_ostreamIwSt11char_traitsIwEE, i64 64), ptr %i.h, align 8, !tbaa !37
  %i.m = load i64, ptr getelementptr inbounds nuw inrange(0, 40) (i8, ptr @_ZTVSt13basic_ostreamIwSt11char_traitsIwEE, i64 0), align 8
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 %i.m
  invoke void @_ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.n, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEEC2Ev.exit unwind label %.body.i

common.resume:                                    ; preds = %bb.b, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %.body.i ], [ %i.r, %bb.b ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.h) #33
  call void @_ZNSt7__cxx1115basic_stringbufIwSt11char_traitsIwESaIwEED2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(392) %2) #33
  br label %common.resume

_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEEC2Ev.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 376 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  %i.q = invoke noundef zeroext i1 @_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEE20shl_input_streamableIKwEEbRT_(ptr noundef nonnull align 8 dereferenceable(392) %2, ptr noundef nonnull align 4 dereferenceable(4) %0)
          to label %_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEE9stream_inIwEEbNS1_5exactIT_EE.exit unwind label %bb.b

_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEE9stream_inIwEEbNS1_5exactIT_EE.exit: ; preds = %_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEEC2Ev.exit
  br i1 %i.q, label %bb.c, label %_ZN5boost6detail5lcast16to_target_streamIwSt11char_traitsIwEE10stream_outERw.exit

bb.b:                                             ; preds = %_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEEC2Ev.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEED2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %common.resume

bb.c:                                             ; preds = %_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEE9stream_inIwEEbNS1_5exactIT_EE.exit
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !228  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !229
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = icmp eq i64 %i.x, 4
  br i1 %i.y, label %bb.d, label %_ZN5boost6detail5lcast16to_target_streamIwSt11char_traitsIwEE10stream_outERw.exit

bb.d:                                             ; preds = %bb.c
  %i.z = load i32, ptr %i.s, align 4, !tbaa !91
  store i32 %i.z, ptr %1, align 4, !tbaa !91
  br label %_ZN5boost6detail5lcast16to_target_streamIwSt11char_traitsIwEE10stream_outERw.exit

_ZN5boost6detail5lcast16to_target_streamIwSt11char_traitsIwEE10stream_outERw.exit: ; preds = %bb.d, %bb.c, %_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEE9stream_inIwEEbNS1_5exactIT_EE.exit
  %.1 = phi i1 [ false, %_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEE9stream_inIwEEbNS1_5exactIT_EE.exit ], [ false, %bb.c ], [ true, %bb.d ]
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.h) #33
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIwSt11char_traitsIwESaIwEEE, i64 16), ptr %2, align 8, !tbaa !37
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !147 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.e
  br i1 %i.ab, label %_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5boost6detail5lcast16to_target_streamIwSt11char_traitsIwEE10stream_outERw.exit
  %i.ac = load i64, ptr %i.e, align 8, !tbaa !25
  %i.ad = shl i64 %i.ac, 2
  %i.ae = add i64 %i.ad, 4
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #35
  br label %_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEED2Ev.exit

_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEED2Ev.exit: ; preds = %_ZN5boost6detail5lcast16to_target_streamIwSt11char_traitsIwEE10stream_outERw.exit, %_ZNKSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE11_M_is_localEv.exit.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIwSt11char_traitsIwEE, i64 16), ptr %2, align 8, !tbaa !37
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret i1 %.1
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare ptr @wmemcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE10_M_replaceEmmPKwm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost6detail22lexical_converter_implINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEwE11try_convertERKwRS7_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::detail::lcast::ios_src_stream", align 8 ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIwSt11char_traitsIwEE, i64 16), ptr %2, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #33
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 24, ptr %i.c, align 8, !tbaa !214
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 4 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !144
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 0, ptr %i.f, align 8, !tbaa !146
  store i32 0, ptr %i.e, align 8, !tbaa !91
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5boost6detail5lcast17basic_unlockedbufINSt7__cxx1115basic_stringbufIwSt11char_traitsIwESaIwEEEwEE, i64 16), ptr %2, align 8, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 4 uses
  call void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.h) #33
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 328
  store ptr null, ptr %i.i, align 8, !tbaa !221
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 336
  store i32 0, ptr %i.j, align 8, !tbaa !222
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 340
  store i8 0, ptr %i.k, align 4, !tbaa !223
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSt13basic_ostreamIwSt11char_traitsIwEE, i64 24), ptr %i.g, align 8, !tbaa !37
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVSt13basic_ostreamIwSt11char_traitsIwEE, i64 64), ptr %i.h, align 8, !tbaa !37
  %i.m = load i64, ptr getelementptr inbounds nuw inrange(0, 40) (i8, ptr @_ZTVSt13basic_ostreamIwSt11char_traitsIwEE, i64 0), align 8
  %i.n = getelementptr inbounds i8, ptr %i.g, i64 %i.m
  invoke void @_ZNSt9basic_iosIwSt11char_traitsIwEE4initEPSt15basic_streambufIwS1_E(ptr noundef nonnull align 8 dereferenceable(264) %i.n, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %_ZN5boost6detail5lcast14ios_src_streamIwSt11char_traitsIwEEC2Ev.exit unwind label %.body.i

end_hunk_0
