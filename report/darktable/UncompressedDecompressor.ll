inline.NumInlined: 763
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz:bb.a
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #16 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  resume { ptr, i32 } %i.d
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !219
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !221
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !call_target !222, !inline_history !228
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !call_target !229, !inline_history !228
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !111
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !108
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !230

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed24UncompressedDecompressor19readUncompressedRawEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !105  ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.j = load i32, ptr %i.i, align 8, !tbaa !36   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !231  ; 13 uses
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = zext i32 %i.h to i64
  %i.p = add nsw i64 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !217
  %i.s = sext i32 %i.r to i64
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.s) ; 3 uses
  %i.t = trunc i64 %.sroa.speculated to i32       ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 553
  %i.v = load i8, ptr %i.u, align 1, !tbaa !215
  %i.w = icmp eq i8 %i.v, 1
  br i1 %i.w, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.y = load i32, ptr %i.x, align 4, !tbaa !213  ; 5 uses
  %i.z = icmp eq i32 %i.y, 32
  br i1 %i.z, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31, !noalias !232 ; 3 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !104, !noalias !232
  %i.af = mul nsw i32 %i.ae, %i.j                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !106, !noalias !232
  %i.ai = ashr i32 %i.d, 2                        ; 2 uses
  %i.aj = icmp sge i32 %i.ai, %i.af
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load i32, ptr %i.k, align 8, !tbaa !235
  %i.al = mul i32 %i.ak, %i.j                     ; 2 uses
  %i.am = icmp samesign ult i32 %i.al, %i.af
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp samesign ult i32 %i.m, %i.ah
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = mul i32 %i.m, %i.ai
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ap
  %i.ar = zext i32 %i.al to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ar ; 22 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.au = load i32, ptr %i.at, align 8, !tbaa !212 ; 7 uses
  %i.av = sub nsw i64 %.sroa.speculated, %i.n     ; 9 uses
  %i.aw = trunc i64 %i.av to i32                  ; 4 uses
  %i.ax = mul i32 %i.au, %i.aw                    ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !29 ; 2 uses
  %i.ba = zext i32 %i.az to i64                   ; 3 uses
  %i.bb = zext i32 %i.ax to i64                   ; 19 uses
  %i.bc = add nuw nsw i64 %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !28 ; 3 uses
  %i.bf = zext i32 %i.be to i64
  %.not.i.i.i = icmp samesign ugt i64 %i.bc, %i.bf
  br i1 %.not.i.i.i, label %bb.d, label %_ZN8rawspeed10ByteStream7getDataEj.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #6
  unreachable

_ZN8rawspeed10ByteStream7getDataEj.exit:          ; preds = %bb.c
  %i.bg = load ptr, ptr %0, align 8, !tbaa !107, !nonnull !131, !noundef !131 ; 2 uses
  %i.bh = ptrtoaddr ptr %i.bg to i64
  %i.bi = icmp sgt i32 %i.be, -1
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i32 %i.az, %i.ax            ; 2 uses
  %i.bk = icmp samesign ule i32 %i.bj, %i.be
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ba ; 22 uses
  %i.bm = icmp sgt i32 %i.ax, -1
  tail call void @llvm.assume(i1 %i.bm)
  store i32 %i.bj, ptr %i.ay, align 8, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 596
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !236
  %i.bp = mul i32 %i.bo, %i.f                     ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.bq = icmp sgt i32 %i.au, 0
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = icmp sgt i32 %i.bp, 0
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = icmp sgt i32 %i.aw, 0
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = icmp samesign ule i32 %i.bp, %i.au
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = icmp samesign uge i32 %i.d, %i.bp
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = icmp eq i32 %i.aw, 1                    ; 2 uses
  %i.bw = icmp eq i32 %i.d, %i.bp
  %or.cond.i.i.i = or i1 %i.bv, %i.bw
  br i1 %or.cond.i.i.i, label %_ZNK8rawspeed10Array2DRefISt4byteE15getAsArray1DRefEv.exit.i.i, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i

_ZNK8rawspeed10Array2DRefISt4byteE15getAsArray1DRefEv.exit.i.i: ; preds = %_ZN8rawspeed10ByteStream7getDataEj.exit
  %i.bx = mul nuw nsw i32 %i.bp, %i.aw            ; 2 uses
  %i.by = icmp eq i32 %i.au, %i.bp
  %or.cond.i22.i.i = or i1 %i.bv, %i.by
  br i1 %or.cond.i22.i.i, label %bb.e, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i: ; preds = %_ZNK8rawspeed10Array2DRefISt4byteE15getAsArray1DRefEv.exit.i.i, %_ZN8rawspeed10ByteStream7getDataEj.exit
  %i.bz = icmp samesign ugt i32 %i.bp, 1
  %i.ca = zext nneg i32 %i.bp to i64              ; 27 uses
  br i1 %i.bz, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i, label %iter.check166, !prof !237

iter.check166:                                    ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i
  %i.cb = zext nneg i32 %i.au to i64              ; 9 uses
  %i.cc = and i64 %i.av, 2147483647               ; 8 uses
  %i.cd = zext nneg i32 %i.d to i64               ; 9 uses
  %min.iters.check146 = icmp samesign ult i64 %i.cc, 4
  br i1 %min.iters.check146, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader, label %vector.scevcheck141

vector.scevcheck141:                              ; preds = %iter.check166
  %ident.check142 = icmp ne i32 %i.d, 1
  %ident.check143 = icmp ne i32 %i.au, 1
  %i.ce = or i1 %ident.check142, %ident.check143
  br i1 %i.ce, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader, label %vector.memcheck144

vector.memcheck144:                               ; preds = %vector.scevcheck141
  %i.cf = shl nuw nsw i64 %i.ar, 2
  %i.cg = add i64 %i.cf, %i.ac
  %i.ch = add i64 %i.bh, %i.ba
  %i.ci = sub i64 %i.ch, %i.cg
  %diff.check145 = icmp ugt i64 %i.ci, -32
  br i1 %diff.check145, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader, label %vector.main.loop.iter.check147

vector.main.loop.iter.check147:                   ; preds = %vector.memcheck144
  %min.iters.check148 = icmp samesign ult i64 %i.cc, 32
  br i1 %min.iters.check148, label %vec.epilog.ph170, label %vector.ph149

vector.ph149:                                     ; preds = %vector.main.loop.iter.check147
  %i.cj = and i64 %i.av, 28
  %n.vec150 = and i64 %i.av, 2147483616           ; 4 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph149
  %index158 = phi i64 [ 0, %vector.ph149 ], [ %index.next161, %vector.body157 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.as, i64 %index158
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bl, i64 %index158
  %wide.load160 = load <32 x i8>, ptr %i.cl, align 1, !tbaa !111
  store <32 x i8> %wide.load160, ptr %i.ck, align 1, !tbaa !111
  %index.next161 = add nuw i64 %index158, 32      ; 2 uses
  %i.cm = icmp eq i64 %index.next161, %n.vec150
  br i1 %i.cm, label %middle.block163, label %vector.body157, !llvm.loop !238

middle.block163:                                  ; preds = %vector.body157
  %cmp.n164 = icmp eq i64 %i.cc, %n.vec150
  br i1 %cmp.n164, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %vec.epilog.iter.check168

vec.epilog.iter.check168:                         ; preds = %middle.block163
  %min.epilog.iters.check169 = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check169, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader, label %vec.epilog.ph170, !prof !239

vec.epilog.ph170:                                 ; preds = %vector.main.loop.iter.check147, %vec.epilog.iter.check168
  %vec.epilog.resume.val165 = phi i64 [ %n.vec150, %vec.epilog.iter.check168 ], [ 0, %vector.main.loop.iter.check147 ]
  %n.vec171 = and i64 %i.av, 2147483644           ; 3 uses
  br label %vec.epilog.vector.body181

vec.epilog.vector.body181:                        ; preds = %vec.epilog.vector.body181, %vec.epilog.ph170
  %index182 = phi i64 [ %vec.epilog.resume.val165, %vec.epilog.ph170 ], [ %index.next185, %vec.epilog.vector.body181 ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.as, i64 %index182
  %i.co = getelementptr inbounds nuw i8, ptr %i.bl, i64 %index182
  %wide.load184 = load <4 x i8>, ptr %i.co, align 1, !tbaa !111
  store <4 x i8> %wide.load184, ptr %i.cn, align 1, !tbaa !111
  %index.next185 = add nuw i64 %index182, 4       ; 2 uses
  %i.cp = icmp eq i64 %index.next185, %n.vec171
  br i1 %i.cp, label %vec.epilog.middle.block187, label %vec.epilog.vector.body181, !llvm.loop !240

vec.epilog.middle.block187:                       ; preds = %vec.epilog.vector.body181
  %cmp.n188 = icmp eq i64 %i.cc, %n.vec171
  br i1 %cmp.n188, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader: ; preds = %vector.memcheck144, %vector.scevcheck141, %iter.check166, %vec.epilog.iter.check168, %vec.epilog.middle.block187
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check166 ], [ 0, %vector.scevcheck141 ], [ 0, %vector.memcheck144 ], [ %n.vec150, %vec.epilog.iter.check168 ], [ %n.vec171, %vec.epilog.middle.block187 ] ; 4 uses
  %1 = sub i64 %i.av, %indvars.iv.i.i.ph
  %xtraiter196 = and i64 %1, 7                    ; 2 uses
  %lcmp.mod197.not = icmp eq i64 %xtraiter196, 0
  br i1 %lcmp.mod197.not, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol.loopexit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol ], [ %indvars.iv.i.i.ph, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader ] ; 4 uses
  %prol.iter198 = phi i64 [ %prol.iter198.next, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol ], [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader ]
  %i.cq = icmp samesign ult i64 %indvars.iv.i.i.prol, %i.cc
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = mul nuw nsw i64 %indvars.iv.i.i.prol, %i.cd
  %i.cs = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.cr
  %i.ct = mul nuw nsw i64 %indvars.iv.i.i.prol, %i.cb ; 2 uses
  %i.cu = add nuw nsw i64 %i.ct, %i.ca
  %i.cv = icmp samesign ule i64 %i.cu, %i.bb
  tail call void @llvm.assume(i1 %i.cv)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ct
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !111
  store i8 %i.cx, ptr %i.cs, align 1, !tbaa !111
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter198.next = add i64 %prol.iter198, 1   ; 2 uses
  %prol.iter198.cmp.not = icmp eq i64 %prol.iter198.next, %xtraiter196
  br i1 %prol.iter198.cmp.not, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol.loopexit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol, !llvm.loop !241

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol.loopexit: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol ]
  %i.cy = sub nsw i64 %indvars.iv.i.i.ph, %i.cc
  %i.cz = icmp ugt i64 %i.cy, -8
  br i1 %i.cz, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i
  %i.da = and i64 %i.av, 2147483647               ; 3 uses
  %i.db = zext nneg i32 %i.d to i64               ; 9 uses
  %i.dc = zext nneg i32 %i.au to i64              ; 9 uses
  %i.dd = add nsw i64 %i.da, -1
  %xtraiter199 = and i64 %i.av, 7                 ; 3 uses
  %i.de = icmp ult i64 %i.dd, 7
  br i1 %i.de, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil.preheader, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i.new

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i.new: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i
  %unroll_iter203 = and i64 %i.av, 2147483640
  br label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i.new
  %indvars.iv46.i.i = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i.new ], [ %indvars.iv.next47.i.i.7, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i ] ; 10 uses
  %niter204 = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i.new ], [ %niter204.next.7, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i ]
  %i.df = mul nuw nsw i64 %indvars.iv46.i.i, %i.db
  %i.dg = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.df
  %i.dh = mul nuw nsw i64 %indvars.iv46.i.i, %i.dc ; 2 uses
  %i.di = add nuw nsw i64 %i.dh, %i.ca
  %i.dj = icmp samesign ule i64 %i.di, %i.bb
  tail call void @llvm.assume(i1 %i.dj)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.dh
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr nonnull align 1 %i.dk, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i = or disjoint i64 %indvars.iv46.i.i, 1 ; 2 uses
  %i.dl = mul nuw nsw i64 %indvars.iv.next47.i.i, %i.db
  %i.dm = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dl
  %i.dn = mul nuw nsw i64 %indvars.iv.next47.i.i, %i.dc ; 2 uses
  %i.do = add nuw nsw i64 %i.dn, %i.ca
  %i.dp = icmp samesign ule i64 %i.do, %i.bb
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.dn
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr nonnull align 1 %i.dq, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.1 = or disjoint i64 %indvars.iv46.i.i, 2 ; 2 uses
  %i.dr = mul nuw nsw i64 %indvars.iv.next47.i.i.1, %i.db
  %i.ds = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dr
  %i.dt = mul nuw nsw i64 %indvars.iv.next47.i.i.1, %i.dc ; 2 uses
  %i.du = add nuw nsw i64 %i.dt, %i.ca
  %i.dv = icmp samesign ule i64 %i.du, %i.bb
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.dt
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ds, ptr nonnull align 1 %i.dw, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.2 = or disjoint i64 %indvars.iv46.i.i, 3 ; 2 uses
  %i.dx = mul nuw nsw i64 %indvars.iv.next47.i.i.2, %i.db
  %i.dy = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dx
  %i.dz = mul nuw nsw i64 %indvars.iv.next47.i.i.2, %i.dc ; 2 uses
  %i.ea = add nuw nsw i64 %i.dz, %i.ca
  %i.eb = icmp samesign ule i64 %i.ea, %i.bb
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.dz
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dy, ptr nonnull align 1 %i.ec, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.3 = or disjoint i64 %indvars.iv46.i.i, 4 ; 2 uses
  %i.ed = mul nuw nsw i64 %indvars.iv.next47.i.i.3, %i.db
  %i.ee = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ed
  %i.ef = mul nuw nsw i64 %indvars.iv.next47.i.i.3, %i.dc ; 2 uses
  %i.eg = add nuw nsw i64 %i.ef, %i.ca
  %i.eh = icmp samesign ule i64 %i.eg, %i.bb
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ef
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ee, ptr nonnull align 1 %i.ei, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.4 = or disjoint i64 %indvars.iv46.i.i, 5 ; 2 uses
  %i.ej = mul nuw nsw i64 %indvars.iv.next47.i.i.4, %i.db
  %i.ek = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ej
  %i.el = mul nuw nsw i64 %indvars.iv.next47.i.i.4, %i.dc ; 2 uses
  %i.em = add nuw nsw i64 %i.el, %i.ca
  %i.en = icmp samesign ule i64 %i.em, %i.bb
  tail call void @llvm.assume(i1 %i.en)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.el
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ek, ptr nonnull align 1 %i.eo, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.5 = or disjoint i64 %indvars.iv46.i.i, 6 ; 2 uses
  %i.ep = mul nuw nsw i64 %indvars.iv.next47.i.i.5, %i.db
  %i.eq = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ep
  %i.er = mul nuw nsw i64 %indvars.iv.next47.i.i.5, %i.dc ; 2 uses
  %i.es = add nuw nsw i64 %i.er, %i.ca
  %i.et = icmp samesign ule i64 %i.es, %i.bb
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.er
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eq, ptr nonnull align 1 %i.eu, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.6 = or disjoint i64 %indvars.iv46.i.i, 7 ; 3 uses
  %i.ev = icmp samesign ult i64 %indvars.iv.next47.i.i.6, %i.da
  tail call void @llvm.assume(i1 %i.ev)
  %i.ew = mul nuw nsw i64 %indvars.iv.next47.i.i.6, %i.db
  %i.ex = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ew
  %i.ey = mul nuw nsw i64 %indvars.iv.next47.i.i.6, %i.dc ; 2 uses
  %i.ez = add nuw nsw i64 %i.ey, %i.ca
  %i.fa = icmp samesign ule i64 %i.ez, %i.bb
  tail call void @llvm.assume(i1 %i.fa)
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ey
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ex, ptr nonnull align 1 %i.fb, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.7 = add nuw nsw i64 %indvars.iv46.i.i, 8 ; 2 uses
  %niter204.next.7 = add nuw i64 %niter204, 8     ; 2 uses
  %niter204.ncmp.7 = icmp eq i64 %niter204.next.7, %unroll_iter203
  br i1 %niter204.ncmp.7, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit.unr-lcssa, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i, !llvm.loop !242

bb.e:                                             ; preds = %_ZNK8rawspeed10Array2DRefISt4byteE15getAsArray1DRefEv.exit.i.i
  %i.fc = icmp samesign ugt i32 %i.bx, 1
  br i1 %i.fc, label %bb.f, label %bb.g, !prof !237

bb.f:                                             ; preds = %bb.e
  %i.fd = zext nneg i32 %i.bx to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull align 1 %i.bl, i64 %i.fd, i1 false)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

bb.g:                                             ; preds = %bb.e
  %i.fe = load i8, ptr %i.bl, align 1, !tbaa !111
  store i8 %i.fe, ptr %i.as, align 1, !tbaa !111
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol.loopexit, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i ], [ %indvars.iv.i.i.unr, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol.loopexit ] ; 10 uses
  %i.ff = mul nuw nsw i64 %indvars.iv.i.i, %i.cd
  %i.fg = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ff
  %i.fh = mul nuw nsw i64 %indvars.iv.i.i, %i.cb  ; 2 uses
  %i.fi = add nuw nsw i64 %i.fh, %i.ca
  %i.fj = icmp samesign ule i64 %i.fi, %i.bb
  tail call void @llvm.assume(i1 %i.fj)
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.fh
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !111
  store i8 %i.fl, ptr %i.fg, align 1, !tbaa !111
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fm = mul nuw nsw i64 %indvars.iv.next.i.i, %i.cd
  %i.fn = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.fm
  %i.fo = mul nuw nsw i64 %indvars.iv.next.i.i, %i.cb ; 2 uses
  %i.fp = add nuw nsw i64 %i.fo, %i.ca
  %i.fq = icmp samesign ule i64 %i.fp, %i.bb
  tail call void @llvm.assume(i1 %i.fq)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.fo
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !111
  store i8 %i.fs, ptr %i.fn, align 1, !tbaa !111
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ft = mul nuw nsw i64 %indvars.iv.next.i.i.1, %i.cd
  %i.fu = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ft
  %i.fv = mul nuw nsw i64 %indvars.iv.next.i.i.1, %i.cb ; 2 uses
  %i.fw = add nuw nsw i64 %i.fv, %i.ca
  %i.fx = icmp samesign ule i64 %i.fw, %i.bb
  tail call void @llvm.assume(i1 %i.fx)
  %i.fy = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.fv
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !111
  store i8 %i.fz, ptr %i.fu, align 1, !tbaa !111
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ga = mul nuw nsw i64 %indvars.iv.next.i.i.2, %i.cd
  %i.gb = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ga
  %i.gc = mul nuw nsw i64 %indvars.iv.next.i.i.2, %i.cb ; 2 uses
  %i.gd = add nuw nsw i64 %i.gc, %i.ca
  %i.ge = icmp samesign ule i64 %i.gd, %i.bb
  tail call void @llvm.assume(i1 %i.ge)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.gc
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !111
  store i8 %i.gg, ptr %i.gb, align 1, !tbaa !111
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.gh = mul nuw nsw i64 %indvars.iv.next.i.i.3, %i.cd
  %i.gi = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.gh
  %i.gj = mul nuw nsw i64 %indvars.iv.next.i.i.3, %i.cb ; 2 uses
  %i.gk = add nuw nsw i64 %i.gj, %i.ca
  %i.gl = icmp samesign ule i64 %i.gk, %i.bb
  tail call void @llvm.assume(i1 %i.gl)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.gj
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !111
  store i8 %i.gn, ptr %i.gi, align 1, !tbaa !111
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.go = mul nuw nsw i64 %indvars.iv.next.i.i.4, %i.cd
  %i.gp = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.go
  %i.gq = mul nuw nsw i64 %indvars.iv.next.i.i.4, %i.cb ; 2 uses
  %i.gr = add nuw nsw i64 %i.gq, %i.ca
  %i.gs = icmp samesign ule i64 %i.gr, %i.bb
  tail call void @llvm.assume(i1 %i.gs)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.gq
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !111
  store i8 %i.gu, ptr %i.gp, align 1, !tbaa !111
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.gv = mul nuw nsw i64 %indvars.iv.next.i.i.5, %i.cd
  %i.gw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.gv
  %i.gx = mul nuw nsw i64 %indvars.iv.next.i.i.5, %i.cb ; 2 uses
  %i.gy = add nuw nsw i64 %i.gx, %i.ca
  %i.gz = icmp samesign ule i64 %i.gy, %i.bb
  tail call void @llvm.assume(i1 %i.gz)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.gx
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !111
  store i8 %i.hb, ptr %i.gw, align 1, !tbaa !111
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 3 uses
  %i.hc = icmp samesign ult i64 %indvars.iv.next.i.i.6, %i.cc
  tail call void @llvm.assume(i1 %i.hc)
  %i.hd = mul nuw nsw i64 %indvars.iv.next.i.i.6, %i.cd
  %i.he = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.hd
  %i.hf = mul nuw nsw i64 %indvars.iv.next.i.i.6, %i.cb ; 2 uses
  %i.hg = add nuw nsw i64 %i.hf, %i.ca
  %i.hh = icmp samesign ule i64 %i.hg, %i.bb
  tail call void @llvm.assume(i1 %i.hh)
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.hf
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !111
  store i8 %i.hj, ptr %i.he, align 1, !tbaa !111
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %i.cc
  br i1 %.not.i.i.7, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i, !llvm.loop !243

bb.h:                                             ; preds = %bb.b
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hl = load i8, ptr %i.hk, align 8, !tbaa !214 ; 3 uses
  %i.hm = icmp eq i8 %i.hl, 1                     ; 2 uses
  %i.hn = icmp eq i32 %i.y, 16                    ; 2 uses
  %or.cond = and i1 %i.hn, %i.hm
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerMSBENS_13ieee_754_20088Binary16EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.t, i32 noundef %i.m)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

bb.j:                                             ; preds = %bb.h
  %i.ho = icmp eq i8 %i.hl, 0
  br i1 %i.ho, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  br i1 %i.hn, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerLSBENS_13ieee_754_20088Binary16EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.t, i32 noundef %i.m)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

bb.m:                                             ; preds = %bb.j
  %i.hp = icmp eq i32 %i.y, 24
  %or.cond105 = and i1 %i.hp, %i.hm
  br i1 %or.cond105, label %bb.n, label %.thread104

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerMSBENS_13ieee_754_20088Binary24EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.t, i32 noundef %i.m)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

bb.o:                                             ; preds = %bb.k
  %i.hq = icmp eq i32 %i.y, 24
  br i1 %i.hq, label %bb.p, label %.thread104

bb.p:                                             ; preds = %bb.o
  tail call void @_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerLSBENS_13ieee_754_20088Binary24EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.t, i32 noundef %i.m)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

.thread104:                                       ; preds = %bb.m, %bb.o
  %i.hr = zext i8 %i.hl to i32
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed24UncompressedDecompressor19readUncompressedRawEv, i32 noundef %i.y, i32 noundef %i.hr) #6
  unreachable

bb.q:                                             ; preds = %bb.a
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ht = load i8, ptr %i.hs, align 8, !tbaa !214
  switch i8 %i.ht, label %bb.u [
    i8 1, label %bb.r
    i8 2, label %bb.s
    i8 3, label %bb.t
  ]

bb.r:                                             ; preds = %bb.q
  tail call void @_ZNK8rawspeed24UncompressedDecompressor15decodePackedIntINS_14BitStreamerMSBEEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.t, i32 noundef %i.m)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

bb.s:                                             ; preds = %bb.q
  tail call void @_ZNK8rawspeed24UncompressedDecompressor15decodePackedIntINS_16BitStreamerMSB16EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.t, i32 noundef %i.m)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

bb.t:                                             ; preds = %bb.q
  tail call void @_ZNK8rawspeed24UncompressedDecompressor15decodePackedIntINS_16BitStreamerMSB32EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.t, i32 noundef %i.m)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

bb.u:                                             ; preds = %bb.q
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !213
  %i.hw = icmp eq i32 %i.hv, 16
  br i1 %i.hw, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !31, !noalias !244 ; 3 uses
  %i.hz = ptrtoaddr ptr %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !104, !noalias !244
  %i.ic = mul nsw i32 %i.ib, %i.j                 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !106, !noalias !244
  %i.if = ashr i32 %i.d, 1                        ; 2 uses
  %i.ig = icmp sge i32 %i.if, %i.ic
  tail call void @llvm.assume(i1 %i.ig)
  %i.ih = load i32, ptr %i.k, align 8, !tbaa !235
  %i.ii = mul i32 %i.ih, %i.j                     ; 2 uses
  %i.ij = icmp samesign ult i32 %i.ii, %i.ic
  tail call void @llvm.assume(i1 %i.ij)
  %i.ik = icmp samesign ult i32 %i.m, %i.ie
  tail call void @llvm.assume(i1 %i.ik)
  %i.il = mul i32 %i.m, %i.if
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.hy, i64 %i.im
  %i.io = zext i32 %i.ii to i64                   ; 2 uses
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %i.io ; 22 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !212 ; 7 uses
  %i.is = sub nsw i64 %.sroa.speculated, %i.n     ; 9 uses
  %i.it = trunc i64 %i.is to i32                  ; 4 uses
  %i.iu = mul i32 %i.ir, %i.it                    ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !29 ; 2 uses
  %i.ix = zext i32 %i.iw to i64                   ; 3 uses
  %i.iy = zext i32 %i.iu to i64                   ; 19 uses
  %i.iz = add nuw nsw i64 %i.ix, %i.iy
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !28 ; 3 uses
  %i.jc = zext i32 %i.jb to i64
  %.not.i.i.i43 = icmp samesign ugt i64 %i.iz, %i.jc
  br i1 %.not.i.i.i43, label %bb.w, label %_ZN8rawspeed10ByteStream7getDataEj.exit44

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #6
  unreachable

_ZN8rawspeed10ByteStream7getDataEj.exit44:        ; preds = %bb.v
  %i.jd = load ptr, ptr %0, align 8, !tbaa !107, !nonnull !131, !noundef !131 ; 2 uses
  %i.je = ptrtoaddr ptr %i.jd to i64
  %i.jf = icmp sgt i32 %i.jb, -1
  tail call void @llvm.assume(i1 %i.jf)
  %i.jg = add nuw nsw i32 %i.iw, %i.iu            ; 2 uses
  %i.jh = icmp samesign ule i32 %i.jg, %i.jb
  tail call void @llvm.assume(i1 %i.jh)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.ix ; 22 uses
  %i.jj = icmp sgt i32 %i.iu, -1
  tail call void @llvm.assume(i1 %i.jj)
  store i32 %i.jg, ptr %i.iv, align 8, !tbaa !29
  %i.jk = getelementptr inbounds nuw i8, ptr %i.b, i64 596
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !236
  %i.jm = mul i32 %i.jl, %i.f                     ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hy) ]
  %i.jn = icmp sgt i32 %i.ir, 0
  tail call void @llvm.assume(i1 %i.jn)
  %i.jo = icmp sgt i32 %i.jm, 0
  tail call void @llvm.assume(i1 %i.jo)
  %i.jp = icmp sgt i32 %i.it, 0
  tail call void @llvm.assume(i1 %i.jp)
  %i.jq = icmp samesign ule i32 %i.jm, %i.ir
  tail call void @llvm.assume(i1 %i.jq)
  %i.jr = icmp samesign uge i32 %i.d, %i.jm
  tail call void @llvm.assume(i1 %i.jr)
  %i.js = icmp eq i32 %i.it, 1                    ; 2 uses
  %i.jt = icmp eq i32 %i.d, %i.jm
  %or.cond.i.i.i45 = or i1 %i.js, %i.jt
  br i1 %or.cond.i.i.i45, label %_ZNK8rawspeed10Array2DRefISt4byteE15getAsArray1DRefEv.exit.i.i57, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i46

_ZNK8rawspeed10Array2DRefISt4byteE15getAsArray1DRefEv.exit.i.i57: ; preds = %_ZN8rawspeed10ByteStream7getDataEj.exit44
  %i.ju = mul nuw nsw i32 %i.jm, %i.it            ; 2 uses
  %i.jv = icmp eq i32 %i.ir, %i.jm
  %or.cond.i22.i.i58 = or i1 %i.js, %i.jv
  br i1 %or.cond.i22.i.i58, label %bb.x, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i46

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i46: ; preds = %_ZNK8rawspeed10Array2DRefISt4byteE15getAsArray1DRefEv.exit.i.i57, %_ZN8rawspeed10ByteStream7getDataEj.exit44
  %i.jw = icmp samesign ugt i32 %i.jm, 1
  %i.jx = zext nneg i32 %i.jm to i64              ; 27 uses
  br i1 %i.jw, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52, label %iter.check, !prof !237

iter.check:                                       ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i46
  %i.jy = zext nneg i32 %i.ir to i64              ; 9 uses
  %i.jz = and i64 %i.is, 2147483647               ; 8 uses
  %i.ka = zext nneg i32 %i.d to i64               ; 9 uses
  %min.iters.check = icmp samesign ult i64 %i.jz, 4
  br i1 %min.iters.check, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %ident.check = icmp ne i32 %i.d, 1
  %ident.check120 = icmp ne i32 %i.ir, 1
  %i.kb = or i1 %ident.check, %ident.check120
  br i1 %i.kb, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.kc = shl nuw nsw i64 %i.io, 1
  %i.kd = add i64 %i.kc, %i.hz
  %i.ke = add i64 %i.je, %i.ix
  %i.kf = sub i64 %i.ke, %i.kd
  %diff.check = icmp ugt i64 %i.kf, -32
  br i1 %diff.check, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check121 = icmp samesign ult i64 %i.jz, 32
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kg = and i64 %i.is, 28
  %n.vec = and i64 %i.is, 2147483616              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ip, i64 %index
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ji, i64 %index
  %wide.load.a = load <32 x i8>, ptr %i.ki, align 1, !tbaa !111
  store <32 x i8> %wide.load.a, ptr %i.kh, align 1, !tbaa !111
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.kj = icmp eq i64 %index.next, %n.vec
  br i1 %i.kj, label %middle.block, label %vector.body, !llvm.loop !247

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jz, %n.vec
  br i1 %cmp.n, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kg, 0
  br i1 %min.epilog.iters.check, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader, label %vec.epilog.ph, !prof !239

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec126 = and i64 %i.is, 2147483644           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index135 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next138, %vec.epilog.vector.body ] ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ip, i64 %index135
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ji, i64 %index135
  %wide.load137 = load <4 x i8>, ptr %i.kl, align 1, !tbaa !111
  store <4 x i8> %wide.load137, ptr %i.kk, align 1, !tbaa !111
  %index.next138 = add nuw i64 %index135, 4       ; 2 uses
  %i.km = icmp eq i64 %index.next138, %n.vec126
  br i1 %i.km, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !248

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n140 = icmp eq i64 %i.jz, %n.vec126
  br i1 %cmp.n140, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i49.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec126, %vec.epilog.middle.block ] ; 4 uses
  %2 = sub i64 %i.is, %indvars.iv.i.i49.ph
  %xtraiter = and i64 %2, 7                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol.loopexit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol
  %indvars.iv.i.i49.prol = phi i64 [ %indvars.iv.next.i.i50.prol, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol ], [ %indvars.iv.i.i49.ph, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol ], [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader ]
  %i.kn = icmp samesign ult i64 %indvars.iv.i.i49.prol, %i.jz
  tail call void @llvm.assume(i1 %i.kn)
  %i.ko = mul nuw nsw i64 %indvars.iv.i.i49.prol, %i.ka
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ko
  %i.kq = mul nuw nsw i64 %indvars.iv.i.i49.prol, %i.jy ; 2 uses
  %i.kr = add nuw nsw i64 %i.kq, %i.jx
  %i.ks = icmp samesign ule i64 %i.kr, %i.iy
  tail call void @llvm.assume(i1 %i.ks)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.kq
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !111
  store i8 %i.ku, ptr %i.kp, align 1, !tbaa !111
  %indvars.iv.next.i.i50.prol = add nuw nsw i64 %indvars.iv.i.i49.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol.loopexit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol, !llvm.loop !249

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol.loopexit: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader
  %indvars.iv.i.i49.unr = phi i64 [ %indvars.iv.i.i49.ph, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader ], [ %indvars.iv.next.i.i50.prol, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol ]
  %i.kv = sub nsw i64 %indvars.iv.i.i49.ph, %i.jz
  %i.kw = icmp ugt i64 %i.kv, -8
  br i1 %i.kw, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i46
  %i.kx = and i64 %i.is, 2147483647               ; 3 uses
  %i.ky = zext nneg i32 %i.d to i64               ; 9 uses
  %i.kz = zext nneg i32 %i.ir to i64              ; 9 uses
  %i.la = add nsw i64 %i.kx, -1
  %xtraiter193 = and i64 %i.is, 7                 ; 3 uses
  %i.lb = icmp ult i64 %i.la, 7
  br i1 %i.lb, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil.preheader, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52.new

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52.new: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52
  %unroll_iter = and i64 %i.is, 2147483640
  br label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52.new
  %indvars.iv46.i.i54 = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52.new ], [ %indvars.iv.next47.i.i55.7, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53 ] ; 10 uses
  %niter = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52.new ], [ %niter.next.7, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53 ]
  %i.lc = mul nuw nsw i64 %indvars.iv46.i.i54, %i.ky
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.lc
  %i.le = mul nuw nsw i64 %indvars.iv46.i.i54, %i.kz ; 2 uses
  %i.lf = add nuw nsw i64 %i.le, %i.jx
  %i.lg = icmp samesign ule i64 %i.lf, %i.iy
  tail call void @llvm.assume(i1 %i.lg)
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.le
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ld, ptr nonnull align 1 %i.lh, i64 %i.jx, i1 false)
  %indvars.iv.next47.i.i55 = or disjoint i64 %indvars.iv46.i.i54, 1 ; 2 uses
  %i.li = mul nuw nsw i64 %indvars.iv.next47.i.i55, %i.ky
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.li
  %i.lk = mul nuw nsw i64 %indvars.iv.next47.i.i55, %i.kz ; 2 uses
  %i.ll = add nuw nsw i64 %i.lk, %i.jx
  %i.lm = icmp samesign ule i64 %i.ll, %i.iy
  tail call void @llvm.assume(i1 %i.lm)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.lk
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.lj, ptr nonnull align 1 %i.ln, i64 %i.jx, i1 false)
  %indvars.iv.next47.i.i55.1 = or disjoint i64 %indvars.iv46.i.i54, 2 ; 2 uses
  %i.lo = mul nuw nsw i64 %indvars.iv.next47.i.i55.1, %i.ky
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.lo
  %i.lq = mul nuw nsw i64 %indvars.iv.next47.i.i55.1, %i.kz ; 2 uses
  %i.lr = add nuw nsw i64 %i.lq, %i.jx
  %i.ls = icmp samesign ule i64 %i.lr, %i.iy
  tail call void @llvm.assume(i1 %i.ls)
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.lq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.lp, ptr nonnull align 1 %i.lt, i64 %i.jx, i1 false)
  %indvars.iv.next47.i.i55.2 = or disjoint i64 %indvars.iv46.i.i54, 3 ; 2 uses
  %i.lu = mul nuw nsw i64 %indvars.iv.next47.i.i55.2, %i.ky
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.lu
  %i.lw = mul nuw nsw i64 %indvars.iv.next47.i.i55.2, %i.kz ; 2 uses
  %i.lx = add nuw nsw i64 %i.lw, %i.jx
  %i.ly = icmp samesign ule i64 %i.lx, %i.iy
  tail call void @llvm.assume(i1 %i.ly)
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.lw
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.lv, ptr nonnull align 1 %i.lz, i64 %i.jx, i1 false)
  %indvars.iv.next47.i.i55.3 = or disjoint i64 %indvars.iv46.i.i54, 4 ; 2 uses
  %i.ma = mul nuw nsw i64 %indvars.iv.next47.i.i55.3, %i.ky
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ma
  %i.mc = mul nuw nsw i64 %indvars.iv.next47.i.i55.3, %i.kz ; 2 uses
  %i.md = add nuw nsw i64 %i.mc, %i.jx
  %i.me = icmp samesign ule i64 %i.md, %i.iy
  tail call void @llvm.assume(i1 %i.me)
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.mc
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.mb, ptr nonnull align 1 %i.mf, i64 %i.jx, i1 false)
  %indvars.iv.next47.i.i55.4 = or disjoint i64 %indvars.iv46.i.i54, 5 ; 2 uses
  %i.mg = mul nuw nsw i64 %indvars.iv.next47.i.i55.4, %i.ky
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.mg
  %i.mi = mul nuw nsw i64 %indvars.iv.next47.i.i55.4, %i.kz ; 2 uses
  %i.mj = add nuw nsw i64 %i.mi, %i.jx
  %i.mk = icmp samesign ule i64 %i.mj, %i.iy
  tail call void @llvm.assume(i1 %i.mk)
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.mi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.mh, ptr nonnull align 1 %i.ml, i64 %i.jx, i1 false)
  %indvars.iv.next47.i.i55.5 = or disjoint i64 %indvars.iv46.i.i54, 6 ; 2 uses
  %i.mm = mul nuw nsw i64 %indvars.iv.next47.i.i55.5, %i.ky
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.mm
  %i.mo = mul nuw nsw i64 %indvars.iv.next47.i.i55.5, %i.kz ; 2 uses
  %i.mp = add nuw nsw i64 %i.mo, %i.jx
  %i.mq = icmp samesign ule i64 %i.mp, %i.iy
  tail call void @llvm.assume(i1 %i.mq)
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.mo
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.mn, ptr nonnull align 1 %i.mr, i64 %i.jx, i1 false)
  %indvars.iv.next47.i.i55.6 = or disjoint i64 %indvars.iv46.i.i54, 7 ; 3 uses
  %i.ms = icmp samesign ult i64 %indvars.iv.next47.i.i55.6, %i.kx
  tail call void @llvm.assume(i1 %i.ms)
  %i.mt = mul nuw nsw i64 %indvars.iv.next47.i.i55.6, %i.ky
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.mt
  %i.mv = mul nuw nsw i64 %indvars.iv.next47.i.i55.6, %i.kz ; 2 uses
  %i.mw = add nuw nsw i64 %i.mv, %i.jx
  %i.mx = icmp samesign ule i64 %i.mw, %i.iy
  tail call void @llvm.assume(i1 %i.mx)
  %i.my = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.mv
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.mu, ptr nonnull align 1 %i.my, i64 %i.jx, i1 false)
  %indvars.iv.next47.i.i55.7 = add nuw nsw i64 %indvars.iv46.i.i54, 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit191.unr-lcssa, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53, !llvm.loop !242

bb.x:                                             ; preds = %_ZNK8rawspeed10Array2DRefISt4byteE15getAsArray1DRefEv.exit.i.i57
  %i.mz = icmp samesign ugt i32 %i.ju, 1
  br i1 %i.mz, label %bb.y, label %bb.z, !prof !237

bb.y:                                             ; preds = %bb.x
  %i.na = zext nneg i32 %i.ju to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ip, ptr nonnull align 1 %i.ji, i64 %i.na, i1 false)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

bb.z:                                             ; preds = %bb.x
  %i.nb = load i8, ptr %i.ji, align 1, !tbaa !111
  store i8 %i.nb, ptr %i.ip, align 1, !tbaa !111
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol.loopexit, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48
  %indvars.iv.i.i49 = phi i64 [ %indvars.iv.next.i.i50.7, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48 ], [ %indvars.iv.i.i49.unr, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol.loopexit ] ; 10 uses
  %i.nc = mul nuw nsw i64 %indvars.iv.i.i49, %i.ka
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.nc
  %i.ne = mul nuw nsw i64 %indvars.iv.i.i49, %i.jy ; 2 uses
  %i.nf = add nuw nsw i64 %i.ne, %i.jx
  %i.ng = icmp samesign ule i64 %i.nf, %i.iy
  tail call void @llvm.assume(i1 %i.ng)
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.ne
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !111
  store i8 %i.ni, ptr %i.nd, align 1, !tbaa !111
  %indvars.iv.next.i.i50 = add nuw nsw i64 %indvars.iv.i.i49, 1 ; 2 uses
  %i.nj = mul nuw nsw i64 %indvars.iv.next.i.i50, %i.ka
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.nj
  %i.nl = mul nuw nsw i64 %indvars.iv.next.i.i50, %i.jy ; 2 uses
  %i.nm = add nuw nsw i64 %i.nl, %i.jx
  %i.nn = icmp samesign ule i64 %i.nm, %i.iy
  tail call void @llvm.assume(i1 %i.nn)
  %i.no = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.nl
  %i.np = load i8, ptr %i.no, align 1, !tbaa !111
  store i8 %i.np, ptr %i.nk, align 1, !tbaa !111
  %indvars.iv.next.i.i50.1 = add nuw nsw i64 %indvars.iv.i.i49, 2 ; 2 uses
  %i.nq = mul nuw nsw i64 %indvars.iv.next.i.i50.1, %i.ka
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.nq
  %i.ns = mul nuw nsw i64 %indvars.iv.next.i.i50.1, %i.jy ; 2 uses
  %i.nt = add nuw nsw i64 %i.ns, %i.jx
  %i.nu = icmp samesign ule i64 %i.nt, %i.iy
  tail call void @llvm.assume(i1 %i.nu)
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.ns
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !111
  store i8 %i.nw, ptr %i.nr, align 1, !tbaa !111
  %indvars.iv.next.i.i50.2 = add nuw nsw i64 %indvars.iv.i.i49, 3 ; 2 uses
  %i.nx = mul nuw nsw i64 %indvars.iv.next.i.i50.2, %i.ka
  %i.ny = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.nx
  %i.nz = mul nuw nsw i64 %indvars.iv.next.i.i50.2, %i.jy ; 2 uses
  %i.oa = add nuw nsw i64 %i.nz, %i.jx
  %i.ob = icmp samesign ule i64 %i.oa, %i.iy
  tail call void @llvm.assume(i1 %i.ob)
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.nz
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !111
  store i8 %i.od, ptr %i.ny, align 1, !tbaa !111
  %indvars.iv.next.i.i50.3 = add nuw nsw i64 %indvars.iv.i.i49, 4 ; 2 uses
  %i.oe = mul nuw nsw i64 %indvars.iv.next.i.i50.3, %i.ka
  %i.of = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.oe
  %i.og = mul nuw nsw i64 %indvars.iv.next.i.i50.3, %i.jy ; 2 uses
  %i.oh = add nuw nsw i64 %i.og, %i.jx
  %i.oi = icmp samesign ule i64 %i.oh, %i.iy
  tail call void @llvm.assume(i1 %i.oi)
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.og
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !111
  store i8 %i.ok, ptr %i.of, align 1, !tbaa !111
  %indvars.iv.next.i.i50.4 = add nuw nsw i64 %indvars.iv.i.i49, 5 ; 2 uses
  %i.ol = mul nuw nsw i64 %indvars.iv.next.i.i50.4, %i.ka
  %i.om = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.ol
  %i.on = mul nuw nsw i64 %indvars.iv.next.i.i50.4, %i.jy ; 2 uses
  %i.oo = add nuw nsw i64 %i.on, %i.jx
  %i.op = icmp samesign ule i64 %i.oo, %i.iy
  tail call void @llvm.assume(i1 %i.op)
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.on
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !111
  store i8 %i.or, ptr %i.om, align 1, !tbaa !111
  %indvars.iv.next.i.i50.5 = add nuw nsw i64 %indvars.iv.i.i49, 6 ; 2 uses
  %i.os = mul nuw nsw i64 %indvars.iv.next.i.i50.5, %i.ka
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.os
end_hunk_0
begin_hunk_1_@llvm.bswap.v4i16
!39 = !{!"_ZTSN8rawspeed5MutexE"}
!40 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !41, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !42, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !43, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!44 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0}
!45 = !{!"bool", !9, i64 0}
!46 = !{!"_ZTSN8rawspeed16ColorFilterArrayE", !47, i64 0, !25, i64 24}
!47 = !{!"_ZTSSt6vectorIN8rawspeed8CFAColorESaIS1_EE", !48, i64 0}
!48 = !{!"_ZTSSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE", !49, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE12_Vector_implE", !50, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed8CFAColorESaIS1_EE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!51 = !{!"_ZTSSt5arrayIiLm4EE", !9, i64 0}
!52 = !{!"_ZTSN8rawspeed8OptionalINS_10Array2DRefIiEEEE", !53, i64 0}
!53 = !{!"_ZTSSt8optionalIN8rawspeed10Array2DRefIiEEE", !54, i64 0}
!54 = !{!"_ZTSSt14_Optional_baseIN8rawspeed10Array2DRefIiEELb1ELb1EE", !55, i64 0}
!55 = !{!"_ZTSSt17_Optional_payloadIN8rawspeed10Array2DRefIiEELb1ELb1ELb1EE", !56, i64 0}
!56 = !{!"_ZTSSt22_Optional_payload_baseIN8rawspeed10Array2DRefIiEEE", !9, i64 0, !45, i64 32}
!57 = !{!"_ZTSN8rawspeed8OptionalIiEE", !58, i64 0}
!58 = !{!"_ZTSSt8optionalIiE", !59, i64 0}
!59 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !60, i64 0}
!60 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !61, i64 0}
!61 = !{!"_ZTSSt22_Optional_payload_baseIiE", !9, i64 0, !45, i64 4}
!62 = !{!"_ZTSSt6vectorIN8rawspeed9BlackAreaESaIS1_EE", !63, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE12_Vector_implE", !65, i64 0}
!65 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed9BlackAreaESaIS1_EE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!66 = !{!"p1 _ZTSN8rawspeed9BlackAreaE", !17, i64 0}
!67 = !{!"_ZTSSt6vectorIjSaIjEE", !68, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !69, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !70, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!71 = !{!"p1 int", !17, i64 0}
!72 = !{!"_ZTSSt6vectorIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !73, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE", !74, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE12_Vector_implE", !75, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed16AlignedAllocatorIhLi16EEEE17_Vector_impl_dataE", !16, i64 0, !16, i64 8, !16, i64 16}
!76 = !{!"_ZTSN8rawspeed13ImageMetaDataE", !77, i64 0, !78, i64 8, !83, i64 32, !8, i64 56, !25, i64 60, !88, i64 72, !88, i64 104, !88, i64 136, !88, i64 168, !88, i64 200, !88, i64 232, !88, i64 264, !8, i64 296}
!77 = !{!"double", !9, i64 0}
!78 = !{!"_ZTSN8rawspeed8OptionalISt5arrayIfLm4EEEE", !79, i64 0}
!79 = !{!"_ZTSSt8optionalISt5arrayIfLm4EEE", !80, i64 0}
!80 = !{!"_ZTSSt14_Optional_baseISt5arrayIfLm4EELb1ELb1EE", !81, i64 0}
!81 = !{!"_ZTSSt17_Optional_payloadISt5arrayIfLm4EELb1ELb1ELb1EE", !82, i64 0}
!82 = !{!"_ZTSSt22_Optional_payload_baseISt5arrayIfLm4EEE", !9, i64 0, !45, i64 16}
!83 = !{!"_ZTSSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EE", !84, i64 0}
!84 = !{!"_ZTSSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE", !85, i64 0}
!85 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE12_Vector_implE", !86, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseIN8rawspeed12NotARationalIiEESaIS2_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!87 = !{!"p1 _ZTSN8rawspeed12NotARationalIiEE", !17, i64 0}
!88 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !89, i64 0, !90, i64 8, !9, i64 16}
!89 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!90 = !{!"long", !9, i64 0}
!91 = !{!"_ZTSN8rawspeed12RawImageTypeE", !9, i64 0}
!92 = !{!"_ZTSSt6vectorIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE", !93, i64 0}
!93 = !{!"_ZTSSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE", !94, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseIhN8rawspeed27DefaultInitAllocatorAdaptorIhNS0_16AlignedAllocatorIhLi16EEEEEE12_Vector_implE", !95, i64 0, !32, i64 8}
!95 = !{!"_ZTSN8rawspeed27DefaultInitAllocatorAdaptorIhNS_16AlignedAllocatorIhLi16EEEEE", !96, i64 0}
!96 = !{!"_ZTSN8rawspeed16AlignedAllocatorIhLi16EEE"}
!97 = !{!"_ZTSSt10unique_ptrIN8rawspeed11TableLookUpESt14default_deleteIS1_EE", !98, i64 0}
!98 = !{!"_ZTSSt15__uniq_ptr_dataIN8rawspeed11TableLookUpESt14default_deleteIS1_ELb1ELb1EE", !99, i64 0}
!99 = !{!"_ZTSSt15__uniq_ptr_implIN8rawspeed11TableLookUpESt14default_deleteIS1_EE", !100, i64 0}
!100 = !{!"_ZTSSt5tupleIJPN8rawspeed11TableLookUpESt14default_deleteIS1_EEE", !101, i64 0}
!101 = !{!"_ZTSSt11_Tuple_implILm0EJPN8rawspeed11TableLookUpESt14default_deleteIS1_EEE", !102, i64 0}
!102 = !{!"_ZTSSt10_Head_baseILm0EPN8rawspeed11TableLookUpELb0EE", !103, i64 0}
!103 = !{!"p1 _ZTSN8rawspeed11TableLookUpE", !17, i64 0}
!104 = !{!37, !8, i64 608}
!105 = !{!37, !8, i64 48}
!106 = !{!37, !8, i64 612}
!107 = !{!15, !16, i64 0}
!108 = !{!8, !8, i64 0}
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.mustprogress"}
!111 = !{!9, !9, i64 0}
!112 = !{!113, !113, i64 0}
!113 = !{!"vtable pointer", !10, i64 0}
!114 = !DISubprogram(name: "setWithLookUp", linkageName: "_ZN8rawspeed12RawImageData13setWithLookUpEtPSt4bytePj", scope: !116, file: !115, line: 144, type: !118, scopeLine: 144, containingType: !116, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!115 = !DIFile(filename: "src/external/rawspeed/src/librawspeed/decompressors/../common/RawImage.h", directory: "/opt-bench/work/darktable/darktable", checksumkind: CSK_MD5, checksum: "2ca5ca40f0f87136378ae905a4cc586c")
!116 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "RawImageData", scope: !117, file: !115, line: 111, size: 4992, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN8rawspeed12RawImageDataE")
!117 = !DINamespace(name: "rawspeed", scope: null)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !120, !121, !126, !132}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !122, line: 25, baseType: !123)
!122 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "256fcabbefa27ca8cf5e6d37525e6e16")
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !124, line: 40, baseType: !125)
!124 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e1865d9fe29fe1b5ced550b7ba458f9e")
!125 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "byte", scope: !129, file: !128, line: 69, baseType: !130, size: 8, flags: DIFlagEnumClass, elements: !131, identifier: "_ZTSSt4byte")
!128 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/cstddef", directory: "")
!129 = !DINamespace(name: "std", scope: null)
!130 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!131 = !{}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !122, line: 26, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !124, line: 42, baseType: !135)
!135 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!136 = distinct !{!136, !110}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv: argument 0"}
!139 = distinct !{!139, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv"}
!140 = !{!141}
!141 = distinct !{!141, !142}
!142 = distinct !{!142, !"LVerDomain"}
!143 = !{!144, !144, i64 0}
!144 = !{!"short", !9, i64 0}
!145 = !{!146}
!146 = distinct !{!146, !142}
!147 = distinct !{!147, !110, !148, !149}
!148 = !{!"llvm.loop.isvectorized", i32 1}
!149 = !{!"llvm.loop.unroll.runtime.disable"}
!150 = !{!"branch_weights", i32 8, i32 56}
!151 = distinct !{!151, !110, !148, !149}
!152 = distinct !{!152, !153}
!153 = !{!"llvm.loop.unroll.disable"}
!154 = distinct !{!154, !110}
!155 = distinct !{!155, !110, !148}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv: argument 0"}
!158 = distinct !{!158, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv"}
!159 = distinct !{!159, !110}
!160 = distinct !{!160, !110}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv: argument 0"}
!163 = distinct !{!163, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv"}
!164 = distinct !{!164, !110}
!165 = distinct !{!165, !110}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv: argument 0"}
!168 = distinct !{!168, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv"}
!169 = !{!170}
!170 = distinct !{!170, !171}
!171 = distinct !{!171, !"LVerDomain"}
!172 = !{!173}
!173 = distinct !{!173, !171}
!174 = distinct !{!174, !110, !148, !149}
!175 = !{!"branch_weights", i32 4, i32 12}
!176 = distinct !{!176, !110, !148, !149}
!177 = distinct !{!177, !153}
!178 = distinct !{!178, !110}
!179 = distinct !{!179, !110, !148}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv: argument 0"}
!182 = distinct !{!182, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv"}
!183 = !{!184}
!184 = distinct !{!184, !185}
!185 = distinct !{!185, !"LVerDomain"}
!186 = !{!187}
!187 = distinct !{!187, !185}
!188 = distinct !{!188, !110, !148, !149}
!189 = distinct !{!189, !110, !148, !149}
!190 = distinct !{!190, !153}
!191 = distinct !{!191, !110}
!192 = distinct !{!192, !110, !148}
!193 = !{!194, !8, i64 12}
!194 = !{!"_ZTSN8rawspeed12iRectangle2DE", !25, i64 0, !25, i64 8}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZN8rawspeed10ByteStream9getStreamEjj: argument 0"}
!197 = distinct !{!197, !"_ZN8rawspeed10ByteStream9getStreamEjj"}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZN8rawspeed10ByteStream9getStreamEj: argument 0"}
!200 = distinct !{!200, !"_ZN8rawspeed10ByteStream9getStreamEj"}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZNK8rawspeed10ByteStream10peekStreamEj: argument 0"}
!203 = distinct !{!203, !"_ZNK8rawspeed10ByteStream10peekStreamEj"}
!204 = !{!202, !199, !196}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZNK8rawspeed10ByteStream12getSubStreamEjj: argument 0"}
!207 = distinct !{!207, !"_ZNK8rawspeed10ByteStream12getSubStreamEjj"}
!208 = !{!206, !202, !199, !196}
!209 = !{!14, !18, i64 12}
!210 = !{!23, !24, i64 0}
!211 = !{!17, !17, i64 0}
!212 = !{!12, !8, i64 56}
!213 = !{!12, !8, i64 60}
!214 = !{!12, !26, i64 64}
!215 = !{!37, !91, i64 553}
!216 = !{!12, !8, i64 68}
!217 = !{!37, !8, i64 44}
!218 = !{!37, !8, i64 40}
!219 = !{!220, !8, i64 8}
!220 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 8, !8, i64 12}
!221 = !{!220, !8, i64 12}
!222 = !DISubprogram(name: "_M_dispose", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv", scope: !224, file: !223, line: 139, type: !225, scopeLine: 139, containingType: !224, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagPureVirtual | DISPFlagOptimized)
!223 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/13/../../../../include/c++/13/bits/shared_ptr_base.h", directory: "", checksumkind: CSK_MD5, checksum: "398b697f034a380e2062e59e71a6eec9")
!224 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !129, file: !223, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!225 = !DISubroutineType(types: !226)
!226 = !{null, !227}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!228 = distinct !{null, null, null}
!229 = !DISubprogram(name: "_M_destroy", linkageName: "_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv", scope: !224, file: !223, line: 143, type: !225, scopeLine: 143, containingType: !224, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, spFlags: DISPFlagVirtual | DISPFlagOptimized)
!230 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!231 = !{!12, !8, i64 52}
!232 = !{!233}
!233 = distinct !{!233, !234, !"_ZN8rawspeed12RawImageData31getF32DataAsUncroppedArray2DRefEv: argument 0"}
!234 = distinct !{!234, !"_ZN8rawspeed12RawImageData31getF32DataAsUncroppedArray2DRefEv"}
!235 = !{!12, !8, i64 48}
!236 = !{!37, !8, i64 596}
!237 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!238 = distinct !{!238, !110, !148, !149}
!239 = !{!"branch_weights", i32 4, i32 28}
!240 = distinct !{!240, !110, !148, !149}
!241 = distinct !{!241, !153}
!242 = distinct !{!242, !110}
!243 = distinct !{!243, !110, !148}
!244 = !{!245}
!245 = distinct !{!245, !246, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv: argument 0"}
!246 = distinct !{!246, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv"}
!247 = distinct !{!247, !110, !148, !149}
!248 = distinct !{!248, !110, !148, !149}
!249 = distinct !{!249, !153}
!250 = distinct !{!250, !110, !148}
!251 = distinct !{!251, !153}
!252 = distinct !{!252, !153}
!253 = !{!254}
!254 = distinct !{!254, !255, !"_ZN8rawspeed12RawImageData31getF32DataAsUncroppedArray2DRefEv: argument 0"}
!255 = distinct !{!255, !"_ZN8rawspeed12RawImageData31getF32DataAsUncroppedArray2DRefEv"}
!256 = !{!257, !90, i64 0}
!257 = !{!"_ZTSN8rawspeed18BitStreamCacheBaseE", !90, i64 0, !8, i64 8}
!258 = !{!257, !8, i64 8}
!259 = !{!260, !8, i64 16}
!260 = !{!"_ZTSN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEE", !261, i64 0, !8, i64 16}
!261 = !{!"_ZTSN8rawspeed10Array1DRefIKSt4byteEE", !17, i64 0, !8, i64 8}
!262 = !{!261, !8, i64 8}
!263 = !{!264, !264, i64 0}
!264 = !{!"float", !9, i64 0}
!265 = distinct !{!265, !110}
!266 = distinct !{!266, !110}
!267 = !{!268}
!268 = distinct !{!268, !269, !"_ZN8rawspeed12RawImageData31getF32DataAsUncroppedArray2DRefEv: argument 0"}
!269 = distinct !{!269, !"_ZN8rawspeed12RawImageData31getF32DataAsUncroppedArray2DRefEv"}
!270 = !{!271, !8, i64 16}
!271 = !{!"_ZTSN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerLSBEEE", !261, i64 0, !8, i64 16}
!272 = distinct !{!272, !110}
!273 = distinct !{!273, !110}
!274 = !{!275}
!275 = distinct !{!275, !276, !"_ZN8rawspeed12RawImageData31getF32DataAsUncroppedArray2DRefEv: argument 0"}
!276 = distinct !{!276, !"_ZN8rawspeed12RawImageData31getF32DataAsUncroppedArray2DRefEv"}
!277 = distinct !{!277, !110}
!278 = distinct !{!278, !110}
!279 = !{!280}
!280 = distinct !{!280, !281, !"_ZN8rawspeed12RawImageData31getF32DataAsUncroppedArray2DRefEv: argument 0"}
!281 = distinct !{!281, !"_ZN8rawspeed12RawImageData31getF32DataAsUncroppedArray2DRefEv"}
!282 = distinct !{!282, !110}
!283 = distinct !{!283, !110}
!284 = !{!285}
!285 = distinct !{!285, !286, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv: argument 0"}
!286 = distinct !{!286, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv"}
!287 = distinct !{!287, !110}
!288 = distinct !{!288, !110}
!289 = !{!290}
!290 = distinct !{!290, !291, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv: argument 0"}
!291 = distinct !{!291, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv"}
!292 = !{!293, !8, i64 16}
!293 = !{!"_ZTSN8rawspeed26BitStreamerReplenisherBaseINS_16BitStreamerMSB16EEE", !261, i64 0, !8, i64 16}
!294 = distinct !{!294, !110}
!295 = distinct !{!295, !110}
!296 = !{!297}
!297 = distinct !{!297, !298, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv: argument 0"}
!298 = distinct !{!298, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv"}
!299 = !{!300, !8, i64 16}
!300 = !{!"_ZTSN8rawspeed26BitStreamerReplenisherBaseINS_16BitStreamerMSB32EEE", !261, i64 0, !8, i64 16}
!301 = distinct !{!301, !110}
!302 = distinct !{!302, !110}
!303 = !{!304}
!304 = distinct !{!304, !305, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv: argument 0"}
!305 = distinct !{!305, !"_ZN8rawspeed12RawImageData31getU16DataAsUncroppedArray2DRefEv"}
!306 = distinct !{!306, !110}
!307 = distinct !{!307, !110}
!308 = distinct !{null}
!309 = distinct !{!309, !110}
!310 = !{!311}
!311 = distinct !{!311, !312, !"_ZNK8rawspeed10Array1DRefIKSt4byteE7getCropEii: argument 0"}
!312 = distinct !{!312, !"_ZNK8rawspeed10Array1DRefIKSt4byteE7getCropEii"}
!313 = distinct !{!313, !110}
!314 = !{!315}
!315 = distinct !{!315, !316, !"_ZNK8rawspeed10Array1DRefIKSt4byteE7getCropEii: argument 0"}
!316 = distinct !{!316, !"_ZNK8rawspeed10Array1DRefIKSt4byteE7getCropEii"}
!317 = distinct !{!317, !110}
!318 = !{!319}
!319 = distinct !{!319, !320, !"_ZNK8rawspeed10Array1DRefIKSt4byteE7getCropEii: argument 0"}
!320 = distinct !{!320, !"_ZNK8rawspeed10Array1DRefIKSt4byteE7getCropEii"}
!321 = distinct !{!321, !110}
!322 = !{!323}
!323 = distinct !{!323, !324, !"_ZNK8rawspeed10Array1DRefIKSt4byteE7getCropEii: argument 0"}
!324 = distinct !{!324, !"_ZNK8rawspeed10Array1DRefIKSt4byteE7getCropEii"}
end_hunk_1
