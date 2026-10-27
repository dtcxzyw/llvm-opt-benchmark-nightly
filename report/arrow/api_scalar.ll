Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/api_scalar?download=true
inline.NumInlined: 14068
inline.NumDeleted: 5439
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 96
begin_hunk_0_@_ZN5arrow7compute8internal20FromStructScalarImplINS0_17MakeStructOptionsEEclINS_8internal18DataMemberPropertyIS3_St6vectorIbSaIbEEEEEEvRKT_m:bb.a
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #30
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i

bb.ab:                                            ; preds = %.noexc.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %3, align 8, !tbaa !82, !noalias !1793 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i: ; preds = %bb.ab
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !84, !noalias !1793
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1793
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !1793
  call void @_ZN5arrow6ResultISt6vectorIbSaIbEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  %i.cl = load ptr, ptr %4, align 8, !tbaa !192, !noalias !1792 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i31, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.ac, !prof !193

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !199, !range !67, !noundef !68
  %i.co = trunc nuw i8 %i.cn to i1
  br i1 %i.co, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #28
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.ad, %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.cp = load ptr, ptr %5, align 8, !tbaa !82, !noalias !1792 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !84, !noalias !1792
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1792
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1792
  br label %_ZN5arrow7compute8internalL17GenericFromScalarISt6vectorIbSaIbEEEENSt9enable_ifIXsr3std7is_sameINS_11CTypeTraitsIT_E9ArrowTypeENS_8ListTypeEEE5valueENS_6ResultIS8_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit

bb.ae:                                            ; preds = %.noexc32
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cu, %bb.ae ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i.i ]
  %i.cv = load ptr, ptr %5, align 8, !tbaa !82, !noalias !1792 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i: ; preds = %.body.i
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !84, !noalias !1792
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i: ; preds = %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !1792
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !1792
  br label %.body

bb.af:                                            ; preds = %bb.y
  %i.da = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.db = load i8, ptr %i.da, align 8, !tbaa !235, !range !67, !noalias !1792, !noundef !68
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !1792
  invoke void @_ZN5arrow6Status8FromArgsIJRA16_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(16) @.str.222)
          to label %.noexc33 unwind label %bb.ca

.noexc33:                                         ; preds = %bb.ag
  call void @_ZN5arrow6ResultISt6vectorIbSaIbEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(8) %6) #28
  %i.dd = load ptr, ptr %6, align 8, !tbaa !192, !noalias !1792 ; 2 uses
  %.not.i40.i = icmp eq ptr %i.dd, null
  br i1 %.not.i40.i, label %_ZN5arrow6StatusD2Ev.exit41.i, label %bb.ah, !prof !193

bb.ah:                                            ; preds = %.noexc33
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !199, !range !67, !noundef !68
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %_ZN5arrow6StatusD2Ev.exit41.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #28
  br label %_ZN5arrow6StatusD2Ev.exit41.i

_ZN5arrow6StatusD2Ev.exit41.i:                    ; preds = %bb.ai, %bb.ah, %.noexc33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !1792
  br label %_ZN5arrow7compute8internalL17GenericFromScalarISt6vectorIbSaIbEEEENSt9enable_ifIXsr3std7is_sameINS_11CTypeTraitsIT_E9ArrowTypeENS_8ListTypeEEE5valueENS_6ResultIS8_EEE4typeERKSt10shared_ptrINS_6ScalarEE.exit

bb.aj:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !1792
  store ptr null, ptr %7, align 8, !tbaa !104, !noalias !1792
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.dh, align 8, !tbaa !105, !noalias !1792
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store ptr null, ptr %i.di, align 8, !tbaa !104, !noalias !1792
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 4 uses
  store i32 0, ptr %i.dj, align 8, !tbaa !105, !noalias !1792
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 4 uses
  store ptr null, ptr %i.dk, align 8, !tbaa !108, !noalias !1792
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bs, i64 48 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !454, !noalias !1792 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !217
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !490
  %.not324.i = icmp sgt i64 %i.dq, 0
  br i1 %.not324.i, label %.lr.ph.i, label %.thread.i

.lr.ph.i:                                         ; preds = %bb.aj
  %i.dr = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %10, i64 8
  br label %bb.al

bb.ak:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dv = load ptr, ptr %i.dl, align 8, !tbaa !454, !noalias !1792 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !217
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !490
  %.not32.i = icmp sgt i64 %i.dz, %indvars.iv.next.i
  br i1 %.not32.i, label %bb.al, label %.thread.i, !llvm.loop !1782

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ak ] ; 2 uses
  %i.ea = phi ptr [ %i.dm, %.lr.ph.i ], [ %i.dv, %bb.ak ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28, !noalias !1792
  invoke void @_ZNK5arrow5Array9GetScalarEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.243") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.ea, i64 noundef %indvars.iv.i)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.eb = load ptr, ptr %8, align 8, !tbaa !192, !noalias !1792
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %bb.ao, label %.critedge.i, !prof !193

.critedge.i:                                      ; preds = %bb.am
  call void @_ZN5arrow6ResultISt6vectorIbSaIbEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(8) %8) #28
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !1792
  br label %.loopexit.i

bb.an:                                            ; preds = %bb.al
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28, !noalias !1792
  call void @llvm.experimental.noalias.scope.decl(metadata !1794)
  call void @llvm.experimental.noalias.scope.decl(metadata !1795)
  %i.ee = load ptr, ptr %i.dr, align 8, !tbaa !121, !noalias !1796 ; 2 uses
  store ptr %i.ee, ptr %9, align 8, !tbaa !121, !alias.scope !1797, !noalias !1792
  %i.ef = load ptr, ptr %i.dt, align 8, !tbaa !114, !noalias !1796 ; 9 uses
  store ptr null, ptr %i.dt, align 8, !tbaa !114, !noalias !1796
  store ptr %i.ef, ptr %i.ds, align 8, !tbaa !114, !alias.scope !1797, !noalias !1792
  store ptr null, ptr %i.dr, align 8, !tbaa !121, !noalias !1796
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28, !noalias !1792
  invoke fastcc void @_ZN5arrow7compute8internalL17GenericFromScalarIbEENSt9enable_ifIXsr18is_primitive_ctypeINS_11CTypeTraitsIT_E9ArrowTypeEEE5valueENS_6ResultIS5_EEE4typeERKSt10shared_ptrINS_6ScalarEE(ptr dead_on_unwind noalias writable align 8 %10, ptr %i.ee)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.eg = load ptr, ptr %10, align 8, !tbaa !192, !noalias !1792
  %i.eh = icmp eq ptr %i.eg, null                 ; 2 uses
  br i1 %i.eh, label %bb.as, label %bb.aq, !prof !193

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN5arrow6ResultISt6vectorIbSaIbEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(8) %10) #28
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i

bb.ar:                                            ; preds = %bb.ao
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.as:                                            ; preds = %bb.ap
  %i.ej = load i8, ptr %i.du, align 8, !tbaa !246, !range !67, !noalias !1792, !noundef !68
  %i.ek = trunc nuw i8 %i.ej to i1                ; 2 uses
  %i.el = load ptr, ptr %i.di, align 8, !tbaa !104, !noalias !1792 ; 7 uses
  %i.em = load ptr, ptr %i.dk, align 8, !tbaa !108, !noalias !1792
  %.not.i42.i = icmp eq ptr %i.el, %i.em
  %.sroa.2.0.copyload.i11.i.i = load i32, ptr %i.dj, align 8, !noalias !1792 ; 4 uses
  br i1 %.not.i42.i, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.en = add i32 %.sroa.2.0.copyload.i11.i.i, 1
  store i32 %i.en, ptr %i.dj, align 8, !tbaa !105, !noalias !1792
  %i.eo = icmp eq i32 %.sroa.2.0.copyload.i11.i.i, 63
  br i1 %i.eo, label %bb.au, label %_ZNSt13_Bit_iteratorppEi.exit.i.i

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.dj, align 8, !tbaa !105, !noalias !1792
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %i.ep, ptr %i.di, align 8, !tbaa !104, !noalias !1792
  br label %_ZNSt13_Bit_iteratorppEi.exit.i.i

_ZNSt13_Bit_iteratorppEi.exit.i.i:                ; preds = %bb.au, %bb.at
  %i.eq = zext nneg i32 %.sroa.2.0.copyload.i11.i.i to i64
  %i.er = shl nuw i64 1, %i.eq                    ; 2 uses
  br i1 %i.ek, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i.i
  %i.es = load i64, ptr %i.el, align 8, !tbaa !260
  %i.et = or i64 %i.es, %i.er
  store i64 %i.et, ptr %i.el, align 8, !tbaa !260
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i

bb.aw:                                            ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i.i
  %i.eu = xor i64 %i.er, -1
  %i.ev = load i64, ptr %i.el, align 8, !tbaa !260
  %i.ew = and i64 %i.ev, %i.eu
  store i64 %i.ew, ptr %i.el, align 8, !tbaa !260
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i

bb.ax:                                            ; preds = %bb.as
  invoke void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr %i.el, i32 %.sroa.2.0.copyload.i11.i.i, i1 noundef zeroext %i.ek)
          to label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i unwind label %bb.bo

_ZNSt6vectorIbSaIbEE9push_backEb.exit.i:          ; preds = %bb.ax, %bb.aw, %bb.av, %bb.aq
  %i.ex = load ptr, ptr %10, align 8, !tbaa !192, !noalias !1792 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i.i.i, label %_ZN5arrow6ResultIbED2Ev.exit.i, label %bb.ay, !prof !193

bb.ay:                                            ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 1
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !199, !range !67, !noundef !68
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %_ZN5arrow6ResultIbED2Ev.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %10) #28
  br label %_ZN5arrow6ResultIbED2Ev.exit.i

_ZN5arrow6ResultIbED2Ev.exit.i:                   ; preds = %bb.az, %bb.ay, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !1792
  %.not.i.i44.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i44.i, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ba

bb.ba:                                            ; preds = %_ZN5arrow6ResultIbED2Ev.exit.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 4 uses
  %i.fc = load atomic i64, ptr %i.fb acquire, align 8 ; 2 uses
  %i.fd = icmp eq i64 %i.fc, 4294967297
  %i.fe = trunc i64 %i.fc to i32                  ; 2 uses
  br i1 %i.fd, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store i32 0, ptr %i.fb, align 8, !tbaa !116
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %i.ff, align 4, !tbaa !117
  %i.fg = load ptr, ptr %i.ef, align 8, !tbaa !75
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #28, !inline_history !1787
  %i.fj = load ptr, ptr %i.ef, align 8, !tbaa !75
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #28, !inline_history !1787
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.bc:                                            ; preds = %bb.ba
  %i.fm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84, !noalias !1792
  %.not.i.i.i.i = icmp eq i8 %i.fm, 0
  br i1 %.not.i.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fn = add nsw i32 %i.fe, -1
  store i32 %i.fn, ptr %i.fb, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.be:                                            ; preds = %bb.bc
  %i.fo = atomicrmw volatile add ptr %i.fb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.be, %bb.bd
  %.0.i.i.i.i.i = phi i32 [ %i.fe, %bb.bd ], [ %i.fo, %bb.be ]
  %i.fp = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.fp, label %bb.bf, label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !90

bb.bf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #28
  br label %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bb, %_ZN5arrow6ResultIbED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !1792
  %i.fq = load ptr, ptr %8, align 8, !tbaa !192, !noalias !1792 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %bb.bg, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i, !prof !193

bb.bg:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.fs = load ptr, ptr %i.dt, align 8, !tbaa !114, !noalias !1792 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.fs, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8 ; 4 uses
  %i.fu = load atomic i64, ptr %i.ft acquire, align 8 ; 2 uses
  %i.fv = icmp eq i64 %i.fu, 4294967297
  %i.fw = trunc i64 %i.fu to i32                  ; 2 uses
  br i1 %i.fv, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.ft, align 8, !tbaa !116
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  store i32 0, ptr %i.fx, align 4, !tbaa !117
  %i.fy = load ptr, ptr %i.fs, align 8, !tbaa !75
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8
  call void %i.ga(ptr noundef nonnull align 8 dereferenceable(16) %i.fs) #28, !inline_history !1788
  %i.gb = load ptr, ptr %i.fs, align 8, !tbaa !75
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(16) %i.fs) #28, !inline_history !1788
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.ge = load i8, ptr @__libc_single_threaded, align 1, !tbaa !84, !noalias !1792
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ge, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gf = add nsw i32 %i.fw, -1
  store i32 %i.gf, ptr %i.ft, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bj
  %i.gg = atomicrmw volatile add ptr %i.ft, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.fw, %bb.bk ], [ %i.gg, %bb.bl ]
  %i.gh = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.gh, label %bb.bm, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i, !prof !90

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fs) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i: ; preds = %bb.bm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.bi
  %.pr.i.pr.i = load ptr, ptr %8, align 8, !tbaa !192, !noalias !1792 ; 2 uses
  %.not.i.i45.i = icmp eq ptr %.pr.i.pr.i, null
  br i1 %.not.i.i45.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i, !prof !284

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i, %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.gi = phi ptr [ %.pr.i.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i ], [ %i.fq, %_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !199, !range !67, !noundef !68
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i, label %bb.bn

bb.bn:                                            ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %8) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i: ; preds = %bb.bn, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !1792
  br i1 %i.eh, label %bb.ak, label %.loopexit.i

bb.bo:                                            ; preds = %bb.ax
  %i.gm = landingpad { ptr, i32 }
          cleanup
  %i.gn = load ptr, ptr %10, align 8, !tbaa !192, !noalias !1792 ; 2 uses
  %.not.i.i46.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i46.i, label %_ZN5arrow6ResultIbED2Ev.exit47.i, label %bb.bp, !prof !193

bb.bp:                                            ; preds = %bb.bo
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 1
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !199, !range !67, !noundef !68
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %_ZN5arrow6ResultIbED2Ev.exit47.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(9) %10) #28
  br label %_ZN5arrow6ResultIbED2Ev.exit47.i

_ZN5arrow6ResultIbED2Ev.exit47.i:                 ; preds = %bb.bq, %bb.bp, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28, !noalias !1792
  br label %bb.br

bb.br:                                            ; preds = %_ZN5arrow6ResultIbED2Ev.exit47.i, %bb.ar
  %.pn.i = phi { ptr, i32 } [ %i.gm, %_ZN5arrow6ResultIbED2Ev.exit47.i ], [ %i.ei, %bb.ar ]
  call void @_ZNSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28, !noalias !1792
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28, !noalias !1792
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.an
  %.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.br ], [ %i.ed, %bb.an ]
  %i.gr = load ptr, ptr %7, align 8, !tbaa !104, !noalias !1792 ; 2 uses
  %.not.i.i48.i = icmp eq ptr %i.gr, null
  br i1 %.not.i.i48.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gs = load ptr, ptr %i.dk, align 8, !tbaa !108, !noalias !1792 ; 2 uses
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %i.gr to i64
  %i.gv = sub i64 %i.gt, %i.gu                    ; 2 uses
  %i.gw = ashr exact i64 %i.gv, 3
  %i.gx = sub nsw i64 0, %i.gw
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.gx
  call void @_ZdlPvm(ptr noundef %i.gy, i64 noundef %i.gv) #30
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !1792
  br label %.body

.thread.i:                                        ; preds = %bb.ak, %bb.aj
  store ptr null, ptr %17, align 8, !tbaa !192, !alias.scope !1792
  %i.gz = getelementptr inbounds nuw i8, ptr %17, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gz, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false)
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit50.i

.loopexit.i:                                      ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit.i, %.critedge.i
  %.pr.i = load ptr, ptr %7, align 8, !tbaa !104, !noalias !1792 ; 2 uses
  %.not.i.i49.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i49.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit50.i, label %bb.bu

bb.bu:                                            ; preds = %.loopexit.i
end_hunk_0
