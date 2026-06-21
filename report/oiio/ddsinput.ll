inline.NumInlined: 3422
inline.NumDeleted: 950
begin_hunk_0_@_ZN3fmt3v126detail10loc_writerIcEclIoTnNSt9enable_ifIXsr10is_integerIT_EE5valueEiE4typeELi0EEEbS6_:bb.a
  %i.u = load i64, ptr %i.b, align 8, !tbaa !145  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !40
  %i.w = load ptr, ptr %3, align 8, !tbaa !87
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  store ptr %i.z, ptr %4, align 8, !tbaa !36
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !87  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !40 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !145
  %i.ad = icmp ugt i64 %i.ac, 15
  br i1 %i.ad, label %.noexc.i7, label %._crit_edge.i.i6

.noexc.i7:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ae = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i7
  store ptr %i.ae, ptr %4, align 8, !tbaa !87
  %i.af = load i64, ptr %i.a, align 8, !tbaa !145
  store i64 %i.af, ptr %i.z, align 8, !tbaa !9
  br label %._crit_edge.i.i6

._crit_edge.i.i6:                                 ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ag = phi ptr [ %i.ae, %.noexc ], [ %i.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.ac, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i6
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !9
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !9
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i6
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aa, i64 %i.ac, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i6
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !145 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !40
  %i.ak = load ptr, ptr %4, align 8, !tbaa !87
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.am, ptr %2, align 8, !tbaa !36
  %i.an = load ptr, ptr %3, align 8, !tbaa !87    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.l
  br i1 %i.ao, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ap = load i64, ptr %i.v, align 8, !tbaa !40  ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.l, i64 %i.ar, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  store ptr %i.an, ptr %2, align 8, !tbaa !87
  %i.as = load i64, ptr %i.l, align 8, !tbaa !9
  store i64 %i.as, ptr %i.am, align 8, !tbaa !9
  %.pre = load i64, ptr %i.v, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %i.at = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ap, %bb.g ]
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !40
  store ptr %i.l, ptr %3, align 8, !tbaa !87
  store i64 0, ptr %i.v, align 8, !tbaa !40
  store i8 0, ptr %i.l, align 8, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !36
  %i.ax = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.z
  br i1 %i.ay, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.az = load i64, ptr %i.aj, align 8, !tbaa !40 ; 3 uses
  %i.ba = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.z, i64 %i.bb, i1 false)
  br label %_ZN3fmt3v126detail14digit_groupingIcEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !87
  %i.bc = load i64, ptr %i.z, align 8, !tbaa !9
  store i64 %i.bc, ptr %i.aw, align 8, !tbaa !9
  %.pre19 = load i64, ptr %i.aj, align 8, !tbaa !40
  br label %_ZN3fmt3v126detail14digit_groupingIcEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit

_ZN3fmt3v126detail14digit_groupingIcEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i
  %i.bd = phi i64 [ %i.az, %bb.h ], [ %.pre19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !40
  store ptr %i.z, ptr %4, align 8, !tbaa !87
  store i64 0, ptr %i.aj, align 8, !tbaa !40
  store i8 0, ptr %i.z, align 8, !tbaa !9
  %i.bf = invoke ptr @_ZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EE(ptr %.sroa.01.0.copyload, i128 noundef %1, i32 noundef %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.i unwind label %bb.k       ; 0 uses

bb.i:                                             ; preds = %_ZN3fmt3v126detail14digit_groupingIcEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit
  %i.bg = load ptr, ptr %i.av, align 8, !tbaa !87 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.aw
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.i
  %i.bi = load i64, ptr %i.aw, align 8, !tbaa !9
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bk = load ptr, ptr %2, align 8, !tbaa !87    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.am
  br i1 %i.bl, label %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bm = load i64, ptr %i.am, align 8, !tbaa !9
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #35
  br label %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit

_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit:   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bo = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.z
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit
  %i.bq = load i64, ptr %i.z, align 8, !tbaa !9
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3fmt3v126detail14digit_groupingIcED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.bs = load ptr, ptr %3, align 8, !tbaa !87    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.l
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bu = load i64, ptr %i.l, align 8, !tbaa !9
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bv) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  ret i1 true

bb.j:                                             ; preds = %.noexc.i7
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.k:                                             ; preds = %_ZN3fmt3v126detail14digit_groupingIcEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3fmt3v126detail14digit_groupingIcED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #34
  %i.by = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.z
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.k
  %i.ca = load i64, ptr %i.z, align 8, !tbaa !9
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cb) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.j ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.bx, %bb.k ]
  %i.cc = load ptr, ptr %3, align 8, !tbaa !87    ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.l
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ce = load i64, ptr %i.l, align 8, !tbaa !9
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cf) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EE(ptr %0, i64 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.46, align 1             ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 15 uses
  %7 = alloca %class.anon.40, align 8             ; 7 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 0, ptr %i.d, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.c, align 8, !tbaa !226
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 6 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !228
  store i64 500, ptr %i.b, align 8, !tbaa !229
  %i.f = load i32, ptr %3, align 4, !tbaa !253    ; 8 uses
  %i.g = trunc i32 %i.f to i8
  %i.h = and i8 %i.g, 7
  switch i8 %i.h, label %bb.b [
    i8 7, label %bb.m
    i8 6, label %bb.j
    i8 4, label %bb.d
    i8 5, label %.preheader
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = or i64 %1, 1
  %i.j = call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.i, i1 true)
  %i.k = xor i64 %i.j, 63
  %i.l = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail15do_count_digitsEmE9bsr2log10, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !9     ; 2 uses
  %i.n = zext i8 %i.m to i32
  %i.o = zext i8 %i.m to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEmE20zero_or_powers_of_10, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !145
  %i.r = icmp ult i64 %1, %i.q
  %.neg.i.i = sext i1 %i.r to i32
  %i.s = add nsw i32 %.neg.i.i, %i.n              ; 2 uses
  %i.t = invoke ptr @_ZN3fmt3v126detail14format_decimalIcmNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %6, i64 noundef %1, i32 noundef %i.s)
          to label %.loopexit unwind label %bb.c  ; 0 uses

bb.c:                                             ; preds = %.invoke, %bb.m, %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.v = and i32 %i.f, 8192
  %.not96 = icmp eq i32 %i.v, 0
  br i1 %.not96, label %.preheader168, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = and i32 %i.f, 4096
  %.not97 = icmp eq i32 %i.w, 0
  %i.x = select i1 %.not97, i32 30768, i32 22576  ; 2 uses
  %.not.i = icmp eq i32 %2, 0
  %i.y = shl nuw nsw i32 %i.x, 8
  %i.z = select i1 %.not.i, i32 %i.x, i32 %i.y
  %i.aa = or i32 %i.z, %2
  %i.ab = add i32 %i.aa, 33554432                 ; 2 uses
  store i32 %i.ab, ptr %i.a, align 4, !tbaa !3
  br label %.preheader168

.preheader168:                                    ; preds = %bb.e, %bb.d
  %8 = phi i32 [ %i.ab, %bb.e ], [ %2, %bb.d ]
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.preheader168
  %.03.i.i = phi i64 [ %1, %.preheader168 ], [ %i.ad, %bb.f ]
  %.0.i.i = phi i32 [ 0, %.preheader168 ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ac = add nuw nsw i32 %.0.i.i, 1              ; 3 uses
  %i.ad = lshr i64 %.03.i.i, 4                    ; 2 uses
  %.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail12count_digitsILi4EmEEiT0_.exit, label %bb.f, !llvm.loop !259

_ZN3fmt3v126detail12count_digitsILi4EmEEiT0_.exit: ; preds = %bb.f
  %i.ae = and i32 %i.f, 4096
  %.not98 = icmp eq i32 %i.ae, 0
  %i.af = zext nneg i32 %i.ac to i64              ; 3 uses
  %i.ag = icmp samesign ugt i32 %.0.i.i, 499
  br i1 %i.ag, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %_ZN3fmt3v126detail12count_digitsILi4EmEEiT0_.exit
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.af, i64 750) ; 2 uses
  %i.ah = call noalias ptr @malloc(i64 noundef %spec.select.i) #40 ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i128, label %.invoke, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i
  store ptr %i.ah, ptr %6, align 8, !tbaa !228
  store i64 %spec.select.i, ptr %i.b, align 8, !tbaa !229
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread: ; preds = %_ZN3fmt3v126detail12count_digitsILi4EmEEiT0_.exit, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i
  %i.ai = phi ptr [ %i.ah, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i ], [ %i.e, %_ZN3fmt3v126detail12count_digitsILi4EmEEiT0_.exit ]
  store i64 %i.af, ptr %i.d, align 8, !tbaa !233
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.af
  %.str.47..str.48.i.i.i = select i1 %.not98, ptr @.str.48, ptr @.str.47
  br label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.split.i.i.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread
  %.012.i.i.i = phi i64 [ %i.ao, %.split.i.i.i ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.an, %.split.i.i.i ], [ %i.aj, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread ]
  %i.ak = and i64 %.012.i.i.i, 15
  %i.al = getelementptr inbounds nuw i8, ptr %.str.47..str.48.i.i.i, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  %i.an = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -1 ; 2 uses
  store i8 %i.am, ptr %i.an, align 1, !tbaa !9
  %i.ao = lshr i64 %.012.i.i.i, 4                 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i, label %.loopexit, label %.split.i.i.i, !llvm.loop !332

.preheader:                                       ; preds = %bb.a, %.preheader
  %.03.i.i46 = phi i64 [ %i.aq, %.preheader ], [ %1, %bb.a ]
  %.0.i.i47 = phi i32 [ %i.ap, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %i.ap = add nuw nsw i32 %.0.i.i47, 1            ; 4 uses
  %i.aq = lshr i64 %.03.i.i46, 3                  ; 2 uses
  %.not.i.i48 = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i48, label %_ZN3fmt3v126detail12count_digitsILi3EmEEiT0_.exit, label %.preheader, !llvm.loop !333

_ZN3fmt3v126detail12count_digitsILi3EmEEiT0_.exit: ; preds = %.preheader
  %i.ar = and i32 %i.f, 8192
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v126detail12count_digitsILi3EmEEiT0_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !255
  %i.au = icmp sle i32 %i.at, %i.ap
  %i.av = icmp ne i64 %1, 0
  %or.cond = and i1 %i.av, %i.au
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not.i49 = icmp eq i32 %2, 0
  %i.aw = select i1 %.not.i49, i32 48, i32 12288
  %i.ax = or i32 %i.aw, %2
  %i.ay = add i32 %i.ax, 16777216                 ; 2 uses
  store i32 %i.ay, ptr %i.a, align 4, !tbaa !3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %_ZN3fmt3v126detail12count_digitsILi3EmEEiT0_.exit
  %9 = phi i32 [ %i.ay, %bb.h ], [ %2, %bb.g ], [ %2, %_ZN3fmt3v126detail12count_digitsILi3EmEEiT0_.exit ]
  %i.az = zext nneg i32 %i.ap to i64              ; 3 uses
  %i.ba = icmp samesign ugt i32 %.0.i.i47, 499
  br i1 %i.ba, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i56, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i56: ; preds = %bb.i
  %spec.select.i131 = call i64 @llvm.umax.i64(i64 %i.az, i64 750) ; 2 uses
  %i.bb = call noalias ptr @malloc(i64 noundef %spec.select.i131) #40 ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i132, label %.invoke, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i56
  store ptr %i.bb, ptr %6, align 8, !tbaa !228
  store i64 %spec.select.i131, ptr %i.b, align 8, !tbaa !229
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread: ; preds = %bb.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50
  %i.bc = phi ptr [ %i.bb, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50 ], [ %i.e, %bb.i ]
  store i64 %i.az, ptr %i.d, align 8, !tbaa !233
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  br label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.split.us.i.i.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread
  %.012.us.i.i.i = phi i64 [ %i.bi, %.split.us.i.i.i ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread ] ; 2 uses
  %.0.us.i.i.i = phi ptr [ %i.bh, %.split.us.i.i.i ], [ %i.bd, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread ]
  %i.be = trunc i64 %.012.us.i.i.i to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = or disjoint i8 %i.bf, 48
  %i.bh = getelementptr inbounds i8, ptr %.0.us.i.i.i, i64 -1 ; 2 uses
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !9
  %i.bi = lshr i64 %.012.us.i.i.i, 3              ; 2 uses
  %.not.us.i.i.i = icmp eq i64 %i.bi, 0
  br i1 %.not.us.i.i.i, label %.loopexit, label %.split.us.i.i.i, !llvm.loop !332

bb.j:                                             ; preds = %bb.a
  %i.bj = and i32 %i.f, 8192
  %.not99 = icmp eq i32 %i.bj, 0
  br i1 %.not99, label %.preheader166, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = and i32 %i.f, 4096
  %.not100 = icmp eq i32 %i.bk, 0
  %i.bl = select i1 %.not100, i32 25136, i32 16944 ; 2 uses
  %.not.i63 = icmp eq i32 %2, 0
  %i.bm = shl nuw nsw i32 %i.bl, 8
  %i.bn = select i1 %.not.i63, i32 %i.bl, i32 %i.bm
  %i.bo = or i32 %i.bn, %2
  %i.bp = add i32 %i.bo, 33554432                 ; 2 uses
  store i32 %i.bp, ptr %i.a, align 4, !tbaa !3
  br label %.preheader166

.preheader166:                                    ; preds = %bb.k, %bb.j
  %10 = phi i32 [ %i.bp, %bb.k ], [ %2, %bb.j ]
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader166
  %.03.i.i64 = phi i64 [ %1, %.preheader166 ], [ %i.br, %bb.l ]
  %.0.i.i65 = phi i32 [ 0, %.preheader166 ], [ %i.bq, %bb.l ] ; 2 uses
  %i.bq = add nuw nsw i32 %.0.i.i65, 1            ; 3 uses
  %i.br = lshr i64 %.03.i.i64, 1                  ; 2 uses
  %.not.i.i66 = icmp eq i64 %i.br, 0
  br i1 %.not.i.i66, label %_ZN3fmt3v126detail12count_digitsILi1EmEEiT0_.exit, label %bb.l, !llvm.loop !334

_ZN3fmt3v126detail12count_digitsILi1EmEEiT0_.exit: ; preds = %bb.l
  %i.bs = zext nneg i32 %i.bq to i64              ; 3 uses
  %i.bt = icmp samesign ugt i32 %.0.i.i65, 499
  br i1 %i.bt, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i81, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i81: ; preds = %_ZN3fmt3v126detail12count_digitsILi1EmEEiT0_.exit
  %spec.select.i137 = call i64 @llvm.umax.i64(i64 %i.bs, i64 750) ; 2 uses
  %i.bu = call noalias ptr @malloc(i64 noundef %spec.select.i137) #40 ; 3 uses
  %.not.i.i138 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i138, label %.invoke, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67

.invoke:                                          ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i81, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i56, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bv = call ptr @__cxa_allocate_exception(i64 8) #34 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bv, align 8, !tbaa !34
  invoke void @__cxa_throw(ptr nonnull %i.bv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i81
  store ptr %i.bu, ptr %6, align 8, !tbaa !228
  store i64 %spec.select.i137, ptr %i.b, align 8, !tbaa !229
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread: ; preds = %_ZN3fmt3v126detail12count_digitsILi1EmEEiT0_.exit, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67
  %i.bw = phi ptr [ %i.bu, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67 ], [ %i.e, %_ZN3fmt3v126detail12count_digitsILi1EmEEiT0_.exit ]
  store i64 %i.bs, ptr %i.d, align 8, !tbaa !233
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bs
  br label %.split.us.i.i.i70

.split.us.i.i.i70:                                ; preds = %.split.us.i.i.i70, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread
  %.012.us.i.i.i71 = phi i64 [ %i.cc, %.split.us.i.i.i70 ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread ] ; 2 uses
  %.0.us.i.i.i72 = phi ptr [ %i.cb, %.split.us.i.i.i70 ], [ %i.bx, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread ]
  %i.by = trunc i64 %.012.us.i.i.i71 to i8
  %i.bz = and i8 %i.by, 1
  %i.ca = or disjoint i8 %i.bz, 48
  %i.cb = getelementptr inbounds i8, ptr %.0.us.i.i.i72, i64 -1 ; 2 uses
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !9
  %i.cc = lshr i64 %.012.us.i.i.i71, 1            ; 2 uses
  %.not.us.i.i.i73 = icmp eq i64 %i.cc, 0
  br i1 %.not.us.i.i.i73, label %.loopexit, label %.split.us.i.i.i70, !llvm.loop !332

bb.m:                                             ; preds = %bb.a
  %i.cd = trunc i64 %1 to i8
  %i.ce = and i32 %i.f, 7
  %i.cf = icmp eq i32 %i.ce, 1
  %i.cg = zext i1 %i.cf to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  store i8 %i.cg, ptr %5, align 1, !tbaa !298
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.cd, ptr %i.ch, align 1, !tbaa !300
  %i.ci = invoke ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(2) %5)
          to label %_ZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsE.exit unwind label %bb.c

_ZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsE.exit: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.t

.loopexit:                                        ; preds = %.split.us.i.i.i, %.split.i.i.i, %.split.us.i.i.i70, %bb.b
  %.0.a = phi i32 [ %8, %.split.i.i.i ], [ %2, %bb.b ], [ %10, %.split.us.i.i.i70 ], [ %9, %.split.us.i.i.i ]
  %.0 = phi i32 [ %i.ac, %.split.i.i.i ], [ %i.s, %bb.b ], [ %i.bq, %.split.us.i.i.i70 ], [ %i.ap, %.split.us.i.i.i ] ; 2 uses
  %i.cj = lshr i32 %.0.a, 24
  %i.ck = add i32 %i.cj, %.0
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !40
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit
  %i.co = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !40
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cq ; 3 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 -1
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %.lr.ph.i
  %.08.i = phi i32 [ 0, %.lr.ph.i ], [ %i.da, %bb.q ] ; 3 uses
  %.sroa.0.07.i = phi ptr [ %i.co, %.lr.ph.i ], [ %.sroa.0.1.i, %bb.q ] ; 3 uses
  %.sroa.5.06.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cy, %bb.q ]
  %i.ct = icmp eq ptr %.sroa.0.07.i, %i.cr
  br i1 %i.ct, label %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i, label %bb.o

._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i: ; preds = %bb.n
  %.sink.i.pre.i = load i8, ptr %i.cs, align 1, !tbaa !9
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i

bb.o:                                             ; preds = %bb.n
  %i.cu = load i8, ptr %.sroa.0.07.i, align 1, !tbaa !9 ; 2 uses
  %i.cv = add i8 %i.cu, -127
  %or.cond.i.i = icmp ult i8 %i.cv, -126
  br i1 %or.cond.i.i, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 1
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i

_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i: ; preds = %bb.p, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i
  %.sink.i.i = phi i8 [ %i.cu, %bb.p ], [ %.sink.i.pre.i, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %.sroa.0.1.i = phi ptr [ %i.cw, %bb.p ], [ %i.cr, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %i.cx = sext i8 %.sink.i.i to i32
  %i.cy = add nsw i32 %.sroa.5.06.i, %i.cx        ; 2 uses
  %i.cz = icmp sgt i32 %.0, %i.cy
  br i1 %i.cz, label %bb.q, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit

bb.q:                                             ; preds = %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i
  %i.da = add nuw nsw i32 %.08.i, 1
  br label %bb.n

_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit: ; preds = %bb.o, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i, %.loopexit
  %.0.lcssa.i = phi i32 [ 0, %.loopexit ], [ %.08.i, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i ], [ %.08.i, %bb.o ]
  %i.db = add i32 %i.ck, %.0.lcssa.i
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  store ptr %i.a, ptr %7, align 8, !tbaa !147
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.dd, align 8, !tbaa !335
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %6, ptr %i.de, align 8, !tbaa !337
  %i.df = invoke ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_9write_intIS5_mcEET_S7_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS5_E_EESD_SD_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %i.dc, i64 noundef %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.t

bb.s:                                             ; preds = %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.v

bb.t:                                             ; preds = %_ZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsE.exit, %bb.r
  %.sroa.039.0 = phi ptr [ %i.df, %bb.r ], [ %i.ci, %_ZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsE.exit ]
  %i.dh = load ptr, ptr %6, align 8, !tbaa !228   ; 2 uses
  %.not.i.i89 = icmp eq ptr %i.dh, %i.e
  br i1 %.not.i.i89, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.dh) #34
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret ptr %.sroa.039.0

bb.v:                                             ; preds = %bb.s, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %i.u, %bb.c ], [ %i.dg, %bb.s ]
  %i.di = load ptr, ptr %6, align 8, !tbaa !228   ; 2 uses
  %.not.i.i90 = icmp eq ptr %i.di, %i.e
  br i1 %.not.i.i90, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit91, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef %i.di) #34
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit91

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit91: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail14digit_groupingIcED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !9
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !87     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !9
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_9write_intIS5_mcEET_S7_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS5_E_EESD_SD_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !301
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !253    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.50, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !233
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !229
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !226
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !302
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 6 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !339, !nonnull !203, !align !208
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = and i32 %i.ad, 16777215                 ; 2 uses
  %.not6.i = icmp eq i32 %i.ae, 0
  br i1 %.not6.i, label %_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  br label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.07.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.ar, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ] ; 2 uses
  %i.ai = trunc i32 %.07.i to i8
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !233 ; 2 uses
  %i.ak = add i64 %i.aj, 1                        ; 3 uses
  %i.al = load i64, ptr %i.ag, align 8, !tbaa !229
  %i.am = icmp ugt i64 %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !226
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ak), !inline_history !341
  %.pre.i.i.i = load i64, ptr %i.af, align 8, !tbaa !233 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i = phi i64 [ %i.ak, %bb.e ], [ %.pre2.i.i.i, %bb.f ]
  %i.ao = phi i64 [ %i.aj, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ap = load ptr, ptr %.sroa.09.0, align 8, !tbaa !228
  store i64 %.pre-phi.i.i.i, ptr %i.af, align 8, !tbaa !233
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.ai, ptr %i.aq, align 1, !tbaa !9
  %i.ar = lshr i32 %.07.i, 8                      ; 2 uses
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit, label %bb.e, !llvm.loop !342

_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !343, !nonnull !203, !align !211
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !344, !nonnull !203, !align !211 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !228
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !233
  %i.az = tail call ptr @_ZNK3fmt3v126detail14digit_groupingIcE5applyINS0_14basic_appenderIcEEcEET_S7_NS0_17basic_string_viewIT0_EE(ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr %.sroa.09.0, ptr %i.aw, i64 %i.ay) ; 2 uses
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit
  %i.ba = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.az, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.ba, %bb.g ], [ %i.az, %_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 1 dereferenceable(2) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !301
end_hunk_0
begin_hunk_1_@_ZNK3fmt3v126detail14digit_groupingIcE5applyINS0_14basic_appenderIcEEcEET_S7_NS0_17basic_string_viewIT0_EE:bb.a
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !280

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec80 = and i64 %.026.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index81 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next83, %vec.epilog.vector.body ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %index81
  %wide.load82 = load <4 x i8>, ptr %i.ca, align 1, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 %index81
  store <4 x i8> %wide.load82, ptr %i.cb, align 1, !tbaa !9
  %index.next83 = add nuw i64 %index81, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next83, %n.vec80
  br i1 %i.cc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !368

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n84 = icmp eq i64 %.026.i.i, %n.vec80
  br i1 %cmp.n84, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec80, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.cg, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.030.i.i.prol
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.030.i.i.prol
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !9
  %i.cg = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !369

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.cg, %.lr.ph.i.i.prol ]
  %i.ch = sub i64 %.030.i.i.ph, %.026.i.i
  %i.ci = icmp ugt i64 %i.ch, -4
  br i1 %i.ci, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.ap, align 8, !tbaa !233
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.o
  %i.cj = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.027.i.i, %bb.o ]
  %i.ck = add i64 %i.cj, %.026.i.i                ; 2 uses
  store i64 %i.ck, ptr %i.ap, align 8, !tbaa !233
  %i.cl = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.026.i.i ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.cl, %i.bc
  br i1 %.not.i.i33, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit, label %bb.m, !llvm.loop !283

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.db, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.030.i.i
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !9
  %i.co = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.030.i.i
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !9
  %i.cp = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !9
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cp
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !9
  %i.ct = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !9
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ct
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !9
  %i.cx = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !9
  %i.da = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.cx
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !9
  %i.db = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.db, %.026.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !370

_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit: ; preds = %._crit_edge.i.i, %bb.l
  %i.dc = add nsw i32 %.01859, -1
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.q:                                             ; preds = %bb.k, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit
  %.119 = phi i32 [ %i.dc, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit ], [ %.01859, %bb.k ]
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.df = load i8, ptr %i.de, align 1, !tbaa !9
  %i.dg = load i64, ptr %i.ap, align 8, !tbaa !233 ; 2 uses
  %i.dh = add i64 %i.dg, 1                        ; 3 uses
  %i.di = load i64, ptr %i.aq, align 8, !tbaa !229
  %i.dj = icmp ugt i64 %i.dh, %i.di
  br i1 %i.dj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dk = load ptr, ptr %i.ar, align 8, !tbaa !226
  invoke void %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dh)
          to label %.noexc36 unwind label %bb.t, !inline_history !371

.noexc36:                                         ; preds = %bb.r
  %.pre.i.i35 = load i64, ptr %i.ap, align 8, !tbaa !233 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i35, 1
  br label %bb.s

bb.s:                                             ; preds = %.noexc36, %bb.q
  %.pre-phi.i.i = phi i64 [ %i.dh, %bb.q ], [ %.pre2.i.i, %.noexc36 ]
  %i.dl = phi i64 [ %i.dg, %bb.q ], [ %.pre.i.i35, %.noexc36 ]
  %i.dm = load ptr, ptr %1, align 8, !tbaa !228
  store i64 %.pre-phi.i.i, ptr %i.ap, align 8, !tbaa !233
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dl
  store i8 %i.df, ptr %i.dn, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.k, !llvm.loop !372

bb.t:                                             ; preds = %bb.r
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.f, %bb.t, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %i.do, %bb.t ], [ %i.dd, %bb.p ]
  %i.dp = load ptr, ptr %4, align 8, !tbaa !362   ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.dp, %i.e
  br i1 %.not.i.i37, label %_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit38, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.dp) #34
  br label %_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit38

_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEED2Ev.exit38: ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v1219basic_memory_bufferIiLm500ENS0_6detail9allocatorIiEEE4growERNS2_6bufferIiEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !363  ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @llvm.umax.i64(i64 %1, i64 4611686018427387903)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !362    ; 3 uses
  %i.i = shl i64 %.0, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #40 ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %_ZN3fmt3v126detail9allocatorIiE8allocateEm.exit

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #34 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

_ZN3fmt3v126detail9allocatorIiE8allocateEm.exit:  ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !364  ; 2 uses
  %i.n = icmp ule i64 %i.m, %.0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = shl i64 %i.m, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.h, i64 %i.o, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !362
  store i64 %.0, ptr %i.a, align 8, !tbaa !363
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.h, %i.p
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail9allocatorIiE8allocateEm.exit
  tail call void @free(ptr noundef %i.h) #34
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN3fmt3v126detail9allocatorIiE8allocateEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EE(ptr %0, i128 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.46, align 1             ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 15 uses
  %7 = alloca %class.anon.54, align 8             ; 7 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  store i64 0, ptr %i.d, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.c, align 8, !tbaa !226
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 6 uses
  store ptr %i.e, ptr %6, align 8, !tbaa !228
  store i64 500, ptr %i.b, align 8, !tbaa !229
  %i.f = load i32, ptr %3, align 4, !tbaa !253    ; 8 uses
  %i.g = trunc i32 %i.f to i8
  %i.h = and i8 %i.g, 7
  switch i8 %i.h, label %bb.b [
    i8 7, label %bb.s
    i8 6, label %bb.p
    i8 4, label %bb.j
    i8 5, label %.preheader
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i128 %1, 10
  br i1 %i.i, label %_ZN3fmt3v126detail12count_digitsEo.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.h
  %.017.i.i = phi i32 [ %i.q, %bb.h ], [ 1, %bb.b ] ; 4 uses
  %.01116.i.i = phi i128 [ %i.p, %bb.h ], [ %1, %bb.b ] ; 5 uses
  %i.j = icmp ult i128 %.01116.i.i, 100
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.k = add nuw nsw i32 %.017.i.i, 1
  br label %_ZN3fmt3v126detail12count_digitsEo.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.l = icmp ult i128 %.01116.i.i, 1000
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = add nuw nsw i32 %.017.i.i, 2
  br label %_ZN3fmt3v126detail12count_digitsEo.exit

bb.f:                                             ; preds = %bb.d
  %i.n = icmp ult i128 %.01116.i.i, 10000
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = add nuw nsw i32 %.017.i.i, 3
  br label %_ZN3fmt3v126detail12count_digitsEo.exit

bb.h:                                             ; preds = %bb.f
  %i.p = udiv i128 %.01116.i.i, 10000
  %i.q = add nuw nsw i32 %.017.i.i, 4             ; 2 uses
  %i.r = icmp ult i128 %.01116.i.i, 100000
  br i1 %i.r, label %_ZN3fmt3v126detail12count_digitsEo.exit, label %.lr.ph.i.i, !llvm.loop !285

_ZN3fmt3v126detail12count_digitsEo.exit:          ; preds = %bb.h, %bb.g, %bb.e, %bb.c, %bb.b
  %.012.i.i = phi i32 [ %i.o, %bb.g ], [ %i.k, %bb.c ], [ %i.m, %bb.e ], [ 1, %bb.b ], [ %i.q, %bb.h ] ; 2 uses
  %i.s = invoke ptr @_ZN3fmt3v126detail14format_decimalIcoNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %6, i128 noundef %1, i32 noundef %.012.i.i)
          to label %.loopexit unwind label %bb.i  ; 0 uses

bb.i:                                             ; preds = %.invoke, %bb.s, %_ZN3fmt3v126detail12count_digitsEo.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.j:                                             ; preds = %bb.a
  %i.u = and i32 %i.f, 8192
  %.not96 = icmp eq i32 %i.u, 0
  br i1 %.not96, label %.preheader202, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = and i32 %i.f, 4096
  %.not97 = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not97, i32 30768, i32 22576  ; 2 uses
  %.not.i = icmp eq i32 %2, 0
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = select i1 %.not.i, i32 %i.w, i32 %i.x
  %i.z = or i32 %i.y, %2
  %i.aa = add i32 %i.z, 33554432                  ; 2 uses
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !3
  br label %.preheader202

.preheader202:                                    ; preds = %bb.k, %bb.j
  %8 = phi i32 [ %i.aa, %bb.k ], [ %2, %bb.j ]
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.preheader202
  %.03.i.i = phi i128 [ %1, %.preheader202 ], [ %i.ac, %bb.l ]
  %.0.i.i = phi i32 [ 0, %.preheader202 ], [ %i.ab, %bb.l ] ; 2 uses
  %i.ab = add nuw nsw i32 %.0.i.i, 1              ; 3 uses
  %i.ac = lshr i128 %.03.i.i, 4                   ; 2 uses
  %.not.i.i = icmp eq i128 %i.ac, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail12count_digitsILi4EoEEiT0_.exit, label %bb.l, !llvm.loop !373

_ZN3fmt3v126detail12count_digitsILi4EoEEiT0_.exit: ; preds = %bb.l
  %i.ad = and i32 %i.f, 4096
  %.not98 = icmp eq i32 %i.ad, 0
  %i.ae = zext nneg i32 %i.ab to i64              ; 3 uses
  %i.af = icmp samesign ugt i32 %.0.i.i, 499
  br i1 %i.af, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %_ZN3fmt3v126detail12count_digitsILi4EoEEiT0_.exit
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.ae, i64 750) ; 2 uses
  %i.ag = call noalias ptr @malloc(i64 noundef %spec.select.i) #40 ; 3 uses
  %.not.i.i141 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i141, label %.invoke, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i
  store ptr %i.ag, ptr %6, align 8, !tbaa !228
  store i64 %spec.select.i, ptr %i.b, align 8, !tbaa !229
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread: ; preds = %_ZN3fmt3v126detail12count_digitsILi4EoEEiT0_.exit, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i
  %i.ah = phi ptr [ %i.ag, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i ], [ %i.e, %_ZN3fmt3v126detail12count_digitsILi4EoEEiT0_.exit ]
  store i64 %i.ae, ptr %i.d, align 8, !tbaa !233
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae
  %.str.47..str.48.i.i.i = select i1 %.not98, ptr @.str.48, ptr @.str.47
  br label %.split.i.i.i

.split.i.i.i:                                     ; preds = %.split.i.i.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread
  %.012.i.i.i = phi i128 [ %i.ao, %.split.i.i.i ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.an, %.split.i.i.i ], [ %i.ai, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.thread ]
  %i.aj = trunc i128 %.012.i.i.i to i64
  %i.ak = and i64 %i.aj, 15
  %i.al = getelementptr inbounds nuw i8, ptr %.str.47..str.48.i.i.i, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9
  %i.an = getelementptr inbounds i8, ptr %.0.i.i.i, i64 -1 ; 2 uses
  store i8 %i.am, ptr %i.an, align 1, !tbaa !9
  %i.ao = lshr i128 %.012.i.i.i, 4                ; 2 uses
  %.not.i.i.i = icmp eq i128 %i.ao, 0
  br i1 %.not.i.i.i, label %.loopexit, label %.split.i.i.i, !llvm.loop !374

.preheader:                                       ; preds = %bb.a, %.preheader
  %.03.i.i46 = phi i128 [ %i.aq, %.preheader ], [ %1, %bb.a ]
  %.0.i.i47 = phi i32 [ %i.ap, %.preheader ], [ 0, %bb.a ] ; 2 uses
  %i.ap = add nuw nsw i32 %.0.i.i47, 1            ; 4 uses
  %i.aq = lshr i128 %.03.i.i46, 3                 ; 2 uses
  %.not.i.i48 = icmp eq i128 %i.aq, 0
  br i1 %.not.i.i48, label %_ZN3fmt3v126detail12count_digitsILi3EoEEiT0_.exit, label %.preheader, !llvm.loop !375

_ZN3fmt3v126detail12count_digitsILi3EoEEiT0_.exit: ; preds = %.preheader
  %i.ar = and i32 %i.f, 8192
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v126detail12count_digitsILi3EoEEiT0_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !255
  %i.au = icmp sle i32 %i.at, %i.ap
  %i.av = icmp ne i128 %1, 0
  %or.cond = and i1 %i.av, %i.au
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.not.i49 = icmp eq i32 %2, 0
  %i.aw = select i1 %.not.i49, i32 48, i32 12288
  %i.ax = or i32 %i.aw, %2
  %i.ay = add i32 %i.ax, 16777216                 ; 2 uses
  store i32 %i.ay, ptr %i.a, align 4, !tbaa !3
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %_ZN3fmt3v126detail12count_digitsILi3EoEEiT0_.exit
  %9 = phi i32 [ %i.ay, %bb.n ], [ %2, %bb.m ], [ %2, %_ZN3fmt3v126detail12count_digitsILi3EoEEiT0_.exit ]
  %i.az = zext nneg i32 %i.ap to i64              ; 3 uses
  %i.ba = icmp samesign ugt i32 %.0.i.i47, 499
  br i1 %i.ba, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i56, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i56: ; preds = %bb.o
  %spec.select.i144 = call i64 @llvm.umax.i64(i64 %i.az, i64 750) ; 2 uses
  %i.bb = call noalias ptr @malloc(i64 noundef %spec.select.i144) #40 ; 3 uses
  %.not.i.i145 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i145, label %.invoke, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i56
  store ptr %i.bb, ptr %6, align 8, !tbaa !228
  store i64 %spec.select.i144, ptr %i.b, align 8, !tbaa !229
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread: ; preds = %bb.o, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50
  %i.bc = phi ptr [ %i.bb, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50 ], [ %i.e, %bb.o ]
  store i64 %i.az, ptr %i.d, align 8, !tbaa !233
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.az
  br label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %.split.us.i.i.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread
  %.012.us.i.i.i = phi i128 [ %i.bi, %.split.us.i.i.i ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread ] ; 2 uses
  %.0.us.i.i.i = phi ptr [ %i.bh, %.split.us.i.i.i ], [ %i.bd, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i50.thread ]
  %i.be = trunc i128 %.012.us.i.i.i to i8
  %i.bf = and i8 %i.be, 7
  %i.bg = or disjoint i8 %i.bf, 48
  %i.bh = getelementptr inbounds i8, ptr %.0.us.i.i.i, i64 -1 ; 2 uses
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !9
  %i.bi = lshr i128 %.012.us.i.i.i, 3             ; 2 uses
  %.not.us.i.i.i = icmp eq i128 %i.bi, 0
  br i1 %.not.us.i.i.i, label %.loopexit, label %.split.us.i.i.i, !llvm.loop !374

bb.p:                                             ; preds = %bb.a
  %i.bj = and i32 %i.f, 8192
  %.not99 = icmp eq i32 %i.bj, 0
  br i1 %.not99, label %.preheader199, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = and i32 %i.f, 4096
  %.not100 = icmp eq i32 %i.bk, 0
  %i.bl = select i1 %.not100, i32 25136, i32 16944 ; 2 uses
  %.not.i63 = icmp eq i32 %2, 0
  %i.bm = shl nuw nsw i32 %i.bl, 8
  %i.bn = select i1 %.not.i63, i32 %i.bl, i32 %i.bm
  %i.bo = or i32 %i.bn, %2
  %i.bp = add i32 %i.bo, 33554432                 ; 2 uses
  store i32 %i.bp, ptr %i.a, align 4, !tbaa !3
  br label %.preheader199

.preheader199:                                    ; preds = %bb.q, %bb.p
  %10 = phi i32 [ %i.bp, %bb.q ], [ %2, %bb.p ]
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.preheader199
  %.03.i.i64 = phi i128 [ %1, %.preheader199 ], [ %i.br, %bb.r ]
  %.0.i.i65 = phi i32 [ 0, %.preheader199 ], [ %i.bq, %bb.r ] ; 2 uses
  %i.bq = add nuw nsw i32 %.0.i.i65, 1            ; 3 uses
  %i.br = lshr i128 %.03.i.i64, 1                 ; 2 uses
  %.not.i.i66 = icmp eq i128 %i.br, 0
  br i1 %.not.i.i66, label %_ZN3fmt3v126detail12count_digitsILi1EoEEiT0_.exit, label %bb.r, !llvm.loop !376

_ZN3fmt3v126detail12count_digitsILi1EoEEiT0_.exit: ; preds = %bb.r
  %i.bs = zext nneg i32 %i.bq to i64              ; 3 uses
  %i.bt = icmp samesign ugt i32 %.0.i.i65, 499
  br i1 %i.bt, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i81, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i81: ; preds = %_ZN3fmt3v126detail12count_digitsILi1EoEEiT0_.exit
  %spec.select.i150 = call i64 @llvm.umax.i64(i64 %i.bs, i64 750) ; 2 uses
  %i.bu = call noalias ptr @malloc(i64 noundef %spec.select.i150) #40 ; 3 uses
  %.not.i.i151 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i151, label %.invoke, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67

.invoke:                                          ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i81, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i56, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bv = call ptr @__cxa_allocate_exception(i64 8) #34 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bv, align 8, !tbaa !34
  invoke void @__cxa_throw(ptr nonnull %i.bv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
          to label %.cont unwind label %bb.i

.cont:                                            ; preds = %.invoke
  unreachable

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i81
  store ptr %i.bu, ptr %6, align 8, !tbaa !228
  store i64 %spec.select.i150, ptr %i.b, align 8, !tbaa !229
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread: ; preds = %_ZN3fmt3v126detail12count_digitsILi1EoEEiT0_.exit, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67
  %i.bw = phi ptr [ %i.bu, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67 ], [ %i.e, %_ZN3fmt3v126detail12count_digitsILi1EoEEiT0_.exit ]
  store i64 %i.bs, ptr %i.d, align 8, !tbaa !233
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bs
  br label %.split.us.i.i.i70

.split.us.i.i.i70:                                ; preds = %.split.us.i.i.i70, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread
  %.012.us.i.i.i71 = phi i128 [ %i.cc, %.split.us.i.i.i70 ], [ %1, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread ] ; 2 uses
  %.0.us.i.i.i72 = phi ptr [ %i.cb, %.split.us.i.i.i70 ], [ %i.bx, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i67.thread ]
  %i.by = trunc i128 %.012.us.i.i.i71 to i8
  %i.bz = and i8 %i.by, 1
  %i.ca = or disjoint i8 %i.bz, 48
  %i.cb = getelementptr inbounds i8, ptr %.0.us.i.i.i72, i64 -1 ; 2 uses
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !9
  %i.cc = lshr i128 %.012.us.i.i.i71, 1           ; 2 uses
  %.not.us.i.i.i73 = icmp eq i128 %i.cc, 0
  br i1 %.not.us.i.i.i73, label %.loopexit, label %.split.us.i.i.i70, !llvm.loop !374

bb.s:                                             ; preds = %bb.a
  %i.cd = trunc i128 %1 to i8
  %i.ce = and i32 %i.f, 7
  %i.cf = icmp eq i32 %i.ce, 1
  %i.cg = zext i1 %i.cf to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  store i8 %i.cg, ptr %5, align 1, !tbaa !298
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.cd, ptr %i.ch, align 1, !tbaa !300
  %i.ci = invoke ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_10write_charIcS5_EET0_S7_T_RKNS0_12format_specsEEUlS5_E_EET1_SE_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef 1, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(2) %5)
          to label %_ZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsE.exit unwind label %bb.i

_ZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsE.exit: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.z

.loopexit:                                        ; preds = %.split.us.i.i.i, %.split.i.i.i, %.split.us.i.i.i70, %_ZN3fmt3v126detail12count_digitsEo.exit
  %.0.a = phi i32 [ %8, %.split.i.i.i ], [ %2, %_ZN3fmt3v126detail12count_digitsEo.exit ], [ %10, %.split.us.i.i.i70 ], [ %9, %.split.us.i.i.i ]
  %.0 = phi i32 [ %i.ab, %.split.i.i.i ], [ %.012.i.i, %_ZN3fmt3v126detail12count_digitsEo.exit ], [ %i.bq, %.split.us.i.i.i70 ], [ %i.ap, %.split.us.i.i.i ] ; 2 uses
  %i.cj = lshr i32 %.0.a, 24
  %i.ck = add i32 %i.cj, %.0
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !40
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit
  %i.co = load ptr, ptr %4, align 8, !tbaa !87    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !40
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cq ; 3 uses
  %i.cs = getelementptr i8, ptr %i.cr, i64 -1
  br label %bb.t

bb.t:                                             ; preds = %bb.w, %.lr.ph.i
  %.08.i = phi i32 [ 0, %.lr.ph.i ], [ %i.da, %bb.w ] ; 3 uses
  %.sroa.0.07.i = phi ptr [ %i.co, %.lr.ph.i ], [ %.sroa.0.1.i, %bb.w ] ; 3 uses
  %.sroa.5.06.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cy, %bb.w ]
  %i.ct = icmp eq ptr %.sroa.0.07.i, %i.cr
  br i1 %i.ct, label %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i, label %bb.u

._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i: ; preds = %bb.t
  %.sink.i.pre.i = load i8, ptr %i.cs, align 1, !tbaa !9
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i

bb.u:                                             ; preds = %bb.t
  %i.cu = load i8, ptr %.sroa.0.07.i, align 1, !tbaa !9 ; 2 uses
  %i.cv = add i8 %i.cu, -127
  %or.cond.i.i = icmp ult i8 %i.cv, -126
  br i1 %or.cond.i.i, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 1
  br label %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i

_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i: ; preds = %bb.v, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i
  %.sink.i.i = phi i8 [ %i.cu, %bb.v ], [ %.sink.i.pre.i, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %.sroa.0.1.i = phi ptr [ %i.cw, %bb.v ], [ %i.cr, %._ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit_crit_edge.i ]
  %i.cx = sext i8 %.sink.i.i to i32
  %i.cy = add nsw i32 %.sroa.5.06.i, %i.cx        ; 2 uses
  %i.cz = icmp sgt i32 %.0, %i.cy
  br i1 %i.cz, label %bb.w, label %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit

bb.w:                                             ; preds = %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i
  %i.da = add nuw nsw i32 %.08.i, 1
  br label %bb.t

_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit: ; preds = %bb.u, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i, %.loopexit
  %.0.lcssa.i = phi i32 [ 0, %.loopexit ], [ %.08.i, %_ZNK3fmt3v126detail14digit_groupingIcE4nextERNS3_10next_stateE.exit.i ], [ %.08.i, %bb.u ]
  %i.db = add i32 %i.ck, %.0.lcssa.i
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  store ptr %i.a, ptr %7, align 8, !tbaa !147
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %4, ptr %i.dd, align 8, !tbaa !335
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %6, ptr %i.de, align 8, !tbaa !337
  %i.df = invoke ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_9write_intIS5_ocEET_S7_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS5_E_EESD_SD_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %i.dc, i64 noundef %i.dc, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.z

bb.y:                                             ; preds = %_ZNK3fmt3v126detail14digit_groupingIcE16count_separatorsEi.exit
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  br label %bb.ab

bb.z:                                             ; preds = %_ZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsE.exit, %bb.x
  %.sroa.039.0 = phi ptr [ %i.df, %bb.x ], [ %i.ci, %_ZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsE.exit ]
  %i.dh = load ptr, ptr %6, align 8, !tbaa !228   ; 2 uses
  %.not.i.i89 = icmp eq ptr %i.dh, %i.e
  br i1 %.not.i.i89, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef %i.dh) #34
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret ptr %.sroa.039.0

bb.ab:                                            ; preds = %bb.y, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.dg, %bb.y ]
  %i.di = load ptr, ptr %6, align 8, !tbaa !228   ; 2 uses
  %.not.i.i90 = icmp eq ptr %i.di, %i.e
  br i1 %.not.i.i90, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit91, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef %i.di) #34
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit91

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit91: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_9write_intIS5_ocEET_S7_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS5_E_EESD_SD_SB_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !301
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !253    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.50, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !233
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !229
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !226
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !302
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 6 uses
  %i.ac = load ptr, ptr %4, align 8, !tbaa !377, !nonnull !203, !align !208
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = and i32 %i.ad, 16777215                 ; 2 uses
  %.not6.i = icmp eq i32 %i.ae, 0
  br i1 %.not6.i, label %_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  br label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.07.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.ar, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i ] ; 2 uses
  %i.ai = trunc i32 %.07.i to i8
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !233 ; 2 uses
  %i.ak = add i64 %i.aj, 1                        ; 3 uses
  %i.al = load i64, ptr %i.ag, align 8, !tbaa !229
  %i.am = icmp ugt i64 %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !226
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ak), !inline_history !379
  %.pre.i.i.i = load i64, ptr %i.af, align 8, !tbaa !233 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i = phi i64 [ %i.ak, %bb.e ], [ %.pre2.i.i.i, %bb.f ]
  %i.ao = phi i64 [ %i.aj, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ap = load ptr, ptr %.sroa.09.0, align 8, !tbaa !228
  store i64 %.pre-phi.i.i.i, ptr %i.af, align 8, !tbaa !233
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.ai, ptr %i.aq, align 1, !tbaa !9
  %i.ar = lshr i32 %.07.i, 8                      ; 2 uses
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit, label %bb.e, !llvm.loop !380

_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit: ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !381, !nonnull !203, !align !211
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !382, !nonnull !203, !align !211 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !228
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !233
  %i.az = tail call ptr @_ZNK3fmt3v126detail14digit_groupingIcE5applyINS0_14basic_appenderIcEEcEET_S7_NS0_17basic_string_viewIT0_EE(ptr noundef nonnull align 8 dereferenceable(64) %i.at, ptr %.sroa.09.0, ptr %i.aw, i64 %i.ay) ; 2 uses
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit
  %i.ba = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.az, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.ba, %bb.g ], [ %i.az, %_ZZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEocEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_1ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !301
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !253    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.49, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !233
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !229
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !226
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !302
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

end_hunk_1
