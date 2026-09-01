Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/UncompressedDecompressor?download=true
inline.NumInlined: 763
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz:bb.a
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #16 ; 0 uses
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
  br i1 %i.bz, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i, label %iter.check175, !prof !237

iter.check175:                                    ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i
  %i.cb = zext nneg i32 %i.au to i64              ; 9 uses
  %i.cc = and i64 %i.av, 2147483647               ; 6 uses
  %i.cd = zext nneg i32 %i.d to i64               ; 9 uses
  %min.iters.check149 = icmp samesign ult i64 %i.cc, 8
  br i1 %min.iters.check149, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader, label %vector.scevcheck144

vector.scevcheck144:                              ; preds = %iter.check175
  %ident.check145 = icmp ne i32 %i.d, 1
  %ident.check146 = icmp ne i32 %i.au, 1
  %i.ce = or i1 %ident.check145, %ident.check146
  br i1 %i.ce, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader, label %vector.memcheck147

vector.memcheck147:                               ; preds = %vector.scevcheck144
  %i.cf = shl nuw nsw i64 %i.ar, 2
  %i.cg = add i64 %i.cf, %i.ac
  %i.ch = add i64 %i.bh, %i.ba
  %i.ci = sub i64 %i.ch, %i.cg
  %diff.check148 = icmp ugt i64 %i.ci, -128
  br i1 %diff.check148, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader, label %vector.main.loop.iter.check150

vector.main.loop.iter.check150:                   ; preds = %vector.memcheck147
  %min.iters.check151 = icmp samesign ult i64 %i.cc, 128
  br i1 %min.iters.check151, label %vec.epilog.ph179, label %vector.ph152

vector.ph152:                                     ; preds = %vector.main.loop.iter.check150
  %i.cj = and i64 %i.av, 120
  %n.vec153 = and i64 %i.av, 2147483520           ; 4 uses
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph152
  %index161 = phi i64 [ 0, %vector.ph152 ], [ %index.next170, %vector.body160 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.as, i64 %index161 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bl, i64 %index161 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  %wide.load166 = load <32 x i8>, ptr %i.cl, align 1, !tbaa !111
  %wide.load167 = load <32 x i8>, ptr %i.cm, align 1, !tbaa !111
  %wide.load168 = load <32 x i8>, ptr %i.cn, align 1, !tbaa !111
  %wide.load169 = load <32 x i8>, ptr %i.co, align 1, !tbaa !111
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  store <32 x i8> %wide.load166, ptr %i.ck, align 1, !tbaa !111
  store <32 x i8> %wide.load167, ptr %i.cp, align 1, !tbaa !111
  store <32 x i8> %wide.load168, ptr %i.cq, align 1, !tbaa !111
  store <32 x i8> %wide.load169, ptr %i.cr, align 1, !tbaa !111
  %index.next170 = add nuw i64 %index161, 128     ; 2 uses
  %i.cs = icmp eq i64 %index.next170, %n.vec153
  br i1 %i.cs, label %middle.block172, label %vector.body160, !llvm.loop !238

middle.block172:                                  ; preds = %vector.body160
  %cmp.n173 = icmp eq i64 %i.cc, %n.vec153
  br i1 %cmp.n173, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %vec.epilog.iter.check177

vec.epilog.iter.check177:                         ; preds = %middle.block172
  %min.epilog.iters.check178 = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check178, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader, label %vec.epilog.ph179, !prof !239

vec.epilog.ph179:                                 ; preds = %vector.main.loop.iter.check150, %vec.epilog.iter.check177
  %vec.epilog.resume.val174 = phi i64 [ %n.vec153, %vec.epilog.iter.check177 ], [ 0, %vector.main.loop.iter.check150 ]
  %n.vec180 = and i64 %i.av, 2147483640           ; 3 uses
  br label %vec.epilog.vector.body190

vec.epilog.vector.body190:                        ; preds = %vec.epilog.vector.body190, %vec.epilog.ph179
  %index191 = phi i64 [ %vec.epilog.resume.val174, %vec.epilog.ph179 ], [ %index.next194, %vec.epilog.vector.body190 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.as, i64 %index191
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bl, i64 %index191
  %wide.load193 = load <8 x i8>, ptr %i.cu, align 1, !tbaa !111
  store <8 x i8> %wide.load193, ptr %i.ct, align 1, !tbaa !111
  %index.next194 = add nuw i64 %index191, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next194, %n.vec180
  br i1 %i.cv, label %vec.epilog.middle.block196, label %vec.epilog.vector.body190, !llvm.loop !240

vec.epilog.middle.block196:                       ; preds = %vec.epilog.vector.body190
  %cmp.n197 = icmp eq i64 %i.cc, %n.vec180
  br i1 %cmp.n197, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader: ; preds = %vector.memcheck147, %vector.scevcheck144, %iter.check175, %vec.epilog.iter.check177, %vec.epilog.middle.block196
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check175 ], [ 0, %vector.scevcheck144 ], [ 0, %vector.memcheck147 ], [ %n.vec153, %vec.epilog.iter.check177 ], [ %n.vec180, %vec.epilog.middle.block196 ] ; 3 uses
  %xtraiter205 = and i64 %i.av, 7                 ; 2 uses
  %lcmp.mod206.not = icmp eq i64 %xtraiter205, 0
  br i1 %lcmp.mod206.not, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol.loopexit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol ], [ %indvars.iv.i.i.ph, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader ] ; 3 uses
  %prol.iter207 = phi i64 [ %prol.iter207.next, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol ], [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader ]
  %i.cw = mul nuw nsw i64 %indvars.iv.i.i.prol, %i.cd
  %i.cx = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.cw
  %i.cy = mul nuw nsw i64 %indvars.iv.i.i.prol, %i.cb ; 2 uses
  %i.cz = add nuw nsw i64 %i.cy, %i.ca
  %i.da = icmp samesign ule i64 %i.cz, %i.bb
  tail call void @llvm.assume(i1 %i.da)
  %i.db = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cy
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !111
  store i8 %i.dc, ptr %i.cx, align 1, !tbaa !111
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter207.next = add i64 %prol.iter207, 1   ; 2 uses
  %prol.iter207.cmp.not = icmp eq i64 %prol.iter207.next, %xtraiter205
  br i1 %prol.iter207.cmp.not, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol.loopexit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol, !llvm.loop !241

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol.loopexit: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol ]
  %i.dd = sub nsw i64 %indvars.iv.i.i.ph, %i.cc
  %i.de = icmp ugt i64 %i.dd, -8
  br i1 %i.de, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i
  %i.df = and i64 %i.av, 2147483647
  %i.dg = zext nneg i32 %i.d to i64               ; 9 uses
  %i.dh = zext nneg i32 %i.au to i64              ; 9 uses
  %i.di = add nsw i64 %i.df, -1
  %xtraiter208 = and i64 %i.av, 7                 ; 3 uses
  %i.dj = icmp ult i64 %i.di, 7
  br i1 %i.dj, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil.preheader, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i.new

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i.new: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i
  %unroll_iter212 = and i64 %i.av, 2147483640
  br label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i.new
  %indvars.iv46.i.i = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i.new ], [ %indvars.iv.next47.i.i.7, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i ] ; 10 uses
  %niter213 = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i.new ], [ %niter213.next.7, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i ]
  %i.dk = mul nuw nsw i64 %indvars.iv46.i.i, %i.dg
  %i.dl = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dk
  %i.dm = mul nuw nsw i64 %indvars.iv46.i.i, %i.dh ; 2 uses
  %i.dn = add nuw nsw i64 %i.dm, %i.ca
  %i.do = icmp samesign ule i64 %i.dn, %i.bb
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.dm
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dl, ptr nonnull align 1 %i.dp, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i = or disjoint i64 %indvars.iv46.i.i, 1 ; 2 uses
  %i.dq = mul nuw nsw i64 %indvars.iv.next47.i.i, %i.dg
  %i.dr = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dq
  %i.ds = mul nuw nsw i64 %indvars.iv.next47.i.i, %i.dh ; 2 uses
  %i.dt = add nuw nsw i64 %i.ds, %i.ca
  %i.du = icmp samesign ule i64 %i.dt, %i.bb
  tail call void @llvm.assume(i1 %i.du)
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ds
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dr, ptr nonnull align 1 %i.dv, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.1 = or disjoint i64 %indvars.iv46.i.i, 2 ; 2 uses
  %i.dw = mul nuw nsw i64 %indvars.iv.next47.i.i.1, %i.dg
  %i.dx = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dw
  %i.dy = mul nuw nsw i64 %indvars.iv.next47.i.i.1, %i.dh ; 2 uses
  %i.dz = add nuw nsw i64 %i.dy, %i.ca
  %i.ea = icmp samesign ule i64 %i.dz, %i.bb
  tail call void @llvm.assume(i1 %i.ea)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.dy
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr nonnull align 1 %i.eb, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.2 = or disjoint i64 %indvars.iv46.i.i, 3 ; 2 uses
  %i.ec = mul nuw nsw i64 %indvars.iv.next47.i.i.2, %i.dg
  %i.ed = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ec
  %i.ee = mul nuw nsw i64 %indvars.iv.next47.i.i.2, %i.dh ; 2 uses
  %i.ef = add nuw nsw i64 %i.ee, %i.ca
  %i.eg = icmp samesign ule i64 %i.ef, %i.bb
  tail call void @llvm.assume(i1 %i.eg)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ee
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ed, ptr nonnull align 1 %i.eh, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.3 = or disjoint i64 %indvars.iv46.i.i, 4 ; 2 uses
  %i.ei = mul nuw nsw i64 %indvars.iv.next47.i.i.3, %i.dg
  %i.ej = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ei
  %i.ek = mul nuw nsw i64 %indvars.iv.next47.i.i.3, %i.dh ; 2 uses
  %i.el = add nuw nsw i64 %i.ek, %i.ca
  %i.em = icmp samesign ule i64 %i.el, %i.bb
  tail call void @llvm.assume(i1 %i.em)
  %i.en = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ek
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ej, ptr nonnull align 1 %i.en, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.4 = or disjoint i64 %indvars.iv46.i.i, 5 ; 2 uses
  %i.eo = mul nuw nsw i64 %indvars.iv.next47.i.i.4, %i.dg
  %i.ep = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.eo
  %i.eq = mul nuw nsw i64 %indvars.iv.next47.i.i.4, %i.dh ; 2 uses
  %i.er = add nuw nsw i64 %i.eq, %i.ca
  %i.es = icmp samesign ule i64 %i.er, %i.bb
  tail call void @llvm.assume(i1 %i.es)
  %i.et = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.eq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ep, ptr nonnull align 1 %i.et, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.5 = or disjoint i64 %indvars.iv46.i.i, 6 ; 2 uses
  %i.eu = mul nuw nsw i64 %indvars.iv.next47.i.i.5, %i.dg
  %i.ev = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.eu
  %i.ew = mul nuw nsw i64 %indvars.iv.next47.i.i.5, %i.dh ; 2 uses
  %i.ex = add nuw nsw i64 %i.ew, %i.ca
  %i.ey = icmp samesign ule i64 %i.ex, %i.bb
  tail call void @llvm.assume(i1 %i.ey)
  %i.ez = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ew
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ev, ptr nonnull align 1 %i.ez, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.6 = or disjoint i64 %indvars.iv46.i.i, 7 ; 2 uses
  %i.fa = mul nuw nsw i64 %indvars.iv.next47.i.i.6, %i.dg
  %i.fb = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.fa
  %i.fc = mul nuw nsw i64 %indvars.iv.next47.i.i.6, %i.dh ; 2 uses
  %i.fd = add nuw nsw i64 %i.fc, %i.ca
  %i.fe = icmp samesign ule i64 %i.fd, %i.bb
  tail call void @llvm.assume(i1 %i.fe)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.fc
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fb, ptr nonnull align 1 %i.ff, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.7 = add nuw nsw i64 %indvars.iv46.i.i, 8 ; 2 uses
  %niter213.next.7 = add i64 %niter213, 8         ; 2 uses
  %niter213.ncmp.7 = icmp eq i64 %niter213.next.7, %unroll_iter212
  br i1 %niter213.ncmp.7, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit.unr-lcssa, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i, !llvm.loop !242

bb.e:                                             ; preds = %_ZNK8rawspeed10Array2DRefISt4byteE15getAsArray1DRefEv.exit.i.i
  %i.fg = icmp samesign ugt i32 %i.bx, 1
  br i1 %i.fg, label %bb.f, label %bb.g, !prof !237

bb.f:                                             ; preds = %bb.e
  %i.fh = zext nneg i32 %i.bx to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull align 1 %i.bl, i64 %i.fh, i1 false)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

bb.g:                                             ; preds = %bb.e
  %i.fi = load i8, ptr %i.bl, align 1, !tbaa !111
  store i8 %i.fi, ptr %i.as, align 1, !tbaa !111
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol.loopexit, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i ], [ %indvars.iv.i.i.unr, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol.loopexit ] ; 10 uses
  %i.fj = mul nuw nsw i64 %indvars.iv.i.i, %i.cd
  %i.fk = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.fj
  %i.fl = mul nuw nsw i64 %indvars.iv.i.i, %i.cb  ; 2 uses
  %i.fm = add nuw nsw i64 %i.fl, %i.ca
  %i.fn = icmp samesign ule i64 %i.fm, %i.bb
  tail call void @llvm.assume(i1 %i.fn)
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.fl
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !111
  store i8 %i.fp, ptr %i.fk, align 1, !tbaa !111
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fq = mul nuw nsw i64 %indvars.iv.next.i.i, %i.cd
  %i.fr = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.fq
  %i.fs = mul nuw nsw i64 %indvars.iv.next.i.i, %i.cb ; 2 uses
  %i.ft = add nuw nsw i64 %i.fs, %i.ca
  %i.fu = icmp samesign ule i64 %i.ft, %i.bb
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.fs
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !111
  store i8 %i.fw, ptr %i.fr, align 1, !tbaa !111
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.fx = mul nuw nsw i64 %indvars.iv.next.i.i.1, %i.cd
  %i.fy = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.fx
  %i.fz = mul nuw nsw i64 %indvars.iv.next.i.i.1, %i.cb ; 2 uses
  %i.ga = add nuw nsw i64 %i.fz, %i.ca
  %i.gb = icmp samesign ule i64 %i.ga, %i.bb
  tail call void @llvm.assume(i1 %i.gb)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.fz
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !111
  store i8 %i.gd, ptr %i.fy, align 1, !tbaa !111
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ge = mul nuw nsw i64 %indvars.iv.next.i.i.2, %i.cd
  %i.gf = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ge
  %i.gg = mul nuw nsw i64 %indvars.iv.next.i.i.2, %i.cb ; 2 uses
  %i.gh = add nuw nsw i64 %i.gg, %i.ca
  %i.gi = icmp samesign ule i64 %i.gh, %i.bb
  tail call void @llvm.assume(i1 %i.gi)
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.gg
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !111
  store i8 %i.gk, ptr %i.gf, align 1, !tbaa !111
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.gl = mul nuw nsw i64 %indvars.iv.next.i.i.3, %i.cd
  %i.gm = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.gl
  %i.gn = mul nuw nsw i64 %indvars.iv.next.i.i.3, %i.cb ; 2 uses
  %i.go = add nuw nsw i64 %i.gn, %i.ca
  %i.gp = icmp samesign ule i64 %i.go, %i.bb
  tail call void @llvm.assume(i1 %i.gp)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.gn
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !111
  store i8 %i.gr, ptr %i.gm, align 1, !tbaa !111
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i, 5 ; 2 uses
  %i.gs = mul nuw nsw i64 %indvars.iv.next.i.i.4, %i.cd
  %i.gt = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.gs
  %i.gu = mul nuw nsw i64 %indvars.iv.next.i.i.4, %i.cb ; 2 uses
  %i.gv = add nuw nsw i64 %i.gu, %i.ca
  %i.gw = icmp samesign ule i64 %i.gv, %i.bb
  tail call void @llvm.assume(i1 %i.gw)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.gu
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !111
  store i8 %i.gy, ptr %i.gt, align 1, !tbaa !111
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.gz = mul nuw nsw i64 %indvars.iv.next.i.i.5, %i.cd
  %i.ha = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.gz
  %i.hb = mul nuw nsw i64 %indvars.iv.next.i.i.5, %i.cb ; 2 uses
  %i.hc = add nuw nsw i64 %i.hb, %i.ca
  %i.hd = icmp samesign ule i64 %i.hc, %i.bb
  tail call void @llvm.assume(i1 %i.hd)
  %i.he = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.hb
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !111
  store i8 %i.hf, ptr %i.ha, align 1, !tbaa !111
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 2 uses
  %i.hg = mul nuw nsw i64 %indvars.iv.next.i.i.6, %i.cd
  %i.hh = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.hg
  %i.hi = mul nuw nsw i64 %indvars.iv.next.i.i.6, %i.cb ; 2 uses
  %i.hj = add nuw nsw i64 %i.hi, %i.ca
  %i.hk = icmp samesign ule i64 %i.hj, %i.bb
  tail call void @llvm.assume(i1 %i.hk)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.hi
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !111
  store i8 %i.hm, ptr %i.hh, align 1, !tbaa !111
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %i.cc
  br i1 %.not.i.i.7, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i, !llvm.loop !243

bb.h:                                             ; preds = %bb.b
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ho = load i8, ptr %i.hn, align 8, !tbaa !214 ; 3 uses
  %i.hp = icmp eq i8 %i.ho, 1                     ; 2 uses
  %i.hq = icmp eq i32 %i.y, 16                    ; 2 uses
  %or.cond = and i1 %i.hq, %i.hp
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerMSBENS_13ieee_754_20088Binary16EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.t, i32 noundef %i.m)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

bb.j:                                             ; preds = %bb.h
  %i.hr = icmp eq i8 %i.ho, 0
  br i1 %i.hr, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  br i1 %i.hq, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerLSBENS_13ieee_754_20088Binary16EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.t, i32 noundef %i.m)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

bb.m:                                             ; preds = %bb.j
  %i.hs = icmp eq i32 %i.y, 24
  %or.cond105 = and i1 %i.hs, %i.hp
  br i1 %or.cond105, label %bb.n, label %.thread104

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerMSBENS_13ieee_754_20088Binary24EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.t, i32 noundef %i.m)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

bb.o:                                             ; preds = %bb.k
  %i.ht = icmp eq i32 %i.y, 24
  br i1 %i.ht, label %bb.p, label %.thread104

bb.p:                                             ; preds = %bb.o
  tail call void @_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerLSBENS_13ieee_754_20088Binary24EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.t, i32 noundef %i.m)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

.thread104:                                       ; preds = %bb.m, %bb.o
  %i.hu = zext i8 %i.ho to i32
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed24UncompressedDecompressor19readUncompressedRawEv, i32 noundef %i.y, i32 noundef %i.hu) #6
  unreachable

bb.q:                                             ; preds = %bb.a
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hw = load i8, ptr %i.hv, align 8, !tbaa !214
  switch i8 %i.hw, label %bb.u [
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
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !213
  %i.hz = icmp eq i32 %i.hy, 16
  br i1 %i.hz, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.ia = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !31, !noalias !244 ; 3 uses
  %i.ic = ptrtoaddr ptr %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !104, !noalias !244
  %i.if = mul nsw i32 %i.ie, %i.j                 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !106, !noalias !244
  %i.ii = ashr i32 %i.d, 1                        ; 2 uses
  %i.ij = icmp sge i32 %i.ii, %i.if
  tail call void @llvm.assume(i1 %i.ij)
  %i.ik = load i32, ptr %i.k, align 8, !tbaa !235
  %i.il = mul i32 %i.ik, %i.j                     ; 2 uses
  %i.im = icmp samesign ult i32 %i.il, %i.if
  tail call void @llvm.assume(i1 %i.im)
  %i.in = icmp samesign ult i32 %i.m, %i.ih
  tail call void @llvm.assume(i1 %i.in)
  %i.io = mul i32 %i.m, %i.ii
  %i.ip = zext i32 %i.io to i64
  %i.iq = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %i.ip
  %i.ir = zext i32 %i.il to i64                   ; 2 uses
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.iq, i64 %i.ir ; 22 uses
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !212 ; 7 uses
  %i.iv = sub nsw i64 %.sroa.speculated, %i.n     ; 9 uses
  %i.iw = trunc i64 %i.iv to i32                  ; 4 uses
  %i.ix = mul i32 %i.iu, %i.iw                    ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !29 ; 2 uses
  %i.ja = zext i32 %i.iz to i64                   ; 3 uses
  %i.jb = zext i32 %i.ix to i64                   ; 19 uses
  %i.jc = add nuw nsw i64 %i.ja, %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !28 ; 3 uses
  %i.jf = zext i32 %i.je to i64
  %.not.i.i.i43 = icmp samesign ugt i64 %i.jc, %i.jf
  br i1 %.not.i.i.i43, label %bb.w, label %_ZN8rawspeed10ByteStream7getDataEj.exit44

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #6
  unreachable

_ZN8rawspeed10ByteStream7getDataEj.exit44:        ; preds = %bb.v
  %i.jg = load ptr, ptr %0, align 8, !tbaa !107, !nonnull !131, !noundef !131 ; 2 uses
  %i.jh = ptrtoaddr ptr %i.jg to i64
  %i.ji = icmp sgt i32 %i.je, -1
  tail call void @llvm.assume(i1 %i.ji)
  %i.jj = add nuw nsw i32 %i.iz, %i.ix            ; 2 uses
  %i.jk = icmp samesign ule i32 %i.jj, %i.je
  tail call void @llvm.assume(i1 %i.jk)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.ja ; 22 uses
  %i.jm = icmp sgt i32 %i.ix, -1
  tail call void @llvm.assume(i1 %i.jm)
  store i32 %i.jj, ptr %i.iy, align 8, !tbaa !29
  %i.jn = getelementptr inbounds nuw i8, ptr %i.b, i64 596
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !236
  %i.jp = mul i32 %i.jo, %i.f                     ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ib) ]
  %i.jq = icmp sgt i32 %i.iu, 0
  tail call void @llvm.assume(i1 %i.jq)
  %i.jr = icmp sgt i32 %i.jp, 0
  tail call void @llvm.assume(i1 %i.jr)
  %i.js = icmp sgt i32 %i.iw, 0
  tail call void @llvm.assume(i1 %i.js)
  %i.jt = icmp samesign ule i32 %i.jp, %i.iu
  tail call void @llvm.assume(i1 %i.jt)
  %i.ju = icmp samesign uge i32 %i.d, %i.jp
  tail call void @llvm.assume(i1 %i.ju)
  %i.jv = icmp eq i32 %i.iw, 1                    ; 2 uses
  %i.jw = icmp eq i32 %i.d, %i.jp
  %or.cond.i.i.i45 = or i1 %i.jv, %i.jw
  br i1 %or.cond.i.i.i45, label %_ZNK8rawspeed10Array2DRefISt4byteE15getAsArray1DRefEv.exit.i.i57, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i46

_ZNK8rawspeed10Array2DRefISt4byteE15getAsArray1DRefEv.exit.i.i57: ; preds = %_ZN8rawspeed10ByteStream7getDataEj.exit44
  %i.jx = mul nuw nsw i32 %i.jp, %i.iw            ; 2 uses
  %i.jy = icmp eq i32 %i.iu, %i.jp
  %or.cond.i22.i.i58 = or i1 %i.jv, %i.jy
  br i1 %or.cond.i22.i.i58, label %bb.x, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i46

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i46: ; preds = %_ZNK8rawspeed10Array2DRefISt4byteE15getAsArray1DRefEv.exit.i.i57, %_ZN8rawspeed10ByteStream7getDataEj.exit44
  %i.jz = icmp samesign ugt i32 %i.jp, 1
  %i.ka = zext nneg i32 %i.jp to i64              ; 27 uses
  br i1 %i.jz, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52, label %iter.check, !prof !237

iter.check:                                       ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i46
  %i.kb = zext nneg i32 %i.iu to i64              ; 9 uses
  %i.kc = and i64 %i.iv, 2147483647               ; 6 uses
  %i.kd = zext nneg i32 %i.d to i64               ; 9 uses
  %min.iters.check = icmp samesign ult i64 %i.kc, 8
  br i1 %min.iters.check, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %ident.check = icmp ne i32 %i.d, 1
  %ident.check120 = icmp ne i32 %i.iu, 1
  %i.ke = or i1 %ident.check, %ident.check120
  br i1 %i.ke, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.kf = shl nuw nsw i64 %i.ir, 1
  %i.kg = add i64 %i.kf, %i.ic
  %i.kh = add i64 %i.jh, %i.ja
  %i.ki = sub i64 %i.kh, %i.kg
  %diff.check = icmp ugt i64 %i.ki, -128
  br i1 %diff.check, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check121 = icmp samesign ult i64 %i.kc, 128
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.kj = and i64 %i.iv, 120
  %n.vec = and i64 %i.iv, 2147483520              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.is, i64 %index ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jl, i64 %index ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kl, i64 64
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 96
  %wide.load = load <32 x i8>, ptr %i.kl, align 1, !tbaa !111
  %wide.load126.a = load <32 x i8>, ptr %i.km, align 1, !tbaa !111
  %wide.load127 = load <32 x i8>, ptr %i.kn, align 1, !tbaa !111
  %wide.load128 = load <32 x i8>, ptr %i.ko, align 1, !tbaa !111
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kk, i64 64
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kk, i64 96
  store <32 x i8> %wide.load, ptr %i.kk, align 1, !tbaa !111
  store <32 x i8> %wide.load126.a, ptr %i.kp, align 1, !tbaa !111
  store <32 x i8> %wide.load127, ptr %i.kq, align 1, !tbaa !111
  store <32 x i8> %wide.load128, ptr %i.kr, align 1, !tbaa !111
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.ks = icmp eq i64 %index.next, %n.vec
  br i1 %i.ks, label %middle.block, label %vector.body, !llvm.loop !247

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kc, %n.vec
  br i1 %cmp.n, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.kj, 0
  br i1 %min.epilog.iters.check, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader, label %vec.epilog.ph, !prof !239

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec129 = and i64 %i.iv, 2147483640           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index138 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.is, i64 %index138
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jl, i64 %index138
  %wide.load140 = load <8 x i8>, ptr %i.ku, align 1, !tbaa !111
  store <8 x i8> %wide.load140, ptr %i.kt, align 1, !tbaa !111
  %index.next141 = add nuw i64 %index138, 8       ; 2 uses
  %i.kv = icmp eq i64 %index.next141, %n.vec129
  br i1 %i.kv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !248

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n143 = icmp eq i64 %i.kc, %n.vec129
  br i1 %cmp.n143, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader: ; preds = %vector.memcheck, %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i49.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec129, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.iv, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol.loopexit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol
  %indvars.iv.i.i49.prol = phi i64 [ %indvars.iv.next.i.i50.prol, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol ], [ %indvars.iv.i.i49.ph, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol ], [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader ]
  %i.kw = mul nuw nsw i64 %indvars.iv.i.i49.prol, %i.kd
  %i.kx = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.kw
  %i.ky = mul nuw nsw i64 %indvars.iv.i.i49.prol, %i.kb ; 2 uses
  %i.kz = add nuw nsw i64 %i.ky, %i.ka
  %i.la = icmp samesign ule i64 %i.kz, %i.jb
  tail call void @llvm.assume(i1 %i.la)
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.ky
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !111
  store i8 %i.lc, ptr %i.kx, align 1, !tbaa !111
  %indvars.iv.next.i.i50.prol = add nuw nsw i64 %indvars.iv.i.i49.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol.loopexit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol, !llvm.loop !249

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol.loopexit: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader
  %indvars.iv.i.i49.unr = phi i64 [ %indvars.iv.i.i49.ph, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader ], [ %indvars.iv.next.i.i50.prol, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol ]
  %i.ld = sub nsw i64 %indvars.iv.i.i49.ph, %i.kc
  %i.le = icmp ugt i64 %i.ld, -8
  br i1 %i.le, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i46
  %i.lf = and i64 %i.iv, 2147483647
  %i.lg = zext nneg i32 %i.d to i64               ; 9 uses
  %i.lh = zext nneg i32 %i.iu to i64              ; 9 uses
  %i.li = add nsw i64 %i.lf, -1
  %xtraiter202 = and i64 %i.iv, 7                 ; 3 uses
  %i.lj = icmp ult i64 %i.li, 7
  br i1 %i.lj, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil.preheader, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52.new

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52.new: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52
  %unroll_iter = and i64 %i.iv, 2147483640
  br label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52.new
  %indvars.iv46.i.i54 = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52.new ], [ %indvars.iv.next47.i.i55.7, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53 ] ; 10 uses
  %niter = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52.new ], [ %niter.next.7, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53 ]
  %i.lk = mul nuw nsw i64 %indvars.iv46.i.i54, %i.lg
  %i.ll = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.lk
  %i.lm = mul nuw nsw i64 %indvars.iv46.i.i54, %i.lh ; 2 uses
  %i.ln = add nuw nsw i64 %i.lm, %i.ka
  %i.lo = icmp samesign ule i64 %i.ln, %i.jb
  tail call void @llvm.assume(i1 %i.lo)
  %i.lp = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.lm
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ll, ptr nonnull align 1 %i.lp, i64 %i.ka, i1 false)
  %indvars.iv.next47.i.i55 = or disjoint i64 %indvars.iv46.i.i54, 1 ; 2 uses
  %i.lq = mul nuw nsw i64 %indvars.iv.next47.i.i55, %i.lg
  %i.lr = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.lq
  %i.ls = mul nuw nsw i64 %indvars.iv.next47.i.i55, %i.lh ; 2 uses
  %i.lt = add nuw nsw i64 %i.ls, %i.ka
  %i.lu = icmp samesign ule i64 %i.lt, %i.jb
  tail call void @llvm.assume(i1 %i.lu)
  %i.lv = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.ls
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.lr, ptr nonnull align 1 %i.lv, i64 %i.ka, i1 false)
  %indvars.iv.next47.i.i55.1 = or disjoint i64 %indvars.iv46.i.i54, 2 ; 2 uses
  %i.lw = mul nuw nsw i64 %indvars.iv.next47.i.i55.1, %i.lg
  %i.lx = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.lw
  %i.ly = mul nuw nsw i64 %indvars.iv.next47.i.i55.1, %i.lh ; 2 uses
  %i.lz = add nuw nsw i64 %i.ly, %i.ka
  %i.ma = icmp samesign ule i64 %i.lz, %i.jb
  tail call void @llvm.assume(i1 %i.ma)
  %i.mb = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.ly
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.lx, ptr nonnull align 1 %i.mb, i64 %i.ka, i1 false)
  %indvars.iv.next47.i.i55.2 = or disjoint i64 %indvars.iv46.i.i54, 3 ; 2 uses
  %i.mc = mul nuw nsw i64 %indvars.iv.next47.i.i55.2, %i.lg
  %i.md = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.mc
  %i.me = mul nuw nsw i64 %indvars.iv.next47.i.i55.2, %i.lh ; 2 uses
  %i.mf = add nuw nsw i64 %i.me, %i.ka
  %i.mg = icmp samesign ule i64 %i.mf, %i.jb
  tail call void @llvm.assume(i1 %i.mg)
  %i.mh = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.me
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.md, ptr nonnull align 1 %i.mh, i64 %i.ka, i1 false)
  %indvars.iv.next47.i.i55.3 = or disjoint i64 %indvars.iv46.i.i54, 4 ; 2 uses
  %i.mi = mul nuw nsw i64 %indvars.iv.next47.i.i55.3, %i.lg
  %i.mj = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.mi
  %i.mk = mul nuw nsw i64 %indvars.iv.next47.i.i55.3, %i.lh ; 2 uses
  %i.ml = add nuw nsw i64 %i.mk, %i.ka
  %i.mm = icmp samesign ule i64 %i.ml, %i.jb
  tail call void @llvm.assume(i1 %i.mm)
  %i.mn = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.mk
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.mj, ptr nonnull align 1 %i.mn, i64 %i.ka, i1 false)
  %indvars.iv.next47.i.i55.4 = or disjoint i64 %indvars.iv46.i.i54, 5 ; 2 uses
  %i.mo = mul nuw nsw i64 %indvars.iv.next47.i.i55.4, %i.lg
  %i.mp = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.mo
  %i.mq = mul nuw nsw i64 %indvars.iv.next47.i.i55.4, %i.lh ; 2 uses
  %i.mr = add nuw nsw i64 %i.mq, %i.ka
  %i.ms = icmp samesign ule i64 %i.mr, %i.jb
  tail call void @llvm.assume(i1 %i.ms)
  %i.mt = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.mq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.mp, ptr nonnull align 1 %i.mt, i64 %i.ka, i1 false)
  %indvars.iv.next47.i.i55.5 = or disjoint i64 %indvars.iv46.i.i54, 6 ; 2 uses
  %i.mu = mul nuw nsw i64 %indvars.iv.next47.i.i55.5, %i.lg
  %i.mv = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.mu
  %i.mw = mul nuw nsw i64 %indvars.iv.next47.i.i55.5, %i.lh ; 2 uses
  %i.mx = add nuw nsw i64 %i.mw, %i.ka
  %i.my = icmp samesign ule i64 %i.mx, %i.jb
  tail call void @llvm.assume(i1 %i.my)
  %i.mz = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.mw
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.mv, ptr nonnull align 1 %i.mz, i64 %i.ka, i1 false)
  %indvars.iv.next47.i.i55.6 = or disjoint i64 %indvars.iv46.i.i54, 7 ; 2 uses
  %i.na = mul nuw nsw i64 %indvars.iv.next47.i.i55.6, %i.lg
  %i.nb = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.na
  %i.nc = mul nuw nsw i64 %indvars.iv.next47.i.i55.6, %i.lh ; 2 uses
  %i.nd = add nuw nsw i64 %i.nc, %i.ka
  %i.ne = icmp samesign ule i64 %i.nd, %i.jb
  tail call void @llvm.assume(i1 %i.ne)
  %i.nf = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.nc
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.nb, ptr nonnull align 1 %i.nf, i64 %i.ka, i1 false)
  %indvars.iv.next47.i.i55.7 = add nuw nsw i64 %indvars.iv46.i.i54, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit200.unr-lcssa, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53, !llvm.loop !242

bb.x:                                             ; preds = %_ZNK8rawspeed10Array2DRefISt4byteE15getAsArray1DRefEv.exit.i.i57
  %i.ng = icmp samesign ugt i32 %i.jx, 1
  br i1 %i.ng, label %bb.y, label %bb.z, !prof !237

bb.y:                                             ; preds = %bb.x
  %i.nh = zext nneg i32 %i.jx to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.is, ptr nonnull align 1 %i.jl, i64 %i.nh, i1 false)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

bb.z:                                             ; preds = %bb.x
  %i.ni = load i8, ptr %i.jl, align 1, !tbaa !111
  store i8 %i.ni, ptr %i.is, align 1, !tbaa !111
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol.loopexit, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48
  %indvars.iv.i.i49 = phi i64 [ %indvars.iv.next.i.i50.7, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48 ], [ %indvars.iv.i.i49.unr, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol.loopexit ] ; 10 uses
  %i.nj = mul nuw nsw i64 %indvars.iv.i.i49, %i.kd
  %i.nk = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.nj
  %i.nl = mul nuw nsw i64 %indvars.iv.i.i49, %i.kb ; 2 uses
  %i.nm = add nuw nsw i64 %i.nl, %i.ka
  %i.nn = icmp samesign ule i64 %i.nm, %i.jb
  tail call void @llvm.assume(i1 %i.nn)
  %i.no = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.nl
  %i.np = load i8, ptr %i.no, align 1, !tbaa !111
  store i8 %i.np, ptr %i.nk, align 1, !tbaa !111
  %indvars.iv.next.i.i50 = add nuw nsw i64 %indvars.iv.i.i49, 1 ; 2 uses
  %i.nq = mul nuw nsw i64 %indvars.iv.next.i.i50, %i.kd
  %i.nr = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.nq
  %i.ns = mul nuw nsw i64 %indvars.iv.next.i.i50, %i.kb ; 2 uses
  %i.nt = add nuw nsw i64 %i.ns, %i.ka
  %i.nu = icmp samesign ule i64 %i.nt, %i.jb
  tail call void @llvm.assume(i1 %i.nu)
  %i.nv = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.ns
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !111
  store i8 %i.nw, ptr %i.nr, align 1, !tbaa !111
  %indvars.iv.next.i.i50.1 = add nuw nsw i64 %indvars.iv.i.i49, 2 ; 2 uses
  %i.nx = mul nuw nsw i64 %indvars.iv.next.i.i50.1, %i.kd
  %i.ny = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.nx
  %i.nz = mul nuw nsw i64 %indvars.iv.next.i.i50.1, %i.kb ; 2 uses
  %i.oa = add nuw nsw i64 %i.nz, %i.ka
  %i.ob = icmp samesign ule i64 %i.oa, %i.jb
  tail call void @llvm.assume(i1 %i.ob)
  %i.oc = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.nz
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !111
  store i8 %i.od, ptr %i.ny, align 1, !tbaa !111
  %indvars.iv.next.i.i50.2 = add nuw nsw i64 %indvars.iv.i.i49, 3 ; 2 uses
  %i.oe = mul nuw nsw i64 %indvars.iv.next.i.i50.2, %i.kd
  %i.of = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.oe
  %i.og = mul nuw nsw i64 %indvars.iv.next.i.i50.2, %i.kb ; 2 uses
  %i.oh = add nuw nsw i64 %i.og, %i.ka
  %i.oi = icmp samesign ule i64 %i.oh, %i.jb
  tail call void @llvm.assume(i1 %i.oi)
  %i.oj = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.og
  %i.ok = load i8, ptr %i.oj, align 1, !tbaa !111
  store i8 %i.ok, ptr %i.of, align 1, !tbaa !111
  %indvars.iv.next.i.i50.3 = add nuw nsw i64 %indvars.iv.i.i49, 4 ; 2 uses
  %i.ol = mul nuw nsw i64 %indvars.iv.next.i.i50.3, %i.kd
  %i.om = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.ol
  %i.on = mul nuw nsw i64 %indvars.iv.next.i.i50.3, %i.kb ; 2 uses
  %i.oo = add nuw nsw i64 %i.on, %i.ka
  %i.op = icmp samesign ule i64 %i.oo, %i.jb
  tail call void @llvm.assume(i1 %i.op)
  %i.oq = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.on
  %i.or = load i8, ptr %i.oq, align 1, !tbaa !111
  store i8 %i.or, ptr %i.om, align 1, !tbaa !111
  %indvars.iv.next.i.i50.4 = add nuw nsw i64 %indvars.iv.i.i49, 5 ; 2 uses
  %i.os = mul nuw nsw i64 %indvars.iv.next.i.i50.4, %i.kd
  %i.ot = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.os
  %i.ou = mul nuw nsw i64 %indvars.iv.next.i.i50.4, %i.kb ; 2 uses
  %i.ov = add nuw nsw i64 %i.ou, %i.ka
  %i.ow = icmp samesign ule i64 %i.ov, %i.jb
  tail call void @llvm.assume(i1 %i.ow)
  %i.ox = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.ou
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !111
  store i8 %i.oy, ptr %i.ot, align 1, !tbaa !111
  %indvars.iv.next.i.i50.5 = add nuw nsw i64 %indvars.iv.i.i49, 6 ; 2 uses
  %i.oz = mul nuw nsw i64 %indvars.iv.next.i.i50.5, %i.kd
  %i.pa = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.oz
  %i.pb = mul nuw nsw i64 %indvars.iv.next.i.i50.5, %i.kb ; 2 uses
  %i.pc = add nuw nsw i64 %i.pb, %i.ka
  %i.pd = icmp samesign ule i64 %i.pc, %i.jb
  tail call void @llvm.assume(i1 %i.pd)
  %i.pe = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.pb
  %i.pf = load i8, ptr %i.pe, align 1, !tbaa !111
  store i8 %i.pf, ptr %i.pa, align 1, !tbaa !111
  %indvars.iv.next.i.i50.6 = add nuw nsw i64 %indvars.iv.i.i49, 7 ; 2 uses
  %i.pg = mul nuw nsw i64 %indvars.iv.next.i.i50.6, %i.kd
  %i.ph = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.pg
  %i.pi = mul nuw nsw i64 %indvars.iv.next.i.i50.6, %i.kb ; 2 uses
  %i.pj = add nuw nsw i64 %i.pi, %i.ka
  %i.pk = icmp samesign ule i64 %i.pj, %i.jb
  tail call void @llvm.assume(i1 %i.pk)
  %i.pl = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.pi
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !111
  store i8 %i.pm, ptr %i.ph, align 1, !tbaa !111
  %indvars.iv.next.i.i50.7 = add nuw nsw i64 %indvars.iv.i.i49, 8 ; 2 uses
  %.not.i.i51.7 = icmp eq i64 %indvars.iv.next.i.i50.7, %i.kc
  br i1 %.not.i.i51.7, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48, !llvm.loop !250

bb.aa:                                            ; preds = %bb.u
  tail call void @_ZNK8rawspeed24UncompressedDecompressor15decodePackedIntINS_14BitStreamerLSBEEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.t, i32 noundef %i.m)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit.unr-lcssa: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i
  %lcmp.mod210.not = icmp eq i64 %xtraiter208, 0
  br i1 %lcmp.mod210.not, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil.preheader

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil.preheader: ; preds = %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit.unr-lcssa, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i
  %indvars.iv46.i.i.epil.init = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i ], [ %indvars.iv.next47.i.i.7, %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit.unr-lcssa ]
  %lcmp.mod211 = icmp ne i64 %xtraiter208, 0
  tail call void @llvm.assume(i1 %lcmp.mod211)
  br label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil.preheader
  %indvars.iv46.i.i.epil = phi i64 [ %indvars.iv46.i.i.epil.init, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil.preheader ], [ %indvars.iv.next47.i.i.epil, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil ] ; 3 uses
  %epil.iter209 = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil.preheader ], [ %epil.iter209.next, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil ]
  %i.pn = mul nuw nsw i64 %indvars.iv46.i.i.epil, %i.dg
  %i.po = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.pn
  %i.pp = mul nuw nsw i64 %indvars.iv46.i.i.epil, %i.dh ; 2 uses
  %i.pq = add nuw nsw i64 %i.pp, %i.ca
  %i.pr = icmp samesign ule i64 %i.pq, %i.bb
  tail call void @llvm.assume(i1 %i.pr)
  %i.ps = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.pp
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.po, ptr nonnull align 1 %i.ps, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.epil = add nuw nsw i64 %indvars.iv46.i.i.epil, 1
  %epil.iter209.next = add i64 %epil.iter209, 1   ; 2 uses
  %epil.iter209.cmp.not = icmp eq i64 %epil.iter209.next, %xtraiter208
  br i1 %epil.iter209.cmp.not, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil, !llvm.loop !251

_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit200.unr-lcssa: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53
  %lcmp.mod203.not = icmp eq i64 %xtraiter202, 0
  br i1 %lcmp.mod203.not, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil.preheader

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil.preheader: ; preds = %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit200.unr-lcssa, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52
  %indvars.iv46.i.i54.epil.init = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52 ], [ %indvars.iv.next47.i.i55.7, %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit200.unr-lcssa ]
  %lcmp.mod204 = icmp ne i64 %xtraiter202, 0
  tail call void @llvm.assume(i1 %lcmp.mod204)
  br label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil.preheader
  %indvars.iv46.i.i54.epil = phi i64 [ %indvars.iv46.i.i54.epil.init, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil.preheader ], [ %indvars.iv.next47.i.i55.epil, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil.preheader ], [ %epil.iter.next, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil ]
  %i.pt = mul nuw nsw i64 %indvars.iv46.i.i54.epil, %i.lg
  %i.pu = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.pt
  %i.pv = mul nuw nsw i64 %indvars.iv46.i.i54.epil, %i.lh ; 2 uses
  %i.pw = add nuw nsw i64 %i.pv, %i.ka
  %i.px = icmp samesign ule i64 %i.pw, %i.jb
  tail call void @llvm.assume(i1 %i.px)
  %i.py = getelementptr inbounds nuw i8, ptr %i.jl, i64 %i.pv
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.pu, ptr nonnull align 1 %i.py, i64 %i.ka, i1 false)
  %indvars.iv.next47.i.i55.epil = add nuw nsw i64 %indvars.iv46.i.i54.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter202
  br i1 %epil.iter.cmp.not, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil, !llvm.loop !252

_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit:  ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol.loopexit, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48, %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit200.unr-lcssa, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol.loopexit, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i, %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit.unr-lcssa, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil, %middle.block, %vec.epilog.middle.block, %middle.block172, %vec.epilog.middle.block196, %bb.z, %bb.y, %bb.g, %bb.f, %bb.r, %bb.t, %bb.aa, %bb.s, %bb.p, %bb.n, %bb.l, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerMSBENS_13ieee_754_20088Binary16EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca i32, align 4            ; 5 uses
  %3 = alloca %"class.rawspeed::BitStreamerMSB", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31, !noalias !253
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !36, !noalias !253 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.h = load i32, ptr %i.g, align 8, !tbaa !104, !noalias !253
  %i.i = mul nsw i32 %i.h, %i.f                   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.k = load i32, ptr %i.j, align 4, !tbaa !106, !noalias !253
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.m = load i32, ptr %i.l, align 8, !tbaa !105, !noalias !253
  %i.n = ashr i32 %i.m, 2                         ; 3 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp sge i32 %i.n, %i.i
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !29   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28   ; 3 uses
  %i.u = icmp uge i32 %i.t, %i.r
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp sgt i32 %i.t, -1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = zext i32 %i.r to i64
  %i.x = sub nuw i32 %i.t, %i.r                   ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !107
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i64 0, ptr %3, align 8, !tbaa !256
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !258
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.z, ptr %i.ab, align 8, !tbaa !211
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 %i.x, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !108
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i32 0, ptr %i.ac, align 8, !tbaa !259
  %i.ad = icmp samesign ult i32 %i.x, 4
  br i1 %i.ad, label %bb.b, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEC2ENS_10Array1DRefIKSt4byteEE) #6
  unreachable

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit: ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !11
  %i.ag = mul i32 %i.af, %i.f                     ; 2 uses
  %i.ah = icmp slt i32 %2, %1
  br i1 %i.ah, label %.preheader.lr.ph, label %._crit_edge38

.preheader.lr.ph:                                 ; preds = %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit
  %i.ai = icmp sgt i32 %i.ag, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  br i1 %i.ai, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.al = zext i32 %2 to i64
  %i.am = zext nneg i32 %i.k to i64
  %i.an = zext nneg i32 %i.n to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.al, %.preheader.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 3 uses
  %i.ao = load i32, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !262 ; 5 uses
  %i.ap = icmp sgt i32 %i.ao, 3
  call void @llvm.assume(i1 %i.ap)
  %.sroa.0.0.copyload.i.i.i.i.us = load ptr, ptr %i.ab, align 8 ; 2 uses
  %i.aq = add nuw nsw i32 %i.ao, 8
  %i.ar = icmp samesign ult i64 %indvars.iv, %i.am
  %i.as = mul nuw nsw i64 %indvars.iv, %i.an
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.as
  %.pre = load i32, ptr %i.aa, align 8, !tbaa !258
  %.pre42 = load i32, ptr %i.ac, align 8, !tbaa !259
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us
  %i.au = phi i32 [ %.pre42, %.preheader.us ], [ %i.bp, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us ] ; 6 uses
  %i.av = phi i32 [ %.pre, %.preheader.us ], [ %i.bu, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us ] ; 5 uses
  %.01536.us = phi i32 [ 0, %.preheader.us ], [ %i.cr, %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us ] ; 2 uses
  %i.aw = icmp samesign ult i32 %i.av, 65
  call void @llvm.assume(i1 %i.aw)
  %i.ax = icmp sgt i32 %i.au, -1
  call void @llvm.assume(i1 %i.ax)
  %.not.i.i.us = icmp samesign ult i32 %i.av, 16
  br i1 %.not.i.i.us, label %bb.d, label %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us

._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us: ; preds = %bb.c
  %.pre.i.us = load i64, ptr %3, align 8, !tbaa !256
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ay = add nuw nsw i32 %i.au, 4                ; 3 uses
  %.not.i.i.i.us = icmp samesign ugt i32 %i.ay, %i.ao
  br i1 %.not.i.i.i.us, label %bb.f, label %bb.e, !prof !230

bb.e:                                             ; preds = %bb.d
  %i.az = zext nneg i32 %i.au to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.az
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us

bb.f:                                             ; preds = %bb.d
  %i.bb = icmp samesign ugt i32 %i.au, %i.aq
  br i1 %i.bb, label %.split.us, label %bb.g, !prof !230

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %.sroa.0.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ao, i32 %i.au) ; 3 uses
  %i.bc = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.us, 4
  %.sroa.speculated.i.i.i.i.us = call i32 @llvm.umin.i32(i32 %i.ao, i32 %i.bc)
  %i.bd = sub nsw i32 %.sroa.speculated.i.i.i.i.us, %.sroa.speculated27.i.i.i.i.us ; 2 uses
  %i.be = icmp samesign ult i32 %i.bd, 5
  call void @llvm.assume(i1 %i.be)
  %i.bf = zext nneg i32 %.sroa.speculated27.i.i.i.i.us to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.us, i64 %i.bf
  %i.bh = zext nneg i32 %i.bd to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i, ptr align 1 %i.bg, i64 %i.bh, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us: ; preds = %bb.g, %bb.e
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us = phi ptr [ %.sroa.0.i.i.i, %bb.g ], [ %i.ba, %bb.e ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.us, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %.promoted8.i.i.i.us = load i64, ptr %3, align 8
  %i.bi = call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.us)
  %i.bj = zext i32 %i.bi to i64
  %i.bk = or disjoint i32 %i.av, 32
  %i.bl = sub nuw nsw i32 32, %i.av
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl nuw i64 %i.bj, %i.bm
  %i.bo = or i64 %i.bn, %.promoted8.i.i.i.us
  store i32 %i.ay, ptr %i.ac, align 8, !tbaa !259
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us
  %i.bp = phi i32 [ %i.au, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.ay, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ]
  %i.bq = phi i64 [ %.pre.i.us, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bo, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ] ; 2 uses
  %i.br = phi i32 [ %i.av, %._ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit_crit_edge.i.us ], [ %i.bk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.us ]
  %i.bs = lshr i64 %i.bq, 48
  %i.bt = trunc nuw nsw i64 %i.bs to i32          ; 3 uses
  %i.bu = add nsw i32 %i.br, -16                  ; 2 uses
  store i32 %i.bu, ptr %i.aa, align 8, !tbaa !258
  %i.bv = shl i64 %i.bq, 16
  store i64 %i.bv, ptr %3, align 8, !tbaa !256
  %i.bw = lshr i32 %i.bt, 10
  %i.bx = and i32 %i.bw, 31                       ; 3 uses
  %i.by = and i32 %i.bt, 1023                     ; 2 uses
  %i.bz = shl nuw nsw i32 %i.by, 13               ; 4 uses
  %i.ca = icmp eq i32 %i.bx, 31
  br i1 %i.ca, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us, label %bb.h

bb.h:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %i.cb = add nuw nsw i32 %i.bx, 112
  %i.cc = icmp eq i32 %i.bx, 0
  br i1 %i.cc, label %bb.i, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us

bb.i:                                             ; preds = %bb.h
  %i.cd = icmp eq i32 %i.by, 0
  br i1 %i.cd, label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us, label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %bb.i
  %.masked.numleadingzeros.i.us = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bz, i1 true) ; 2 uses
  %i.ce = sub nuw nsw i32 121, %.masked.numleadingzeros.i.us
  %.masked.leadingonepos.i.us = xor i32 %.masked.numleadingzeros.i.us, 31
  %.lr.ph.tripcount.i.us = sub nuw nsw i32 23, %.masked.leadingonepos.i.us
  %i.cf = shl i32 %i.bz, %.lr.ph.tripcount.i.us
  %i.cg = and i32 %i.cf, 8380416
  br label %_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us

_ZN8rawspeed25extendBinaryFloatingPointINS_13ieee_754_20088Binary16ENS1_8Binary32EEEjj.exit.us: ; preds = %._crit_edge.i.us, %bb.i, %bb.h, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us
  %.116.i.us = phi i32 [ %i.cb, %bb.h ], [ 255, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ], [ %i.ce, %._crit_edge.i.us ], [ 0, %bb.i ]
  %.1.i.us = phi i32 [ %i.bz, %bb.h ], [ %i.bz, %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE7getBitsEi.exit.us ], [ %i.cg, %._crit_edge.i.us ], [ 0, %bb.i ]
  %i.ch = shl nuw i32 %i.bt, 16
end_hunk_0
