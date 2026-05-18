inline.NumInlined: 1918
inline.NumDeleted: 831
begin_hunk_0_@_ZN4node4utilL12GetCallSitesERKN2v820FunctionCallbackInfoINS1_5ValueEEE:bb.a
  br label %bb.m

bb.m:                                             ; preds = %_ZN4node11Environment21set_callsite_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit, %bb.j
  %.sroa.077.0 = phi ptr [ %i.au, %_ZN4node11Environment21set_callsite_templateEN2v85LocalINS1_18DictionaryTemplateEEE.exit ], [ %i.as, %bb.j ]
  %.not153 = icmp sgt i32 %i.ao, 1
  br i1 %.not153, label %.lr.ph, label %.critedge51

.lr.ph:                                           ; preds = %bb.m
  %i.bc = ptrtoint ptr %i.c to i64
  %i.bd = add i64 %i.bc, 688
  %i.be = inttoptr i64 %i.bd to ptr               ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0157 = phi i32 [ 1, %.lr.ph ], [ %i.fw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.sroa.078.0156 = phi ptr [ null, %.lr.ph ], [ %.sroa.078.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 9 uses
  %.sroa.8.0155 = phi ptr [ null, %.lr.ph ], [ %.sroa.8.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 6 uses
  %.sroa.13.0154 = phi ptr [ null, %.lr.ph ], [ %.sroa.13.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.bm = call ptr @_ZNK2v810StackTrace8GetFrameEPNS_7IsolateEj(ptr noundef nonnull align 1 dereferenceable(1) %i.an, ptr noundef nonnull %i.c, i32 noundef %.0157) #22 ; 6 uses
  %i.bn = call ptr @_ZNK2v810StackFrame15GetFunctionNameEv(ptr noundef nonnull align 1 dereferenceable(1) %i.bm) #22 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  %.sroa.068.0 = select i1 %i.bo, ptr %i.be, ptr %i.bn
  %i.bp = call ptr @_ZNK2v810StackFrame13GetScriptNameEv(ptr noundef nonnull align 1 dereferenceable(1) %i.bm) #22 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  %.sroa.066.0 = select i1 %i.bq, ptr %i.be, ptr %i.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.br = call noundef i32 @_ZNK2v810StackFrame11GetScriptIdEv(ptr noundef nonnull align 1 dereferenceable(1) %i.bm) #22 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.bs = call i32 @llvm.abs.i32(i32 %i.br, i1 false) ; 5 uses
  %i.bt = icmp ult i32 %i.bs, 10
  br i1 %i.bt, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n, %bb.t
  %.02230.i.i = phi i32 [ %i.ca, %bb.t ], [ %i.bs, %bb.n ] ; 5 uses
  %.02329.i.i = phi i32 [ %i.cb, %bb.t ], [ 1, %bb.n ] ; 4 uses
  %i.bu = icmp ult i32 %.02230.i.i, 100
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.bv = add i32 %.02329.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.bw = icmp ult i32 %.02230.i.i, 1000
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bx = add i32 %.02329.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.r:                                             ; preds = %bb.p
  %i.by = icmp ult i32 %.02230.i.i, 10000
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bz = add i32 %.02329.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.t:                                             ; preds = %bb.r
  %i.ca = udiv i32 %.02230.i.i, 10000
  %i.cb = add i32 %.02329.i.i, 4                  ; 2 uses
  %i.cc = icmp ult i32 %.02230.i.i, 100000
  br i1 %i.cc, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !36

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.t, %bb.s, %bb.q, %bb.o, %bb.n
  %.0.i.i = phi i32 [ %i.bz, %bb.s ], [ %i.bv, %bb.o ], [ %i.bx, %bb.q ], [ 1, %bb.n ], [ %i.cb, %bb.t ] ; 2 uses
  %.lobit.i = lshr i32 %i.br, 31                  ; 2 uses
  %i.cd = add i32 %.0.i.i, %.lobit.i              ; 3 uses
  %i.ce = zext i32 %i.cd to i64                   ; 5 uses
  store ptr %i.bf, ptr %1, align 8, !alias.scope !33
  %i.cf = icmp ugt i32 %i.cd, 15
  br i1 %i.cf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.cg = add nuw nsw i64 %i.ce, 1
  %i.ch = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #24 ; 2 uses
  store ptr %i.ch, ptr %1, align 8, !alias.scope !33
  store i64 %i.ce, ptr %i.bf, align 8, !alias.scope !33
  br label %bb.x

bb.v:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  switch i32 %i.cd, label %bb.x [
    i32 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
    i32 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  store i8 45, ptr %i.bf, align 8, !alias.scope !33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.ci = phi ptr [ %i.ch, %bb.u ], [ %i.bf, %bb.v ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ci, i8 45, i64 %i.ce, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %bb.x, %bb.w, %bb.v
  %i.cj = phi ptr [ %i.bf, %bb.v ], [ %i.bf, %bb.w ], [ %i.ci, %bb.x ]
  store i64 %i.ce, ptr %i.bg, align 8, !alias.scope !33
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ce
  store i8 0, ptr %i.ck, align 1
  %i.cl = zext nneg i32 %.lobit.i to i64
  %i.cm = load ptr, ptr %1, align 8, !alias.scope !33
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cl ; 4 uses
  %i.co = icmp ugt i32 %i.bs, 99
  br i1 %i.co, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.cp = add i32 %.0.i.i, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.cs, %.lr.ph.i11.i ], [ %i.bs, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.dd, %.lr.ph.i11.i ], [ %i.cp, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.cq = urem i32 %.020.i.i, 100
  %i.cr = shl nuw nsw i32 %i.cq, 1
  %i.cs = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.ct = zext nneg i32 %i.cr to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !noalias !33
  %i.cx = zext i32 %.01819.i.i to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cx
  store i8 %i.cw, ptr %i.cy, align 1
  %i.cz = load i8, ptr %i.cu, align 2, !noalias !33
  %i.da = add i32 %.01819.i.i, -1
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.db
  store i8 %i.cz, ptr %i.dc, align 1
  %i.dd = add i32 %.01819.i.i, -2
  %i.de = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.de, label %.lr.ph.i11.i, label %._crit_edge.i.i, !llvm.loop !37

._crit_edge.i.i:                                  ; preds = %.lr.ph.i11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i32 [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.cs, %.lr.ph.i11.i ] ; 3 uses
  %i.df = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.df, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge.i.i
  %i.dg = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.dh ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dk = load i8, ptr %i.dj, align 1, !noalias !33
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  store i8 %i.dk, ptr %i.dl, align 1
  %i.dm = load i8, ptr %i.di, align 2, !noalias !33
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.z:                                             ; preds = %._crit_edge.i.i
  %i.dn = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.do = or disjoint i8 %i.dn, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.y, %bb.z
  %storemerge.i.i = phi i8 [ %i.do, %bb.z ], [ %i.dm, %bb.y ]
  store i8 %storemerge.i.i, ptr %i.cn, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %.sroa.068.0, ptr %2, align 16
  %i.dp = load ptr, ptr %1, align 8
  %i.dq = load i64, ptr %i.bg, align 8
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = call ptr @_ZN2v86String14NewFromOneByteEPNS_7IsolateEPKhNS_13NewStringTypeEi(ptr noundef nonnull %i.c, ptr noundef %i.dp, i32 noundef 0, i32 noundef %i.dr) #22 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.aa, label %_ZN4node13OneByteStringEPN2v87IsolateESt17basic_string_viewIcSt11char_traitsIcEENS0_13NewStringTypeE.exit, !prof !5

bb.aa:                                            ; preds = %_ZNSt7__cxx119to_stringEi.exit
  call void @_ZN2v812api_internal12ToLocalEmptyEv() #22
  br label %_ZN4node13OneByteStringEPN2v87IsolateESt17basic_string_viewIcSt11char_traitsIcEENS0_13NewStringTypeE.exit

_ZN4node13OneByteStringEPN2v87IsolateESt17basic_string_viewIcSt11char_traitsIcEENS0_13NewStringTypeE.exit: ; preds = %_ZNSt7__cxx119to_stringEi.exit, %bb.aa
  %i.du = ptrtoint ptr %i.ds to i64
  store i64 %i.du, ptr %i.bh, align 8
  store ptr %.sroa.066.0, ptr %i.bi, align 16
  %i.dv = call i64 @_ZNK2v810StackFrame11GetLocationEv(ptr noundef nonnull align 1 dereferenceable(1) %i.bm) #22
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.dv to i32
  %i.dw = add nsw i32 %.sroa.0.0.extract.trunc.i, 1
  %i.dx = call ptr @_ZN2v87Integer15NewFromUnsignedEPNS_7IsolateEj(ptr noundef nonnull %i.c, i32 noundef %i.dw) #22
  %i.dy = ptrtoint ptr %i.dx to i64
  store i64 %i.dy, ptr %i.bj, align 8
  %i.dz = call i64 @_ZNK2v810StackFrame11GetLocationEv(ptr noundef nonnull align 1 dereferenceable(1) %i.bm) #22
  %.sroa.3.0.extract.shift.i = lshr i64 %i.dz, 32
  %.sroa.3.0.extract.trunc.i = trunc nuw i64 %.sroa.3.0.extract.shift.i to i32
  %i.ea = add nsw i32 %.sroa.3.0.extract.trunc.i, 1
  %i.eb = call ptr @_ZN2v87Integer15NewFromUnsignedEPNS_7IsolateEj(ptr noundef nonnull %i.c, i32 noundef %i.ea) #22
  %i.ec = ptrtoint ptr %i.eb to i64
  store i64 %i.ec, ptr %i.bk, align 16
  %i.ed = call i64 @_ZNK2v810StackFrame11GetLocationEv(ptr noundef nonnull align 1 dereferenceable(1) %i.bm) #22
  %.sroa.3.0.extract.shift.i54 = lshr i64 %i.ed, 32
  %.sroa.3.0.extract.trunc.i55 = trunc nuw i64 %.sroa.3.0.extract.shift.i54 to i32
  %i.ee = add nsw i32 %.sroa.3.0.extract.trunc.i55, 1
  %i.ef = call ptr @_ZN2v87Integer15NewFromUnsignedEPNS_7IsolateEj(ptr noundef nonnull %i.c, i32 noundef %i.ee) #22 ; 2 uses
  %i.eg = ptrtoint ptr %i.ef to i64
  store i64 %i.eg, ptr %i.bl, align 8
  %3 = load <4 x ptr>, ptr %2, align 16
  %.fr = freeze <4 x ptr> %3
  %4 = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %5 = load ptr, ptr %i.bk, align 16
  %.fr218 = freeze ptr %5
  %6 = icmp eq ptr %.fr218, null
  %7 = icmp eq ptr %i.ef, null
  %8 = bitcast <4 x i1> %4 to i4
  %9 = icmp ne i4 %8, 0
  %op.rdx = or i1 %9, %6
  %op.rdx216 = select i1 %op.rdx, i1 true, i1 %7
  br i1 %op.rdx216, label %.critedge, label %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit

_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit: ; preds = %_ZN4node13OneByteStringEPN2v87IsolateESt17basic_string_viewIcSt11char_traitsIcEENS0_13NewStringTypeE.exit
  %i.eh = call ptr @_ZN2v818DictionaryTemplate11NewInstanceENS_5LocalINS_7ContextEEENS_10MemorySpanINS_10MaybeLocalINS_5ValueEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %.sroa.077.0, ptr %i.d, ptr nonnull %2, i64 6) #22 ; 2 uses
  %i.ei = call noundef ptr @_ZN2v87Isolate10GetCurrentEv() #22
  %i.ej = ptrtoint ptr %i.ei to i64
  %i.ek = add i64 %i.ej, 664
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = call i16 @_ZN2v86Object14SetPrototypeV2ENS_5LocalINS_7ContextEEENS1_INS_5ValueEEE(ptr noundef nonnull align 1 dereferenceable(1) %i.eh, ptr %i.d, ptr %i.el) #22
  %i.en = trunc i16 %i.em to i1
  %i.eo = ptrtoint ptr %i.eh to i64               ; 2 uses
  br i1 %i.en, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit
  %.not.i.i.i = icmp eq ptr %.sroa.8.0155, %.sroa.13.0154
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i64 %i.eo, ptr %.sroa.8.0155, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ep = ptrtoint ptr %.sroa.8.0155 to i64       ; 2 uses
  %i.eq = ptrtoint ptr %.sroa.078.0156 to i64     ; 3 uses
  %i.er = sub i64 %i.ep, %i.eq                    ; 4 uses
  %i.es = icmp eq i64 %i.er, 9223372036854775800
  br i1 %i.es, label %bb.ae, label %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.72) #23
  unreachable

_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.ad
  %i.et = ashr exact i64 %i.er, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.et, i64 1)
  %i.eu = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.et ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.et
  %i.ew = call i64 @llvm.umin.i64(i64 %i.eu, i64 1152921504606846975)
  %i.ex = select i1 %i.ev, i64 1152921504606846975, i64 %i.ew ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.ex, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ey = shl nuw nsw i64 %i.ex, 3
  %i.ez = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #24 ; 8 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.er
  store i64 %i.eo, ptr %i.fa, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %.sroa.078.0156, %.sroa.8.0155
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.fb = ptrtoaddr ptr %i.ez to i64
  %i.fc = add i64 %i.ep, -8
  %i.fd = sub i64 %i.fc, %i.eq                    ; 2 uses
  %i.fe = lshr i64 %i.fd, 3
  %i.ff = add nuw nsw i64 %i.fe, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fd, 24
  %i.fg = sub i64 %i.fb, %i.eq
  %diff.check = icmp ult i64 %i.fg, 32
  %or.cond215 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond215, label %.lr.ph.i.i.i.i.i.i.i.preheader216, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ff, 4611686018427387900     ; 3 uses
  %i.fh = shl i64 %n.vec, 3                       ; 2 uses
  %i.fi = getelementptr i8, ptr %i.ez, i64 %i.fh  ; 2 uses
  %i.fj = getelementptr i8, ptr %.sroa.078.0156, i64 %i.fh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fk = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ez, i64 %i.fk ; 2 uses
  %next.gep212 = getelementptr i8, ptr %.sroa.078.0156, i64 %i.fk ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.fl = getelementptr i8, ptr %next.gep212, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep212, align 8, !alias.scope !41, !noalias !38
  %wide.load213 = load <2 x i64>, ptr %i.fl, align 8, !alias.scope !41, !noalias !38
  %i.fm = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !38, !noalias !41
  store <2 x i64> %wide.load213, ptr %i.fm, align 8, !alias.scope !38, !noalias !41
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fn = icmp eq i64 %index.next, %n.vec
  br i1 %i.fn, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ff, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader216

.lr.ph.i.i.i.i.i.i.i.preheader216:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fi, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.078.0156, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader216, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader216 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader216 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38)
  call void @llvm.experimental.noalias.scope.decl(metadata !41)
  %i.fo = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !41, !noalias !38
  store i64 %i.fo, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !38, !noalias !41
  %i.fp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fp, %.sroa.8.0155
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !46

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ez, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.fi, %middle.block ], [ %i.fq, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i23.i.i.i.i = icmp eq ptr %.sroa.078.0156, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.078.0156, i64 noundef %i.er) #25
  br label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.af, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.ex
  br label %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit

_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit: ; preds = %bb.ac, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i
  %.sroa.13.1 = phi ptr [ %i.fr, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.13.0154, %bb.ac ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.8.0155, %bb.ac ]
  %.sroa.078.1 = phi ptr [ %i.ez, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %.sroa.078.0156, %bb.ac ] ; 2 uses
  %.sroa.8.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.fs = load ptr, ptr %1, align 8               ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.bf
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit
  %i.fu = load i64, ptr %i.bf, align 8
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN2v811LocalVectorINS_5ValueEE9push_backERKNS_5LocalIS1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  %i.fw = add nuw nsw i32 %.0157, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fw, %i.ao
  br i1 %exitcond.not, label %.critedge51.loopexit, label %bb.n, !llvm.loop !47

.critedge:                                        ; preds = %_ZN4node30NewDictionaryInstanceNullProtoEN2v85LocalINS0_7ContextEEENS1_INS0_18DictionaryTemplateEEENS0_10MemorySpanINS0_10MaybeLocalINS0_5ValueEEEEE.exit, %_ZN4node13OneByteStringEPN2v87IsolateESt17basic_string_viewIcSt11char_traitsIcEENS0_13NewStringTypeE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.fx = load ptr, ptr %1, align 8               ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.bf
  br i1 %i.fy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %.critedge
  %i.fz = load i64, ptr %i.bf, align 8
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit

.critedge51.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gb = ptrtoint ptr %.sroa.8.1 to i64
  br label %.critedge51

.critedge51:                                      ; preds = %.critedge51.loopexit, %bb.m
  %.sroa.13.0.lcssa = phi ptr [ null, %bb.m ], [ %.sroa.13.1, %.critedge51.loopexit ] ; 2 uses
  %.sroa.8.0.lcssa = phi i64 [ 0, %bb.m ], [ %i.gb, %.critedge51.loopexit ]
  %.sroa.078.0.lcssa = phi ptr [ null, %bb.m ], [ %.sroa.078.1, %.critedge51.loopexit ] ; 4 uses
  %i.gc = ptrtoint ptr %.sroa.078.0.lcssa to i64
  %i.gd = sub i64 %.sroa.8.0.lcssa, %i.gc
  %i.ge = ashr exact i64 %i.gd, 3
  %i.gf = call ptr @_ZN2v85Array3NewEPNS_7IsolateEPNS_5LocalINS_5ValueEEEm(ptr noundef nonnull %i.c, ptr noundef %.sroa.078.0.lcssa, i64 noundef %i.ge) #22 ; 2 uses
  %i.gg = load ptr, ptr %0, align 8               ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 24 ; 2 uses
  %i.gi = icmp eq ptr %i.gf, null
  br i1 %i.gi, label %bb.ag, label %bb.ah, !prof !5

bb.ag:                                            ; preds = %.critedge51
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = add i64 %i.gl, 648
  %i.gn = inttoptr i64 %i.gm to ptr
  %i.go = load i64, ptr %i.gn, align 8
  store i64 %i.go, ptr %i.gh, align 8
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit

bb.ah:                                            ; preds = %.critedge51
  %i.gp = load i64, ptr %i.gf, align 8
  store i64 %i.gp, ptr %i.gh, align 8
  br label %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit

_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit: ; preds = %bb.ah, %bb.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %.sroa.13.0145 = phi ptr [ %.sroa.13.0.lcssa, %bb.ah ], [ %.sroa.13.0.lcssa, %bb.ag ], [ %.sroa.13.0154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ]
  %.sroa.078.0137 = phi ptr [ %.sroa.078.0.lcssa, %bb.ah ], [ %.sroa.078.0.lcssa, %bb.ag ], [ %.sroa.078.0156, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58 ] ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.078.0137, null
  br i1 %.not.i.i.i.i, label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN2v811ReturnValueINS_5ValueEE3SetINS_5ArrayEEEvNS_5LocalIT_EE.exit
  %i.gq = ptrtoint ptr %.sroa.13.0145 to i64
  %i.gr = ptrtoint ptr %.sroa.078.0137 to i64
  %i.gs = sub i64 %i.gq, %i.gr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.078.0137, i64 noundef %i.gs) #25
  br label %_ZN2v811LocalVectorINS_5ValueEED2Ev.exit

end_hunk_0
