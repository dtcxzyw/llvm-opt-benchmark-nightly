Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/UncompressedDecompressor?download=true
inline.NumInlined: 763
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz:bb.a
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !119  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !245
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !246
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !call_target !131, !inline_history !243
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #16, !call_target !132, !inline_history !243
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !108
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !106
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !133

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !103  ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  %i.j = load i32, ptr %i.i, align 8, !tbaa !101  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.m = load i32, ptr %i.l, align 4, !tbaa !262  ; 13 uses
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = zext i32 %i.h to i64
  %i.p = add nsw i64 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.r = load i32, ptr %i.q, align 4, !tbaa !126
  %i.s = sext i32 %i.r to i64
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.p, i64 %i.s) ; 3 uses
  %i.t = trunc i64 %.sroa.speculated to i32       ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 553
  %i.v = load i8, ptr %i.u, align 1, !tbaa !124
  %i.w = icmp eq i8 %i.v, 1
  br i1 %i.w, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.y = load i32, ptr %i.x, align 4, !tbaa !122  ; 5 uses
  %i.z = icmp eq i32 %i.y, 32
  br i1 %i.z, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !33, !noalias !263 ; 3 uses
  %i.ac = ptrtoaddr ptr %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !102, !noalias !263
  %i.af = mul nsw i32 %i.ae, %i.j                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !104, !noalias !263
  %i.ai = ashr i32 %i.d, 2                        ; 2 uses
  %i.aj = icmp sge i32 %i.ai, %i.af
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load i32, ptr %i.k, align 8, !tbaa !134
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
  %i.au = load i32, ptr %i.at, align 8, !tbaa !121 ; 7 uses
  %i.av = sub nsw i64 %.sroa.speculated, %i.n     ; 9 uses
  %i.aw = trunc i64 %i.av to i32                  ; 4 uses
  %i.ax = mul i32 %i.au, %i.aw                    ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !30 ; 2 uses
  %i.ba = zext i32 %i.az to i64                   ; 3 uses
  %i.bb = zext i32 %i.ax to i64                   ; 19 uses
  %i.bc = add nuw nsw i64 %i.ba, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !29 ; 3 uses
  %i.bf = zext i32 %i.be to i64
  %.not.i.i.i = icmp samesign ugt i64 %i.bc, %i.bf
  br i1 %.not.i.i.i, label %bb.d, label %_ZN8rawspeed10ByteStream7getDataEj.exit

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #6
  unreachable

_ZN8rawspeed10ByteStream7getDataEj.exit:          ; preds = %bb.c
  %i.bg = load ptr, ptr %0, align 8, !tbaa !105, !nonnull !112, !noundef !112 ; 2 uses
  %i.bh = ptrtoaddr ptr %i.bg to i64
  %i.bi = icmp sgt i32 %i.be, -1
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = add nuw nsw i32 %i.az, %i.ax            ; 2 uses
  %i.bk = icmp samesign ule i32 %i.bj, %i.be
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ba ; 22 uses
  %i.bm = icmp sgt i32 %i.ax, -1
  tail call void @llvm.assume(i1 %i.bm)
  store i32 %i.bj, ptr %i.ay, align 8, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 596
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !264
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
  br i1 %i.bz, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i, label %iter.check175, !prof !265

iter.check175:                                    ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i
  %i.cb = zext nneg i32 %i.au to i64              ; 9 uses
  %i.cc = and i64 %i.av, 2147483647               ; 8 uses
  %i.cd = zext nneg i32 %i.d to i64               ; 9 uses
  %min.iters.check149 = icmp samesign ult i64 %i.cc, 16
  br i1 %min.iters.check149, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader, label %vector.scevcheck144

vector.scevcheck144:                              ; preds = %iter.check175
  %ident.check145 = icmp ne i32 %i.d, 1
  %ident.check146 = icmp ne i32 %i.au, 1
  %i.ce = or i1 %ident.check145, %ident.check146
  br i1 %i.ce, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader, label %vector.memcheck147

vector.memcheck147:                               ; preds = %vector.scevcheck144
  %i.cf = shl nuw nsw i64 %i.ar, 2
  %i.cg = add i64 %i.bh, %i.ba
  %i.ch = add i64 %i.cf, %i.ac
  %i.ci = sub i64 %i.cg, %i.ch
  %diff.check148 = icmp ugt i64 %i.ci, -128
  br i1 %diff.check148, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader, label %vector.main.loop.iter.check150

vector.main.loop.iter.check150:                   ; preds = %vector.memcheck147
  %min.iters.check151 = icmp samesign ult i64 %i.cc, 128
  br i1 %min.iters.check151, label %vec.epilog.ph179, label %vector.ph152

vector.ph152:                                     ; preds = %vector.main.loop.iter.check150
  %i.cj = and i64 %i.av, 112
  %n.vec153 = and i64 %i.av, 2147483520           ; 4 uses
  br label %vector.body160

vector.body160:                                   ; preds = %vector.ph152, %vector.body160
  %index161 = phi i64 [ 0, %vector.ph152 ], [ %index.next170, %vector.body160 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.as, i64 %index161 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bl, i64 %index161 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  %wide.load166 = load <32 x i8>, ptr %i.cl, align 1, !tbaa !108
  %wide.load167 = load <32 x i8>, ptr %i.cm, align 1, !tbaa !108
  %wide.load168 = load <32 x i8>, ptr %i.cn, align 1, !tbaa !108
  %wide.load169 = load <32 x i8>, ptr %i.co, align 1, !tbaa !108
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  store <32 x i8> %wide.load166, ptr %i.ck, align 1, !tbaa !108
  store <32 x i8> %wide.load167, ptr %i.cp, align 1, !tbaa !108
  store <32 x i8> %wide.load168, ptr %i.cq, align 1, !tbaa !108
  store <32 x i8> %wide.load169, ptr %i.cr, align 1, !tbaa !108
  %index.next170 = add nuw i64 %index161, 128     ; 2 uses
  %i.cs = icmp eq i64 %index.next170, %n.vec153
  br i1 %i.cs, label %middle.block172, label %vector.body160, !llvm.loop !249

middle.block172:                                  ; preds = %vector.body160
  %cmp.n173 = icmp eq i64 %i.cc, %n.vec153
  br i1 %cmp.n173, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %vec.epilog.iter.check177

vec.epilog.iter.check177:                         ; preds = %middle.block172
  %min.epilog.iters.check178 = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check178, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader, label %vec.epilog.ph179, !prof !266

vec.epilog.ph179:                                 ; preds = %vector.main.loop.iter.check150, %vec.epilog.iter.check177
  %vec.epilog.resume.val174 = phi i64 [ %n.vec153, %vec.epilog.iter.check177 ], [ 0, %vector.main.loop.iter.check150 ]
  %n.vec180 = and i64 %i.av, 2147483632           ; 3 uses
  br label %vec.epilog.vector.body190

vec.epilog.vector.body190:                        ; preds = %vec.epilog.vector.body190, %vec.epilog.ph179
  %index191 = phi i64 [ %vec.epilog.resume.val174, %vec.epilog.ph179 ], [ %index.next194, %vec.epilog.vector.body190 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.as, i64 %index191
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bl, i64 %index191
  %wide.load193 = load <16 x i8>, ptr %i.cu, align 1, !tbaa !108
  store <16 x i8> %wide.load193, ptr %i.ct, align 1, !tbaa !108
  %index.next194 = add nuw i64 %index191, 16      ; 2 uses
  %i.cv = icmp eq i64 %index.next194, %n.vec180
  br i1 %i.cv, label %vec.epilog.middle.block196, label %vec.epilog.vector.body190, !llvm.loop !250

vec.epilog.middle.block196:                       ; preds = %vec.epilog.vector.body190
  %cmp.n197 = icmp eq i64 %i.cc, %n.vec180
  br i1 %cmp.n197, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader: ; preds = %iter.check175, %vector.scevcheck144, %vector.memcheck147, %vec.epilog.iter.check177, %vec.epilog.middle.block196
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check175 ], [ 0, %vector.scevcheck144 ], [ 0, %vector.memcheck147 ], [ %n.vec153, %vec.epilog.iter.check177 ], [ %n.vec180, %vec.epilog.middle.block196 ] ; 3 uses
  %xtraiter205 = and i64 %i.av, 7                 ; 2 uses
  %lcmp.mod206.not = icmp eq i64 %xtraiter205, 0
  br i1 %lcmp.mod206.not, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol.loopexit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol ], [ %indvars.iv.i.i.ph, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader ] ; 4 uses
  %prol.iter207 = phi i64 [ %prol.iter207.next, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol ], [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader ]
  %i.cw = icmp samesign ult i64 %indvars.iv.i.i.prol, %i.cc
  tail call void @llvm.assume(i1 %i.cw)
  %i.cx = mul nuw nsw i64 %indvars.iv.i.i.prol, %i.cd
  %i.cy = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.cx
  %i.cz = mul nuw nsw i64 %indvars.iv.i.i.prol, %i.cb ; 2 uses
  %i.da = add nuw nsw i64 %i.cz, %i.ca
  %i.db = icmp samesign ule i64 %i.da, %i.bb
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cz
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !108
  store i8 %i.dd, ptr %i.cy, align 1, !tbaa !108
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter207.next = add i64 %prol.iter207, 1   ; 2 uses
  %prol.iter207.cmp.not = icmp eq i64 %prol.iter207.next, %xtraiter205
  br i1 %prol.iter207.cmp.not, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol.loopexit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol, !llvm.loop !251

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol.loopexit: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i.prol ]
  %i.de = sub nsw i64 %indvars.iv.i.i.ph, %i.cc
  %i.df = icmp ugt i64 %i.de, -8
  br i1 %i.df, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i
  %i.dg = and i64 %i.av, 2147483647               ; 3 uses
  %i.dh = zext nneg i32 %i.d to i64               ; 9 uses
  %i.di = zext nneg i32 %i.au to i64              ; 9 uses
  %i.dj = add nsw i64 %i.dg, -1
  %xtraiter208 = and i64 %i.av, 7                 ; 3 uses
  %i.dk = icmp ult i64 %i.dj, 7
  br i1 %i.dk, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i.epil.preheader, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i.new

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i.new: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i
  %unroll_iter212 = and i64 %i.av, 2147483640
  br label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i.new
  %indvars.iv46.i.i = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i.new ], [ %indvars.iv.next47.i.i.7, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i ] ; 10 uses
  %niter213 = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i.new ], [ %niter213.next.7, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i ]
  %i.dl = mul nuw nsw i64 %indvars.iv46.i.i, %i.dh
  %i.dm = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dl
  %i.dn = mul nuw nsw i64 %indvars.iv46.i.i, %i.di ; 2 uses
  %i.do = add nuw nsw i64 %i.dn, %i.ca
  %i.dp = icmp samesign ule i64 %i.do, %i.bb
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.dn
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dm, ptr nonnull align 1 %i.dq, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i = or disjoint i64 %indvars.iv46.i.i, 1 ; 2 uses
  %i.dr = mul nuw nsw i64 %indvars.iv.next47.i.i, %i.dh
  %i.ds = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dr
  %i.dt = mul nuw nsw i64 %indvars.iv.next47.i.i, %i.di ; 2 uses
  %i.du = add nuw nsw i64 %i.dt, %i.ca
  %i.dv = icmp samesign ule i64 %i.du, %i.bb
  tail call void @llvm.assume(i1 %i.dv)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.dt
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ds, ptr nonnull align 1 %i.dw, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.1 = or disjoint i64 %indvars.iv46.i.i, 2 ; 2 uses
  %i.dx = mul nuw nsw i64 %indvars.iv.next47.i.i.1, %i.dh
  %i.dy = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dx
  %i.dz = mul nuw nsw i64 %indvars.iv.next47.i.i.1, %i.di ; 2 uses
  %i.ea = add nuw nsw i64 %i.dz, %i.ca
  %i.eb = icmp samesign ule i64 %i.ea, %i.bb
  tail call void @llvm.assume(i1 %i.eb)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.dz
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dy, ptr nonnull align 1 %i.ec, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.2 = or disjoint i64 %indvars.iv46.i.i, 3 ; 2 uses
  %i.ed = mul nuw nsw i64 %indvars.iv.next47.i.i.2, %i.dh
  %i.ee = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ed
  %i.ef = mul nuw nsw i64 %indvars.iv.next47.i.i.2, %i.di ; 2 uses
  %i.eg = add nuw nsw i64 %i.ef, %i.ca
  %i.eh = icmp samesign ule i64 %i.eg, %i.bb
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ef
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ee, ptr nonnull align 1 %i.ei, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.3 = or disjoint i64 %indvars.iv46.i.i, 4 ; 2 uses
  %i.ej = mul nuw nsw i64 %indvars.iv.next47.i.i.3, %i.dh
  %i.ek = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ej
  %i.el = mul nuw nsw i64 %indvars.iv.next47.i.i.3, %i.di ; 2 uses
  %i.em = add nuw nsw i64 %i.el, %i.ca
  %i.en = icmp samesign ule i64 %i.em, %i.bb
  tail call void @llvm.assume(i1 %i.en)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.el
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ek, ptr nonnull align 1 %i.eo, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.4 = or disjoint i64 %indvars.iv46.i.i, 5 ; 2 uses
  %i.ep = mul nuw nsw i64 %indvars.iv.next47.i.i.4, %i.dh
  %i.eq = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ep
  %i.er = mul nuw nsw i64 %indvars.iv.next47.i.i.4, %i.di ; 2 uses
  %i.es = add nuw nsw i64 %i.er, %i.ca
  %i.et = icmp samesign ule i64 %i.es, %i.bb
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.er
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eq, ptr nonnull align 1 %i.eu, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.5 = or disjoint i64 %indvars.iv46.i.i, 6 ; 2 uses
  %i.ev = mul nuw nsw i64 %indvars.iv.next47.i.i.5, %i.dh
  %i.ew = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ev
  %i.ex = mul nuw nsw i64 %indvars.iv.next47.i.i.5, %i.di ; 2 uses
  %i.ey = add nuw nsw i64 %i.ex, %i.ca
  %i.ez = icmp samesign ule i64 %i.ey, %i.bb
  tail call void @llvm.assume(i1 %i.ez)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.ex
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ew, ptr nonnull align 1 %i.fa, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.6 = or disjoint i64 %indvars.iv46.i.i, 7 ; 3 uses
  %i.fb = icmp samesign ult i64 %indvars.iv.next47.i.i.6, %i.dg
  tail call void @llvm.assume(i1 %i.fb)
  %i.fc = mul nuw nsw i64 %indvars.iv.next47.i.i.6, %i.dh
  %i.fd = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.fc
  %i.fe = mul nuw nsw i64 %indvars.iv.next47.i.i.6, %i.di ; 2 uses
  %i.ff = add nuw nsw i64 %i.fe, %i.ca
  %i.fg = icmp samesign ule i64 %i.ff, %i.bb
  tail call void @llvm.assume(i1 %i.fg)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.fe
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fd, ptr nonnull align 1 %i.fh, i64 %i.ca, i1 false)
  %indvars.iv.next47.i.i.7 = add nuw nsw i64 %indvars.iv46.i.i, 8 ; 2 uses
  %niter213.next.7 = add nuw i64 %niter213, 8     ; 2 uses
  %niter213.ncmp.7 = icmp eq i64 %niter213.next.7, %unroll_iter212
  br i1 %niter213.ncmp.7, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit.unr-lcssa, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i, !llvm.loop !252

bb.e:                                             ; preds = %_ZNK8rawspeed10Array2DRefISt4byteE15getAsArray1DRefEv.exit.i.i
  %i.fi = icmp samesign ugt i32 %i.bx, 1
  br i1 %i.fi, label %bb.f, label %bb.g, !prof !265

bb.f:                                             ; preds = %bb.e
  %i.fj = zext nneg i32 %i.bx to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull align 1 %i.bl, i64 %i.fj, i1 false)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

bb.g:                                             ; preds = %bb.e
  %i.fk = load i8, ptr %i.bl, align 1, !tbaa !108
  store i8 %i.fk, ptr %i.as, align 1, !tbaa !108
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

end_hunk_0
begin_hunk_1_@_ZN8rawspeed24UncompressedDecompressor19readUncompressedRawEv:bb.a
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !108
  store i8 %i.ha, ptr %i.gv, align 1, !tbaa !108
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i, 6 ; 2 uses
  %i.hb = mul nuw nsw i64 %indvars.iv.next.i.i.5, %i.cd
  %i.hc = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.hb
  %i.hd = mul nuw nsw i64 %indvars.iv.next.i.i.5, %i.cb ; 2 uses
  %i.he = add nuw nsw i64 %i.hd, %i.ca
  %i.hf = icmp samesign ule i64 %i.he, %i.bb
  tail call void @llvm.assume(i1 %i.hf)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.hd
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !108
  store i8 %i.hh, ptr %i.hc, align 1, !tbaa !108
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i, 7 ; 3 uses
  %i.hi = icmp samesign ult i64 %indvars.iv.next.i.i.6, %i.cc
  tail call void @llvm.assume(i1 %i.hi)
  %i.hj = mul nuw nsw i64 %indvars.iv.next.i.i.6, %i.cd
  %i.hk = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.hj
  %i.hl = mul nuw nsw i64 %indvars.iv.next.i.i.6, %i.cb ; 2 uses
  %i.hm = add nuw nsw i64 %i.hl, %i.ca
  %i.hn = icmp samesign ule i64 %i.hm, %i.bb
  tail call void @llvm.assume(i1 %i.hn)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.hl
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !108
  store i8 %i.hp, ptr %i.hk, align 1, !tbaa !108
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %.not.i.i.7 = icmp eq i64 %indvars.iv.next.i.i.7, %i.cc
  br i1 %.not.i.i.7, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i, !llvm.loop !253

bb.h:                                             ; preds = %bb.b
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hr = load i8, ptr %i.hq, align 8, !tbaa !123 ; 3 uses
  %i.hs = icmp eq i8 %i.hr, 1                     ; 2 uses
  %i.ht = icmp eq i32 %i.y, 16                    ; 2 uses
  %or.cond = and i1 %i.ht, %i.hs
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerMSBENS_13ieee_754_20088Binary16EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.t, i32 noundef %i.m)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

bb.j:                                             ; preds = %bb.h
  %i.hu = icmp eq i8 %i.hr, 0
  br i1 %i.hu, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  br i1 %i.ht, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  tail call void @_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerLSBENS_13ieee_754_20088Binary16EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.t, i32 noundef %i.m)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

bb.m:                                             ; preds = %bb.j
  %i.hv = icmp eq i32 %i.y, 24
  %or.cond105 = and i1 %i.hv, %i.hs
  br i1 %or.cond105, label %bb.n, label %.thread104

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerMSBENS_13ieee_754_20088Binary24EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.t, i32 noundef %i.m)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

bb.o:                                             ; preds = %bb.k
  %i.hw = icmp eq i32 %i.y, 24
  br i1 %i.hw, label %bb.p, label %.thread104

bb.p:                                             ; preds = %bb.o
  tail call void @_ZNK8rawspeed24UncompressedDecompressor14decodePackedFPINS_14BitStreamerLSBENS_13ieee_754_20088Binary24EEEvii(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %i.t, i32 noundef %i.m)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

.thread104:                                       ; preds = %bb.m, %bb.o
  %i.hx = zext i8 %i.hr to i32
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.12, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed24UncompressedDecompressor19readUncompressedRawEv, i32 noundef %i.y, i32 noundef %i.hx) #6
  unreachable

bb.q:                                             ; preds = %bb.a
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hz = load i8, ptr %i.hy, align 8, !tbaa !123
  switch i8 %i.hz, label %bb.u [
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
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !122
  %i.ic = icmp eq i32 %i.ib, 16
  br i1 %i.ic, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !33, !noalias !267 ; 3 uses
  %i.if = ptrtoaddr ptr %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !102, !noalias !267
  %i.ii = mul nsw i32 %i.ih, %i.j                 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 612
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !104, !noalias !267
  %i.il = ashr i32 %i.d, 1                        ; 2 uses
  %i.im = icmp sge i32 %i.il, %i.ii
  tail call void @llvm.assume(i1 %i.im)
  %i.in = load i32, ptr %i.k, align 8, !tbaa !134
  %i.io = mul i32 %i.in, %i.j                     ; 2 uses
  %i.ip = icmp samesign ult i32 %i.io, %i.ii
  tail call void @llvm.assume(i1 %i.ip)
  %i.iq = icmp samesign ult i32 %i.m, %i.ik
  tail call void @llvm.assume(i1 %i.iq)
  %i.ir = mul i32 %i.m, %i.il
  %i.is = zext i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.ie, i64 %i.is
  %i.iu = zext i32 %i.io to i64                   ; 2 uses
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.it, i64 %i.iu ; 22 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !121 ; 7 uses
  %i.iy = sub nsw i64 %.sroa.speculated, %i.n     ; 9 uses
  %i.iz = trunc i64 %i.iy to i32                  ; 4 uses
  %i.ja = mul i32 %i.ix, %i.iz                    ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !30 ; 2 uses
  %i.jd = zext i32 %i.jc to i64                   ; 3 uses
  %i.je = zext i32 %i.ja to i64                   ; 19 uses
  %i.jf = add nuw nsw i64 %i.jd, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jh = load i32, ptr %i.jg, align 8, !tbaa !29 ; 3 uses
  %i.ji = zext i32 %i.jh to i64
  %.not.i.i.i43 = icmp samesign ugt i64 %i.jf, %i.ji
  br i1 %.not.i.i.i43, label %bb.w, label %_ZN8rawspeed10ByteStream7getDataEj.exit44

bb.w:                                             ; preds = %bb.v
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.13, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed6Buffer10getSubViewEjj) #6
  unreachable

_ZN8rawspeed10ByteStream7getDataEj.exit44:        ; preds = %bb.v
  %i.jj = load ptr, ptr %0, align 8, !tbaa !105, !nonnull !112, !noundef !112 ; 2 uses
  %i.jk = ptrtoaddr ptr %i.jj to i64
  %i.jl = icmp sgt i32 %i.jh, -1
  tail call void @llvm.assume(i1 %i.jl)
  %i.jm = add nuw nsw i32 %i.jc, %i.ja            ; 2 uses
  %i.jn = icmp samesign ule i32 %i.jm, %i.jh
  tail call void @llvm.assume(i1 %i.jn)
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jd ; 22 uses
  %i.jp = icmp sgt i32 %i.ja, -1
  tail call void @llvm.assume(i1 %i.jp)
  store i32 %i.jm, ptr %i.jb, align 8, !tbaa !30
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 596
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !264
  %i.js = mul i32 %i.jr, %i.f                     ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ie) ]
  %i.jt = icmp sgt i32 %i.ix, 0
  tail call void @llvm.assume(i1 %i.jt)
  %i.ju = icmp sgt i32 %i.js, 0
  tail call void @llvm.assume(i1 %i.ju)
  %i.jv = icmp sgt i32 %i.iz, 0
  tail call void @llvm.assume(i1 %i.jv)
  %i.jw = icmp samesign ule i32 %i.js, %i.ix
  tail call void @llvm.assume(i1 %i.jw)
  %i.jx = icmp samesign uge i32 %i.d, %i.js
  tail call void @llvm.assume(i1 %i.jx)
  %i.jy = icmp eq i32 %i.iz, 1                    ; 2 uses
  %i.jz = icmp eq i32 %i.d, %i.js
  %or.cond.i.i.i45 = or i1 %i.jy, %i.jz
  br i1 %or.cond.i.i.i45, label %_ZNK8rawspeed10Array2DRefISt4byteE15getAsArray1DRefEv.exit.i.i57, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i46

_ZNK8rawspeed10Array2DRefISt4byteE15getAsArray1DRefEv.exit.i.i57: ; preds = %_ZN8rawspeed10ByteStream7getDataEj.exit44
  %i.ka = mul nuw nsw i32 %i.js, %i.iz            ; 2 uses
  %i.kb = icmp eq i32 %i.ix, %i.js
  %or.cond.i22.i.i58 = or i1 %i.jy, %i.kb
  br i1 %or.cond.i22.i.i58, label %bb.x, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i46

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i46: ; preds = %_ZNK8rawspeed10Array2DRefISt4byteE15getAsArray1DRefEv.exit.i.i57, %_ZN8rawspeed10ByteStream7getDataEj.exit44
  %i.kc = icmp samesign ugt i32 %i.js, 1
  %i.kd = zext nneg i32 %i.js to i64              ; 27 uses
  br i1 %i.kc, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52, label %iter.check, !prof !265

iter.check:                                       ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i46
  %i.ke = zext nneg i32 %i.ix to i64              ; 9 uses
  %i.kf = and i64 %i.iy, 2147483647               ; 8 uses
  %i.kg = zext nneg i32 %i.d to i64               ; 9 uses
  %min.iters.check = icmp samesign ult i64 %i.kf, 16
  br i1 %min.iters.check, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %ident.check = icmp ne i32 %i.d, 1
  %ident.check120 = icmp ne i32 %i.ix, 1
  %i.kh = or i1 %ident.check, %ident.check120
  br i1 %i.kh, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ki = shl nuw nsw i64 %i.iu, 1
  %i.kj = add i64 %i.jk, %i.jd
  %i.kk = add i64 %i.ki, %i.if
  %i.kl = sub i64 %i.kj, %i.kk
  %diff.check = icmp ugt i64 %i.kl, -128
  br i1 %diff.check, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check121 = icmp samesign ult i64 %i.kf, 128
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.km = and i64 %i.iy, 112
  %n.vec = and i64 %i.iy, 2147483520              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.iv, i64 %index ; 4 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jo, i64 %index ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 32
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 64
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 96
  %wide.load = load <32 x i8>, ptr %i.ko, align 1, !tbaa !108
  %wide.load126 = load <32 x i8>, ptr %i.kp, align 1, !tbaa !108
  %wide.load127 = load <32 x i8>, ptr %i.kq, align 1, !tbaa !108
  %wide.load128 = load <32 x i8>, ptr %i.kr, align 1, !tbaa !108
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kn, i64 64
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kn, i64 96
  store <32 x i8> %wide.load, ptr %i.kn, align 1, !tbaa !108
  store <32 x i8> %wide.load126, ptr %i.ks, align 1, !tbaa !108
  store <32 x i8> %wide.load127, ptr %i.kt, align 1, !tbaa !108
  store <32 x i8> %wide.load128, ptr %i.ku, align 1, !tbaa !108
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.kv = icmp eq i64 %index.next, %n.vec
  br i1 %i.kv, label %middle.block, label %vector.body, !llvm.loop !256

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kf, %n.vec
  br i1 %cmp.n, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.km, 0
  br i1 %min.epilog.iters.check, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader, label %vec.epilog.ph, !prof !266

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec129 = and i64 %i.iy, 2147483632           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index138 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next141, %vec.epilog.vector.body ] ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.iv, i64 %index138
  %i.kx = getelementptr inbounds nuw i8, ptr %i.jo, i64 %index138
  %wide.load140 = load <16 x i8>, ptr %i.kx, align 1, !tbaa !108
  store <16 x i8> %wide.load140, ptr %i.kw, align 1, !tbaa !108
  %index.next141 = add nuw i64 %index138, 16      ; 2 uses
  %i.ky = icmp eq i64 %index.next141, %n.vec129
  br i1 %i.ky, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !257

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n143 = icmp eq i64 %i.kf, %n.vec129
  br i1 %cmp.n143, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader: ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i49.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec129, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.iy, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol.loopexit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol
  %indvars.iv.i.i49.prol = phi i64 [ %indvars.iv.next.i.i50.prol, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol ], [ %indvars.iv.i.i49.ph, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol ], [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader ]
  %i.kz = icmp samesign ult i64 %indvars.iv.i.i49.prol, %i.kf
  tail call void @llvm.assume(i1 %i.kz)
  %i.la = mul nuw nsw i64 %indvars.iv.i.i49.prol, %i.kg
  %i.lb = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.la
  %i.lc = mul nuw nsw i64 %indvars.iv.i.i49.prol, %i.ke ; 2 uses
  %i.ld = add nuw nsw i64 %i.lc, %i.kd
  %i.le = icmp samesign ule i64 %i.ld, %i.je
  tail call void @llvm.assume(i1 %i.le)
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.lc
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !108
  store i8 %i.lg, ptr %i.lb, align 1, !tbaa !108
  %indvars.iv.next.i.i50.prol = add nuw nsw i64 %indvars.iv.i.i49.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol.loopexit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol, !llvm.loop !258

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol.loopexit: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader
  %indvars.iv.i.i49.unr = phi i64 [ %indvars.iv.i.i49.ph, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.preheader ], [ %indvars.iv.next.i.i50.prol, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48.prol ]
  %i.lh = sub nsw i64 %indvars.iv.i.i49.ph, %i.kf
  %i.li = icmp ugt i64 %i.lh, -8
  br i1 %i.li, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.i.i48

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit.preheader.i.i46
  %i.lj = and i64 %i.iy, 2147483647               ; 3 uses
  %i.lk = zext nneg i32 %i.d to i64               ; 9 uses
  %i.ll = zext nneg i32 %i.ix to i64              ; 9 uses
  %i.lm = add nsw i64 %i.lj, -1
  %xtraiter202 = and i64 %i.iy, 7                 ; 3 uses
  %i.ln = icmp ult i64 %i.lm, 7
  br i1 %i.ln, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53.epil.preheader, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52.new

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52.new: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52
  %unroll_iter = and i64 %i.iy, 2147483640
  br label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53

_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53: ; preds = %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52.new
  %indvars.iv46.i.i54 = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52.new ], [ %indvars.iv.next47.i.i55.7, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53 ] ; 10 uses
  %niter = phi i64 [ 0, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.preheader.i.i52.new ], [ %niter.next.7, %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53 ]
  %i.lo = mul nuw nsw i64 %indvars.iv46.i.i54, %i.lk
  %i.lp = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.lo
  %i.lq = mul nuw nsw i64 %indvars.iv46.i.i54, %i.ll ; 2 uses
  %i.lr = add nuw nsw i64 %i.lq, %i.kd
  %i.ls = icmp samesign ule i64 %i.lr, %i.je
  tail call void @llvm.assume(i1 %i.ls)
  %i.lt = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.lq
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.lp, ptr nonnull align 1 %i.lt, i64 %i.kd, i1 false)
  %indvars.iv.next47.i.i55 = or disjoint i64 %indvars.iv46.i.i54, 1 ; 2 uses
  %i.lu = mul nuw nsw i64 %indvars.iv.next47.i.i55, %i.lk
  %i.lv = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.lu
  %i.lw = mul nuw nsw i64 %indvars.iv.next47.i.i55, %i.ll ; 2 uses
  %i.lx = add nuw nsw i64 %i.lw, %i.kd
  %i.ly = icmp samesign ule i64 %i.lx, %i.je
  tail call void @llvm.assume(i1 %i.ly)
  %i.lz = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.lw
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.lv, ptr nonnull align 1 %i.lz, i64 %i.kd, i1 false)
  %indvars.iv.next47.i.i55.1 = or disjoint i64 %indvars.iv46.i.i54, 2 ; 2 uses
  %i.ma = mul nuw nsw i64 %indvars.iv.next47.i.i55.1, %i.lk
  %i.mb = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.ma
  %i.mc = mul nuw nsw i64 %indvars.iv.next47.i.i55.1, %i.ll ; 2 uses
  %i.md = add nuw nsw i64 %i.mc, %i.kd
  %i.me = icmp samesign ule i64 %i.md, %i.je
  tail call void @llvm.assume(i1 %i.me)
  %i.mf = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.mc
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.mb, ptr nonnull align 1 %i.mf, i64 %i.kd, i1 false)
  %indvars.iv.next47.i.i55.2 = or disjoint i64 %indvars.iv46.i.i54, 3 ; 2 uses
  %i.mg = mul nuw nsw i64 %indvars.iv.next47.i.i55.2, %i.lk
  %i.mh = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.mg
  %i.mi = mul nuw nsw i64 %indvars.iv.next47.i.i55.2, %i.ll ; 2 uses
  %i.mj = add nuw nsw i64 %i.mi, %i.kd
  %i.mk = icmp samesign ule i64 %i.mj, %i.je
  tail call void @llvm.assume(i1 %i.mk)
  %i.ml = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.mi
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.mh, ptr nonnull align 1 %i.ml, i64 %i.kd, i1 false)
  %indvars.iv.next47.i.i55.3 = or disjoint i64 %indvars.iv46.i.i54, 4 ; 2 uses
  %i.mm = mul nuw nsw i64 %indvars.iv.next47.i.i55.3, %i.lk
  %i.mn = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.mm
  %i.mo = mul nuw nsw i64 %indvars.iv.next47.i.i55.3, %i.ll ; 2 uses
  %i.mp = add nuw nsw i64 %i.mo, %i.kd
  %i.mq = icmp samesign ule i64 %i.mp, %i.je
  tail call void @llvm.assume(i1 %i.mq)
  %i.mr = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.mo
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.mn, ptr nonnull align 1 %i.mr, i64 %i.kd, i1 false)
  %indvars.iv.next47.i.i55.4 = or disjoint i64 %indvars.iv46.i.i54, 5 ; 2 uses
  %i.ms = mul nuw nsw i64 %indvars.iv.next47.i.i55.4, %i.lk
  %i.mt = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.ms
  %i.mu = mul nuw nsw i64 %indvars.iv.next47.i.i55.4, %i.ll ; 2 uses
  %i.mv = add nuw nsw i64 %i.mu, %i.kd
  %i.mw = icmp samesign ule i64 %i.mv, %i.je
  tail call void @llvm.assume(i1 %i.mw)
  %i.mx = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.mu
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.mt, ptr nonnull align 1 %i.mx, i64 %i.kd, i1 false)
  %indvars.iv.next47.i.i55.5 = or disjoint i64 %indvars.iv46.i.i54, 6 ; 2 uses
  %i.my = mul nuw nsw i64 %indvars.iv.next47.i.i55.5, %i.lk
  %i.mz = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.my
  %i.na = mul nuw nsw i64 %indvars.iv.next47.i.i55.5, %i.ll ; 2 uses
  %i.nb = add nuw nsw i64 %i.na, %i.kd
  %i.nc = icmp samesign ule i64 %i.nb, %i.je
  tail call void @llvm.assume(i1 %i.nc)
  %i.nd = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.na
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.mz, ptr nonnull align 1 %i.nd, i64 %i.kd, i1 false)
  %indvars.iv.next47.i.i55.6 = or disjoint i64 %indvars.iv46.i.i54, 7 ; 3 uses
  %i.ne = icmp samesign ult i64 %indvars.iv.next47.i.i55.6, %i.lj
  tail call void @llvm.assume(i1 %i.ne)
  %i.nf = mul nuw nsw i64 %indvars.iv.next47.i.i55.6, %i.lk
  %i.ng = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.nf
  %i.nh = mul nuw nsw i64 %indvars.iv.next47.i.i55.6, %i.ll ; 2 uses
  %i.ni = add nuw nsw i64 %i.nh, %i.kd
  %i.nj = icmp samesign ule i64 %i.ni, %i.je
  tail call void @llvm.assume(i1 %i.nj)
  %i.nk = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.nh
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ng, ptr nonnull align 1 %i.nk, i64 %i.kd, i1 false)
  %indvars.iv.next47.i.i55.7 = add nuw nsw i64 %indvars.iv46.i.i54, 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit.loopexit200.unr-lcssa, label %_ZN8rawspeed14copyPixelsImplENS_10Array1DRefISt4byteEENS0_IKS1_EE.exit30.us.i.i53, !llvm.loop !252

bb.x:                                             ; preds = %_ZNK8rawspeed10Array2DRefISt4byteE15getAsArray1DRefEv.exit.i.i57
  %i.nl = icmp samesign ugt i32 %i.ka, 1
  br i1 %i.nl, label %bb.y, label %bb.z, !prof !265

bb.y:                                             ; preds = %bb.x
  %i.nm = zext nneg i32 %i.ka to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.iv, ptr nonnull align 1 %i.jo, i64 %i.nm, i1 false)
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

bb.z:                                             ; preds = %bb.x
  %i.nn = load i8, ptr %i.jo, align 1, !tbaa !108
  store i8 %i.nn, ptr %i.iv, align 1, !tbaa !108
  br label %_ZN8rawspeed10copyPixelsEPSt4byteiPKS0_iii.exit

end_hunk_1
