inline.NumInlined: 460
inline.NumDeleted: 124
begin_hunk_0_@_ZN8NArchive3N7z10CInArchive20FindAndReadSignatureEP9IInStreamPKy:bb.a
  br i1 %.not15.5.i, label %bb.h, label %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.v = tail call i32 @CrcCalc(ptr noundef nonnull %i.u, i64 noundef 20)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load i32, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread88, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.h
  %.not14.3.i = icmp eq i32 %i.x, 0
  %i.z = load <16 x i8>, ptr %i.u, align 4
  %.fr = freeze <16 x i8> %i.z
  %i.aa = icmp eq <16 x i8> %.fr, zeroinitializer ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ac = load <4 x i8>, ptr %i.ab, align 4
  %.fr234 = freeze <4 x i8> %i.ac
  %i.ad = icmp eq <4 x i8> %.fr234, zeroinitializer
  %i.ae = shufflevector <16 x i1> %i.aa, <16 x i1> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = and <4 x i1> %i.ae, %i.ad
  %i.af = shufflevector <4 x i1> %rdx.op, <4 x i1> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ag = shufflevector <16 x i1> %i.af, <16 x i1> %i.aa, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ah = bitcast <16 x i1> %i.ag to i16
  %i.ai = icmp eq i16 %i.ah, -1
  %op.rdx = select i1 %.not14.3.i, i1 %i.ai, i1 false
  br i1 %op.rdx, label %bb.i, label %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread

bb.i:                                             ; preds = %.preheader.preheader.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !58
  %.not.i = icmp ne i8 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 63
  %i.am = load i8, ptr %i.al, align 1
  %i.an = icmp ne i8 %i.am, 0
  %or.cond155 = select i1 %.not.i, i1 true, i1 %i.an
  br i1 %or.cond155, label %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread88, label %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread

_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread: ; preds = %bb.i, %bb.e, %bb.f, %bb.g, %bb.b, %bb.c, %bb.d, %.preheader.preheader.i
  %i.ao = tail call noalias noundef nonnull dereferenceable(65536) ptr @_Znam(i64 noundef 65536) #18 ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !79
  %.not75 = icmp eq ptr %2, null
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread
  %.064 = phi i64 [ %i.aq, %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread ], [ %i.cu, %._crit_edge ] ; 3 uses
  br i1 %.not75, label %.preheader235, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !79
  %i.as = sub i64 %.064, %i.ar
  %i.at = load i64, ptr %2, align 8, !tbaa !60
  %i.au = icmp ugt i64 %i.as, %i.at
  br i1 %i.au, label %_ZN7CBufferIhED2Ev.exit, label %.preheader235

.preheader235:                                    ; preds = %bb.k, %bb.j
  br label %bb.l

bb.l:                                             ; preds = %.preheader235, %bb.p
  %.168 = phi i32 [ %i.be, %bb.p ], [ 32, %.preheader235 ] ; 3 uses
  %i.av = sub nuw nsw i32 65536, %.168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.aw = zext nneg i32 %.168 to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aw
  %i.ay = load ptr, ptr %1, align 8, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i32 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ax, i32 noundef %i.av, ptr noundef nonnull %i.a)
          to label %bb.m unwind label %bb.n       ; 2 uses

bb.m:                                             ; preds = %bb.l
  %.not76 = icmp eq i32 %i.bb, 0
  br i1 %.not76, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN7CBufferIhED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %_ZN7CBufferIhED2Ev.exit81

bb.o:                                             ; preds = %bb.m
  %i.bd = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %.not = icmp eq i32 %i.bd, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br i1 %.not, label %_ZN7CBufferIhED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = add i32 %i.bd, %.168                    ; 3 uses
  %i.bf = icmp ult i32 %i.be, 33
  br i1 %i.bf, label %bb.l, label %.preheader.preheader, !llvm.loop !80

.preheader.preheader:                             ; preds = %bb.p
  %i.bg = add i32 %i.be, -32                      ; 3 uses
  %i.bh = zext i32 %i.bg to i64                   ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %_ZN8NArchive3N7zL13TestSignatureEPKh.exit.thread
  %.0173 = phi i32 [ %i.cs, %_ZN8NArchive3N7zL13TestSignatureEPKh.exit.thread ], [ 0, %.preheader.preheader ]
  %i.bi = zext i32 %.0173 to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ %i.bi, %.preheader ] ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !58  ; 2 uses
  %i.bl = icmp ne i8 %i.bk, 55
  %i.bm = icmp samesign ult i64 %indvars.iv, %i.bh
  %i.bn = and i1 %i.bm, %i.bl
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.bn, label %bb.q, label %bb.r, !llvm.loop !81

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv ; 8 uses
  %i.bp = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.bq = icmp eq i32 %i.bg, %i.bp
  br i1 %i.bq, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.br = load i8, ptr @_ZN8NArchive3N7z10kSignatureE, align 1, !tbaa !58
  %.not.i79 = icmp eq i8 %i.bk, %i.br
  br i1 %.not.i79, label %bb.t, label %_ZN8NArchive3N7zL13TestSignatureEPKh.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !58
  %i.bu = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z10kSignatureE, i64 1), align 1, !tbaa !58
  %.not.1.i = icmp eq i8 %i.bt, %i.bu
  br i1 %.not.1.i, label %bb.u, label %_ZN8NArchive3N7zL13TestSignatureEPKh.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !58
  %i.bx = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z10kSignatureE, i64 2), align 1, !tbaa !58
  %.not.2.i = icmp eq i8 %i.bw, %i.bx
  br i1 %.not.2.i, label %bb.v, label %_ZN8NArchive3N7zL13TestSignatureEPKh.exit.thread

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 3
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !58
  %i.ca = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z10kSignatureE, i64 3), align 1, !tbaa !58
  %.not.3.i = icmp eq i8 %i.bz, %i.ca
  br i1 %.not.3.i, label %bb.w, label %_ZN8NArchive3N7zL13TestSignatureEPKh.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !58
  %i.cd = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z10kSignatureE, i64 4), align 1, !tbaa !58
  %.not.4.i = icmp eq i8 %i.cc, %i.cd
  br i1 %.not.4.i, label %bb.x, label %_ZN8NArchive3N7zL13TestSignatureEPKh.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 5
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !58
  %i.cg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN8NArchive3N7z10kSignatureE, i64 5), align 1, !tbaa !58
  %.not.5.i = icmp eq i8 %i.cf, %i.cg
  br i1 %.not.5.i, label %bb.y, label %_ZN8NArchive3N7zL13TestSignatureEPKh.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.ci = invoke i32 @CrcCalc(ptr noundef nonnull %i.ch, i64 noundef 20)
          to label %_ZN8NArchive3N7zL13TestSignatureEPKh.exit unwind label %.loopexit

_ZN8NArchive3N7zL13TestSignatureEPKh.exit:        ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = icmp eq i32 %i.ci, %i.ck
  br i1 %i.cl, label %bb.z, label %_ZN8NArchive3N7zL13TestSignatureEPKh.exit.thread

bb.z:                                             ; preds = %_ZN8NArchive3N7zL13TestSignatureEPKh.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 1 dereferenceable(32) %i.bo, i64 32, i1 false)
  %i.cm = add i64 %.064, %indvars.iv              ; 2 uses
  store i64 %i.cm, ptr %i.ap, align 8, !tbaa !79
  %i.cn = add i64 %i.cm, 32
  %i.co = load ptr, ptr %1, align 8, !tbaa !13
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 48
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = invoke noundef i32 %i.cq(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.cn, i32 noundef 0, ptr noundef null)
          to label %_ZN7CBufferIhED2Ev.exit unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7CBufferIhED2Ev.exit81

.loopexit.split-lp:                               ; preds = %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7CBufferIhED2Ev.exit81

_ZN8NArchive3N7zL13TestSignatureEPKh.exit.thread: ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %_ZN8NArchive3N7zL13TestSignatureEPKh.exit
  %i.cs = add i32 %i.bp, 1                        ; 2 uses
  %i.ct = icmp ult i32 %i.cs, %i.bg
  br i1 %i.ct, label %.preheader, label %._crit_edge, !llvm.loop !82

._crit_edge:                                      ; preds = %_ZN8NArchive3N7zL13TestSignatureEPKh.exit.thread, %bb.r
  %i.cu = add i64 %.064, %i.bh
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bh
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ao, ptr noundef nonnull align 1 dereferenceable(32) %i.cv, i64 32, i1 false)
  br label %bb.j, !llvm.loop !83

_ZN7CBufferIhED2Ev.exit:                          ; preds = %bb.k, %bb.o, %bb.z, %.thread
  %.6 = phi i32 [ %i.cr, %bb.z ], [ %i.bb, %.thread ], [ 1, %bb.o ], [ 1, %bb.k ]
  call void @_ZdaPv(ptr noundef nonnull %i.ao) #19, !inline_history !84
  br label %_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread88

_ZN7CBufferIhED2Ev.exit81:                        ; preds = %.loopexit, %.loopexit.split-lp, %bb.n
  %.pn.pn.ph = phi { ptr, i32 } [ %i.bc, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZdaPv(ptr noundef nonnull %i.ao) #19, !inline_history !84
  resume { ptr, i32 } %.pn.pn.ph

_ZN8NArchive3N7zL14TestSignature2EPKh.exit.thread88: ; preds = %bb.h, %bb.i, %bb.a, %_ZN7CBufferIhED2Ev.exit
  %.7 = phi i32 [ %i.c, %bb.a ], [ %.6, %_ZN7CBufferIhED2Ev.exit ], [ 0, %bb.h ], [ 0, %bb.i ]
  ret i32 %.7
}

declare noundef i32 @_Z16ReadStream_FALSEP19ISequentialInStreamPvm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7CBufferIhED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive3N7z10CInArchive4OpenEP9IInStreamPKy(ptr noundef nonnull align 8 dereferenceable(96) initializes((88, 96)) %0, ptr noundef %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %i.a, align 8, !tbaa !85
  %i.b = load ptr, ptr %0, align 8, !tbaa !86     ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN8NArchive3N7z10CInArchive5CloseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !87 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !86
  br label %_ZN8NArchive3N7z10CInArchive5CloseEv.exit

_ZN8NArchive3N7z10CInArchive5CloseEv.exit:        ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %1, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef i32 %i.j(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0, i32 noundef 1, ptr noundef nonnull %i.g) ; 2 uses
  %.not.not = icmp eq i32 %i.k, 0
  br i1 %.not.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZN8NArchive3N7z10CInArchive5CloseEv.exit
  %i.l = tail call noundef i32 @_ZN8NArchive3N7z10CInArchive20FindAndReadSignatureEP9IInStreamPKy(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, ptr noundef %2) ; 2 uses
  %.not13.not = icmp eq i32 %i.l, 0
  br i1 %.not13.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %1, align 8, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !88 ; 0 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !86     ; 3 uses
  %.not6.i = icmp eq ptr %i.q, null
  br i1 %.not6.i, label %_ZN9CMyComPtrI9IInStreamEaSEPS0_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q), !inline_history !88 ; 0 uses
  br label %_ZN9CMyComPtrI9IInStreamEaSEPS0_.exit

_ZN9CMyComPtrI9IInStreamEaSEPS0_.exit:            ; preds = %bb.d, %bb.e
  store ptr %1, ptr %0, align 8, !tbaa !86
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %_ZN8NArchive3N7z10CInArchive5CloseEv.exit, %_ZN9CMyComPtrI9IInStreamEaSEPS0_.exit
  %.2 = phi i32 [ 0, %_ZN9CMyComPtrI9IInStreamEaSEPS0_.exit ], [ %i.l, %bb.c ], [ %i.k, %_ZN8NArchive3N7z10CInArchive5CloseEv.exit ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z10CInArchive5CloseEv(ptr noundef nonnull align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !86     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN9CMyComPtrI9IInStreamE7ReleaseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !89 ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !86
  br label %_ZN9CMyComPtrI9IInStreamE7ReleaseEv.exit

_ZN9CMyComPtrI9IInStreamE7ReleaseEv.exit:         ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z10CInArchive21ReadArchivePropertiesERNS0_14CInArchiveInfoE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull readnone align 8 captures(none) dereferenceable(72) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.f = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !55   ; 2 uses
  %i.k = sub i64 %i.h, %i.j
  %i.l = icmp ugt i64 %i.f, %i.k
  br i1 %i.l, label %bb.b, label %_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit

bb.b:                                             ; preds = %.lr.ph
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit:     ; preds = %.lr.ph
  %i.m = add i64 %i.j, %i.f
  store i64 %i.m, ptr %i.i, align 8, !tbaa !55
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.o = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.n)
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %._crit_edge, label %.lr.ph, !llvm.loop !90

._crit_edge:                                      ; preds = %_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive3N7z10CInArchive17GetNextFolderItemERNS0_7CFolderE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(133) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [15 x i8], align 1                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) ; 3 uses
  %i.e = icmp ugt i64 %i.d, 2147483647
  br i1 %i.e, label %bb.b, label %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit:      ; preds = %bb.a
  %i.f = trunc nuw nsw i64 %i.d to i32            ; 2 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.f)
  %.not134 = icmp eq i64 %i.d, 0
  br i1 %.not134, label %._crit_edge123, label %_ZN8NArchive3N7z10CCoderInfoD2Ev.exit.lr.ph

_ZN8NArchive3N7z10CCoderInfoD2Ev.exit.lr.ph:      ; preds = %_ZN8NArchive3N7z10CInArchive7ReadNumEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  br label %_ZN8NArchive3N7z10CCoderInfoD2Ev.exit

_ZN8NArchive3N7z10CCoderInfoD2Ev.exit:            ; preds = %_ZN8NArchive3N7z10CCoderInfoD2Ev.exit.lr.ph, %bb.u
  %.066120 = phi i32 [ 0, %_ZN8NArchive3N7z10CCoderInfoD2Ev.exit.lr.ph ], [ %i.fe, %bb.u ]
  %i.i = phi <2 x i32> [ zeroinitializer, %_ZN8NArchive3N7z10CCoderInfoD2Ev.exit.lr.ph ], [ %i.fd, %bb.u ]
  %i.j = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18 ; 4 uses
  store i64 0, ptr %i.j, align 8, !tbaa !91
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.k, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.n = load i32, ptr %i.h, align 4, !tbaa !8    ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.o
  store ptr %i.j, ptr %i.p, align 8, !tbaa !28
  %i.q = add nsw i32 %i.n, 1                      ; 2 uses
  store i32 %i.q, ptr %i.h, align 4, !tbaa !8
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr [8 x i8], ptr %i.r, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !28   ; 9 uses
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !45   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 7 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !55   ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN8NArchive3N7z10CInArchive19ReadUInt64DefVectorERK13CObjectVectorI7CBufferIhEERNS0_16CUInt64DefVectorEi:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.k, %.preheader
  %i.h = load i8, ptr %i.b, align 8, !tbaa !41, !range !23, !noundef !24
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %_ZN8NArchive3N7z13CStreamSwitchD2Ev.exit

bb.c:                                             ; preds = %._crit_edge
  %i.j = load ptr, ptr %4, align 8, !tbaa !44     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @_ZN17CBaseRecordVector10DeleteBackEv(ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.noexc.i unwind label %bb.e

.noexc.i:                                         ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8    ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZN8NArchive3N7z13CStreamSwitchD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.noexc.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.q = sext i32 %i.m to i64
  %i.r = getelementptr [8 x i8], ptr %i.p, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr %i.t, ptr %i.u, align 8, !tbaa !45
  br label %_ZN8NArchive3N7z13CStreamSwitchD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #20
  unreachable

_ZN8NArchive3N7z13CStreamSwitchD2Ev.exit:         ; preds = %._crit_edge, %.noexc.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  ret void

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 2 uses
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !16, !range !23, !noundef !24
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !45  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.af = add i64 %i.ae, 8                        ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !54
  %i.ai = icmp ugt i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.i, label %_ZN8NArchive3N7z10CInArchive10ReadUInt64Ev.exit

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZN8NArchive3N7z10CInArchive10ReadUInt64Ev.exit:  ; preds = %bb.h
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !52
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !60
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !55
  br label %bb.j

.loopexit:                                        ; preds = %bb.j
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.j:                                             ; preds = %_ZN8NArchive3N7z10CInArchive10ReadUInt64Ev.exit, %bb.g
  %.0 = phi i64 [ 0, %bb.g ], [ %i.al, %_ZN8NArchive3N7z10CInArchive10ReadUInt64Ev.exit ]
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.k unwind label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.an = load i32, ptr %i.g, align 4, !tbaa !8   ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ao
  store i64 %.0, ptr %i.ap, align 8, !tbaa !60
  %i.aq = add nsw i32 %i.an, 1
  store i32 %i.aq, ptr %i.g, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !132

bb.l:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.f
  %.pn = phi { ptr, i32 } [ %i.x, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN8NArchive3N7z13CStreamSwitchD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive3N7z10CInArchive26ReadAndDecodePackedStreamsEyRyR13CObjectVectorI7CBufferIhEEP22ICryptoGetTextPasswordRb(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %1, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.CRecordVector.2, align 8     ; 10 uses
  %7 = alloca %class.CRecordVector.3, align 8     ; 9 uses
  %8 = alloca %class.CRecordVector.1, align 8     ; 9 uses
  %9 = alloca %class.CObjectVector.7, align 8     ; 13 uses
  %10 = alloca %class.CRecordVector.1, align 8    ; 9 uses
  %11 = alloca %class.CRecordVector.2, align 8    ; 9 uses
  %12 = alloca %class.CRecordVector.3, align 8    ; 9 uses
  %13 = alloca %class.CRecordVector.1, align 8    ; 9 uses
  %14 = alloca %"class.NArchive::N7z::CDecoder", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.b, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIyE, i64 16), ptr %6, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.d, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIbE, i64 16), ptr %7, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.f, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %8, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.h, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z7CFolderEE, i64 16), ptr %9, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.j, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %10, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.l, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIyE, i64 16), ptr %11, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #17
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.n, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIbE, i64 16), ptr %12, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #17
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store i64 4, ptr %i.p, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CRecordVectorIjE, i64 16), ptr %13, align 8, !tbaa !13
  invoke void @_ZN8NArchive3N7z10CInArchive15ReadStreamsInfoEPK13CObjectVectorI7CBufferIhEERyR13CRecordVectorIyERS9_IbERS9_IjERS2_INS0_7CFolderEESF_SB_SD_SF_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17
  invoke void @_ZN8NArchive3N7z8CDecoderC1Eb(ptr noundef nonnull align 8 dereferenceable(232) %14, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 12 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !8
  %.not80112 = icmp sgt i32 %i.r, 0
  br i1 %.not80112, label %.lr.ph116, label %._crit_edge

.lr.ph116:                                        ; preds = %bb.c
  %i.s = load i64, ptr %2, align 8, !tbaa !60
  %i.t = add i64 %i.s, %1
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.x = load ptr, ptr getelementptr inbounds nuw inrange(-24, 40) (i8, ptr @_ZTV19CBufPtrSeqOutStream, i64 24), align 8
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 8 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.f

15:                                               ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %16 = load i32, ptr %i.q, align 4, !tbaa !8
  %17 = sext i32 %16 to i64
  %.not80 = icmp slt i64 %indvars.iv.next, %17
  br i1 %.not80, label %bb.f, label %._crit_edge, !llvm.loop !133

bb.d:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.e:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.f:                                             ; preds = %.lr.ph116, %15
  %indvars.iv = phi i64 [ 0, %.lr.ph116 ], [ %indvars.iv.next, %15 ] ; 2 uses
  %.059115 = phi i32 [ 0, %.lr.ph116 ], [ %.261, %15 ] ; 14 uses
  %.062114 = phi i64 [ %i.t, %.lr.ph116 ], [ %.264, %15 ] ; 7 uses
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !28 ; 8 uses
  %i.af = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18
          to label %_ZN7CBufferIhEC2ERKS0_.exit.i unwind label %_ZN7CBufferIhED2Ev.exit83 ; 3 uses

_ZN7CBufferIhEC2ERKS0_.exit.i:                    ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.af, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %_ZN7CBufferIhED2Ev.exit83

bb.g:                                             ; preds = %_ZN7CBufferIhEC2ERKS0_.exit.i
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !15
  %i.ai = load i32, ptr %i.w, align 4, !tbaa !8   ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.aj
  store ptr %i.af, ptr %i.ak, align 8, !tbaa !28
  %i.al = add nsw i32 %i.ai, 1                    ; 2 uses
  store i32 %i.al, ptr %i.w, align 4, !tbaa !8
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !15
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 -8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !28 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 108
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !8  ; 3 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit.thread, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i: ; preds = %bb.g
  %i.au = icmp sgt i32 %i.as, 0
  br i1 %i.au, label %.lr.ph.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i
  %.0614.i = add nsw i32 %i.as, -1                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 44
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !8  ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.az = load ptr, ptr %i.ay, align 8
  %wide.trip.count.i.i = zext nneg i32 %i.aw to i64
  br i1 %i.ax, label %.lr.ph.i.us.i, label %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i
  %.0615.us.i = phi i32 [ %.06.us.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i ], [ %.0614.i, %.lr.ph.i ] ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv.i.us.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !27
  %i.bd = icmp eq i32 %i.bc, %.0615.us.i
  br i1 %i.bd, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit, label %bb.h, !llvm.loop !124

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i: ; preds = %bb.h
  %.06.us.i = add nsw i32 %.0615.us.i, -1
  %i.be = icmp sgt i32 %.0615.us.i, 0
  br i1 %i.be, label %.lr.ph.i.us.i, label %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i, !llvm.loop !125

_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i: ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.preheader.i, %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit.loopexit.us.i
  %i.bf = call ptr @__cxa_allocate_exception(i64 4) #17 ; 2 uses
  store i32 1, ptr %i.bf, align 16, !tbaa !4
  invoke void @__cxa_throw(ptr nonnull %i.bf, ptr nonnull @_ZTIi, ptr null) #21
          to label %.noexc82 unwind label %bb.j

.noexc82:                                         ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i
  unreachable

_ZN7CBufferIhED2Ev.exit83:                        ; preds = %_ZN7CBufferIhEC2ERKS0_.exit.i, %bb.f
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit

bb.j:                                             ; preds = %_ZNK8NArchive3N7z7CFolder24FindBindPairForOutStreamEj.exit._crit_edge.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit

bb.k:                                             ; preds = %bb.m
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit

_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit:  ; preds = %bb.i, %.lr.ph.i
  %.0613.i = phi i32 [ %.0614.i, %.lr.ph.i ], [ %.0615.us.i, %bb.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 112
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !15
  %i.bl = sext i32 %.0613.i to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !60 ; 7 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !57 ; 3 uses
  %i.bq = icmp eq i64 %i.bn, %i.bp
  br i1 %i.bq, label %_ZN7CBufferIhE11SetCapacityEm.exit, label %bb.l

_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit.thread: ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !57
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %_ZN7CBufferIhE11SetCapacityEm.exit, label %.thread

bb.l:                                             ; preds = %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit
  %.not.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bn) #18
          to label %.noexc84 unwind label %bb.k   ; 3 uses

.noexc84:                                         ; preds = %bb.m
  %.not10.i = icmp eq i64 %i.bp, 0
  br i1 %.not10.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %.noexc84
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !56
  %i.bx = call noundef i64 @llvm.umin.i64(i64 %i.bp, i64 %i.bn)
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr align 1 %i.bw, i64 %i.bx, i1 false)
  br label %.thread

.thread:                                          ; preds = %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit.thread, %bb.n, %.noexc84, %bb.l
  %.1.i97101 = phi i64 [ %i.bn, %bb.n ], [ %i.bn, %.noexc84 ], [ 0, %bb.l ], [ 0, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit.thread ] ; 2 uses
  %i.by = phi ptr [ %i.bo, %bb.n ], [ %i.bo, %.noexc84 ], [ %i.bo, %bb.l ], [ %i.br, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit.thread ]
  %.0.i = phi ptr [ %i.bu, %bb.n ], [ %i.bu, %.noexc84 ], [ null, %bb.l ], [ null, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit.thread ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !56 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread
  call void @_ZdaPv(ptr noundef nonnull %i.ca) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread
  store ptr %.0.i, ptr %i.bz, align 8, !tbaa !56
  store i64 %.1.i97101, ptr %i.by, align 8, !tbaa !57
  br label %_ZN7CBufferIhE11SetCapacityEm.exit

_ZN7CBufferIhE11SetCapacityEm.exit:               ; preds = %bb.p, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit.thread
  %.1.i98 = phi i64 [ 0, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit.thread ], [ %i.bn, %_ZNK8NArchive3N7z7CFolder13GetUnpackSizeEv.exit ], [ %.1.i97101, %bb.p ] ; 2 uses
  %i.cc = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #18
          to label %bb.q unwind label %bb.s       ; 11 uses

bb.q:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 0, ptr %i.cd, align 4, !tbaa !134
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV19CBufPtrSeqOutStream, i64 16), ptr %i.cc, align 8, !tbaa !13
  %i.ce = invoke noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit unwind label %bb.t, !inline_history !136 ; 0 uses

_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit: ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !56
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !137
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  store i64 0, ptr %i.ci, align 8, !tbaa !141
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i64 %.1.i98, ptr %i.cj, align 8, !tbaa !142
  %i.ck = load ptr, ptr %0, align 8, !tbaa !86
  %i.cl = load ptr, ptr %i.y, align 8, !tbaa !15
  %i.cm = sext i32 %.059115 to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cm
  %i.co = invoke noundef i32 @_ZN8NArchive3N7z8CDecoder6DecodeEP9IInStreamyPKyRKNS0_7CFolderEP20ISequentialOutStreamP21ICompressProgressInfoP22ICryptoGetTextPasswordRbbj(ptr noundef nonnull align 8 dereferenceable(232) %14, ptr noundef %i.ck, i64 noundef %.062114, ptr noundef nonnull %i.cn, ptr noundef nonnull align 8 dereferenceable(133) %i.ae, ptr noundef nonnull %i.cc, ptr noundef null, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5, i1 noundef zeroext false, i32 noundef 1)
          to label %bb.r unwind label %.loopexit103 ; 2 uses

bb.r:                                             ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit
  %.not = icmp eq i32 %i.co, 0                    ; 2 uses
  br i1 %.not, label %bb.w, label %.loopexit

bb.s:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit

bb.t:                                             ; preds = %bb.q
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit

.loopexit103:                                     ; preds = %bb.x, %_ZN9CMyComPtrI20ISequentialOutStreamEC2EPS0_.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.z
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.split-lp, %.loopexit103
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit103 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.cr = load ptr, ptr %i.cc, align 8, !tbaa !13
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = invoke noundef i32 %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit unwind label %bb.v ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #20
  unreachable

bb.w:                                             ; preds = %bb.r
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ae, i64 132
  %i.cy = load i8, ptr %i.cx, align 4, !tbaa !106, !range !23, !noundef !24
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.da = load ptr, ptr %i.cf, align 8, !tbaa !56
  %i.db = invoke i32 @CrcCalc(ptr noundef %i.da, i64 noundef %.1.i98)
          to label %bb.y unwind label %.loopexit103

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !118
  %.not70 = icmp eq i32 %i.db, %i.dd
  br i1 %.not70, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
          to label %.noexc88 unwind label %.loopexit.split-lp

.noexc88:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y, %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %i.ae, i64 76
  %i.df = load i32, ptr %i.de, align 4, !tbaa !8  ; 9 uses
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.aa
  %i.dh = load ptr, ptr %i.y, align 8, !tbaa !15  ; 8 uses
  %.promoted = load i64, ptr %i.z, align 8, !tbaa !85 ; 4 uses
  %i.di = add i32 %.059115, %i.df                 ; 4 uses
  %min.iters.check = icmp ult i32 %i.df, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.dj = add nsw i32 %i.df, -1
  %i.dk = add i32 %.059115, %i.dj
  %i.dl = icmp slt i32 %i.dk, %.059115
  br i1 %i.dl, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dm = sext i32 %.059115 to i64                ; 2 uses
  %i.dn = shl nsw i64 %i.dm, 3
  %scevgep148 = getelementptr i8, ptr %i.dh, i64 %i.dn
  %scevgep149 = getelementptr i8, ptr %i.dh, i64 8
  %i.do = add nsw i32 %i.df, -1
  %i.dp = zext i32 %i.do to i64
  %i.dq = add nsw i64 %i.dm, %i.dp
  %i.dr = shl nsw i64 %i.dq, 3
  %scevgep150 = getelementptr i8, ptr %scevgep149, i64 %i.dr
  %bound0 = icmp ult ptr %i.z, %scevgep150
  %bound1 = icmp ult ptr %scevgep148, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i32 %i.df, 2147483644              ; 3 uses
  %i.ds = add i32 %.059115, %n.vec
  %i.dt = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted, i64 0
  %i.du = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.062114, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.dt, %vector.ph ], [ %i.eb, %vector.body ]
  %vec.phi151 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ec, %vector.body ]
  %vec.phi152 = phi <2 x i64> [ %i.du, %vector.ph ], [ %i.dz, %vector.body ]
  %vec.phi153 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ea, %vector.body ]
  %i.dv = add i32 %.059115, %index
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.dw ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load = load <2 x i64>, ptr %i.dx, align 8, !tbaa !60, !alias.scope !143 ; 2 uses
  %wide.load154 = load <2 x i64>, ptr %i.dy, align 8, !tbaa !60, !alias.scope !143 ; 2 uses
  %i.dz = add <2 x i64> %wide.load, %vec.phi152   ; 2 uses
  %i.ea = add <2 x i64> %wide.load154, %vec.phi153 ; 2 uses
  %i.eb = add <2 x i64> %vec.phi, %wide.load      ; 2 uses
  %i.ec = add <2 x i64> %vec.phi151, %wide.load154 ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ed = icmp eq i32 %index.next, %n.vec
  br i1 %i.ed, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ec, %i.eb
  %i.ee = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %bin.rdx155 = add <2 x i64> %i.ea, %i.dz
  %i.ef = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx155) ; 2 uses
  store i64 %i.ee, ptr %i.z, align 8, !tbaa !85, !alias.scope !147, !noalias !143
  %cmp.n = icmp eq i32 %i.df, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %.ph = phi i64 [ %.promoted, %vector.memcheck ], [ %.promoted, %vector.scevcheck ], [ %.promoted, %.lr.ph ], [ %i.ee, %middle.block ] ; 2 uses
  %.160109.ph = phi i32 [ %.059115, %vector.memcheck ], [ %.059115, %vector.scevcheck ], [ %.059115, %.lr.ph ], [ %i.ds, %middle.block ] ; 4 uses
  %.163108.ph = phi i64 [ %.062114, %vector.memcheck ], [ %.062114, %vector.scevcheck ], [ %.062114, %.lr.ph ], [ %i.ef, %middle.block ] ; 2 uses
  %i.eg = add i32 %.059115, %i.df
  %i.eh = sub i32 %i.eg, %.160109.ph
  %i.ei = add i32 %.059115, -1
  %i.ej = add i32 %i.ei, %i.df
  %i.ek = sub i32 %i.ej, %.160109.ph
  %xtraiter = and i32 %i.eh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.el = phi i64 [ %i.er, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ]
  %.160109.prol = phi i32 [ %i.em, %scalar.ph.prol ], [ %.160109.ph, %scalar.ph.preheader ] ; 2 uses
  %.163108.prol = phi i64 [ %i.eq, %scalar.ph.prol ], [ %.163108.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.em = add i32 %.160109.prol, 1                ; 2 uses
  %i.en = sext i32 %.160109.prol to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !60 ; 2 uses
  %i.eq = add i64 %i.ep, %.163108.prol            ; 3 uses
  %i.er = add i64 %i.el, %i.ep                    ; 3 uses
  store i64 %i.er, ptr %i.z, align 8, !tbaa !85
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !149

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa162.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.eq, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.er, %scalar.ph.prol ]
  %.160109.unr = phi i32 [ %.160109.ph, %scalar.ph.preheader ], [ %i.em, %scalar.ph.prol ]
  %.163108.unr = phi i64 [ %.163108.ph, %scalar.ph.preheader ], [ %i.eq, %scalar.ph.prol ]
  %i.es = icmp ult i32 %i.ek, 3
  br i1 %i.es, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.et = phi i64 [ %i.fr, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ]
  %.160109 = phi i32 [ %i.fm, %scalar.ph ], [ %.160109.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.163108 = phi i64 [ %i.fq, %scalar.ph ], [ %.163108.unr, %scalar.ph.prol.loopexit ]
  %i.eu = add i32 %.160109, 1
  %i.ev = sext i32 %.160109 to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.ev
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !60 ; 2 uses
  %i.ey = add i64 %i.ex, %.163108
  %i.ez = add i64 %i.et, %i.ex                    ; 2 uses
  store i64 %i.ez, ptr %i.z, align 8, !tbaa !85
  %i.fa = add i32 %.160109, 2
  %i.fb = sext i32 %i.eu to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.fb
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !60 ; 2 uses
  %i.fe = add i64 %i.fd, %i.ey
  %i.ff = add i64 %i.ez, %i.fd                    ; 2 uses
  store i64 %i.ff, ptr %i.z, align 8, !tbaa !85
  %i.fg = add i32 %.160109, 3
  %i.fh = sext i32 %i.fa to i64
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.fh
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !60 ; 2 uses
  %i.fk = add i64 %i.fj, %i.fe
  %i.fl = add i64 %i.ff, %i.fj                    ; 2 uses
  store i64 %i.fl, ptr %i.z, align 8, !tbaa !85
  %i.fm = add i32 %.160109, 4                     ; 2 uses
  %i.fn = sext i32 %i.fg to i64
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !60 ; 2 uses
  %i.fq = add i64 %i.fp, %i.fk                    ; 2 uses
  %i.fr = add i64 %i.fl, %i.fp                    ; 2 uses
  store i64 %i.fr, ptr %i.z, align 8, !tbaa !85
  %exitcond.not.3 = icmp eq i32 %i.fm, %i.di
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !150

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.aa, %bb.r
  %.264 = phi i64 [ %.062114, %bb.r ], [ %.062114, %bb.aa ], [ %i.ef, %middle.block ], [ %.lcssa162.unr, %scalar.ph.prol.loopexit ], [ %i.fq, %scalar.ph ]
  %.261 = phi i32 [ %.059115, %bb.r ], [ %.059115, %bb.aa ], [ %i.di, %middle.block ], [ %i.di, %scalar.ph ], [ %i.di, %scalar.ph.prol.loopexit ]
  %i.fs = load ptr, ptr %i.cc, align 8, !tbaa !13
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = invoke noundef i32 %i.fu(ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
          to label %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit90 unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %.loopexit
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #20
  unreachable

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit90: ; preds = %.loopexit
  br i1 %.not, label %15, label %._crit_edge

_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit:   ; preds = %bb.t, %bb.u, %bb.k, %bb.s, %bb.j, %_ZN7CBufferIhED2Ev.exit83
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %_ZN7CBufferIhED2Ev.exit83 ], [ %lpad.phi, %bb.u ], [ %i.bh, %bb.j ], [ %i.bi, %bb.k ], [ %i.cp, %bb.s ], [ %i.cq, %bb.t ]
  call void @_ZN8NArchive3N7z8CDecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %14) #17
  br label %bb.ad

._crit_edge:                                      ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit90, %15, %bb.c
  %spec.select = phi i32 [ 0, %bb.c ], [ 0, %15 ], [ %i.co, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit90 ]
  call void @_ZN8NArchive3N7z8CDecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %14) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z7CFolderEE, i64 16), ptr %9, align 8, !tbaa !13
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev.exit unwind label %bb.ac, !inline_history !151

bb.ac:                                            ; preds = %._crit_edge
  %i.fy = landingpad { ptr, i32 }
          catch ptr null
  %i.fz = extractvalue { ptr, i32 } %i.fy, 0
  call void @__clang_call_terminate(ptr %i.fz) #20, !inline_history !151
  unreachable

_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev.exit: ; preds = %._crit_edge
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #17, !inline_history !151
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  ret i32 %spec.select

bb.ad:                                            ; preds = %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit, %bb.e
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %_ZN9CMyComPtrI20ISequentialOutStreamED2Ev.exit ], [ %i.ab, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.d
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.ad ], [ %i.aa, %bb.d ]
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #17
  call void @_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN8NArchive3N7z8CDecoderC1Eb(ptr noundef nonnull align 8 dereferenceable(232), i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef i32 @_ZN8NArchive3N7z8CDecoder6DecodeEP9IInStreamyPKyRKNS0_7CFolderEP20ISequentialOutStreamP21ICompressProgressInfoP22ICryptoGetTextPasswordRbbj(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef, i64 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(133), ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 1 dereferenceable(1), i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare i32 @CrcCalc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NArchive3N7z8CDecoderD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorI9CMyComPtrI8IUnknownEE, i64 16), ptr %i.a, align 8, !tbaa !13
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev.exit unwind label %bb.b, !inline_history !152

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #20, !inline_history !152
  unreachable

_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #17, !inline_history !152
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !153  ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev.exit
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #20
  unreachable

_ZN9CMyComPtrI15ICompressCoder2ED2Ev.exit:        ; preds = %_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev.exit, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.m) #17
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.n) #17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.o) #17
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.p) #17
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %i.l) #17
  ret void
}

; Function Attrs: nounwind
declare void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive3N7z7CFolderEE, i64 16), ptr %0, align 8, !tbaa !13
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive3N7z10CInArchive10ReadHeaderERNS0_18CArchiveDatabaseExEP22ICryptoGetTextPasswordRb(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(696) %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.CObjectVector.6, align 8     ; 15 uses
  %5 = alloca %class.CRecordVector.2, align 8     ; 13 uses
  %6 = alloca %class.CRecordVector.3, align 8     ; 13 uses
  %7 = alloca %class.CRecordVector.1, align 8     ; 14 uses
  %8 = alloca %class.CRecordVector.3, align 8     ; 18 uses
  %9 = alloca %class.CRecordVector.3, align 8     ; 16 uses
  %10 = alloca %class.CRecordVector.3, align 8    ; 16 uses
  %11 = alloca %"class.NArchive::N7z::CStreamSwitch", align 8 ; 7 uses
  %12 = alloca %class.CRecordVector.3, align 8    ; 10 uses
  %13 = alloca %"class.NArchive::N7z::CStreamSwitch", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 17 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.f = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN8NArchive3N7z10CInArchive21ReadArchivePropertiesERNS0_14CInArchiveInfoE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit.i
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !45   ; 3 uses
  %i.i = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !55   ; 2 uses
  %i.n = sub i64 %i.k, %i.m
  %i.o = icmp ugt i64 %i.i, %i.n
  br i1 %i.o, label %bb.c, label %_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  tail call fastcc void @_ZN8NArchive3N7zL14ThrowExceptionEv()
  unreachable

_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit.i:   ; preds = %.lr.ph.i
  %i.p = add i64 %i.m, %i.i
  store i64 %i.p, ptr %i.l, align 8, !tbaa !55
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.r = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.q)
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_ZN8NArchive3N7z10CInArchive21ReadArchivePropertiesERNS0_14CInArchiveInfoE.exit, label %.lr.ph.i, !llvm.loop !90

_ZN8NArchive3N7z10CInArchive21ReadArchivePropertiesERNS0_14CInArchiveInfoE.exit: ; preds = %_ZN8NArchive3N7z10CInArchive8SkipDataEv.exit.i, %bb.b
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.u = tail call noundef i64 @_ZN8NArchive3N7z8CInByte210ReadNumberEv(ptr noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %bb.d

bb.d:                                             ; preds = %_ZN8NArchive3N7z10CInArchive21ReadArchivePropertiesERNS0_14CInArchiveInfoE.exit, %bb.a
  %.0137 = phi i64 [ %i.u, %_ZN8NArchive3N7z10CInArchive21ReadArchivePropertiesERNS0_14CInArchiveInfoE.exit ], [ %i.c, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 24
end_hunk_1
begin_hunk_2_@_ZN13CObjectVectorI7CBufferIhEE6DeleteEii:_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
bb.a:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !15
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !28   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.m) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.r, label %bb.a, label %._crit_edge, !llvm.loop !209
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(none) }
attributes #10 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 12}
!9 = !{!"_ZTS17CBaseRecordVector", !5, i64 8, !5, i64 12, !10, i64 16, !11, i64 24}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !11, i64 24}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !7, i64 0}
!15 = !{!9, !10, i64 16}
!16 = !{!17, !17, i64 0}
!17 = !{!"bool", !6, i64 0}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.mustprogress"}
!20 = distinct !{!20, !19}
!21 = !{!22, !5, i64 0}
!22 = !{!"_ZTSN8NArchive3N7z9CBindPairE", !5, i64 0, !5, i64 4}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = distinct !{!25, !19}
!26 = distinct !{!26, !19}
!27 = !{!22, !5, i64 4}
!28 = !{!10, !10, i64 0}
!29 = !{!30, !5, i64 32}
!30 = !{!"_ZTSN8NArchive3N7z10CCoderInfoE", !31, i64 0, !32, i64 8, !5, i64 32, !5, i64 36}
!31 = !{!"long long", !6, i64 0}
!32 = !{!"_ZTS7CBufferIhE", !11, i64 8, !33, i64 16}
!33 = !{!"p1 omnipotent char", !10, i64 0}
!34 = !{!30, !5, i64 36}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !19}
!37 = distinct !{!37, !19}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !19}
!40 = distinct !{!40, !19}
!41 = !{!42, !17, i64 8}
!42 = !{!"_ZTSN8NArchive3N7z13CStreamSwitchE", !43, i64 0, !17, i64 8}
!43 = !{!"p1 _ZTSN8NArchive3N7z10CInArchiveE", !10, i64 0}
!44 = !{!42, !43, i64 0}
!45 = !{!46, !51, i64 40}
!46 = !{!"_ZTSN8NArchive3N7z10CInArchiveE", !47, i64 0, !49, i64 8, !51, i64 40, !31, i64 48, !6, i64 56, !31, i64 88}
!47 = !{!"_ZTS9CMyComPtrI9IInStreamE", !48, i64 0}
!48 = !{!"p1 _ZTS9IInStream", !10, i64 0}
!49 = !{!"_ZTS13CObjectVectorIN8NArchive3N7z8CInByte2EE", !50, i64 0}
!50 = !{!"_ZTS13CRecordVectorIPvE", !9, i64 0}
!51 = !{!"p1 _ZTSN8NArchive3N7z8CInByte2E", !10, i64 0}
!52 = !{!53, !33, i64 0}
!53 = !{!"_ZTSN8NArchive3N7z8CInByte2E", !33, i64 0, !11, i64 8, !11, i64 16}
!54 = !{!53, !11, i64 8}
!55 = !{!53, !11, i64 16}
!56 = !{!32, !33, i64 16}
!57 = !{!32, !11, i64 8}
!58 = !{!6, !6, i64 0}
!59 = distinct !{!59, !19}
!60 = !{!31, !31, i64 0}
!61 = distinct !{!61, !19}
!62 = !{!63, !5, i64 12}
!63 = !{!"_ZTS11CStringBaseIwE", !64, i64 0, !5, i64 8, !5, i64 12}
!64 = !{!"p1 wchar_t", !10, i64 0}
!65 = !{!63, !5, i64 8}
!66 = !{!63, !64, i64 0}
!67 = !{!68, !68, i64 0}
!68 = !{!"wchar_t", !6, i64 0}
!69 = distinct !{!69, !19, !70, !71}
!70 = !{!"llvm.loop.isvectorized", i32 1}
!71 = !{!"llvm.loop.unroll.runtime.disable"}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = distinct !{!74, !19, !70}
!75 = !{!76, !76, i64 0}
!76 = !{!"short", !6, i64 0}
!77 = distinct !{!77, !19, !70, !71}
!78 = distinct !{!78, !19, !71, !70}
!79 = !{!46, !31, i64 48}
!80 = distinct !{!80, !19}
!81 = distinct !{!81, !19}
!82 = distinct !{!82, !19}
!83 = distinct !{!83, !19}
!84 = !{ptr @_ZN7CBufferIhED2Ev}
!85 = !{!46, !31, i64 88}
!86 = !{!47, !48, i64 0}
!87 = distinct !{ptr @_ZN8NArchive3N7z10CInArchive5CloseEv, null}
!88 = distinct !{null}
!89 = distinct !{null}
!90 = distinct !{!90, !19}
!91 = !{!30, !31, i64 0}
!92 = distinct !{!92, !73}
!93 = distinct !{!93, !73}
!94 = distinct !{!94, !19}
!95 = distinct !{!95, !19}
!96 = distinct !{!96, !19}
!97 = distinct !{!97, !19}
!98 = distinct !{!98, !19}
!99 = distinct !{!99, !19}
!100 = distinct !{!100, !19}
!101 = distinct !{!101, !19}
!102 = distinct !{!102, !19}
!103 = distinct !{!103, !19}
!104 = distinct !{!104, !19}
!105 = distinct !{!105, !19}
!106 = !{!107, !17, i64 132}
!107 = !{!"_ZTSN8NArchive3N7z7CFolderE", !108, i64 0, !109, i64 32, !110, i64 64, !111, i64 96, !5, i64 128, !17, i64 132}
!108 = !{!"_ZTS13CObjectVectorIN8NArchive3N7z10CCoderInfoEE", !50, i64 0}
!109 = !{!"_ZTS13CRecordVectorIN8NArchive3N7z9CBindPairEE", !9, i64 0}
!110 = !{!"_ZTS13CRecordVectorIjE", !9, i64 0}
!111 = !{!"_ZTS13CRecordVectorIyE", !9, i64 0}
!112 = !{ptr @_ZN13CObjectVectorIN8NArchive3N7z10CCoderInfoEED2Ev}
!113 = distinct !{!113, !19}
!114 = distinct !{!114, !19}
!115 = distinct !{!115, !73}
!116 = distinct !{!116, !19}
!117 = distinct !{!117, !19}
!118 = !{!107, !5, i64 128}
!119 = distinct !{!119, !19}
!120 = distinct !{!120, !19}
!121 = distinct !{!121, !19}
!122 = distinct !{!122, !19}
!123 = distinct !{!123, !19}
!124 = distinct !{!124, !19}
!125 = distinct !{!125, !19}
!126 = distinct !{!126, !19}
!127 = distinct !{!127, !19}
!128 = distinct !{!128, !19}
!129 = distinct !{!129, !19}
!130 = distinct !{!130, !19}
!131 = distinct !{!131, !19}
!132 = distinct !{!132, !19}
!133 = distinct !{!133, !19}
!134 = !{!135, !5, i64 0}
!135 = !{!"_ZTS13CMyUnknownImp", !5, i64 0}
!136 = distinct !{null}
!137 = !{!138, !33, i64 16}
!138 = !{!"_ZTS19CBufPtrSeqOutStream", !139, i64 0, !135, i64 8, !33, i64 16, !11, i64 24, !11, i64 32}
!139 = !{!"_ZTS20ISequentialOutStream", !140, i64 0}
!140 = !{!"_ZTS8IUnknown"}
!141 = !{!138, !11, i64 32}
!142 = !{!138, !11, i64 24}
!143 = !{!144}
!144 = distinct !{!144, !145}
!145 = distinct !{!145, !"LVerDomain"}
!146 = distinct !{!146, !19, !70, !71}
!147 = !{!148}
!148 = distinct !{!148, !145}
!149 = distinct !{!149, !73}
!150 = distinct !{!150, !19, !70}
!151 = !{ptr @_ZN13CObjectVectorIN8NArchive3N7z7CFolderEED2Ev}
!152 = !{ptr @_ZN13CObjectVectorI9CMyComPtrI8IUnknownEED2Ev}
!153 = !{!154, !155, i64 0}
!154 = !{!"_ZTS9CMyComPtrI15ICompressCoder2E", !155, i64 0}
!155 = !{!"p1 _ZTS15ICompressCoder2", !10, i64 0}
!156 = !{!157, !31, i64 496}
!157 = !{!"_ZTSN8NArchive3N7z18CArchiveDatabaseExE", !158, i64 0, !163, i64 480, !111, i64 552, !110, i64 584, !110, i64 616, !110, i64 648, !31, i64 680, !31, i64 688}
!158 = !{!"_ZTSN8NArchive3N7z16CArchiveDatabaseE", !111, i64 0, !159, i64 32, !110, i64 64, !160, i64 96, !110, i64 128, !161, i64 160, !162, i64 192, !162, i64 256, !162, i64 320, !162, i64 384, !159, i64 448}
!159 = !{!"_ZTS13CRecordVectorIbE", !9, i64 0}
!160 = !{!"_ZTS13CObjectVectorIN8NArchive3N7z7CFolderEE", !50, i64 0}
!161 = !{!"_ZTS13CObjectVectorIN8NArchive3N7z9CFileItemEE", !50, i64 0}
!162 = !{!"_ZTSN8NArchive3N7z16CUInt64DefVectorE", !111, i64 0, !159, i64 32}
!163 = !{!"_ZTSN8NArchive3N7z14CInArchiveInfoE", !164, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !111, i64 40}
!164 = !{!"_ZTSN8NArchive3N7z15CArchiveVersionE", !6, i64 0, !6, i64 1}
!165 = !{!157, !31, i64 512}
!166 = !{!157, !31, i64 504}
!167 = distinct !{!167, !19}
!168 = distinct !{!168, !19}
!169 = distinct !{!169, !19}
!170 = distinct !{!170, !19}
!171 = !{!172, !17, i64 35}
!172 = !{!"_ZTSN8NArchive3N7z9CFileItemE", !31, i64 0, !5, i64 8, !5, i64 12, !63, i64 16, !17, i64 32, !17, i64 33, !17, i64 34, !17, i64 35}
!173 = !{!172, !5, i64 8}
!174 = distinct !{!174, !19}
!175 = distinct !{!175, !19, !70, !71}
!176 = distinct !{!176, !73}
!177 = distinct !{!177, !19, !70}
!178 = distinct !{!178, !19}
!179 = !{!157, !6, i64 480}
!180 = distinct !{!180, !19, !70, !71}
!181 = distinct !{!181, !73}
!182 = distinct !{!182, !19, !70}
!183 = !{!172, !17, i64 32}
!184 = !{!172, !17, i64 33}
!185 = !{!172, !5, i64 12}
!186 = !{!172, !31, i64 0}
!187 = !{!172, !17, i64 34}
!188 = distinct !{!188, !19}
!189 = !{ptr @_ZN13CObjectVectorI7CBufferIhEED2Ev}
!190 = distinct !{!190, !19}
!191 = distinct !{!191, !19}
!192 = distinct !{!192, !19}
!193 = distinct !{!193, !19}
!194 = !{!157, !31, i64 488}
!195 = !{!157, !6, i64 481}
!196 = distinct !{!196, !19}
!197 = !{!157, !31, i64 688}
!198 = !{!157, !31, i64 680}
!199 = distinct !{!199, !19}
!200 = !{!201, !202, i64 0}
!201 = !{!"_ZTS9CMyComPtrI8IUnknownE", !202, i64 0}
!202 = !{!"p1 _ZTS8IUnknown", !10, i64 0}
!203 = distinct !{!203, !19}
!204 = distinct !{!204, !19}
!205 = distinct !{!205, !19}
!206 = distinct !{!206, !19}
!207 = distinct !{!207, !19}
!208 = distinct !{!208, !19}
!209 = distinct !{!209, !19}
end_hunk_2
