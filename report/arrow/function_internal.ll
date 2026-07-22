inline.NumInlined: 1055
inline.NumDeleted: 604
begin_hunk_0_@_ZN5arrow7compute8internal26DeserializeFunctionOptionsERKNS_6BufferE:bb.a
bb.n:                                             ; preds = %bb.k
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !204, !noalias !252 ; 6 uses
  store ptr %i.as, ptr %11, align 8, !tbaa !204, !alias.scope !252
  %i.at = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !85, !noalias !252 ; 3 uses
  store ptr null, ptr %i.au, align 8, !tbaa !85, !noalias !252
  store ptr %i.av, ptr %i.at, align 8, !tbaa !85, !alias.scope !252
  store ptr null, ptr %i.ar, align 8, !tbaa !204, !noalias !252
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !253 ; 2 uses
  %.not = icmp eq i64 %i.ax, 1
  br i1 %.not, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.ax, ptr %i.a, align 8, !tbaa !258
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21, !noalias !259
  invoke void @_ZN5arrow8internal12JoinToStringIJRA68_KclEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(68) @.str.3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.p
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %12, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %.noexc
  %i.ay = load ptr, ptr %4, align 8, !tbaa !47, !noalias !259 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.q
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !50, !noalias !259
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

bb.r:                                             ; preds = %.noexc
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %4, align 8, !tbaa !47, !noalias !259 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.r
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !50, !noalias !259
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !259
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21, !noalias !259
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  %i.bj = load ptr, ptr %12, align 8, !tbaa !51   ; 2 uses
  %.not.i = icmp eq ptr %i.bj, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.s, !prof !54

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !55, !range !64, !noundef !65
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZN5arrow6StatusD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.cd

bb.u:                                             ; preds = %bb.w
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.v:                                             ; preds = %bb.p
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, %bb.v
  %eh.lpad-body = phi { ptr, i32 } [ %i.bo, %bb.v ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %bb.ck

bb.w:                                             ; preds = %bb.o
  %i.bp = invoke noundef i32 @_ZNK5arrow11RecordBatch11num_columnsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %bb.x unwind label %bb.u

bb.x:                                             ; preds = %bb.w
  %.not25 = icmp eq i32 %i.bp, 1
  br i1 %.not25, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.bq = invoke noundef i32 @_ZNK5arrow11RecordBatch11num_columnsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.as)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  store i32 %i.bq, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21, !noalias !264
  invoke void @_ZN5arrow8internal12JoinToStringIJRA71_KciEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(71) @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc52 unwind label %bb.ae

.noexc52:                                         ; preds = %bb.z
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %13, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %.noexc52
  %i.br = load ptr, ptr %3, align 8, !tbaa !47, !noalias !264 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50: ; preds = %bb.aa
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !50, !noalias !264
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i51

bb.ab:                                            ; preds = %.noexc52
  %i.bw = landingpad { ptr, i32 }
          cleanup
  %i.bx = load ptr, ptr %3, align 8, !tbaa !47, !noalias !264 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i47: ; preds = %bb.ab
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !50, !noalias !264
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i48: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i47
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !264
  br label %.body53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i51: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21, !noalias !264
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %13) #21
  %i.cc = load ptr, ptr %13, align 8, !tbaa !51   ; 2 uses
  %.not.i55 = icmp eq ptr %i.cc, null
  br i1 %.not.i55, label %_ZN5arrow6StatusD2Ev.exit56, label %bb.ac, !prof !54

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i51
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !55, !range !64, !noundef !65
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %_ZN5arrow6StatusD2Ev.exit56, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #21
  br label %_ZN5arrow6StatusD2Ev.exit56

_ZN5arrow6StatusD2Ev.exit56:                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i51, %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.cd

bb.ae:                                            ; preds = %bb.z, %bb.y
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %.body53

.body53:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i48, %bb.ae
  %eh.lpad-body54 = phi { ptr, i32 } [ %i.cg, %bb.ae ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i48 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  br label %bb.ck

bb.af:                                            ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #21
  %i.ch = load ptr, ptr %i.as, align 8, !tbaa !37
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  invoke void %i.cj(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.75") align 8 %14, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i32 noundef 0)
          to label %bb.ag unwind label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.ck = load ptr, ptr %14, align 8, !tbaa !165  ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !168
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !104 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !269
  %.not26 = icmp eq i32 %i.cp, 26
  br i1 %.not26, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  %i.cq = load ptr, ptr %i.cn, align 8, !tbaa !37
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8
  invoke void %i.cs(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(72) %i.cn, i1 noundef zeroext false)
          to label %bb.ai unwind label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21, !noalias !281
  invoke void @_ZN5arrow8internal12JoinToStringIJRA71_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESA_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 1 dereferenceable(71) @.str.5, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %.noexc62 unwind label %bb.ap

.noexc62:                                         ; preds = %bb.ai
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %15, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %.noexc62
  %i.ct = load ptr, ptr %2, align 8, !tbaa !47, !noalias !281 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i61, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60: ; preds = %bb.aj
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !50, !noalias !281
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #22
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i61

bb.ak:                                            ; preds = %.noexc62
  %i.cy = landingpad { ptr, i32 }
          cleanup
  %i.cz = load ptr, ptr %2, align 8, !tbaa !47, !noalias !281 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i57: ; preds = %bb.ak
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !50, !noalias !281
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i58: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !281
  br label %.body63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i61: ; preds = %bb.aj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i60
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !281
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %15) #21
  %i.de = load ptr, ptr %15, align 8, !tbaa !51   ; 2 uses
  %.not.i65 = icmp eq ptr %i.de, null
  br i1 %.not.i65, label %_ZN5arrow6StatusD2Ev.exit66, label %bb.al, !prof !54

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i61
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !55, !range !64, !noundef !65
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %_ZN5arrow6StatusD2Ev.exit66, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %15) #21
  br label %_ZN5arrow6StatusD2Ev.exit66

_ZN5arrow6StatusD2Ev.exit66:                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i61, %bb.al, %bb.am
  %i.di = load ptr, ptr %16, align 8, !tbaa !47   ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %_ZN5arrow6StatusD2Ev.exit66
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !50
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %_ZN5arrow6StatusD2Ev.exit66, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.bu

bb.an:                                            ; preds = %bb.af
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cc

bb.ao:                                            ; preds = %bb.ah
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

bb.ap:                                            ; preds = %bb.ai
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %.body63

.body63:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i58, %bb.ap
  %eh.lpad-body64 = phi { ptr, i32 } [ %i.dp, %bb.ap ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i58 ] ; 2 uses
  %i.dq = load ptr, ptr %16, align 8, !tbaa !47   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ds = icmp eq ptr %i.dq, %i.dr
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %.body63
  %i.dt = load i64, ptr %i.dr, align 8, !tbaa !50
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.du) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %.body63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70, %bb.ao
  %.pn31 = phi { ptr, i32 } [ %i.do, %bb.ao ], [ %eh.lpad-body64, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70 ], [ %eh.lpad-body64, %.body63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %bb.cb

bb.aq:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #21
  invoke void @_ZNK5arrow5Array9GetScalarEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.31") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %i.ck, i64 noundef 0)
          to label %bb.ar unwind label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.dv = load ptr, ptr %17, align 8, !tbaa !51
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.au, label %bb.as, !prof !54

bb.as:                                            ; preds = %bb.ar
  call void @_ZN5arrow6ResultISt10unique_ptrINS_7compute15FunctionOptionsESt14default_deleteIS3_EEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %17) #21
  br label %bb.bl

bb.at:                                            ; preds = %bb.aq
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.au:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.dy = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.eb = load <2 x ptr>, ptr %i.dy, align 8, !tbaa !103, !noalias !292
  %i.ec = load ptr, ptr %i.dy, align 8, !tbaa !140, !noalias !292 ; 5 uses
  store ptr null, ptr %i.ea, align 8, !tbaa !85, !noalias !292
  store <2 x ptr> %i.eb, ptr %18, align 16, !tbaa !103, !alias.scope !292
  store ptr null, ptr %i.dy, align 8, !tbaa !140, !noalias !292
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  %i.ed = getelementptr inbounds nuw i8, ptr %19, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ed, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow6ScalarE, i64 16), ptr %19, align 8, !tbaa !37
  %i.ee = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !85 ; 2 uses
  %i.ei = load <2 x ptr>, ptr %i.ef, align 8, !tbaa !103
  store <2 x ptr> %i.ei, ptr %i.ee, align 8, !tbaa !103
  %.not.i.i.i.i.i = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ScalarC2ERKS0_.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 3 uses
  %i.ek = load i8, ptr @__libc_single_threaded, align 1, !tbaa !50
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ek, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.el = load i32, ptr %i.ej, align 4, !tbaa !3
  %i.em = add nsw i32 %i.el, 1
  store i32 %i.em, ptr %i.ej, align 4, !tbaa !3
  br label %_ZN5arrow6ScalarC2ERKS0_.exit.i

bb.ax:                                            ; preds = %bb.av
  %i.en = atomicrmw volatile add ptr %i.ej, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6ScalarC2ERKS0_.exit.i

_ZN5arrow6ScalarC2ERKS0_.exit.i:                  ; preds = %bb.ax, %bb.aw, %bb.au
  %i.eo = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.eq = load i8, ptr %i.ep, align 8, !tbaa !107, !range !64, !noundef !65
  store i8 %i.eq, ptr %i.eo, align 8, !tbaa !107
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5arrow12StructScalarE, i64 16), ptr %19, align 8, !tbaa !37
  %i.er = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ec, i64 48 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ec, i64 56 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !89 ; 2 uses
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !100 ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.er, i8 0, i64 24, i1 false)
  %.not.i.i.i.i4.i = icmp eq ptr %i.eu, %i.ev
  br i1 %.not.i.i.i.i4.i, label %.noexc5.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN5arrow6ScalarC2ERKS0_.exit.i
  %i.ez = icmp ugt i64 %i.ey, 9223372036854775792
  br i1 %i.ez, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt10shared_ptrIN5arrow6ScalarEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !94

.noexc.i.i.i:                                     ; preds = %bb.ay
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #26
          to label %.noexc.i unwind label %bb.bc

.noexc.i:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt10shared_ptrIN5arrow6ScalarEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.ay
  %i.fa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #23
end_hunk_0
