Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/ssl_test?download=true
inline.NumInlined: 32408
inline.NumDeleted: 5042
loop-unroll.NumCompletelyUnrolled: 66
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN4bssl12_GLOBAL__N_117WriteHelloRequestEP6ssl_st:bb.a
          cleanup
  br label %bb.ao

bb.an:                                            ; preds = %bb.ai
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #45
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.pn70 = phi { ptr, i32 } [ %i.ck, %bb.an ], [ %i.cj, %bb.am ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #45
  %i.cl = load ptr, ptr %8, align 8, !tbaa !1566  ; 3 uses
  %.not.i.i137 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i137, label %_ZN7testing7MessageD2Ev.exit139, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i138

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i138: ; preds = %bb.ao
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !194
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(128) %i.cl) #45, !call_target !1573, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit139

_ZN7testing7MessageD2Ev.exit139:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i138, %bb.ao, %bb.al
  %.pn70.pn = phi { ptr, i32 } [ %i.ci, %bb.al ], [ %.pn70, %bb.ao ], [ %.pn70, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i138 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #45
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #45
  br label %bb.dy

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !1574 ; 4 uses
  %.not.i.i140 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i140, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.critedge
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1101 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i141: ; preds = %bb.ap
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !1105
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #43
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i141
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef 32) #43
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #45
  %i.cw = call i32 @SSL_generate_key_block(ptr noundef %0, ptr noundef nonnull %i.h, i64 noundef 88)
  %i.cx = icmp ne i32 %i.cw, 0                    ; 2 uses
  %i.cy = zext i1 %i.cx to i8
  store i8 %i.cy, ptr %10, align 8, !tbaa !1563
  %i.cz = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr null, ptr %i.cz, align 8, !tbaa !1564
  br i1 %i.cx, label %_ZNK4bssl4SpanIhE7subspanEmm.exit167, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #45
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.as unwind label %bb.ax

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #45
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull @.str.1439, ptr noundef nonnull @.str.346, ptr noundef nonnull @.str.347)
          to label %bb.at unwind label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.da = load ptr, ptr %13, align 8, !tbaa !1101
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef 8474, ptr noundef %i.da)
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %bb.at
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #45
  %i.db = load ptr, ptr %13, align 8, !tbaa !1101 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.av
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !1105
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #45
  %i.dg = load ptr, ptr %11, align 8, !tbaa !1566 ; 3 uses
  %.not.i.i145 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i145, label %_ZN7testing7MessageD2Ev.exit147, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !194
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(128) %i.dg) #45, !call_target !1573, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit147

_ZN7testing7MessageD2Ev.exit147:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #45
  %i.dk = load ptr, ptr %i.cz, align 8, !tbaa !1574 ; 4 uses
  %.not.i.i148 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i148, label %_ZN7testing15AssertionResultD2Ev.exit152, label %bb.aw

bb.aw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit147
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1101 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149: ; preds = %bb.aw
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !1105
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #43
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149
  call void @_ZdlPvm(ptr noundef nonnull %i.dk, i64 noundef 32) #43
  br label %_ZN7testing15AssertionResultD2Ev.exit152

_ZN7testing15AssertionResultD2Ev.exit152:         ; preds = %_ZN7testing7MessageD2Ev.exit147, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #45
  br label %bb.dq

bb.ax:                                            ; preds = %bb.ar
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit158

bb.ay:                                            ; preds = %bb.as
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

bb.az:                                            ; preds = %bb.at
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.au
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #45
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn73 = phi { ptr, i32 } [ %i.dt, %bb.ba ], [ %i.ds, %bb.az ] ; 2 uses
  %i.du = load ptr, ptr %13, align 8, !tbaa !1101 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153: ; preds = %bb.bb
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !1105
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153, %bb.ay
  %.pn73.pn = phi { ptr, i32 } [ %i.dr, %bb.ay ], [ %.pn73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i153 ], [ %.pn73, %bb.bb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #45
  %i.dz = load ptr, ptr %11, align 8, !tbaa !1566 ; 3 uses
  %.not.i.i156 = icmp eq ptr %i.dz, null
  br i1 %.not.i.i156, label %_ZN7testing7MessageD2Ev.exit158, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !194
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  call void %i.ec(ptr noundef nonnull align 8 dereferenceable(128) %i.dz) #45, !call_target !1573, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit158

_ZN7testing7MessageD2Ev.exit158:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155, %bb.ax
  %.pn73.pn.pn = phi { ptr, i32 } [ %i.dq, %bb.ax ], [ %.pn73.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit155 ], [ %.pn73.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #45
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #45
  br label %bb.dx

_ZNK4bssl4SpanIhE7subspanEmm.exit167:             ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #45
  %i.ed = getelementptr inbounds nuw i8, ptr %i.h, i64 76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #45
  %i.ee = call i64 @SSL_get_write_sequence(ptr noundef %0)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  %i.eg = load <8 x i8>, ptr %i.ef, align 16, !tbaa !1105
  %29 = bitcast i64 %i.ee to <8 x i8>
  %30 = shufflevector <8 x i8> %29, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.eh = xor <8 x i8> %i.eg, %30
  store <8 x i8> %i.eh, ptr %i.ef, align 16, !tbaa !1105
  store <8 x i8> %30, ptr %i.i, align 8, !tbaa !1105
  %i.ei = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store <4 x i8> <i8 22, i8 3, i8 3, i8 0>, ptr %i.ei, align 8, !tbaa !1105
  %i.ej = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i8 4, ptr %i.ej, align 4, !tbaa !1105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #45
  store <4 x i8> <i8 22, i8 3, i8 3, i8 0>, ptr %i.j, align 16, !tbaa !1105
  %i.ek = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i8 20, ptr %i.ek, align 4, !tbaa !1105
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #45
  call void @EVP_AEAD_CTX_zero(ptr noundef nonnull align 8 dereferenceable(576) %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #45
  %i.el = invoke ptr @EVP_aead_chacha20_poly1305()
          to label %bb.bc unwind label %bb.be

bb.bc:                                            ; preds = %_ZNK4bssl4SpanIhE7subspanEmm.exit167
  %i.em = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.en = invoke i32 @EVP_AEAD_CTX_init(ptr noundef nonnull %14, ptr noundef %i.el, ptr noundef nonnull %i.em, i64 noundef 32, i64 noundef 0, ptr noundef null)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.eo = icmp ne i32 %i.en, 0                    ; 2 uses
  %i.ep = zext i1 %i.eo to i8
  store i8 %i.ep, ptr %15, align 8, !tbaa !1563
  %i.eq = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store ptr null, ptr %i.eq, align 8, !tbaa !1564
  br i1 %i.eo, label %bb.bq, label %bb.bf

bb.be:                                            ; preds = %bb.bc, %_ZNK4bssl4SpanIhE7subspanEmm.exit167
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #45
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.bg unwind label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #45
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull @.str.1440, ptr noundef nonnull @.str.346, ptr noundef nonnull @.str.347)
          to label %bb.bh unwind label %bb.bm

bb.bh:                                            ; preds = %bb.bg
  %i.es = load ptr, ptr %18, align 8, !tbaa !1101
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef 8504, ptr noundef %i.es)
          to label %bb.bi unwind label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.bj unwind label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #45
  %i.et = load ptr, ptr %18, align 8, !tbaa !1101 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168: ; preds = %bb.bj
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !1105
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #45
  %i.ey = load ptr, ptr %16, align 8, !tbaa !1566 ; 3 uses
  %.not.i.i171 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i171, label %_ZN7testing7MessageD2Ev.exit173, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !194
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(128) %i.ey) #45, !call_target !1573, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit173

_ZN7testing7MessageD2Ev.exit173:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit170, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #45
  %i.fc = load ptr, ptr %i.eq, align 8, !tbaa !1574 ; 4 uses
  %.not.i.i174 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i174, label %_ZN7testing15AssertionResultD2Ev.exit178, label %bb.bk

bb.bk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit173
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !1101 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175: ; preds = %bb.bk
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !1105
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #43
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef 32) #43
  br label %_ZN7testing15AssertionResultD2Ev.exit178

_ZN7testing15AssertionResultD2Ev.exit178:         ; preds = %_ZN7testing7MessageD2Ev.exit173, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #45
  br label %bb.do

bb.bl:                                            ; preds = %bb.bf
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit184

bb.bm:                                            ; preds = %bb.bg
  %i.fj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

bb.bn:                                            ; preds = %bb.bh
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bi
  %i.fl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #45
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn77 = phi { ptr, i32 } [ %i.fl, %bb.bo ], [ %i.fk, %bb.bn ] ; 2 uses
  %i.fm = load ptr, ptr %18, align 8, !tbaa !1101 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %bb.bp
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !1105
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179, %bb.bm
  %.pn77.pn = phi { ptr, i32 } [ %i.fj, %bb.bm ], [ %.pn77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179 ], [ %.pn77, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #45
  %i.fr = load ptr, ptr %16, align 8, !tbaa !1566 ; 3 uses
  %.not.i.i182 = icmp eq ptr %i.fr, null
  br i1 %.not.i.i182, label %_ZN7testing7MessageD2Ev.exit184, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !194
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(128) %i.fr) #45, !call_target !1573, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit184

_ZN7testing7MessageD2Ev.exit184:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %bb.bl
  %.pn77.pn.pn = phi { ptr, i32 } [ %i.fi, %bb.bl ], [ %.pn77.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181 ], [ %.pn77.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #45
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #45
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #45
  %i.fv = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.fw = invoke i32 @EVP_AEAD_CTX_seal(ptr noundef nonnull %14, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.k, i64 noundef 20, ptr noundef nonnull %i.ed, i64 noundef 12, ptr noundef nonnull %i.e, i64 noundef 4, ptr noundef nonnull %i.i, i64 noundef 13)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.fx = icmp ne i32 %i.fw, 0                    ; 2 uses
  %i.fy = zext i1 %i.fx to i8
  store i8 %i.fy, ptr %19, align 8, !tbaa !1563
  %i.fz = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store ptr null, ptr %i.fz, align 8, !tbaa !1564
  br i1 %i.fx, label %bb.cf, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit184, %bb.be
  %.pn77.pn.pn.pn = phi { ptr, i32 } [ %.pn77.pn.pn, %_ZN7testing7MessageD2Ev.exit184 ], [ %i.er, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #45
  br label %bb.dv

bb.bt:                                            ; preds = %bb.bq
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #45
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #45
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #45
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull @.str.1441, ptr noundef nonnull @.str.346, ptr noundef nonnull @.str.347)
          to label %bb.bw unwind label %bb.cb

bb.bw:                                            ; preds = %bb.bv
  %i.gb = load ptr, ptr %22, align 8, !tbaa !1101
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef 8508, ptr noundef %i.gb)
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_ssl_test.cc:bb.a
  %i.nsy = load i64, ptr %i.nre, align 8, !tbaa !1105
  %i.nsz = add i64 %i.nsy, 1
  call void @_ZdlPvm(ptr noundef %i.nsw, i64 noundef %i.nsz) #43
  br label %common.resume

__cxx_global_var_init.341.exit:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i4269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i4270
  store ptr %i.nrz, ptr @_ZN4bssl12_GLOBAL__N_130SSLPAKETest_ClientThreads_Test10test_info_E, align 8, !tbaa !18380
  %i.nta = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4bssl12_GLOBAL__N_130SSLPAKETest_ClientThreads_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.ntb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.ntb, ptr %0, align 8, !tbaa !1102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.ntb, ptr noundef nonnull align 1 dereferenceable(11) @.str.335, i64 11, i1 false)
  %i.ntc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 11, ptr %i.ntc, align 8, !tbaa !1103
  %i.ntd = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 0, ptr %i.ntd, align 1, !tbaa !1105
  %i.nte = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  store ptr %i.nte, ptr %2, align 8, !tbaa !1102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store i64 74, ptr %i.a, align 8, !tbaa !1104
  %i.ntf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc7.i4279 unwind label %bb.axu ; 3 uses

.noexc7.i4279:                                    ; preds = %__cxx_global_var_init.341.exit
  store ptr %i.ntf, ptr %2, align 8, !tbaa !1101
  %i.ntg = load i64, ptr %i.a, align 8, !tbaa !1104 ; 3 uses
  store i64 %i.ntg, ptr %i.nte, align 8, !tbaa !1105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(74) %i.ntf, ptr noundef nonnull align 1 dereferenceable(74) @.str.50, i64 74, i1 false)
  %i.nth = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.ntg, ptr %i.nth, align 8, !tbaa !1103
  %i.nti = getelementptr inbounds nuw i8, ptr %i.ntf, i64 %i.ntg
  store i8 0, ptr %i.nti, align 1, !tbaa !1105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  %i.ntj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.ntj, ptr %1, align 8, !tbaa !1102
  %i.ntk = load ptr, ptr %2, align 8, !tbaa !1101 ; 2 uses
  %i.ntl = icmp eq ptr %i.ntk, %i.nte
  br i1 %i.ntl, label %bb.axp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4280

bb.axp:                                           ; preds = %.noexc7.i4279
  %i.ntm = load i64, ptr %i.nth, align 8, !tbaa !1103 ; 3 uses
  %i.ntn = icmp ult i64 %i.ntm, 16
  call void @llvm.assume(i1 %i.ntn)
  %i.nto = add nuw nsw i64 %i.ntm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ntj, ptr noundef nonnull align 8 dereferenceable(1) %i.nte, i64 %i.nto, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i4282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4280: ; preds = %.noexc7.i4279
  store ptr %i.ntk, ptr %1, align 8, !tbaa !1101
  %i.ntp = load i64, ptr %i.nte, align 8, !tbaa !1105
  store i64 %i.ntp, ptr %i.ntj, align 8, !tbaa !1105
  %.pre.i4281 = load i64, ptr %i.nth, align 8, !tbaa !1103
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i4282

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i4282: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4280, %bb.axp
  %i.ntq = phi i64 [ %i.ntm, %bb.axp ], [ %.pre.i4281, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4280 ]
  %i.ntr = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ntq, ptr %i.ntr, align 8, !tbaa !1103
  store ptr %i.nte, ptr %2, align 8, !tbaa !1101
  store i64 0, ptr %i.nth, align 8, !tbaa !1103
  store i8 0, ptr %i.nte, align 8, !tbaa !1105
  %i.nts = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 10651, ptr %i.nts, align 8, !tbaa !1107
  %i.ntt = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4bssl12_GLOBAL__N_111SSLPAKETestEE19GetSetUpCaseOrSuiteEPKci(i32 noundef 10651)
          to label %bb.axq unwind label %bb.axv

bb.axq:                                           ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i4282
  %i.ntu = invoke fastcc noundef ptr @_ZN7testing8internal16SuiteApiResolverIN4bssl12_GLOBAL__N_111SSLPAKETestEE22GetTearDownCaseOrSuiteEPKci(i32 noundef 10651)
          to label %bb.axr unwind label %bb.axv

bb.axr:                                           ; preds = %bb.axq
  %i.ntv = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #44
          to label %bb.axs unwind label %bb.axv   ; 2 uses

bb.axs:                                           ; preds = %bb.axr
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplIN4bssl12_GLOBAL__N_130SSLPAKETest_ServerThreads_TestEEE, i64 16), ptr %i.ntv, align 8, !tbaa !194
  %i.ntw = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.344, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %1, ptr noundef nonnull @_ZN7testing8internal12TypeIdHelperIN4bssl12_GLOBAL__N_111SSLPAKETestEE6dummy_E, ptr noundef %i.ntt, ptr noundef %i.ntu, ptr noundef nonnull %i.ntv)
          to label %bb.axt unwind label %bb.axv

bb.axt:                                           ; preds = %bb.axs
  %i.ntx = load ptr, ptr %1, align 8, !tbaa !1101 ; 2 uses
  %i.nty = icmp eq ptr %i.ntx, %i.ntj
  br i1 %i.nty, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i4289, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4288: ; preds = %bb.axt
  %i.ntz = load i64, ptr %i.ntj, align 8, !tbaa !1105
  %i.nua = add i64 %i.ntz, 1
  call void @_ZdlPvm(ptr noundef %i.ntx, i64 noundef %i.nua) #43
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i4289

_ZN7testing8internal12CodeLocationD2Ev.exit.i4289: ; preds = %bb.axt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i4288
  %i.nub = load ptr, ptr %2, align 8, !tbaa !1101 ; 2 uses
  %i.nuc = icmp eq ptr %i.nub, %i.nte
  br i1 %i.nuc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i4291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i4290

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i4290: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i4289
  %i.nud = load i64, ptr %i.nte, align 8, !tbaa !1105
  %i.nue = add i64 %i.nud, 1
  call void @_ZdlPvm(ptr noundef %i.nub, i64 noundef %i.nue) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i4291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i4291: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i4289, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i4290
  %i.nuf = load ptr, ptr %0, align 8, !tbaa !1101 ; 2 uses
  %i.nug = icmp eq ptr %i.nuf, %i.ntb
  br i1 %i.nug, label %__cxx_global_var_init.343.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i4292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i4292: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i4291
  %i.nuh = load i64, ptr %i.ntb, align 8, !tbaa !1105
  %i.nui = add i64 %i.nuh, 1
  call void @_ZdlPvm(ptr noundef %i.nuf, i64 noundef %i.nui) #43
  br label %__cxx_global_var_init.343.exit

bb.axu:                                           ; preds = %__cxx_global_var_init.341.exit
  %i.nuj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i4274

bb.axv:                                           ; preds = %bb.axs, %bb.axr, %bb.axq, %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i4282
  %i.nuk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nul = load ptr, ptr %1, align 8, !tbaa !1101 ; 2 uses
  %i.num = icmp eq ptr %i.nul, %i.ntj
  br i1 %i.num, label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i4284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i4283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i4283: ; preds = %bb.axv
  %i.nun = load i64, ptr %i.ntj, align 8, !tbaa !1105
  %i.nuo = add i64 %i.nun, 1
  call void @_ZdlPvm(ptr noundef %i.nul, i64 noundef %i.nuo) #43
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i4284

_ZN7testing8internal12CodeLocationD2Ev.exit15.i4284: ; preds = %bb.axv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i4283
  %i.nup = load ptr, ptr %2, align 8, !tbaa !1101 ; 2 uses
  %i.nuq = icmp eq ptr %i.nup, %i.nte
  br i1 %i.nuq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i4274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i4285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i4285: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i4284
  %i.nur = load i64, ptr %i.nte, align 8, !tbaa !1105
  %i.nus = add i64 %i.nur, 1
  call void @_ZdlPvm(ptr noundef %i.nup, i64 noundef %i.nus) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i4274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i4274: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i4284, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i4285, %bb.axu
  %.pn.i4275 = phi { ptr, i32 } [ %i.nuj, %bb.axu ], [ %i.nuk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i4285 ], [ %i.nuk, %_ZN7testing8internal12CodeLocationD2Ev.exit15.i4284 ] ; 2 uses
  %i.nut = load ptr, ptr %0, align 8, !tbaa !1101 ; 2 uses
  %i.nuu = icmp eq ptr %i.nut, %i.ntb
  br i1 %i.nuu, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i4276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i4276: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i4274
  %i.nuv = load i64, ptr %i.ntb, align 8, !tbaa !1105
  %i.nuw = add i64 %i.nuv, 1
  call void @_ZdlPvm(ptr noundef %i.nut, i64 noundef %i.nuw) #43
  br label %common.resume

__cxx_global_var_init.343.exit:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i4291, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i4292
  store ptr %i.ntw, ptr @_ZN4bssl12_GLOBAL__N_130SSLPAKETest_ServerThreads_Test10test_info_E, align 8, !tbaa !18380
  %i.nux = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4bssl12_GLOBAL__N_130SSLPAKETest_ServerThreads_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #39

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #40

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #41

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #42

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #41

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #23 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #24 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #25 = { cold inlinehint mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #26 = { cold inlinehint noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #29 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #30 = { cold mustprogress nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #31 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #32 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #33 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #34 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { inlinehint mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #38 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="25344" }
attributes #39 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #41 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #42 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #43 = { builtin nounwind }
attributes #44 = { builtin allocsize(0) }
attributes #45 = { nounwind }
attributes #46 = { noreturn nounwind }
attributes #47 = { noreturn }
attributes #48 = { nounwind willreturn memory(read) }
attributes #49 = { cold }
attributes #50 = { cold nounwind }

!llvm.module.flags = !{!172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}
!llvm.errno.tbaa = !{!183}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !241, file: !685, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE")
!1 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > > >", scope: !241, file: !685, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE")
!2 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<char>", scope: !241, file: !686, line: 45, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16initializer_listIcE")
!3 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const char *>", scope: !241, file: !698, line: 221, size: 8, flags: DIFlagTypePassByValue, elements: !740, templateParams: !742, identifier: "_ZTSSt15iterator_traitsIPKcE")
!4 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !687, file: !685, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !739, templateParams: !744, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<char *>", scope: !241, file: !698, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !740, templateParams: !795, identifier: "_ZTSSt15iterator_traitsIPcE")
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<char *, std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> > >", scope: !687, file: !685, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !793, templateParams: !796, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sv_wrapper", scope: !18, file: !261, line: 160, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12__sv_wrapperE")
!8 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<const char *>", scope: !241, file: !685, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIPKcE")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_traits<char>", scope: !241, file: !932, line: 337, size: 8, flags: DIFlagTypePassByValue, elements: !980, templateParams: !981, identifier: "_ZTSSt11char_traitsIcE")
!10 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string_view<char, std::char_traits<char> >", scope: !241, file: !797, line: 106, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !928, templateParams: !931, identifier: "_ZTSSt17basic_string_viewIcSt11char_traitsIcEE")
!11 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__new_allocator<char>", scope: !241, file: !999, line: 63, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1036, templateParams: !1038, identifier: "_ZTSSt15__new_allocatorIcE")
!12 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<char>", scope: !241, file: !982, line: 287, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !998, templateParams: !1040, identifier: "_ZTSSaIcE")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<char>", scope: !17, file: !262, line: 125, size: 8, flags: DIFlagTypePassByValue, elements: !740, templateParams: !1038, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIcEcE6rebindIcEE")
!14 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !18, file: !261, line: 204, size: 128, flags: DIFlagExportSymbols | DIFlagTypePassByValue, elements: !1046, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEUt0_E")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Alloc_hider", scope: !18, file: !261, line: 181, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1057, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<char> >", scope: !241, file: !263, line: 428, size: 8, flags: DIFlagTypePassByValue, elements: !1079, templateParams: !1081, identifier: "_ZTSSt16allocator_traitsISaIcEE")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<char>, char>", scope: !687, file: !262, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !1096, templateParams: !1098, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIcEcEE")
!18 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::char_traits<char>, std::allocator<char> >", scope: !260, file: !259, line: 969, size: 256, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !684, templateParams: !1100, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE")
!19 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ParameterizedTestSuiteInfoBase", scope: !221, file: !218, line: 462, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !258, vtableHolder: !19, identifier: "_ZTSN7testing8internal30ParameterizedTestSuiteInfoBaseE")
!20 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !241, file: !1161, line: 92, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt9type_info")
!21 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Lock_policy", scope: !687, file: !1164, line: 49, baseType: !1165, size: 32, elements: !1169, identifier: "_ZTSN9__gnu_cxx12_Lock_policyE")
!22 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Mutex_base<(__gnu_cxx::_Lock_policy)2>", scope: !241, file: !1117, line: 106, size: 8, flags: DIFlagTypePassByValue, elements: !740, templateParams: !1163, identifier: "_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE")
!23 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !241, file: !1117, line: 125, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1160, vtableHolder: !23, templateParams: !1171, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!24 = distinct !{null, null, null, null}
!25 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ParamIteratorInterface<bssl::(anonymous namespace)::ssl_test_ticket_aead_failure_mode>", scope: !221, file: !218, line: 99, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1222, vtableHolder: !25, templateParams: !1224)
!26 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ParamGeneratorInterface<bssl::(anonymous namespace)::ssl_test_ticket_aead_failure_mode>", scope: !221, file: !218, line: 171, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1188, vtableHolder: !26, templateParams: !1224)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__conditional<true>", scope: !241, file: !1279, line: 119, size: 8, flags: DIFlagTypePassByValue, elements: !740, templateParams: !1295, identifier: "_ZTSSt13__conditionalILb1EE")
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Sink", scope: !30, file: !1373, line: 81, size: 8, flags: DIFlagTypePassByValue, elements: !1381, identifier: "_ZTSNSt13__uses_alloc05_SinkE")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uses_alloc_base", scope: !241, file: !1373, line: 77, size: 8, flags: DIFlagTypePassByValue, elements: !740, identifier: "_ZTSSt17__uses_alloc_base")
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uses_alloc0", scope: !241, file: !1373, line: 79, size: 8, flags: DIFlagTypePassByValue, elements: !1376, identifier: "_ZTSSt13__uses_alloc0")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_arg_t", scope: !241, file: !1373, line: 56, size: 8, flags: DIFlagTypePassByValue, elements: !1386, identifier: "_ZTSSt15allocator_arg_t")
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<0UL, unsigned short, false>", scope: !241, file: !1267, line: 188, size: 16, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1372, templateParams: !1390, identifier: "_ZTSSt10_Head_baseILm0EtLb0EE")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<1UL, unsigned int, false>", scope: !241, file: !1267, line: 188, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1461, templateParams: !1464, identifier: "_ZTSSt10_Head_baseILm1EjLb0EE")
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<2UL, bssl::(anonymous namespace)::ssl_test_ticket_aead_failure_mode, false>", scope: !241, file: !1267, line: 188, size: 32, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1524, templateParams: !1527)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<2UL, bssl::(anonymous namespace)::ssl_test_ticket_aead_failure_mode>", scope: !241, file: !1267, line: 489, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1496, templateParams: !1531)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<1UL, unsigned int, bssl::(anonymous namespace)::ssl_test_ticket_aead_failure_mode>", scope: !241, file: !1267, line: 259, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1433, templateParams: !1535)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<0UL, unsigned short, unsigned int, bssl::(anonymous namespace)::ssl_test_ticket_aead_failure_mode>", scope: !241, file: !1267, line: 259, size: 96, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1344, templateParams: !1539)
!38 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<unsigned short, unsigned int, bssl::(anonymous namespace)::ssl_test_ticket_aead_failure_mode>", scope: !241, file: !1267, line: 746, size: 96, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1293, templateParams: !1540)
!39 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ParamIteratorInterface<std::tuple<unsigned short, unsigned int, bssl::(anonymous namespace)::ssl_test_ticket_aead_failure_mode> >", scope: !221, file: !218, line: 99, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1266, vtableHolder: !39, templateParams: !1542)
!40 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ParamGeneratorInterface<std::tuple<unsigned short, unsigned int, bssl::(anonymous namespace)::ssl_test_ticket_aead_failure_mode> >", scope: !221, file: !218, line: 171, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1242, vtableHolder: !40, templateParams: !1542)
!41 = distinct !{null, null, null}
!42 = distinct !{null, null, null, null}
!43 = distinct !{null, null, null, null}
!44 = distinct !{null, null, null, null}
!45 = distinct !{null, null, null, null}
!46 = distinct !{null, null, null, null}
!47 = distinct !{ptr @_ZN7testing11ScopedTraceC2ImEEPKciRKT_, null, null, null}
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "default_delete<std::thread::_State>", scope: !241, file: !1720, line: 75, size: 8, flags: DIFlagTypePassByValue, elements: !1795, templateParams: !1797, identifier: "_ZTSSt14default_deleteINSt6thread6_StateEE")
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Ptr<std::thread::_State, std::default_delete<std::thread::_State>, void>", scope: !55, file: !1720, line: 151, size: 8, flags: DIFlagTypePassByValue, elements: !740, templateParams: !1801, identifier: "_ZTSNSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE4_PtrIS1_S3_vEE")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<0UL, std::thread::_State *, false>", scope: !241, file: !1267, line: 188, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !1942, templateParams: !1944, identifier: "_ZTSSt10_Head_baseILm0EPNSt6thread6_StateELb0EE")
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Head_base<1UL, std::default_delete<std::thread::_State>, true>", scope: !241, file: !1267, line: 79, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2003, templateParams: !2006, identifier: "_ZTSSt10_Head_baseILm1ESt14default_deleteINSt6thread6_StateEELb1EE")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<1UL, std::default_delete<std::thread::_State> >", scope: !241, file: !1267, line: 489, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1975, templateParams: !2010, identifier: "_ZTSSt11_Tuple_implILm1EJSt14default_deleteINSt6thread6_StateEEEE")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Tuple_impl<0UL, std::thread::_State *, std::default_delete<std::thread::_State> >", scope: !241, file: !1267, line: 259, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1914, templateParams: !2014, identifier: "_ZTSSt11_Tuple_implILm0EJPNSt6thread6_StateESt14default_deleteIS1_EEE")
!54 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "tuple<std::thread::_State *, std::default_delete<std::thread::_State> >", scope: !241, file: !1267, line: 1239, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1869, templateParams: !2015, identifier: "_ZTSSt5tupleIJPNSt6thread6_StateESt14default_deleteIS1_EEE")
!55 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__uniq_ptr_impl<std::thread::_State, std::default_delete<std::thread::_State> >", scope: !241, file: !1720, line: 148, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1842, templateParams: !2017, identifier: "_ZTSSt15__uniq_ptr_implINSt6thread6_StateESt14default_deleteIS1_EE")
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__add_lvalue_reference_helper<std::thread::_State, void>", scope: !241, file: !1279, line: 1067, size: 8, flags: DIFlagTypePassByValue, elements: !740, templateParams: !2018, identifier: "_ZTSSt29__add_lvalue_reference_helperINSt6thread6_StateEvE")
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "add_lvalue_reference<std::thread::_State>", scope: !241, file: !1279, line: 1629, size: 8, flags: DIFlagTypePassByValue, elements: !740, templateParams: !1797, identifier: "_ZTSSt20add_lvalue_referenceINSt6thread6_StateEE")
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__uniq_ptr_data<std::thread::_State, std::default_delete<std::thread::_State>, true, true>", scope: !241, file: !1720, line: 239, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2029, templateParams: !2030, identifier: "_ZTSSt15__uniq_ptr_dataINSt6thread6_StateESt14default_deleteIS1_ELb1ELb1EE")
!59 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "unique_ptr<std::thread::_State, std::default_delete<std::thread::_State> >", scope: !241, file: !1720, line: 277, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1785, templateParams: !2032, identifier: "_ZTSSt10unique_ptrINSt6thread6_StateESt14default_deleteIS1_EE")
!60 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "id", scope: !61, file: !1661, line: 92, size: 64, flags: DIFlagPublic | DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2041, identifier: "_ZTSNSt6thread2idE")
!61 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "thread", scope: !241, file: !1661, line: 78, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !1719, identifier: "_ZTSSt6thread")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_State", scope: !61, file: !1661, line: 225, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt6thread6_StateE")
!63 = distinct !{!63, !1580}
!64 = distinct !{!64, !1580}
!65 = distinct !{!65, !1580}
!66 = distinct !{!66, !1580}
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VersionParam", scope: !1206, file: !1204, line: 78, size: 128, flags: DIFlagTypePassByValue, elements: !2125)
!68 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ParamIteratorInterface<bssl::(anonymous namespace)::VersionParam>", scope: !221, file: !218, line: 99, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2110, vtableHolder: !68, templateParams: !2127)
!69 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ParamGeneratorInterface<bssl::(anonymous namespace)::VersionParam>", scope: !221, file: !218, line: 171, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2086, vtableHolder: !69, templateParams: !2127)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, false>", scope: !241, file: !1279, line: 62, size: 8, flags: DIFlagTypePassByValue, elements: !2162, templateParams: !2165, identifier: "_ZTSSt17integral_constantIbLb0EE")
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "integral_constant<bool, true>", scope: !241, file: !1279, line: 62, size: 8, flags: DIFlagTypePassByValue, elements: !2174, templateParams: !2176, identifier: "_ZTSSt17integral_constantIbLb1EE")
!72 = distinct !{null, null}
!73 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Test", scope: !220, file: !2231, line: 242, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN7testing4TestE")
!74 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TestFactoryBase", scope: !221, file: !219, line: 435, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2230, vtableHolder: !74, identifier: "_ZTSN7testing8internal15TestFactoryBaseE")
!75 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TestMetaFactoryBase<bssl::(anonymous namespace)::VersionParam>", scope: !221, file: !218, line: 420, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2210, vtableHolder: !75, templateParams: !2233)
!76 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "TestMetaFactoryBase<std::tuple<unsigned short, unsigned int, bssl::(anonymous namespace)::ssl_test_ticket_aead_failure_mode> >", scope: !221, file: !218, line: 420, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2313, vtableHolder: !76, templateParams: !2315)
!77 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<const char *>", scope: !241, file: !686, line: 45, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !2355, templateParams: !2357, identifier: "_ZTSSt16initializer_listIPKcE")
!78 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ParamIteratorInterface<unsigned int>", scope: !221, file: !218, line: 99, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2399, vtableHolder: !78, templateParams: !2401, identifier: "_ZTSN7testing8internal22ParamIteratorInterfaceIjEE")
!79 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ParamGeneratorInterface<unsigned int>", scope: !221, file: !218, line: 171, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2376, vtableHolder: !79, templateParams: !2401, identifier: "_ZTSN7testing8internal23ParamGeneratorInterfaceIjEE")
!80 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ParamIteratorInterface<unsigned short>", scope: !221, file: !218, line: 99, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2454, vtableHolder: !80, templateParams: !2456, identifier: "_ZTSN7testing8internal22ParamIteratorInterfaceItEE")
!81 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "ParamGeneratorInterface<unsigned short>", scope: !221, file: !218, line: 171, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2431, vtableHolder: !81, templateParams: !2456, identifier: "_ZTSN7testing8internal23ParamGeneratorInterfaceItEE")
!82 = distinct !{null, null}
!83 = distinct !{null, null}
!84 = distinct !{null, null}
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nothrow_t", scope: !241, file: !2514, line: 92, size: 8, flags: DIFlagTypePassByValue, elements: !2519, identifier: "_ZTSSt9nothrow_t")
!86 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__weak_count<(__gnu_cxx::_Lock_policy)2>", scope: !241, file: !1117, line: 1140, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE")
!87 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__shared_count<(__gnu_cxx::_Lock_policy)2>", scope: !241, file: !1117, line: 893, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2563, templateParams: !1171, identifier: "_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE")
!88 = distinct !{!88, !1580}
!89 = distinct !{!89, !1580}
!90 = distinct !{!90, !1580}
!91 = distinct !{null}
!92 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEESt4lessIS8_ESaISt4pairIKS8_SB_EEEED2Ev, null}
!93 = distinct !{!93, !1580}
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__nonesuch", scope: !241, file: !1279, line: 3048, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt10__nonesuch")
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__conditional<false>", scope: !241, file: !1279, line: 126, size: 8, flags: DIFlagTypePassByValue, elements: !740, templateParams: !2731, identifier: "_ZTSSt13__conditionalILb0EE")
!96 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<const unsigned char *, std::vector<unsigned char, std::allocator<unsigned char> > > >", scope: !241, file: !685, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEEE")
!97 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<__gnu_cxx::__normal_iterator<unsigned char *, std::vector<unsigned char, std::allocator<unsigned char> > > >", scope: !241, file: !685, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEE")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<const unsigned char *>", scope: !241, file: !698, line: 221, size: 8, flags: DIFlagTypePassByValue, elements: !740, templateParams: !3016, identifier: "_ZTSSt15iterator_traitsIPKhE")
!99 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<const unsigned char *, std::vector<unsigned char, std::allocator<unsigned char> > >", scope: !687, file: !685, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !3014, templateParams: !3018, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPKhSt6vectorIhSaIhEEEE")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iterator_traits<unsigned char *>", scope: !241, file: !698, line: 210, size: 8, flags: DIFlagTypePassByValue, elements: !740, templateParams: !3069, identifier: "_ZTSSt15iterator_traitsIPhE")
!101 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__normal_iterator<unsigned char *, std::vector<unsigned char, std::allocator<unsigned char> > >", scope: !687, file: !685, line: 1047, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !3067, templateParams: !3070, identifier: "_ZTSN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEE")
!102 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "initializer_list<unsigned char>", scope: !241, file: !686, line: 45, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !3091, templateParams: !3093, identifier: "_ZTSSt16initializer_listIhE")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__type_identity<std::allocator<unsigned char> >", scope: !241, file: !1279, line: 139, size: 8, flags: DIFlagTypePassByValue, elements: !740, templateParams: !3095, identifier: "_ZTSSt15__type_identityISaIhEE")
!104 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__new_allocator<unsigned char>", scope: !241, file: !999, line: 63, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3148, templateParams: !3150, identifier: "_ZTSSt15__new_allocatorIhE")
!105 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "allocator<unsigned char>", scope: !241, file: !982, line: 130, size: 8, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3112, templateParams: !3150, identifier: "_ZTSSaIhE")
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rebind<unsigned char>", scope: !108, file: !262, line: 125, size: 8, flags: DIFlagTypePassByValue, elements: !740, templateParams: !3150, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIhEhE6rebindIhEE")
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "allocator_traits<std::allocator<unsigned char> >", scope: !241, file: !263, line: 428, size: 8, flags: DIFlagTypePassByValue, elements: !3171, templateParams: !3173, identifier: "_ZTSSt16allocator_traitsISaIhEE")
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__alloc_traits<std::allocator<unsigned char>, unsigned char>", scope: !687, file: !262, line: 45, size: 8, flags: DIFlagTypePassByValue, elements: !3186, templateParams: !3188, identifier: "_ZTSN9__gnu_cxx14__alloc_traitsISaIhEhEE")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl_data", scope: !111, file: !2144, line: 92, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3283, identifier: "_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_impl", scope: !111, file: !2144, line: 133, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3262, identifier: "_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Vector_base<unsigned char, std::allocator<unsigned char> >", scope: !241, file: !2144, line: 85, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3242, templateParams: !3284, identifier: "_ZTSSt12_Vector_baseIhSaIhEE")
!112 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "vector<unsigned char, std::allocator<unsigned char> >", scope: !241, file: !2144, line: 428, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2965, templateParams: !3286, identifier: "_ZTSSt6vectorIhSaIhEE")
!113 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__pair_base<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::vector<unsigned char, std::allocator<unsigned char> > >", scope: !241, file: !2700, line: 163, size: 8, flags: DIFlagTypePassByValue, elements: !3301, templateParams: !3304, identifier: "_ZTSSt11__pair_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEEE")
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::vector<unsigned char, std::allocator<unsigned char> > >", scope: !241, file: !2700, line: 187, size: 448, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2729, templateParams: !3307, identifier: "_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEEE")
!115 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MatchResultListener", scope: !220, file: !2686, line: 78, size: 128, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3346, vtableHolder: !115, identifier: "_ZTSN7testing19MatchResultListenerE")
!116 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MatcherDescriberInterface", scope: !220, file: !2686, line: 114, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3358, vtableHolder: !116, identifier: "_ZTSN7testing25MatcherDescriberInterfaceE")
!117 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MatcherInterface<const std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::vector<unsigned char, std::allocator<unsigned char> > > &>", scope: !220, file: !2686, line: 140, size: 64, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3314, vtableHolder: !116, templateParams: !3360, identifier: "_ZTSN7testing16MatcherInterfaceIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEEEEE")
!118 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_order", scope: !241, file: !3456, line: 79, baseType: !1165, size: 32, elements: !3583, identifier: "_ZTSSt12memory_order")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__atomic_base<int>", scope: !241, file: !3456, line: 341, size: 32, flags: DIFlagTypePassByReference, elements: !3576, templateParams: !3585, identifier: "_ZTSSt13__atomic_baseIiE")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic<int>", scope: !241, file: !3429, line: 822, size: 32, flags: DIFlagTypePassByReference, elements: !3455, templateParams: !3587, identifier: "_ZTSSt6atomicIiE")
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "SharedPayloadBase", scope: !221, file: !2686, line: 206, size: 32, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3428, identifier: "_ZTSN7testing8internal17SharedPayloadBaseE")
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "Buffer", scope: !124, file: !2686, line: 380, size: 64, flags: DIFlagTypePassByValue, elements: !3419, identifier: "_ZTSN7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEEEE6BufferE")
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VTable", scope: !124, file: !2686, line: 316, size: 256, flags: DIFlagTypePassByValue, elements: !3604, identifier: "_ZTSN7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEEEE6VTableE")
!124 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "MatcherBase<const std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::vector<unsigned char, std::allocator<unsigned char> > > &>", scope: !221, file: !2686, line: 228, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !3409, vtableHolder: !116, templateParams: !3360, identifier: "_ZTSN7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEEEEE")
!125 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Matcher<const std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::vector<unsigned char, std::allocator<unsigned char> > > &>", scope: !220, file: !2686, line: 463, size: 192, flags: DIFlagTypePassByReference | DIFlagNonTrivial, elements: !2699, vtableHolder: !116, templateParams: !3606, identifier: "_ZTSN7testing7MatcherIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEEEEE")
!126 = distinct !{ptr @_ZNSt6vectorIN7testing7MatcherIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES_IhSaIhEEEEESaISF_EED2Ev, null, null, null}
!127 = distinct !{!127, !1580}
!128 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEEEED2Ev, null}
!129 = distinct !{null, null, null}
!130 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, null}
!131 = distinct !{null, null, null, null}
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pair<std::_Rb_tree_const_iterator<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::vector<unsigned char, std::allocator<unsigned char> > > >, std::_Rb_tree_const_iterator<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::vector<unsigned char, std::allocator<unsigned char> > > > >", scope: !241, file: !685, line: 2992, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt4pairISt23_Rb_tree_const_iteratorIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEEEESC_E")
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pair<std::_Rb_tree_iterator<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::vector<unsigned char, std::allocator<unsigned char> > > >, std::_Rb_tree_iterator<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::vector<unsigned char, std::allocator<unsigned char> > > > >", scope: !241, file: !685, line: 2992, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt4pairISt17_Rb_tree_iteratorIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEEEESC_E")
!134 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "value_compare", scope: !165, file: !3633, line: 133, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEESt4lessIS5_ESaISt4pairIKS5_S8_EEE13value_compareE")
!135 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__pair_base<std::_Rb_tree_iterator<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::vector<unsigned char, std::allocator<unsigned char> > > >, bool>", scope: !241, file: !2700, line: 163, size: 8, flags: DIFlagTypePassByValue, elements: !3867, templateParams: !3870, identifier: "_ZTSSt11__pair_baseISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEEEEbE")
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pair<std::_Rb_tree_iterator<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::vector<unsigned char, std::allocator<unsigned char> > > >, bool>", scope: !241, file: !2700, line: 187, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !3852, templateParams: !3873, identifier: "_ZTSSt4pairISt17_Rb_tree_iteratorIS_IKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEEEEbE")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Node_insert_return<std::_Rb_tree_iterator<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::vector<unsigned char, std::allocator<unsigned char> > > >, std::_Node_handle<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::vector<unsigned char, std::allocator<unsigned char> > >, std::allocator<std::_Rb_tree_node<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::vector<unsigned char, std::allocator<unsigned char> > > > > > >", scope: !241, file: !3874, line: 394, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt19_Node_insert_returnISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEEEESt12_Node_handleIS7_SC_SaISt13_Rb_tree_nodeISC_EEEE")
!138 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Node_handle<std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::vector<unsigned char, std::allocator<unsigned char> > >, std::allocator<std::_Rb_tree_node<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::vector<unsigned char, std::allocator<unsigned char> > > > > >", scope: !241, file: !3874, line: 252, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt12_Node_handleINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIhSaIhEEESaISt13_Rb_tree_nodeISB_EEE")
!139 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::_Rb_tree_const_iterator<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::vector<unsigned char, std::allocator<unsigned char> > > > >", scope: !241, file: !685, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorISt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEEEEE")
!140 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<std::_Rb_tree_iterator<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::vector<unsigned char, std::allocator<unsigned char> > > > >", scope: !241, file: !685, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorISt17_Rb_tree_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEEEEE")
!141 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Rb_tree_color", scope: !241, file: !3690, line: 99, baseType: !1165, size: 32, elements: !3935, identifier: "_ZTSSt14_Rb_tree_color")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Rb_tree_node_base", scope: !241, file: !3690, line: 101, size: 256, flags: DIFlagTypePassByValue, elements: !3932, identifier: "_ZTSSt18_Rb_tree_node_base")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Rb_tree_const_iterator<std::pair<const std::__cxx11::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::vector<unsigned char, std::allocator<unsigned char> > > >", scope: !241, file: !3690, line: 328, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !3917, templateParams: !3937, identifier: "_ZTSSt23_Rb_tree_const_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIhSaIhEEEE")
end_hunk_1
