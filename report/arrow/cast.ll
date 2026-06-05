inline.NumInlined: 2454
inline.NumDeleted: 1412
begin_hunk_0_@_ZN5arrow7compute14ScalarFunctionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsEb:bb.a
  store i64 %i.v, ptr %i.x, align 8, !tbaa !41
  store ptr %i.o, ptr %3, align 8, !tbaa !38
  store i64 0, ptr %i.w, align 8, !tbaa !41
  store i8 0, ptr %i.o, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 5 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !33
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !38  ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !41 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !38
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !40
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !40
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.pre12 = load i64, ptr %.phi.trans.insert11, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i, %bb.d
  %i.aj = phi i64 [ %.pre12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i ], [ %i.af, %bb.d ]
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %i.aj, ptr %i.al, align 8, !tbaa !41
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !38
  store i64 0, ptr %i.ak, align 8, !tbaa !41
  store i8 0, ptr %i.ac, align 8, !tbaa !40
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 72
  %i.ap = load <2 x ptr>, ptr %i.an, align 8, !tbaa !105
  store <2 x ptr> %i.ap, ptr %i.am, align 8, !tbaa !105
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !48
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 88 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 104 ; 5 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !33
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 5 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !41 ; 3 uses
  %i.bb = icmp ult i64 %i.ba, 16
  call void @llvm.assume(i1 %i.bb)
  %i.bc = add nuw nsw i64 %i.ba, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.ax, i64 %i.bc, i1 false)
  br label %_ZN5arrow7compute11FunctionDocC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !38
  %i.bd = load i64, ptr %i.ax, align 8, !tbaa !40
  store i64 %i.bd, ptr %i.av, align 8, !tbaa !40
  %.phi.trans.insert13 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.pre14 = load i64, ptr %.phi.trans.insert13, align 8, !tbaa !41
  br label %_ZN5arrow7compute11FunctionDocC2EOS1_.exit

_ZN5arrow7compute11FunctionDocC2EOS1_.exit:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i
  %i.be = phi i64 [ %i.ba, %bb.e ], [ %.pre14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 96
  store i64 %i.be, ptr %i.bg, align 8, !tbaa !41
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !38
  store i64 0, ptr %i.bf, align 8, !tbaa !41
  store i8 0, ptr %i.ax, align 8, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 120
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !106, !range !77, !noundef !78
  store i8 %i.bj, ptr %i.bh, align 8, !tbaa !106
  invoke void @_ZN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8Function4KindERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull %6, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(5) %2, ptr noundef nonnull %7, ptr noundef %4)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN5arrow7compute11FunctionDocC2EOS1_.exit
  %i.bk = load ptr, ptr %i.at, align 8, !tbaa !38 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.av
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  %i.bm = load i64, ptr %i.av, align 8, !tbaa !40
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.bo = load ptr, ptr %i.am, align 8, !tbaa !42 ; 3 uses
  %i.bp = load ptr, ptr %i.ao, align 8, !tbaa !45 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.bo, %i.bp
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.bv, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %i.bq = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !40
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bv, %i.bp
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.am, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bw = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.bx = load ptr, ptr %i.aq, align 8, !tbaa !48
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.ca) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.g, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.cb = load ptr, ptr %i.y, align 8, !tbaa !38  ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.aa
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.cd = load i64, ptr %i.aa, align 8, !tbaa !40
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.cf = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.m
  br i1 %i.cg, label %_ZN5arrow7compute11FunctionDocD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ch = load i64, ptr %i.m, align 8, !tbaa !40
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #29
  br label %_ZN5arrow7compute11FunctionDocD2Ev.exit

_ZN5arrow7compute11FunctionDocD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.cj = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.a
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !40
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  %i.cn = zext i1 %5 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute14ScalarFunctionE, i64 16), ptr %0, align 8, !tbaa !58
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.cn, ptr %i.co, align 8, !tbaa !107
  ret void

bb.h:                                             ; preds = %_ZN5arrow7compute11FunctionDocC2EOS1_.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute11FunctionDocD2Ev(ptr noundef nonnull align 8 dead_on_return(121) dereferenceable(121) %7) #26
  %i.cq = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.a
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.h
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !40
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  resume { ptr, i32 } %i.cp
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeENS0_12ScalarKernelE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::function", align 16    ; 9 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.c, align 8
  store ptr @_ZN5arrow7compute8internal14OptionsWrapperINS0_11CastOptionsEE4InitEPNS0_13KernelContextERKNS0_14KernelInitArgsE, ptr %4, align 16, !tbaa !108
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %4, align 16, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 16, i1 false), !tbaa.struct !109
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %i.a, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.f = load <2 x ptr>, ptr %i.d, align 8, !tbaa !108
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !108  ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation, ptr %i.d, align 8, !tbaa !108
  store <2 x ptr> %i.f, ptr %i.b, align 16, !tbaa !108
  store ptr @_ZNSt17_Function_handlerIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEPSE_E9_M_invokeERKSt9_Any_dataOSA_SD_, ptr %i.e, align 8, !tbaa !108
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = invoke noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #30
  unreachable

_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !65   ; 2 uses
  %i.m = load <2 x ptr>, ptr %3, align 8, !tbaa !108
  store <2 x ptr> %i.m, ptr %6, align 16, !tbaa !108
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEC2ERKS3_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEC2ERKS3_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEC2ERKS3_.exit.i.i

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEC2ERKS3_.exit.i.i: ; preds = %bb.f, %bb.e, %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEaSIRSE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERSF_E4typeEOSJ_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.s, i8 0, i64 32, i1 false)
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !110  ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEC2ERKS3_.exit.i.i
  %i.v = invoke noundef zeroext i1 %i.u(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i32 noundef 2)
          to label %bb.h unwind label %bb.i       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.w = load <2 x ptr>, ptr %i.d, align 8, !tbaa !108
  store <2 x ptr> %i.w, ptr %i.t, align 16, !tbaa !108
  br label %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %i.t, align 16, !tbaa !110 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %.body.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = invoke noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i32 noundef 3)
          to label %.body.i.i unwind label %bb.k  ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #30
  unreachable

_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i.i: ; preds = %bb.h, %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEC2ERKS3_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ae = load i64, ptr %i.ad, align 8
  store i64 %i.ae, ptr %i.ac, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !65 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ag, align 8, !tbaa !108
  store <2 x ptr> %i.aj, ptr %i.af, align 8, !tbaa !108
  %.not.i.i.i6.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i6.i.i, label %_ZN5arrow7compute12ScalarKernelC2ERKS1_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i7.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i7.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4, !tbaa !3
  br label %_ZN5arrow7compute12ScalarKernelC2ERKS1_.exit

bb.n:                                             ; preds = %bb.l
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow7compute12ScalarKernelC2ERKS1_.exit

common.resume:                                    ; preds = %bb.o, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.x, %.body.i.i ], [ %i.at, %bb.o ]
  resume { ptr, i32 } %common.resume.op

.body.i.i:                                        ; preds = %bb.j, %bb.i
  call void @_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(92) %6) #26
  br label %common.resume

_ZN5arrow7compute12ScalarKernelC2ERKS1_.exit:     ; preds = %_ZNSt8functionIFN5arrow6ResultISt10unique_ptrINS0_7compute11KernelStateESt14default_deleteIS4_EEEEPNS3_13KernelContextERKNS3_14KernelInitArgsEEEC2ERKSF_.exit.i.i, %bb.m, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ap, ptr noundef nonnull align 8 dereferenceable(20) %i.aq, i64 20, i1 false)
  invoke void @_ZN5arrow7compute14ScalarFunction9AddKernelENS0_12ScalarKernelE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(217) %1, ptr noundef nonnull %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.o

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute12ScalarKernelC2ERKS1_.exit
  %i.ar = load ptr, ptr %5, align 8, !tbaa !66    ; 2 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !66
  store ptr null, ptr %5, align 8, !tbaa !66
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.p, label %bb.v

bb.o:                                             ; preds = %_ZN5arrow7compute12ScalarKernelC2ERKS1_.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %common.resume

bb.p:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !112 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !113
  %.not.i12 = icmp eq ptr %i.aw, %i.ay
  br i1 %.not.i12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %2, ptr %i.aw, align 4, !tbaa !114
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  store ptr %i.az, ptr %i.av, align 8, !tbaa !112
  br label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE9push_backERKS2_.exit

bb.r:                                             ; preds = %bb.p
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !115 ; 4 uses
  %i.bb = ptrtoint ptr %i.aw to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775804
  br i1 %i.be, label %bb.s, label %_ZNKSt6vectorIN5arrow4Type4typeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.s:                                             ; preds = %bb.r
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #27
  unreachable

_ZNKSt6vectorIN5arrow4Type4typeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.r
  %i.bf = ashr exact i64 %i.bd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bg, i64 2305843009213693951)
  %i.bj = select i1 %i.bh, i64 2305843009213693951, i64 %i.bi ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bj, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #28 ; 4 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store i32 %2, ptr %i.bm, align 4, !tbaa !114
  %i.bn = icmp sgt i64 %i.bd, 0
  br i1 %i.bn, label %bb.t, label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.t:                                             ; preds = %_ZNKSt6vectorIN5arrow4Type4typeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal14OptionsWrapperINS0_11CastOptionsEE4InitEPNS0_13KernelContextERKNS0_14KernelInitArgsE:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 5 uses
  %.not.not = icmp eq ptr %i.b, null
  br i1 %.not.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28, !noalias !123 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load <2 x ptr>, ptr %i.d, align 8, !tbaa !108, !noalias !123
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !65, !noalias !123 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.f, align 8, !tbaa !108, !noalias !123
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !123
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.j, align 4, !tbaa !3, !noalias !123
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !3, !noalias !123
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4, !noalias !123 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.p, ptr noundef nonnull align 8 dereferenceable(6) %i.o, i64 6, i1 false), !noalias !123
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute8internal14OptionsWrapperINS0_11CastOptionsEEE, i64 16), ptr %i.c, align 8, !tbaa !58, !noalias !123
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11CastOptionsE, i64 16), ptr %i.q, align 8, !tbaa !58, !noalias !123
  store <2 x ptr> %i.e, ptr %i.r, align 8, !tbaa !108, !noalias !123
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store <2 x ptr> %i.i, ptr %i.s, align 8, !tbaa !108, !noalias !123
  store ptr null, ptr %0, align 8, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.t, align 8, !tbaa !126
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @_ZN5arrow6Status8FromArgsIJRA62_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(62) @.str.44)
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute11KernelStateESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  %i.u = load ptr, ptr %3, align 8, !tbaa !66     ; 2 uses
  %.not.i4 = icmp eq ptr %i.u, null
  br i1 %.not.i4, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h, !prof !69

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !70, !range !77, !noundef !78
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

declare void @_ZN5arrow7compute14ScalarFunction9AddKernelENS0_12ScalarKernelE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(217), ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !57
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !129
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !129
  br label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !110  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #30
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZNSt12__shared_ptrIN5arrow7compute11KernelStateELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !65   ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.y, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.z, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !57
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !58
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #26, !inline_history !130
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !58
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #26, !inline_history !130
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i2 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i2, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

bb.n:                                             ; preds = %bb.l
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i4 = phi i32 [ %i.ac, %bb.m ], [ %i.am, %bb.n ]
  %i.an = icmp eq i32 %.0.i.i.i.i4, 1
  br i1 %i.an, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #26
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal12CastFunction9AddKernelENS_4Type4typeESt6vectorINS0_9InputTypeESaIS6_EENS0_10OutputTypeEPFNS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEENS0_12NullHandling4typeENS0_13MemAllocation4typeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(252) %1, i32 noundef %2, ptr nofree noundef captures(none) %3, ptr noundef nonnull %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 21 uses
  %9 = alloca %"class.std::shared_ptr.31", align 16 ; 7 uses
  %10 = alloca %"class.std::vector.40", align 16  ; 7 uses
  %11 = alloca %"class.arrow::compute::OutputType", align 8 ; 6 uses
  %12 = alloca %"class.std::shared_ptr.51", align 8 ; 4 uses
  %13 = alloca %"struct.arrow::compute::ScalarKernel", align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(92) %8, i8 0, i64 48, i1 false)
  store i8 1, ptr %i.a, align 16, !tbaa !131
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, i8 0, i64 20, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i8 1, ptr %i.c, align 16, !tbaa !140
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 84 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !144
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.g = load <2 x ptr>, ptr %3, align 8, !tbaa !146
  store <2 x ptr> %i.g, ptr %10, align 16, !tbaa !146
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !148
  store ptr %i.j, ptr %i.h, align 16, !tbaa !148
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  invoke void @_ZN5arrow7compute10OutputTypeC2EOS1_(ptr noundef nonnull align 8 dereferenceable(56) %11, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.b unwind label %bb.ah

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow7compute15KernelSignature4MakeESt6vectorINS0_9InputTypeESaIS3_EENS0_10OutputTypeEbSt10shared_ptrINS0_15MatchConstraintEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.31") align 8 %9, ptr noundef nonnull %10, ptr noundef nonnull %11, i1 noundef zeroext false, ptr noundef nonnull %12)
          to label %bb.c unwind label %bb.ai

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.m = load <2 x ptr>, ptr %9, align 16, !tbaa !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !65   ; 8 uses
  store <2 x ptr> %i.m, ptr %8, align 16, !tbaa !108
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.o, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !57
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #26, !inline_history !150
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !58
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #26, !inline_history !150
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.r, %bb.g ], [ %i.ab, %bb.h ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.i, label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit, !prof !37

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #26
  br label %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit

_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit: ; preds = %bb.c, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.i
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !65  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.ae, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !57
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #26, !inline_history !130
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !58
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #26, !inline_history !130
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ah, %bb.m ], [ %i.ar, %bb.n ]
  %i.as = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.as, label %bb.o, label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #26
  br label %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow7compute15KernelSignatureEEaSEOS3_.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !65 ; 8 uses
  %.not.i.i11 = icmp eq ptr %i.au, null
  br i1 %.not.i.i11, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 4 uses
  %i.aw = load atomic i64, ptr %i.av acquire, align 8 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 4294967297
  %i.ay = trunc i64 %i.aw to i32                  ; 2 uses
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.av, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.az, align 4, !tbaa !57
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !58
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #26, !inline_history !151
  %i.bd = load ptr, ptr %i.au, align 8, !tbaa !58
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #26, !inline_history !151
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i12 = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i.i12, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = add nsw i32 %i.ay, -1
  store i32 %i.bh, ptr %i.av, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13

bb.t:                                             ; preds = %bb.r
  %i.bi = atomicrmw volatile add ptr %i.av, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i14 = phi i32 [ %i.ay, %bb.s ], [ %i.bi, %bb.t ]
  %i.bj = icmp eq i32 %.0.i.i.i.i14, 1
  br i1 %i.bj, label %bb.u, label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au) #26
  br label %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15KernelSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13, %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !110 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i15, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow7compute15MatchConstraintELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.bn = invoke noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %i.bm, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.w ; 0 uses

end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal15GetCastFunctionERKNS_8DataTypeE:bb.a
  br i1 %i.v, label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !215

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.020.i.i.i.i = phi ptr [ %i.w, %bb.h ], [ %i.r, %bb.g ]
  %i.w = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !210 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3    ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = urem i64 %i.z, %i.m
  %.not19.i.i.i.i = icmp eq i64 %i.aa, %i.n
  br i1 %.not19.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !215

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.i
  br label %.loopexit, !llvm.loop !215

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %.preheader, %..loopexit_crit_edge21.i.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26, !noalias !216
  call void @_ZN5arrow8internal12JoinToStringIJRA21_KcRKNS_8DataTypeEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(21) @.str.16, ptr noundef nonnull align 8 dereferenceable(72) %1), !noalias !216
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.loopexit
  %i.ab = load ptr, ptr %2, align 8, !tbaa !38, !noalias !216 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZN5arrow6Status14NotImplementedIJRA21_KcRKNS_8DataTypeEEEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !40, !noalias !216
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #29
  br label %_ZN5arrow6Status14NotImplementedIJRA21_KcRKNS_8DataTypeEEEES0_DpOT_.exit

bb.k:                                             ; preds = %.loopexit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %2, align 8, !tbaa !38, !noalias !216 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.k
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !40, !noalias !216
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !216
  br label %common.resume

_ZN5arrow6Status14NotImplementedIJRA21_KcRKNS_8DataTypeEEEES0_DpOT_.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26, !noalias !216
  call void @_ZN5arrow6ResultISt10shared_ptrINS_7compute8internal12CastFunctionEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %i.am = load ptr, ptr %4, align 8, !tbaa !66    ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.l, !prof !69

bb.l:                                             ; preds = %_ZN5arrow6Status14NotImplementedIJRA21_KcRKNS_8DataTypeEEEES0_DpOT_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !70, !range !77, !noundef !78
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %_ZN5arrow6StatusD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6Status14NotImplementedIJRA21_KcRKNS_8DataTypeEEEES0_DpOT_.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %_ZN5arrow6ResultISt10shared_ptrINS_7compute8internal12CastFunctionEEEC2IRS5_vEEOT_.exit

_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.e ], [ %i.r, %bb.g ], [ %i.w, %bb.h ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  store ptr null, ptr %0, align 8, !tbaa !66
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !65 ; 2 uses
  %i.au = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !108
  store <2 x ptr> %i.au, ptr %i.ar, align 8, !tbaa !108
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_7compute8internal12CastFunctionEEEC2IRS5_vEEOT_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !3
  br label %_ZN5arrow6ResultISt10shared_ptrINS_7compute8internal12CastFunctionEEEC2IRS5_vEEOT_.exit

bb.p:                                             ; preds = %bb.n
  %i.az = atomicrmw volatile add ptr %i.av, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6ResultISt10shared_ptrINS_7compute8internal12CastFunctionEEEC2IRS5_vEEOT_.exit

_ZN5arrow6ResultISt10shared_ptrINS_7compute8internal12CastFunctionEEEC2IRS5_vEEOT_.exit: ; preds = %bb.p, %bb.o, %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_7compute8internal12CastFunctionEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.9", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !66
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !66
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !37

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !40
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !38     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.m = load ptr, ptr %3, align 8, !tbaa !38     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #30
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5arrow7compute11CastOptionsC2Eb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(46) initializes((0, 46)) %0, i1 noundef zeroext %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_116kCastOptionsTypeE, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8, !tbaa !221
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11CastOptionsE, i64 16), ptr %0, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = xor i1 %1, true
  %i.f = zext i1 %i.e to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.d, i8 %i.f, i64 6, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5arrow7compute11CastOptions7is_safeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(46) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load <4 x i8>, ptr %i.a, align 8
  %.fr = freeze <4 x i8> %i.b
  %i.c = trunc <4 x i8> %.fr to <4 x i1>
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i8, ptr %i.d, align 4, !range !77
  %.fr14 = freeze i8 %i.e
  %i.f = trunc i8 %.fr14 to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.h = load i8, ptr %i.g, align 1, !range !77
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = bitcast <4 x i1> %i.c to i4
  %i.k = icmp ne i4 %i.j, 0
  %op.rdx = or i1 %i.k, %i.f
  %op.rdx12 = select i1 %op.rdx, i1 true, i1 %i.i
  %i.l = xor i1 %op.rdx12, true
  ret i1 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5arrow7compute11CastOptions9is_unsafeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(46) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load <4 x i8>, ptr %i.a, align 8
  %.fr = freeze <4 x i8> %i.b
  %i.c = trunc <4 x i8> %.fr to <4 x i1>
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i8, ptr %i.d, align 4, !range !77
  %.fr14 = freeze i8 %i.e
  %i.f = trunc i8 %.fr14 to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.h = load i8, ptr %i.g, align 1, !range !77
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = bitcast <4 x i1> %i.c to i4
  %i.k = icmp eq i4 %i.j, -1
  %op.rdx = and i1 %i.k, %i.f
  %op.rdx12 = select i1 %op.rdx, i1 %i.i, i1 false
  ret i1 %op.rdx12
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute4CastERKNS_5DatumERKNS0_11CastOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.88") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(46) %2, ptr noundef %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %4 = alloca %class.anon.177, align 1            ; 3 uses
  %5 = alloca %class.anon.177, align 1            ; 3 uses
  %6 = alloca %class.anon.162, align 8            ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::vector.92", align 8    ; 11 uses
  %9 = alloca [1 x %"struct.arrow::Datum"], align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !33
  store i32 1953718627, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 4, ptr %i.b, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i8 0, ptr %i.c, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i8 -1, ptr %i.d, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  store ptr %9, ptr %6, align 8, !tbaa !225
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.b unwind label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %9) #26
  br label %.body

bb.b:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i8, ptr %i.f, align 8, !tbaa !223
  store i8 %i.g, ptr %i.d, align 8, !tbaa !223
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %i.h = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i.i unwind label %.thread ; 4 uses

.thread:                                          ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body13

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.h, ptr %8, align 8, !tbaa !228
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !231
  %i.m = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN5arrow5DatumEPS1_ET0_T_S6_S5_(ptr noundef nonnull %9, ptr noundef nonnull %i.j, ptr noundef nonnull %i.h)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 24) #29
  br label %.body13

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EE11_M_allocateEm.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8, !tbaa !232
  invoke void @_ZN5arrow7compute12CallFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_5DatumESaISA_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.88") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %2, ptr noundef %3)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %8, align 8, !tbaa !228    ; 3 uses
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !232  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.p, %i.q
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i ], [ %i.p, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #30
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i:     ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.q
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !233

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !228
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.e
  %i.u = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.p, %bb.e ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !231
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.y) #29
  br label %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit

_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit:     ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #30
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ab = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.a
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow5DatumD2Ev.exit
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !40
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow5DatumD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void

bb.i:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #26
  br label %.body13

.body13:                                          ; preds = %.thread, %bb.c, %bb.i
  %.pn = phi { ptr, i32 } [ %i.af, %bb.i ], [ %i.i, %.thread ], [ %i.n, %bb.c ]
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #26
  br label %.body

.body:                                            ; preds = %.body13, %bb.a
  %.pn.pn = phi { ptr, i32 } [ %i.e, %bb.a ], [ %.pn, %.body13 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.ag = load ptr, ptr %7, align 8, !tbaa !38    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.a
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %.body
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !40
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN5arrow7compute12CallFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_5DatumESaISA_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.88") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.177, align 1            ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(17) %0)
          to label %_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  call void @__clang_call_terminate(ptr %i.b) #30
  unreachable

_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN5arrow5DatumESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.177, align 1            ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !228    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.f, %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i)
          to label %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #30
  unreachable

_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i:       ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !233

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN5arrow5DatumEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !228
  br label %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.g = phi ptr [ %.pr, %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !231
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #29
  br label %_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN5arrow5DatumESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow5DatumES1_EvT_S3_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute4CastERKNS_5DatumERKNS_10TypeHolderERKNS0_11CastOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.88") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(46) %3, ptr noundef %4) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::compute::CastOptions", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11CastOptionsE, i64 16), ptr %5, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.d = load <2 x ptr>, ptr %i.b, align 8, !tbaa !108
  store <2 x ptr> %i.d, ptr %i.a, align 8, !tbaa !108
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !65   ; 3 uses
  %i.j = load <2 x ptr>, ptr %i.f, align 8, !tbaa !108
  store <2 x ptr> %i.j, ptr %i.e, align 8, !tbaa !108
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow7compute11CastOptionsC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.k, align 4, !tbaa !3
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !3
  br label %_ZN5arrow7compute11CastOptionsC2ERKS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !65
  br label %_ZN5arrow7compute11CastOptionsC2ERKS1_.exit

_ZN5arrow7compute11CastOptionsC2ERKS1_.exit:      ; preds = %bb.a, %bb.c, %bb.d
  %i.p = phi ptr [ null, %bb.a ], [ %i.i, %bb.c ], [ %.pre, %bb.d ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.q, ptr noundef nonnull align 8 dereferenceable(6) %i.r, i64 6, i1 false)
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !234
  store <2 x ptr> %i.s, ptr %i.c, align 8, !tbaa !234
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !65   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.p
  br i1 %.not.i.i.i.i, label %_ZN5arrow10TypeHolderaSERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow7compute11CastOptionsC2ERKS1_.exit
  %.not7.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not7.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i5 = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load i32, ptr %i.v, align 4, !tbaa !3
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.v, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.z = atomicrmw volatile add ptr %i.v, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !65
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.e
  %i.aa = phi ptr [ %i.p, %bb.e ], [ %i.p, %bb.g ], [ %.pr.pre.i.i.i.i, %bb.h ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ab, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !57
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !58
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #26, !inline_history !235
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #26, !inline_history !235
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i9.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.ae, %bb.l ], [ %i.ao, %bb.m ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.n, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !37

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.u, ptr %i.g, align 8, !tbaa !65
  br label %_ZN5arrow10TypeHolderaSERKS0_.exit

_ZN5arrow10TypeHolderaSERKS0_.exit:               ; preds = %_ZN5arrow7compute11CastOptionsC2ERKS1_.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
  invoke void @_ZN5arrow7compute4CastERKNS_5DatumERKNS0_11CastOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.88") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(46) %5, ptr noundef %4)
          to label %bb.o unwind label %bb.v

bb.o:                                             ; preds = %_ZN5arrow10TypeHolderaSERKS0_.exit
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11CastOptionsE, i64 16), ptr %5, align 8, !tbaa !58
  %i.aq = load ptr, ptr %i.g, align 8, !tbaa !65  ; 8 uses
  %.not.i.i.i.i6 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i6, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ar, align 8, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !57
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !58
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #26, !inline_history !236
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !58
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #26, !inline_history !236
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i7 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i.i7, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8

bb.t:                                             ; preds = %bb.r
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i9 = phi i32 [ %i.au, %bb.s ], [ %i.be, %bb.t ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i.i9, 1
  br i1 %i.bf, label %bb.u, label %_ZN5arrow7compute11CastOptionsD2Ev.exit, !prof !37

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #26, !inline_history !237
  br label %_ZN5arrow7compute11CastOptionsD2Ev.exit

_ZN5arrow7compute11CastOptionsD2Ev.exit:          ; preds = %bb.o, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i8, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.v:                                             ; preds = %_ZN5arrow10TypeHolderaSERKS0_.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow7compute11CastOptionsD2Ev(ptr noundef nonnull align 8 dereferenceable(46) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %i.bg
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute11CastOptionsD2Ev(ptr noundef nonnull align 8 dereferenceable(46) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow7compute11CastOptionsE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow10TypeHolderD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !54
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !57
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !238
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26, !inline_history !238
  br label %_ZN5arrow10TypeHolderD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN5arrow10TypeHolderD2Ev.exit, !prof !37

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #26
  br label %_ZN5arrow10TypeHolderD2Ev.exit

_ZN5arrow10TypeHolderD2Ev.exit:                   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute4CastERKNS_5ArrayERKNS_10TypeHolderERKNS0_11CastOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.131") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(46) %3, ptr noundef %4) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.177, align 1            ; 3 uses
  %6 = alloca %class.anon.177, align 1            ; 3 uses
  %7 = alloca %class.anon.177, align 1            ; 3 uses
  %8 = alloca %"class.arrow::Result.88", align 8  ; 14 uses
  %9 = alloca %"struct.arrow::Datum", align 8     ; 7 uses
  %10 = alloca %"struct.arrow::Datum", align 16   ; 8 uses
  %11 = alloca %"class.std::shared_ptr.135", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @_ZN5arrow5DatumC1ERKNS_5ArrayE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(32) %1)
  invoke void @_ZN5arrow7compute4CastERKNS_5DatumERKNS_10TypeHolderERKNS0_11CastOptionsEPNS0_11ExecContextE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.88") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(46) %3, ptr noundef %4)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %_ZN5arrow5DatumD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  call void @__clang_call_terminate(ptr %i.b) #30
  unreachable

_ZN5arrow5DatumD2Ev.exit:                         ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  %i.c = load ptr, ptr %8, align 8, !tbaa !66
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.f, label %bb.d, !prof !69

bb.d:                                             ; preds = %_ZN5arrow5DatumD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.n

bb.f:                                             ; preds = %_ZN5arrow5DatumD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !223, !noalias !245 ; 2 uses
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.g, label %.sink.split.i.i.i.i.i.i.i.i.i.i

.sink.split.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.k = load <2 x ptr>, ptr %i.i, align 8, !tbaa !108, !noalias !245
  store ptr null, ptr %i.j, align 8, !tbaa !65, !noalias !245
  store <2 x ptr> %i.k, ptr %10, align 16, !tbaa !108, !alias.scope !245
  store ptr null, ptr %i.i, align 8, !tbaa !108, !noalias !245
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i8 %i.g, ptr %i.l, align 16, !tbaa !223, !alias.scope !245
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  invoke void @_ZNK5arrow5Datum10make_arrayEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.135") align 8 %11, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.i

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g
  store ptr null, ptr %0, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load <2 x ptr>, ptr %11, align 16, !tbaa !108
  store <2 x ptr> %i.n, ptr %i.m, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %_ZN5arrow5DatumD2Ev.exit12 unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #30
  unreachable

_ZN5arrow5DatumD2Ev.exit12:                       ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @_ZN5arrow5DatumD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.n

bb.j:                                             ; preds = %_ZN5arrow5DatumD2Ev.exit12, %bb.d
  %i.r = load ptr, ptr %8, align 8, !tbaa !66     ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.k, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !69

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #30
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i:    ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %.pr.i = load ptr, ptr %8, align 8, !tbaa !66   ; 2 uses
  %.not.i.i13 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i13, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, !prof !246

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %bb.j
  %i.w = phi ptr [ %.pr.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i ], [ %i.r, %bb.j ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !70, !range !77, !noundef !78
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #26
  br label %_ZN5arrow6ResultINS_5DatumEED2Ev.exit

_ZN5arrow6ResultINS_5DatumEED2Ev.exit:            ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.i, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  ret void

bb.n:                                             ; preds = %bb.i, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.e, %bb.e ]
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN5arrow5DatumC1ERKNS_5ArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.9", align 1  ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !66
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !66
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !37

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !38     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !40
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !38     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !40
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.m = load ptr, ptr %3, align 8, !tbaa !38     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #30
  unreachable
}

declare void @_ZNK5arrow5Datum10make_arrayEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.135") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultINS_5DatumEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.177, align 1            ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread, !prof !69

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS3_6ScalarEES6_INS3_9ArrayDataEES6_INS3_12ChunkedArrayEES6_INS3_11RecordBatchEES6_INS3_5TableEEEE8_M_resetEvEUlOT_E_JRSt7variantIJS5_S8_SA_SC_SE_SG_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #30
  unreachable

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit:      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %.pr = load ptr, ptr %0, align 8, !tbaa !66     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread, !prof !246

_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit
  %i.f = phi ptr [ %.pr, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !70, !range !77, !noundef !78
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit, %_ZN5arrow6ResultINS_5DatumEE7DestroyEv.exit.thread, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5arrow7compute7CanCastERKNS_8DataTypeES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon, align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_113InitCastTableEv, ptr %2, align 8, !tbaa !108
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !108
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvvEJEEvRS_OT_DpOT0_EUlvE_EERS6_ENUlvE_8__invokeEv, ptr %i.b, align 8, !tbaa !108
  %i.c = invoke noundef i32 @pthread_once(ptr noundef nonnull @_ZN5arrow7compute8internal12_GLOBAL__N_122cast_table_initializedE, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i:              ; preds = %bb.a
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN5arrow7compute8internal12_GLOBAL__N_119EnsureInitCastTableEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.c) #27
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.a, align 8, !tbaa !108
  store ptr null, ptr %i.b, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  resume { ptr, i32 } %i.d

_ZN5arrow7compute8internal12_GLOBAL__N_119EnsureInitCastTableEv.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i
  store ptr null, ptr %i.a, align 8, !tbaa !108
  store ptr null, ptr %i.b, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !188  ; 4 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_112g_cast_tableE, i64 24), align 8, !tbaa !202
  %.not.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.f

.preheader:                                       ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_119EnsureInitCastTableEv.exit, %bb.e
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.e ], [ getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_112g_cast_tableE, i64 16), %_ZN5arrow7compute8internal12_GLOBAL__N_119EnsureInitCastTableEv.exit ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !210 ; 4 uses
  %i.h = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.h, label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit.thread, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3
  %i.k = icmp eq i32 %i.f, %i.j
  br i1 %i.k, label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit, label %.preheader, !llvm.loop !211

bb.f:                                             ; preds = %_ZN5arrow7compute8internal12_GLOBAL__N_119EnsureInitCastTableEv.exit
  %i.l = sext i32 %i.f to i64
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_112g_cast_tableE, i64 8), align 8, !tbaa !212 ; 2 uses
  %i.n = urem i64 %i.l, %i.m                      ; 2 uses
  %i.o = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_112g_cast_tableE, align 8, !tbaa !213
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !214  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !210  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !3
  %i.u = icmp eq i32 %i.f, %i.t
  br i1 %i.u, label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.v = icmp eq i32 %i.f, %i.y
  br i1 %i.v, label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !215

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.020.i.i.i.i = phi ptr [ %i.w, %bb.h ], [ %i.r, %bb.g ]
  %i.w = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !210 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit.thread, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3    ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = urem i64 %i.z, %i.m
  %.not19.i.i.i.i = icmp eq i64 %i.aa, %i.n
  br i1 %.not19.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !215

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.i
  br label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit.thread, !llvm.loop !215

_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit: ; preds = %bb.h, %bb.e, %bb.g
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.e ], [ %i.r, %bb.g ], [ %i.w, %bb.h ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !247 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 224
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !108 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 232
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !108 ; 2 uses
  %.not29 = icmp eq ptr %i.ae, %i.ag
  br i1 %.not29, label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !188
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph
  %.sroa.011.026 = phi ptr [ %i.ae, %.lr.ph ], [ %i.ak, %bb.j ] ; 2 uses
  %i.aj = load i32, ptr %.sroa.011.026, align 4, !tbaa !114
  %.not = icmp eq i32 %i.ai, %i.aj                ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.011.026, i64 4 ; 2 uses
  %.not30 = icmp eq ptr %i.ak, %i.ag
  %or.cond = select i1 %.not, i1 true, i1 %.not30
  br i1 %or.cond, label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit.thread, label %bb.j

_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit.thread: ; preds = %.lr.ph.i.i.i.i, %.preheader, %bb.j, %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit, %bb.f, %..loopexit_crit_edge21.i.i.i.i
  %.4 = phi i1 [ %.not, %bb.j ], [ false, %..loopexit_crit_edge21.i.i.i.i ], [ false, %.preheader ], [ false, %bb.f ], [ false, %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEE4findERSB_.exit ], [ false, %.lr.ph.i.i.i.i ]
  ret i1 %.4
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8internal12CastFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(252) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute8internal12CastFunctionE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #29
  br label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit

_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEEE, i64 16), ptr %0, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !250  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !251  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i.i ], [ %i.i, %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit ] ; 2 uses
  tail call void @_ZN5arrow7compute6KernelD2Ev(ptr noundef nonnull align 8 dereferenceable(92) %.05.i.i.i.i) #26, !inline_history !252
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 96 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.l, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !253

_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.h, align 8, !tbaa !250
  br label %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit
  %i.m = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.i, %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i1.i.i, label %_ZN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !254
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #29, !inline_history !252
  br label %_ZN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEED2Ev.exit

_ZN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5arrow7compute12ScalarKernelES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.c
  tail call void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(217) %0) #26, !inline_history !252
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8internal12CastFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(252) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute8internal12CastFunctionE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !115  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #29, !inline_history !255
  br label %_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN5arrow4Type4typeESaIS2_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute6detail12FunctionImplINS0_12ScalarKernelEEE, i64 16), ptr %0, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !250  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal12_GLOBAL__N_113InitCastTableEv:bb.a
  %.0.i.i.i.i.i.i.i.i.i78 = phi i32 [ %i.en, %bb.at ], [ %i.ex, %bb.au ]
  %i.ey = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i78, 1
  br i1 %i.ey, label %bb.av, label %_ZSt8_DestroyISt10shared_ptrIN5arrow7compute8internal12CastFunctionEEEvPT_.exit.i.i.i79, !prof !37

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i77
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ej) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow7compute8internal12CastFunctionEEEvPT_.exit.i.i.i79

_ZSt8_DestroyISt10shared_ptrIN5arrow7compute8internal12CastFunctionEEEvPT_.exit.i.i.i79: ; preds = %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i77, %bb.ar, %.lr.ph.i.i.i73
  %i.ez = getelementptr inbounds nuw i8, ptr %.05.i.i.i74, i64 16 ; 2 uses
  %.not.i.i.i80 = icmp eq ptr %i.ez, %i.eh
  br i1 %.not.i.i.i80, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow7compute8internal12CastFunctionEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i81, label %.lr.ph.i.i.i73, !llvm.loop !275

_ZSt8_DestroyIPSt10shared_ptrIN5arrow7compute8internal12CastFunctionEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i81: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow7compute8internal12CastFunctionEEEvPT_.exit.i.i.i79
  %.pr.i82 = load ptr, ptr %5, align 8, !tbaa !271
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow7compute8internal12CastFunctionEES5_EvT_S7_RSaIT0_E.exit.i83

_ZSt8_DestroyIPSt10shared_ptrIN5arrow7compute8internal12CastFunctionEES5_EvT_S7_RSaIT0_E.exit.i83: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow7compute8internal12CastFunctionEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i81, %bb.ap
  %i.fa = phi ptr [ %.pr.i82, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow7compute8internal12CastFunctionEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i81 ], [ %i.eg, %bb.ap ] ; 3 uses
  %.not.i.i1.i84 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i1.i84, label %_ZNSt6vectorISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev.exit85, label %bb.aw

bb.aw:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow7compute8internal12CastFunctionEES5_EvT_S7_RSaIT0_E.exit.i83
  %i.fb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !276
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %i.fa to i64
  %i.ff = sub i64 %i.fd, %i.fe
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.ff) #29
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev.exit85

_ZNSt6vectorISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev.exit85: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow7compute8internal12CastFunctionEES5_EvT_S7_RSaIT0_E.exit.i83, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @_ZN5arrow7compute8internal17GetExtensionCastsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.149") align 8 %6)
  %.val = load ptr, ptr %6, align 8, !tbaa !269
  %i.fg = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.val3 = load ptr, ptr %i.fg, align 8, !tbaa !269
  invoke fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_116AddCastFunctionsERKSt6vectorISt10shared_ptrINS1_12CastFunctionEESaIS6_EE(ptr %.val, ptr %.val3)
          to label %bb.ax unwind label %bb.bl

bb.ax:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev.exit85
  %i.fh = load ptr, ptr %6, align 8, !tbaa !271   ; 3 uses
  %i.fi = load ptr, ptr %i.fg, align 8, !tbaa !273 ; 2 uses
  %.not4.i.i.i86 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not4.i.i.i86, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow7compute8internal12CastFunctionEES5_EvT_S7_RSaIT0_E.exit.i97, label %.lr.ph.i.i.i87

.lr.ph.i.i.i87:                                   ; preds = %bb.ax, %_ZSt8_DestroyISt10shared_ptrIN5arrow7compute8internal12CastFunctionEEEvPT_.exit.i.i.i93
  %.05.i.i.i88 = phi ptr [ %i.ga, %_ZSt8_DestroyISt10shared_ptrIN5arrow7compute8internal12CastFunctionEEEvPT_.exit.i.i.i93 ], [ %i.fh, %bb.ax ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.05.i.i.i88, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !65 ; 8 uses
  %.not.i.i.i.i.i.i.i89 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i.i.i.i.i89, label %_ZSt8_DestroyISt10shared_ptrIN5arrow7compute8internal12CastFunctionEEEvPT_.exit.i.i.i93, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i.i.i87
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8 ; 4 uses
  %i.fm = load atomic i64, ptr %i.fl acquire, align 8 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 4294967297
  %i.fo = trunc i64 %i.fm to i32                  ; 2 uses
  br i1 %i.fn, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.fl, align 8, !tbaa !54
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  store i32 0, ptr %i.fp, align 4, !tbaa !57
  %i.fq = load ptr, ptr %i.fk, align 8, !tbaa !58
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #26, !inline_history !274
  %i.ft = load ptr, ptr %i.fk, align 8, !tbaa !58
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.fv = load ptr, ptr %i.fu, align 8
  call void %i.fv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #26, !inline_history !274
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow7compute8internal12CastFunctionEEEvPT_.exit.i.i.i93

bb.ba:                                            ; preds = %bb.ay
  %i.fw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i90 = icmp eq i8 %i.fw, 0
  br i1 %.not.i.i.i.i.i.i.i.i90, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fx = add nsw i32 %i.fo, -1
  store i32 %i.fx, ptr %i.fl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i91

bb.bc:                                            ; preds = %bb.ba
  %i.fy = atomicrmw volatile add ptr %i.fl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i91

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i91: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i.i.i.i.i.i92 = phi i32 [ %i.fo, %bb.bb ], [ %i.fy, %bb.bc ]
  %i.fz = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i92, 1
  br i1 %i.fz, label %bb.bd, label %_ZSt8_DestroyISt10shared_ptrIN5arrow7compute8internal12CastFunctionEEEvPT_.exit.i.i.i93, !prof !37

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i91
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fk) #26
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow7compute8internal12CastFunctionEEEvPT_.exit.i.i.i93

_ZSt8_DestroyISt10shared_ptrIN5arrow7compute8internal12CastFunctionEEEvPT_.exit.i.i.i93: ; preds = %bb.bd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i91, %bb.az, %.lr.ph.i.i.i87
  %i.ga = getelementptr inbounds nuw i8, ptr %.05.i.i.i88, i64 16 ; 2 uses
  %.not.i.i.i94 = icmp eq ptr %i.ga, %i.fi
  br i1 %.not.i.i.i94, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow7compute8internal12CastFunctionEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i95, label %.lr.ph.i.i.i87, !llvm.loop !275

_ZSt8_DestroyIPSt10shared_ptrIN5arrow7compute8internal12CastFunctionEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i95: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow7compute8internal12CastFunctionEEEvPT_.exit.i.i.i93
  %.pr.i96 = load ptr, ptr %6, align 8, !tbaa !271
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow7compute8internal12CastFunctionEES5_EvT_S7_RSaIT0_E.exit.i97

_ZSt8_DestroyIPSt10shared_ptrIN5arrow7compute8internal12CastFunctionEES5_EvT_S7_RSaIT0_E.exit.i97: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow7compute8internal12CastFunctionEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i95, %bb.ax
  %i.gb = phi ptr [ %.pr.i96, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow7compute8internal12CastFunctionEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i95 ], [ %i.fh, %bb.ax ] ; 3 uses
  %.not.i.i1.i98 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i1.i98, label %_ZNSt6vectorISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev.exit99, label %bb.be

bb.be:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow7compute8internal12CastFunctionEES5_EvT_S7_RSaIT0_E.exit.i97
  %i.gc = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !276
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = ptrtoint ptr %i.gb to i64
  %i.gg = sub i64 %i.ge, %i.gf
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gg) #29
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev.exit99

_ZNSt6vectorISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev.exit99: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow7compute8internal12CastFunctionEES5_EvT_S7_RSaIT0_E.exit.i97, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  ret void

bb.bf:                                            ; preds = %bb.a
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %bb.bm

bb.bg:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev.exit
  %i.gi = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %1) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.bm

bb.bh:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev.exit29
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.bm

bb.bi:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev.exit43
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.bm

bb.bj:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev.exit57
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.bm

bb.bk:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev.exit71
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.bm

bb.bl:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev.exit85
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf
  %.pn = phi { ptr, i32 } [ %i.gn, %bb.bl ], [ %i.gm, %bb.bk ], [ %i.gl, %bb.bj ], [ %i.gk, %bb.bi ], [ %i.gj, %bb.bh ], [ %i.gi, %bb.bg ], [ %i.gh, %bb.bf ]
  resume { ptr, i32 } %.pn
}

declare void @__once_proxy() #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #17

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvvEJEEvRS_OT_DpOT0_EUlvE_EERS6_ENUlvE_8__invokeEv() #6 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !277, !nonnull !78
  tail call void %i.c(), !inline_history !279
  ret void
}

declare i32 @pthread_once(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow7compute8internal12_GLOBAL__N_116AddCastFunctionsERKSt6vectorISt10shared_ptrINS1_12CastFunctionEESaIS6_EE(ptr nofree readonly captures(address) %.0.val, ptr nofree readnone captures(address) %.8.val) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.std::_Hashtable<int, std::pair<const int, std::shared_ptr<arrow::compute::internal::CastFunction>>, std::allocator<std::pair<const int, std::shared_ptr<arrow::compute::internal::CastFunction>>>, std::__detail::_Select1st, std::equal_to<int>, std::hash<int>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = icmp eq ptr %.0.val, %.8.val
  br i1 %i.a, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEaSERKS4_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEaSERKS4_.exit
  %.sroa.01.06 = phi ptr [ %.0.val, %.lr.ph ], [ %i.ba, %_ZNSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEaSERKS4_.exit ] ; 4 uses
  %i.c = load ptr, ptr %.sroa.01.06, align 8, !tbaa !247 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.e = load i32, ptr %i.d, align 8, !tbaa !83   ; 4 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_112g_cast_tableE, i64 8), align 8, !tbaa !212 ; 2 uses
  %i.h = urem i64 %i.f, %i.g                      ; 3 uses
  %i.i = load ptr, ptr @_ZN5arrow7compute8internal12_GLOBAL__N_112g_cast_tableE, align 8, !tbaa !213
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !214  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !210  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  %i.o = icmp eq i32 %i.e, %i.n
  br i1 %i.o, label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEEixEOi.exit, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %bb.e
  %i.p = icmp eq i32 %i.e, %i.s
  br i1 %i.p, label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEEixEOi.exit, label %.lr.ph.i.i.i.i, !llvm.loop !215

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %.020.i.i.i.i = phi ptr [ %i.q, %bb.d ], [ %i.l, %bb.c ]
  %i.q = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !210 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = urem i64 %i.t, %i.g
  %.not19.i.i.i.i = icmp eq i64 %i.u, %i.h
  br i1 %.not19.i.i.i.i, label %bb.d, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !215

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.e
  br label %.loopexit.i.i, !llvm.loop !215

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #26
  store ptr @_ZN5arrow7compute8internal12_GLOBAL__N_112g_cast_tableE, ptr %0, align 8, !tbaa !280
  %i.v = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28 ; 5 uses
  store ptr null, ptr %i.v, align 8, !tbaa !210
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 %i.e, ptr %i.w, align 8, !tbaa !284
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store ptr %i.v, ptr %i.b, align 8, !tbaa !287
  %i.y = invoke ptr @_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSA_10_Hash_nodeIS8_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) @_ZN5arrow7compute8internal12_GLOBAL__N_112g_cast_tableE, i64 noundef %i.h, i64 noundef %i.f, ptr noundef nonnull %i.v, i64 noundef 1)
          to label %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.f

_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  %.pre = load ptr, ptr %.sroa.01.06, align 8, !tbaa !247
  br label %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEEixEOi.exit

bb.f:                                             ; preds = %.loopexit.i.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  resume { ptr, i32 } %i.z

_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEEixEOi.exit: ; preds = %bb.d, %bb.c, %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i
  %i.aa = phi ptr [ %.pre, %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.c, %bb.c ], [ %i.c, %bb.d ]
  %.pn.i.i = phi ptr [ %i.y, %_ZNSt10_HashtableIiSt4pairIKiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEESaIS8_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.l, %bb.c ], [ %i.q, %bb.d ] ; 2 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  store ptr %i.aa, ptr %.1.i.i, align 8, !tbaa !247
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.01.06, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !65 ; 4 uses
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !65 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEaSERKS4_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEEixEOi.exit
  %.not7.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not7.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i5 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i5, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !65
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.j, %bb.i, %bb.g
  %i.ak = phi ptr [ %i.ae, %bb.g ], [ %i.ae, %bb.i ], [ %.pr.pre.i.i.i, %bb.j ] ; 8 uses
  %.not8.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.al, align 8, !tbaa !54
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !57
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #26, !inline_history !288
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !58
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #26, !inline_history !288
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i9.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i9.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i = phi i32 [ %i.ao, %bb.n ], [ %i.ay, %bb.o ]
  %i.az = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.az, label %bb.p, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !37

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #26
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.l, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !65
  br label %_ZNSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEaSERKS4_.exit

_ZNSt10shared_ptrIN5arrow7compute8internal12CastFunctionEEaSERKS4_.exit: ; preds = %_ZNSt13unordered_mapIiSt10shared_ptrIN5arrow7compute8internal12CastFunctionEESt4hashIiESt8equal_toIiESaISt4pairIKiS5_EEEixEOi.exit, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.01.06, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %.8.val
  br i1 %i.bb, label %._crit_edge, label %bb.b
}

declare void @_ZN5arrow7compute8internal15GetBooleanCastsEv(ptr dead_on_unwind writable sret(%"class.std::vector.149") align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow7compute8internal12CastFunctionEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !273  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow7compute8internal12CastFunctionEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow7compute8internal12CastFunctionEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow7compute8internal12CastFunctionEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow7compute8internal12CastFunctionEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !54
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !57
end_hunk_3
begin_hunk_4_@_ZNK5arrow6Status10WithDetailESt10shared_ptrINS_12StatusDetailEE:bb.a
  %i.t = load <2 x ptr>, ptr %2, align 8, !tbaa !108
  store ptr null, ptr %i.s, align 8, !tbaa !65
  store <2 x ptr> %i.t, ptr %4, align 16, !tbaa !108
  store ptr null, ptr %2, align 8, !tbaa !447
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %i.d, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !65   ; 8 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  %i.x = load atomic i64, ptr %i.w acquire, align 8 ; 2 uses
  %i.y = icmp eq i64 %i.x, 4294967297
  %i.z = trunc i64 %i.x to i32                    ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.w, align 8, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 0, ptr %i.aa, align 4, !tbaa !57
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #26, !inline_history !432
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #26, !inline_history !432
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = add nsw i32 %i.z, -1
  store i32 %i.ai, ptr %i.w, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.aj = atomicrmw volatile add ptr %i.w, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi i32 [ %i.z, %bb.k ], [ %i.aj, %bb.l ]
  %i.ak = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ak, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !37

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #26
  br label %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.g, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.m
  %i.al = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.f
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.an = load i64, ptr %i.f, align 8, !tbaa !40
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #26
  %i.aq = load ptr, ptr %3, align 8, !tbaa !38    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.n
  %i.as = load i64, ptr %i.f, align 8, !tbaa !40
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  resume { ptr, i32 } %i.ap
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow6Status6detailEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(27) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(18) %3, ptr noundef nonnull align 1 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(3) %5, ptr noundef nonnull align 8 dereferenceable(32) %6) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !437, !nonnull !78, !align !342
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(27) %1) #26
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(27) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E4_clIS4_EEDaSP_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E4_clIS4_EEDaSP_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !437, !nonnull !78, !align !342
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !329
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !330
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E3_clIS8_EEDaSP_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E3_clIS8_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E4_clIS4_EEDaSP_.exit
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !437, !nonnull !78, !align !342
  %i.h = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(18) %3) #26
  %i.i = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(18) %3, i64 noundef %i.h)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E3_clIS8_EEDaSP_.exit
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !437, !nonnull !78, !align !342
  %i.k = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(12) %4) #26
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 1 dereferenceable(12) %4, i64 noundef %i.k)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !437, !nonnull !78, !align !342
  %i.n = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(3) %5) #26
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 1 dereferenceable(3) %5, i64 noundef %i.n)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit unwind label %bb.g ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !437, !nonnull !78, !align !342
  %i.q = load ptr, ptr %6, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !41
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.q, i64 noundef %i.s)
          to label %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit unwind label %bb.h ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E4_clIS4_EEDaSP_.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E3_clIS8_EEDaSP_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E2_clISA_EEDaSP_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E1_clISC_EEDaSP_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.h:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E0_clISE_EEDaSP_.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA27_KcSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RA12_S2_RA3_S2_RKNSt7__cxx1112basic_stringIcS7_SaIcEEEEEESI_DpOT_ENKUlOT_E_clISK_EEDaSP_.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.h, %bb.f, %bb.d, %bb.i
  %.pn18 = phi { ptr, i32 } [ %i.aa, %bb.i ], [ %i.u, %bb.c ], [ %i.v, %bb.d ], [ %i.w, %bb.e ], [ %i.x, %bb.f ], [ %i.z, %bb.h ], [ %i.y, %bb.g ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  resume { ptr, i32 } %.pn18
}

declare void @_ZN5arrow6StatusC1ENS_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_12StatusDetailEE(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJSt17basic_string_viewIcS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !42     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #27
  unreachable

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %bb.a
  %3 = ashr exact i64 %i.f, 5                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 288230376151711743)
  %7 = select i1 %5, i64 288230376151711743, i64 %6 ; 3 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.e
  %.not.i = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %.not.i)
  %10 = shl nuw nsw i64 %7, 5                     ; 2 uses
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #28 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 %9 ; 4 uses
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !329 ; 9 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !330 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.i, ptr %i.h, align 8, !tbaa !33
  %i.j = icmp eq ptr %.sroa.2.0.copyload.i.i, null
  %i.k = icmp ne i64 %.sroa.0.0.copyload.i.i, 0
  %or.cond.i.i.i.i = and i1 %i.k, %i.j
  br i1 %or.cond.i.i.i.i, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.18) #27
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.c:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.l = icmp ugt i64 %.sroa.0.0.copyload.i.i, 15
  br i1 %i.l, label %bb.d, label %._crit_edge.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %i.m, label %.noexc.i.i.i.i, label %bb.e

.noexc.i.i.i.i:                                   ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #27
          to label %.noexc26 unwind label %bb.m

.noexc26:                                         ; preds = %.noexc.i.i.i.i
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.n = add nuw i64 %.sroa.0.0.copyload.i.i, 1   ; 2 uses
  %i.o = icmp slt i64 %i.n, 0
  br i1 %i.o, label %.noexc9.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !37

.noexc9.i.i.i.i:                                  ; preds = %bb.e
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc27 unwind label %bb.m

.noexc27:                                         ; preds = %.noexc9.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.e
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28
          to label %.noexc28 unwind label %bb.m   ; 2 uses

.noexc28:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.p, ptr %i.h, align 8, !tbaa !38
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.i, align 8, !tbaa !40
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc28, %bb.c
  %i.q = phi ptr [ %i.p, %.noexc28 ], [ %i.i, %bb.c ] ; 3 uses
  switch i64 %.sroa.0.0.copyload.i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.r = load i8, ptr %.sroa.2.0.copyload.i.i, align 1, !tbaa !40
  store i8 %i.r, ptr %i.q, align 1, !tbaa !40
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr align 1 %.sroa.2.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i, %bb.f, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.s, align 8, !tbaa !41
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.copyload.i.i
  store i8 0, ptr %i.t, align 1, !tbaa !40
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ah, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %11, %bb.h ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ag, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %bb.h ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.u, ptr %.012.i.i.i, align 8, !tbaa !33, !alias.scope !448, !noalias !451
  %i.v = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !38, !alias.scope !451, !noalias !448 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !41, !alias.scope !451, !noalias !448 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false), !alias.scope !453
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.v, ptr %.012.i.i.i, align 8, !tbaa !38, !alias.scope !448, !noalias !451
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !40, !alias.scope !451, !noalias !448
  store i64 %i.ac, ptr %i.u, align 8, !tbaa !40, !alias.scope !448, !noalias !451
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !41, !alias.scope !451, !noalias !448
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.i
  %i.ad = phi i64 [ %i.z, %bb.i ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.ad, ptr %i.af, align 8, !tbaa !41, !alias.scope !448, !noalias !451
  store ptr %i.w, ptr %.0911.i.i.i, align 8, !tbaa !38, !alias.scope !451, !noalias !448
  store i64 0, ptr %i.ae, align 8, !tbaa !41, !alias.scope !451, !noalias !448
  store i8 0, ptr %i.w, align 8, !tbaa !40, !alias.scope !451, !noalias !448
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !454

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.h
  %.0.lcssa.i.i.i = phi ptr [ %11, %bb.h ], [ %i.ah, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i29 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i29, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit39, label %.lr.ph.i.i.i30

.lr.ph.i.i.i30:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36
  %.012.i.i.i31 = phi ptr [ %i.aw, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36 ], [ %i.ai, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i32 = phi ptr [ %i.av, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 16 ; 3 uses
  store ptr %i.aj, ptr %.012.i.i.i31, align 8, !tbaa !33, !alias.scope !455, !noalias !458
  %i.ak = load ptr, ptr %.0911.i.i.i32, align 8, !tbaa !38, !alias.scope !458, !noalias !455 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i33

bb.j:                                             ; preds = %.lr.ph.i.i.i30
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !41, !alias.scope !458, !noalias !455 ; 3 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false), !alias.scope !460
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i33: ; preds = %.lr.ph.i.i.i30
  store ptr %i.ak, ptr %.012.i.i.i31, align 8, !tbaa !38, !alias.scope !455, !noalias !458
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !40, !alias.scope !458, !noalias !455
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !40, !alias.scope !455, !noalias !458
  %.phi.trans.insert.i.i.i.i34 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8
  %.pre.i.i.i.i35 = load i64, ptr %.phi.trans.insert.i.i.i.i34, align 8, !tbaa !41, !alias.scope !458, !noalias !455
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i33, %bb.j
  %i.as = phi i64 [ %i.ao, %bb.j ], [ %.pre.i.i.i.i35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i33 ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 8
  store i64 %i.as, ptr %i.au, align 8, !tbaa !41, !alias.scope !455, !noalias !458
  store ptr %i.al, ptr %.0911.i.i.i32, align 8, !tbaa !38, !alias.scope !458, !noalias !455
  store i64 0, ptr %i.at, align 8, !tbaa !41, !alias.scope !458, !noalias !455
  store i8 0, ptr %i.al, align 8, !tbaa !40, !alias.scope !458, !noalias !455
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i32, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i31, i64 32 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i37, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit39, label %.lr.ph.i.i.i30, !llvm.loop !454

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit39: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i38 = phi ptr [ %i.ai, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.aw, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i36 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i40 = icmp eq ptr %i.c, null
  br i1 %.not.i40, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit39
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.az, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ba) #29
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit39, %bb.k
  store ptr %11, ptr %0, align 8, !tbaa !42
  store ptr %.0.lcssa.i.i.i38, ptr %i.a, align 8, !tbaa !45
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr %11, i64 %7
  store ptr %i.bb, ptr %i.ax, align 8, !tbaa !48
  ret void

bb.l:                                             ; preds = %bb.m
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, %.noexc9.i.i.i.i, %.noexc.i.i.i.i, %.noexc.i
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  %i.bf = tail call ptr @__cxa_begin_catch(ptr %i.be) #26 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %11, i64 noundef %10) #29
  invoke void @__cxa_rethrow() #27
          to label %bb.p unwind label %bb.l

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bc

bb.o:                                             ; preds = %bb.l
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  tail call void @__clang_call_terminate(ptr %i.bh) #30
  unreachable

bb.p:                                             ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !416  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !461    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775792
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #27
  unreachable

_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 4                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 576460752303423487)
  %i.l = select i1 %i.j, i64 576460752303423487, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 4
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load <2 x ptr>, ptr %2, align 8, !tbaa !108
  store ptr null, ptr %i.r, align 8, !tbaa !65
  store <2 x ptr> %i.s, ptr %i.q, align 8, !tbaa !108
  store ptr null, ptr %2, align 8, !tbaa !408
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.u = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !108, !alias.scope !465, !noalias !462
  store ptr null, ptr %i.t, align 8, !tbaa !65, !alias.scope !465, !noalias !462
  store <2 x ptr> %i.u, ptr %.012.i.i.i, align 8, !tbaa !108, !alias.scope !462, !noalias !465
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !408, !alias.scope !465, !noalias !462
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, label %.lr.ph.i.i.i, !llvm.loop !467

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 16 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.ab, %.lr.ph.i.i.i17 ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.aa, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !471)
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8
  %i.z = load <2 x ptr>, ptr %.0911.i.i.i19, align 8, !tbaa !108, !alias.scope !471, !noalias !468
  store ptr null, ptr %i.y, align 8, !tbaa !65, !alias.scope !471, !noalias !468
  store <2 x ptr> %i.z, ptr %.012.i.i.i18, align 8, !tbaa !108, !alias.scope !468, !noalias !471
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !408, !alias.scope !471, !noalias !468
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !467

_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit ], [ %i.ab, %.lr.ph.i.i.i17 ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6ScalarEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !419
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #29
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6ScalarEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6ScalarEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6ScalarEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !461
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !416
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !419
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow10MakeScalarIbNS_11CTypeTraitsIbEENS_13BooleanScalarES3_EESt10shared_ptrINS_6ScalarEET_(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.101") align 8 %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.45", align 16 ; 8 uses
  %i.a = zext i1 %1 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.b = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7booleanEv(), !noalias !473 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65, !noalias !473 ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !108, !noalias !473
  store <2 x ptr> %i.f, ptr %2, align 16, !tbaa !108, !alias.scope !473
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow10TypeTraitsINS_11BooleanTypeEE14type_singletonEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !473
  %.not.i.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3, !noalias !473
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3, !noalias !473
  br label %_ZN5arrow10TypeTraitsINS_11BooleanTypeEE14type_singletonEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4, !noalias !473 ; 0 uses
  br label %_ZN5arrow10TypeTraitsINS_11BooleanTypeEE14type_singletonEv.exit

_ZN5arrow10TypeTraitsINS_11BooleanTypeEE14type_singletonEv.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.l = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28
          to label %.noexc unwind label %bb.o     ; 11 uses

.noexc:                                           ; preds = %_ZN5arrow10TypeTraitsINS_11BooleanTypeEE14type_singletonEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 1, ptr %i.m, align 8, !tbaa !54, !noalias !476
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 3 uses
  store i32 1, ptr %i.n, align 4, !tbaa !57, !noalias !476
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow13BooleanScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.l, align 8, !tbaa !58, !noalias !476
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.s = load <2 x ptr>, ptr %2, align 16, !tbaa !108, !noalias !476
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false), !noalias !476
  store i64 0, ptr %i.q, align 8, !noalias !476
  store <2 x ptr> %i.s, ptr %i.r, align 8, !tbaa !108, !noalias !476
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i8 1, ptr %i.t, align 8, !tbaa !479, !noalias !476
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 57
  store i8 %i.a, ptr %i.u, align 1, !tbaa !484, !noalias !476
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow13BooleanScalarE, i64 16), ptr %i.o, align 8, !tbaa !58, !noalias !476
  store ptr %i.o, ptr %i.p, align 8, !tbaa !487, !noalias !476
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !476
  %.not.i.i3.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i3.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i: ; preds = %.noexc
  store i32 2, ptr %i.n, align 4, !tbaa !3, !noalias !476
  br label %_ZNSt12__shared_ptrIN5arrow13BooleanScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i: ; preds = %.noexc
  %i.w = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4, !noalias !476 ; 0 uses
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !tbaa !398, !noalias !476 ; 4 uses
  %.not6.i.i.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i.i, null
  br i1 %.not6.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow13BooleanScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i, i64 12 ; 3 uses
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40, !noalias !476
  %.not.i7.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i7.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %i.x, align 4, !tbaa !3, !noalias !476 ; 2 uses
  %i.aa = add nsw i32 %i.z, -1
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !3, !noalias !476
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ab = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4, !noalias !476
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.z, %bb.f ], [ %i.ab, %bb.g ]
end_hunk_4
begin_hunk_5_@_ZN5arrow6ResultIbEC2ERKNS_6StatusE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #30
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA15_KcRKNS_4Type4typeERA10_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESG_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(15) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 1 dereferenceable(10) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !437, !nonnull !78, !align !342
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(15) %1) #26
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(15) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA15_KcRKNS_4Type4typeERA10_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESG_DpOT_ENKUlOT_E2_clIS4_EEDaSL_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA15_KcRKNS_4Type4typeERA10_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESG_DpOT_ENKUlOT_E2_clIS4_EEDaSL_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !437, !nonnull !78, !align !342
  %i.f = load i32, ptr %2, align 4, !tbaa !114
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.f)
          to label %_ZZN5arrow8internal12JoinToStringIJRA15_KcRKNS_4Type4typeERA10_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESG_DpOT_ENKUlOT_E1_clIS8_EEDaSL_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA15_KcRKNS_4Type4typeERA10_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESG_DpOT_ENKUlOT_E1_clIS8_EEDaSL_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA15_KcRKNS_4Type4typeERA10_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESG_DpOT_ENKUlOT_E2_clIS4_EEDaSL_.exit
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !437, !nonnull !78, !align !342
  %i.i = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(10) %3) #26
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 1 dereferenceable(10) %3, i64 noundef %i.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA15_KcRKNS_4Type4typeERA10_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESG_DpOT_ENKUlOT_E0_clISA_EEDaSL_.exit unwind label %bb.e ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA15_KcRKNS_4Type4typeERA10_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESG_DpOT_ENKUlOT_E0_clISA_EEDaSL_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA15_KcRKNS_4Type4typeERA10_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESG_DpOT_ENKUlOT_E1_clIS8_EEDaSL_.exit
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !437, !nonnull !78, !align !342
  %i.l = load ptr, ptr %4, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41
  %i.o = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.l, i64 noundef %i.n)
          to label %_ZZN5arrow8internal12JoinToStringIJRA15_KcRKNS_4Type4typeERA10_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESG_DpOT_ENKUlOT_E_clISG_EEDaSL_.exit unwind label %bb.f ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA15_KcRKNS_4Type4typeERA10_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESG_DpOT_ENKUlOT_E_clISG_EEDaSL_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA15_KcRKNS_4Type4typeERA10_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESG_DpOT_ENKUlOT_E0_clISA_EEDaSL_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA15_KcRKNS_4Type4typeERA10_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESG_DpOT_ENKUlOT_E_clISG_EEDaSL_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  ret void

bb.c:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA15_KcRKNS_4Type4typeERA10_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESG_DpOT_ENKUlOT_E2_clIS4_EEDaSL_.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA15_KcRKNS_4Type4typeERA10_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESG_DpOT_ENKUlOT_E1_clIS8_EEDaSL_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.f:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA15_KcRKNS_4Type4typeERA10_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESG_DpOT_ENKUlOT_E0_clISA_EEDaSL_.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA15_KcRKNS_4Type4typeERA10_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESG_DpOT_ENKUlOT_E_clISG_EEDaSL_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.e, %bb.f, %bb.d, %bb.g
  %.pn12 = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.p, %bb.c ], [ %i.q, %bb.d ], [ %i.s, %bb.f ], [ %i.r, %bb.e ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  resume { ptr, i32 } %.pn12
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA16_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !550
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !550
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !437, !noalias !550, !nonnull !78, !align !342
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(16) %2) #26, !noalias !550
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !550 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !550
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !550
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !38     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !40
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA16_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !38     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !40
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %common.resume
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(192) %i.a) #26, !inline_history !553
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %1) unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !490  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #26
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute12MetaFunctionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(5) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"struct.arrow::compute::FunctionDoc", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !41   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.i = load i64, ptr %i.c, align 8, !tbaa !40
  store i64 %i.i, ptr %i.a, align 8, !tbaa !40
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = phi ptr [ %i.a, %bb.b ], [ %i.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 2 uses
  %i.k = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %1, align 8, !tbaa !38
  store i64 0, ptr %i.l, align 8, !tbaa !41
  store i8 0, ptr %i.c, align 8, !tbaa !40
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !38     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !41   ; 3 uses
  %i.s = icmp ult i64 %i.r, 16
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add nuw nsw i64 %i.r, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.o, i64 %i.t, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.u = load i64, ptr %i.o, align 8, !tbaa !40
  store i64 %i.u, ptr %i.m, align 8, !tbaa !40
  %.phi.trans.insert7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre8 = load i64, ptr %.phi.trans.insert7, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.v = phi ptr [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.w = phi i64 [ %.pre8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.o, ptr %3, align 8, !tbaa !38
  store i64 0, ptr %i.x, align 8, !tbaa !41
  store i8 0, ptr %i.o, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 7 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !33
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !38  ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !41 ; 3 uses
  %i.ag = icmp ult i64 %i.af, 16
  call void @llvm.assume(i1 %i.ag)
  %i.ah = add nuw nsw i64 %i.af, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aa, ptr noundef nonnull align 8 dereferenceable(1) %i.ac, i64 %i.ah, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ab, ptr %i.y, align 8, !tbaa !38
  %i.ai = load i64, ptr %i.ac, align 8, !tbaa !40
  store i64 %i.ai, ptr %i.aa, align 8, !tbaa !40
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %3, i64 40
  %.pre10 = load i64, ptr %.phi.trans.insert9, align 8, !tbaa !41
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i, %bb.d
  %i.aj = phi ptr [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i ], [ %i.aa, %bb.d ] ; 2 uses
  %i.ak = phi i64 [ %.pre10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i ], [ %i.af, %bb.d ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %i.ak, ptr %i.am, align 8, !tbaa !41
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !38
  store i64 0, ptr %i.al, align 8, !tbaa !41
  store i8 0, ptr %i.ac, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !42 ; 2 uses
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !42
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !45 ; 2 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !48 ; 2 uses
  store ptr %i.av, ptr %i.at, align 8, !tbaa !48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 7 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !33
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !38 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 5 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !41 ; 3 uses
  %i.be = icmp ult i64 %i.bd, 16
  call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.bd, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ay, ptr noundef nonnull align 8 dereferenceable(1) %i.ba, i64 %i.bf, i1 false)
  br label %_ZN5arrow7compute11FunctionDocC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !38
  %i.bg = load i64, ptr %i.ba, align 8, !tbaa !40
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !40
  %.phi.trans.insert11 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.pre12 = load i64, ptr %.phi.trans.insert11, align 8, !tbaa !41
  br label %_ZN5arrow7compute11FunctionDocC2EOS1_.exit

_ZN5arrow7compute11FunctionDocC2EOS1_.exit:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i
  %i.bh = phi ptr [ %i.ay, %bb.e ], [ %i.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ] ; 2 uses
  %i.bi = phi i64 [ %i.bd, %bb.e ], [ %.pre12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !41
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !38
  store i64 0, ptr %i.bj, align 8, !tbaa !41
  store i8 0, ptr %i.ba, align 8, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 120
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !106, !range !77, !noundef !78 ; 2 uses
  store i8 %i.bn, ptr %i.bl, align 8, !tbaa !106
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute8FunctionE, i64 16), ptr %0, align 8, !tbaa !58
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !33
  %i.bq = icmp eq ptr %i.j, %i.a
  br i1 %i.bq, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

bb.f:                                             ; preds = %_ZN5arrow7compute11FunctionDocC2EOS1_.exit
  %i.br = icmp ult i64 %i.k, 16
  call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i64 %i.k, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bp, ptr noundef nonnull align 8 dereferenceable(1) %i.a, i64 %i.bs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZN5arrow7compute11FunctionDocC2EOS1_.exit
  store ptr %i.j, ptr %i.bo, align 8, !tbaa !38
  %i.bt = load i64, ptr %i.a, align 8, !tbaa !40
  store i64 %i.bt, ptr %i.bp, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4

end_hunk_5
begin_hunk_6_@_ZN5arrow7compute12MetaFunctionC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_5ArityENS0_11FunctionDocEPKNS0_15FunctionOptionsE:bb.a
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !33
  %i.ca = icmp eq ptr %i.v, %i.m
  br i1 %i.ca, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4
  %i.cb = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.cb)
  %i.cc = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bz, ptr noundef nonnull align 8 dereferenceable(1) %i.m, i64 %i.cc, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i4
  store ptr %i.v, ptr %i.by, align 8, !tbaa !38
  %i.cd = load i64, ptr %i.m, align 8, !tbaa !40
  store i64 %i.cd, ptr %i.bz, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.w, ptr %i.ce, align 8, !tbaa !41
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store ptr %i.cg, ptr %i.cf, align 8, !tbaa !33
  %i.ch = icmp eq ptr %i.aj, %i.aa
  br i1 %i.ch, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.ci = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.ci)
  %i.cj = add nuw nsw i64 %i.ak, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull align 8 dereferenceable(1) %i.aa, i64 %i.cj, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  store ptr %i.aj, ptr %i.cf, align 8, !tbaa !38
  %i.ck = load i64, ptr %i.aa, align 8, !tbaa !40
  store i64 %i.ck, ptr %i.cg, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i6.i.i, %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.ak, ptr %i.cl, align 8, !tbaa !41
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.ap, ptr %i.cm, align 8, !tbaa !42
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.as, ptr %i.cn, align 8, !tbaa !45
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.av, ptr %i.co, align 8, !tbaa !48
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !33
  %i.cr = icmp eq ptr %i.bh, %i.ay
  br i1 %i.cr, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i
  %i.cs = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add nuw nsw i64 %i.bi, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cq, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.ct, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit7.i.i
  store ptr %i.bh, ptr %i.cp, align 8, !tbaa !38
  %i.cu = load i64, ptr %i.ay, align 8, !tbaa !40
  store i64 %i.cu, ptr %i.cq, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i8.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.bi, ptr %i.cv, align 8, !tbaa !41
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 %i.bn, ptr %i.cw, align 8, !tbaa !106
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr %4, ptr %i.cx, align 8, !tbaa !265
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN5arrow7compute12MetaFunctionE, i64 16), ptr %0, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow7compute8FunctionE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !tbaa !40
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.q, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !40
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #29
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !46

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.r = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !48
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #29
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !38   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !40
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN5arrow7compute11FunctionDocD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !40
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #29
  br label %_ZN5arrow7compute11FunctionDocD2Ev.exit

_ZN5arrow7compute11FunctionDocD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !40
  %i.an = add i64 %i.am, 1
  tail call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN5arrow7compute11FunctionDocD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN5arrow7compute8internal12_GLOBAL__N_116CastMetaFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN5arrow7compute8FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 192) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK5arrow7compute12MetaFunction11num_kernelsEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

declare void @_ZNK5arrow7compute12MetaFunction7ExecuteERKSt6vectorINS_5DatumESaIS3_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.88") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZNK5arrow7compute12MetaFunction7ExecuteERKNS0_9ExecBatchEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind writable sret(%"class.arrow::Result.88") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal void @_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction11ExecuteImplERKSt6vectorINS_5DatumESaIS5_EEPKNS0_15FunctionOptionsEPNS0_11ExecContextE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Result.88") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.177, align 1            ; 3 uses
  %6 = alloca %class.anon.177, align 1            ; 3 uses
  %7 = alloca %class.anon.162, align 8            ; 5 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %9 = alloca %"class.arrow::Result.335", align 8 ; 13 uses
  %10 = alloca %"class.arrow::Result.339", align 8 ; 11 uses
  %11 = alloca %"struct.arrow::Datum", align 8    ; 6 uses
  %12 = alloca %"class.arrow::Result.343", align 8 ; 13 uses
  %13 = alloca %"class.std::shared_ptr.113", align 8 ; 6 uses
  %14 = alloca %"struct.arrow::Datum", align 16   ; 9 uses
  %15 = alloca %"class.std::shared_ptr.113", align 8 ; 4 uses
  %16 = alloca %"class.arrow::Result.79", align 8 ; 12 uses
  %17 = alloca %"class.arrow::Status", align 8    ; 11 uses
  %18 = alloca %"class.arrow::Status", align 8    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !174, !noalias !554
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit.thread

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !554
  call void @_ZN5arrow6Status8FromArgsIJRA64_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(64) @.str.41), !noalias !554
  call void @_ZN5arrow6ResultIPKNS_7compute11CastOptionsEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  %i.e = load ptr, ptr %8, align 8, !tbaa !66, !noalias !554 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit, label %bb.d, !prof !69

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !70, !range !77, !noundef !78
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  br label %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit

_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit.thread: ; preds = %bb.b
  store ptr null, ptr %9, align 8, !tbaa !66, !alias.scope !554
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %3, ptr %i.i, align 8, !tbaa !312, !alias.scope !554
  br label %bb.g

_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit: ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !554
  %.pr = load ptr, ptr %9, align 8, !tbaa !66
  %i.j = icmp eq ptr %.pr, null
  br i1 %i.j, label %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit._crit_edge, label %bb.f, !prof !557

_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit._crit_edge: ; preds = %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !312
  br label %bb.g

bb.f:                                             ; preds = %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %9) #26
  br label %bb.cv

bb.g:                                             ; preds = %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit._crit_edge, %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit.thread
  %i.k = phi ptr [ %.pre, %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit._crit_edge ], [ %3, %_ZNK5arrow7compute8internal12_GLOBAL__N_116CastMetaFunction15ValidateOptionsEPKNS0_15FunctionOptionsE.exit.thread ] ; 4 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !228
  %i.m = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !403
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.bq, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %2, align 8, !tbaa !228
  %i.p = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !403
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !174
  %i.t = invoke noundef zeroext i1 @_ZNK5arrow8DataType6EqualsERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i1 noundef zeroext false)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  br i1 %i.t, label %bb.l, label %bb.bq

bb.l:                                             ; preds = %bb.k
  %i.u = load ptr, ptr %2, align 8, !tbaa !228
  %i.v = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK5arrow5Datum4typeEv(ptr noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !403
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load i32, ptr %i.x, align 8, !tbaa !188
  %i.z = load ptr, ptr %2, align 8, !tbaa !228    ; 5 uses
  switch i32 %i.y, label %_ZN5arrow9is_nestedENS_4Type4typeE.exit [
    i32 25, label %bb.o
    i32 36, label %bb.o
    i32 41, label %bb.o
    i32 42, label %bb.o
    i32 32, label %bb.o
    i32 30, label %bb.o
    i32 26, label %bb.o
    i32 27, label %bb.o
    i32 28, label %bb.o
    i32 38, label %bb.o
  ]

_ZN5arrow9is_nestedENS_4Type4typeE.exit:          ; preds = %bb.m
  store ptr null, ptr %0, align 8, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 -1, ptr %i.ab, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store ptr %i.aa, ptr %7, align 8, !tbaa !225
  invoke void @_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_15_Copy_ctor_baseILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS4_6ScalarEES7_INS4_9ArrayDataEES7_INS4_12ChunkedArrayEES7_INS4_11RecordBatchEES7_INS4_5TableEEEEC1ERKSI_EUlOT_T0_E_JRKSt7variantIJS6_S9_SB_SD_SF_SH_EEEEDcOSN_DpOT1_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_ZN5arrow6ResultINS_5DatumEEC2IRKS1_vEEOT_.exit unwind label %.body.i.i.i

.body.i.i.i:                                      ; preds = %_ZN5arrow9is_nestedENS_4Type4typeE.exit
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN5arrow5Datum5EmptyESt10shared_ptrINS2_6ScalarEES5_INS2_9ArrayDataEES5_INS2_12ChunkedArrayEES5_INS2_11RecordBatchEES5_INS2_5TableEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(24) %i.aa) #26
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  call void @__clang_call_terminate(ptr %i.ad) #30
  unreachable

_ZN5arrow6ResultINS_5DatumEEC2IRKS1_vEEOT_.exit:  ; preds = %_ZN5arrow9is_nestedENS_4Type4typeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !223
  store i8 %i.af, ptr %i.ab, align 8, !tbaa !223
  br label %bb.cv

bb.n:                                             ; preds = %bb.l, %bb.j, %bb.i, %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.o:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !223
  switch i8 %i.ai, label %bb.bq [
    i8 2, label %_ZNK5arrow5Datum5arrayEv.exit
    i8 3, label %_ZNK5arrow5Datum13chunked_arrayEv.exit
  ]

_ZNK5arrow5Datum5arrayEv.exit:                    ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  invoke void @_ZN5arrow8internal12GetArrayViewERKSt10shared_ptrINS_9ArrayDataEERKS1_INS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.339") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.aj)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %_ZNK5arrow5Datum5arrayEv.exit
  %i.ak = load ptr, ptr %10, align 8, !tbaa !66
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.s, label %bb.q, !prof !69

bb.q:                                             ; preds = %bb.p
  call void @_ZN5arrow6ResultINS_5DatumEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #26
  br label %_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit52

bb.r:                                             ; preds = %_ZNK5arrow5Datum5arrayEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.s:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !65, !noalias !558 ; 9 uses
  %i.aq = load <2 x ptr>, ptr %i.an, align 8, !tbaa !108, !noalias !558
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %.not.i.i.i45 = icmp eq ptr %i.ap, null         ; 2 uses
  br i1 %.not.i.i.i45, label %_ZN5arrow6ResultINS_5DatumEEC2EOS1_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.ar, align 4, !tbaa !3
  br label %_ZN5arrow6ResultINS_5DatumEEC2EOS1_.exit

bb.v:                                             ; preds = %bb.t
  %i.av = atomicrmw volatile add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6ResultINS_5DatumEEC2EOS1_.exit

_ZN5arrow6ResultINS_5DatumEEC2EOS1_.exit:         ; preds = %bb.s, %bb.u, %bb.v
end_hunk_6
