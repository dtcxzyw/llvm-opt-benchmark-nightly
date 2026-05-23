inline.NumInlined: 186
inline.NumDeleted: 64
begin_hunk_0_@_ZThn8_N9NCompress6NBZip28CDecoder18SetNumberOfThreadsEj:bb.a
}

declare noundef i64 @_ZNK10COutBuffer16GetProcessedSizeEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress6NBZip212CNsisDecoder11SetInStreamEP19ISequentialInStream(ptr noundef nonnull align 8 dereferenceable(29000) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN9CInBuffer9SetStreamEP19ISequentialInStream(ptr noundef nonnull align 8 dereferenceable(45) %i.a, ptr noundef %1)
  ret i32 0
}

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn8_N9NCompress6NBZip212CNsisDecoder11SetInStreamEP19ISequentialInStream(ptr noundef %0, ptr noundef %1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN9CInBuffer9SetStreamEP19ISequentialInStream(ptr noundef nonnull align 8 dereferenceable(45) %i.a, ptr noundef %1)
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress6NBZip212CNsisDecoder15ReleaseInStreamEv(ptr noundef nonnull align 8 captures(none) dereferenceable(29000) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5NBitm8CDecoderI9CInBufferE13ReleaseStreamEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !114 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !60
  br label %_ZN5NBitm8CDecoderI9CInBufferE13ReleaseStreamEv.exit

_ZN5NBitm8CDecoderI9CInBufferE13ReleaseStreamEv.exit: ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: uwtable
define dso_local noundef i32 @_ZThn8_N9NCompress6NBZip212CNsisDecoder15ReleaseInStreamEv(ptr noundef captures(none) %0) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN9NCompress6NBZip212CNsisDecoder15ReleaseInStreamEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !119 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !60
  br label %_ZN9NCompress6NBZip212CNsisDecoder15ReleaseInStreamEv.exit

_ZN9NCompress6NBZip212CNsisDecoder15ReleaseInStreamEv.exit: ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @_ZN9NCompress6NBZip212CNsisDecoder16SetOutStreamSizeEPKy(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(29000) initializes((28976, 28980)) %0, ptr readnone captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28976
  store i32 0, ptr %i.a, align 8, !tbaa !120
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @_ZThn16_N9NCompress6NBZip212CNsisDecoder16SetOutStreamSizeEPKy(ptr noundef writeonly captures(none) initializes((28960, 28964)) %0, ptr readnone captures(none) %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28960
  store i32 0, ptr %i.a, align 8, !tbaa !120
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9NCompress6NBZip212CNsisDecoder4ReadEPvjPj(ptr noundef nonnull align 8 dereferenceable(29000) %0, ptr noundef writeonly captures(none) %1, i32 noundef %2, ptr noundef captures(none) initializes((0, 4)) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  store i32 0, ptr %3, align 4, !tbaa !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 28976 ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !120  ; 2 uses
  switch i32 %i.c, label %bb.c [
    i32 3, label %.thread97
    i32 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.thread97

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %2, 0
  br i1 %i.d, label %.thread97, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28368 ; 6 uses
  switch i32 %i.c, label %._crit_edge [
    i32 0, label %bb.e
    i32 1, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = invoke noundef zeroext i1 @_ZN9CInBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(45) %i.g, i32 noundef 131072)
          to label %_ZN5NBitm8CDecoderI9CInBufferE6CreateEj.exit unwind label %bb.f

_ZN5NBitm8CDecoderI9CInBufferE6CreateEj.exit:     ; preds = %bb.e
  br i1 %i.h, label %bb.g, label %.thread97

bb.f:                                             ; preds = %bb.h, %bb.e, %_ZN9NCompress6NBZip26CState5AllocEv.exit.thread
  %i.i = landingpad { ptr, i32 }
          catch ptr @_ZTI18CInBufferException
          catch ptr null
  br label %bb.ad

bb.g:                                             ; preds = %_ZN5NBitm8CDecoderI9CInBufferE6CreateEj.exit
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !8
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.h, label %_ZN9NCompress6NBZip26CState5AllocEv.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.k = invoke ptr @BigAlloc(i64 noundef 3601024)
          to label %_ZN9NCompress6NBZip26CState5AllocEv.exit unwind label %bb.f ; 2 uses

_ZN9NCompress6NBZip26CState5AllocEv.exit:         ; preds = %bb.h
  store ptr %i.k, ptr %i.e, align 8, !tbaa !8
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.thread97, label %_ZN9NCompress6NBZip26CState5AllocEv.exit.thread

_ZN9NCompress6NBZip26CState5AllocEv.exit.thread:  ; preds = %bb.g, %_ZN9NCompress6NBZip26CState5AllocEv.exit
  invoke void @_ZN5NBitm8CDecoderI9CInBufferE4InitEv(ptr noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %.thread unwind label %bb.f

.thread:                                          ; preds = %_ZN9NCompress6NBZip26CState5AllocEv.exit.thread
  store i32 1, ptr %i.b, align 8, !tbaa !120
  br label %bb.i

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 28980
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !125
  %.phi.trans.insert117 = getelementptr inbounds nuw i8, ptr %0, i64 28984
  %.pre118 = load i32, ptr %.phi.trans.insert117, align 8, !tbaa !126
  %.phi.trans.insert119 = getelementptr inbounds nuw i8, ptr %0, i64 28992
  %.pre120 = load i32, ptr %.phi.trans.insert119, align 8, !tbaa !127
  %.pre121 = load ptr, ptr %i.e, align 8, !tbaa !8
  br label %bb.t

bb.i:                                             ; preds = %bb.d, %.thread
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !20   ; 2 uses
  %i.o = load i32, ptr %i.l, align 8, !tbaa !27   ; 3 uses
  %i.p = add i32 %i.o, 8                          ; 2 uses
  store i32 %i.p, ptr %i.l, align 8, !tbaa !27
  %i.q = icmp ult i32 %i.o, -8
  br i1 %i.q, label %.lr.ph.i.i.i, label %.loopexit102

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.j

bb.j:                                             ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i, %.lr.ph.i.i.i
  %i.t = phi i32 [ %i.p, %.lr.ph.i.i.i ], [ %i.ae, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i ]
  %i.u = phi i32 [ %i.n, %.lr.ph.i.i.i ], [ %i.ad, %_ZN9CInBuffer8ReadByteEv.exit.i.i.i ]
  %i.v = shl i32 %i.u, 8
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !28   ; 3 uses
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !29
  %.not.i.i.i.i = icmp ult ptr %i.w, %i.x
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = invoke noundef zeroext i8 @_ZN9CInBuffer10ReadBlock2Ev(ptr noundef nonnull align 8 dereferenceable(45) %i.r)
          to label %.noexc96 unwind label %bb.n

.noexc96:                                         ; preds = %bb.k
  %.pre1.i.i.i = load i32, ptr %i.l, align 8, !tbaa !27
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store ptr %i.z, ptr %i.r, align 8, !tbaa !28
  %i.aa = load i8, ptr %i.w, align 1, !tbaa !30
  br label %_ZN9CInBuffer8ReadByteEv.exit.i.i.i

_ZN9CInBuffer8ReadByteEv.exit.i.i.i:              ; preds = %bb.l, %.noexc96
  %i.ab = phi i32 [ %.pre1.i.i.i, %.noexc96 ], [ %i.t, %bb.l ]
  %.0.i.i.i.i = phi i8 [ %i.y, %.noexc96 ], [ %i.aa, %bb.l ]
  %i.ac = zext i8 %.0.i.i.i.i to i32
  %i.ad = or disjoint i32 %i.v, %i.ac             ; 2 uses
  store i32 %i.ad, ptr %i.m, align 4, !tbaa !20
  %i.ae = add i32 %i.ab, -8                       ; 3 uses
  store i32 %i.ae, ptr %i.l, align 8, !tbaa !27
  %i.af = icmp ugt i32 %i.ae, 7
  br i1 %i.af, label %bb.j, label %.loopexit102, !llvm.loop !31

.loopexit102:                                     ; preds = %_ZN9CInBuffer8ReadByteEv.exit.i.i.i, %bb.i
  %i.ag = sub i32 8, %i.o
  %i.ah = lshr i32 %i.n, %i.ag
  %4 = and i32 %i.ah, 16711680
  switch i32 %4, label %bb.o [
    i32 1507328, label %bb.m
    i32 3211264, label %bb.p
  ]

bb.m:                                             ; preds = %.loopexit102
  store i32 3, ptr %i.b, align 8, !tbaa !120
  br label %.thread97

bb.n:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          catch ptr @_ZTI18CInBufferException
          catch ptr null
  br label %bb.ad

bb.o:                                             ; preds = %.loopexit102
  store i32 4, ptr %i.b, align 8, !tbaa !120
  br label %.thread97

bb.p:                                             ; preds = %.loopexit102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 18092
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28996 ; 2 uses
  %i.an = invoke fastcc noundef i32 @_ZN9NCompress6NBZip2L9ReadBlockEPN5NBitm8CDecoderI9CInBufferEEPjjPhPNS_8NHuffman8CDecoderILi20ELj258EEES6_S6_Pb(ptr noundef nonnull %i.l, ptr noundef %i.aj, i32 noundef 900000, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, ptr noundef %i.am, ptr noundef %i.a, ptr noundef null)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %.not93 = icmp eq i32 %i.an, 0
  br i1 %.not93, label %.thread100, label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          catch ptr @_ZTI18CInBufferException
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.ad

.thread100:                                       ; preds = %bb.q
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.aq = load i32, ptr %i.am, align 4, !tbaa !128
  tail call fastcc void @_ZN9NCompress6NBZip2L12DecodeBlock1EPjj(ptr noundef %i.ap, i32 noundef %i.aq)
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !8   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1024 ; 2 uses
  %i.at = load i32, ptr %i.a, align 4, !tbaa !4
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ax = lshr i32 %i.aw, 8
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4  ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 28980
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !125
  %i.bc = and i32 %i.ba, 255                      ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 28984
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !126
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 28992
  store i32 0, ptr %i.be, align 8, !tbaa !127
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 28988
  store i32 0, ptr %i.bf, align 4, !tbaa !129
  store i32 2, ptr %i.b, align 8, !tbaa !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %.thread97

bb.t:                                             ; preds = %._crit_edge, %.thread100
  %i.bg = phi ptr [ %.pre121, %._crit_edge ], [ %i.ar, %.thread100 ]
  %i.bh = phi i32 [ %.pre120, %._crit_edge ], [ 0, %.thread100 ]
  %i.bi = phi i32 [ %.pre118, %._crit_edge ], [ %i.bc, %.thread100 ] ; 2 uses
  %i.bj = phi i32 [ %.pre, %._crit_edge ], [ %i.ba, %.thread100 ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 28980
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 28984
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 28992
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 28996 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !128 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 1024
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 28988 ; 3 uses
  %i.br = trunc i32 %i.bi to i8
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.071 = phi i32 [ %2, %bb.t ], [ %i.bx, %bb.v ] ; 2 uses
  %.059 = phi ptr [ %1, %bb.t ], [ %i.bu, %bb.v ] ; 3 uses
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !129 ; 2 uses
  %.not94 = icmp eq i32 %i.bs, 0
  br i1 %.not94, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = add i32 %i.bs, -1
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !129
  store i8 %i.br, ptr %.059, align 1, !tbaa !30
  %i.bu = getelementptr inbounds nuw i8, ptr %.059, i64 1
  %i.bv = load i32, ptr %3, align 4, !tbaa !4
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %3, align 4, !tbaa !4
  %i.bx = add i32 %.071, -1                       ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %.thread97, label %bb.u, !llvm.loop !130

bb.w:                                             ; preds = %bb.u
  %i.bz = icmp eq i32 %i.bo, 0
  br i1 %i.bz, label %bb.x, label %.preheader101

bb.x:                                             ; preds = %bb.w
  store i32 1, ptr %i.b, align 8, !tbaa !120
  br label %.thread97

.preheader101:                                    ; preds = %bb.w, %bb.ab
  %.172 = phi i32 [ %.475, %bb.ab ], [ %.071, %bb.w ] ; 3 uses
  %.070 = phi i32 [ %i.ce, %bb.ab ], [ %i.bj, %bb.w ] ; 3 uses
  %.068 = phi i32 [ %.169, %bb.ab ], [ %i.bi, %bb.w ] ; 3 uses
  %.065 = phi i32 [ %.267, %bb.ab ], [ %i.bh, %bb.w ] ; 2 uses
  %.064 = phi i32 [ %i.cf, %bb.ab ], [ %i.bo, %bb.w ]
  %.160 = phi ptr [ %.463, %bb.ab ], [ %.059, %bb.w ] ; 4 uses
  %i.ca = and i32 %.070, 255                      ; 4 uses
  %i.cb = lshr i32 %.070, 8
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4  ; 2 uses
  %i.cf = add i32 %.064, -1                       ; 3 uses
  %i.cg = icmp eq i32 %.065, 4
  br i1 %i.cg, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %.preheader101
  %.old2.not = icmp eq i32 %i.ca, 0
  br i1 %.old2.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.y
  %i.ch = trunc i32 %.068 to i8
  br label %bb.z

bb.z:                                             ; preds = %.preheader, %bb.z
  %.273 = phi i32 [ %i.cm, %bb.z ], [ %.172, %.preheader ]
  %.261 = phi ptr [ %i.cj, %bb.z ], [ %.160, %.preheader ] ; 2 uses
  %.057 = phi i32 [ %i.ci, %bb.z ], [ %i.ca, %.preheader ]
  %i.ci = add nsw i32 %.057, -1                   ; 3 uses
  store i8 %i.ch, ptr %.261, align 1, !tbaa !30
  %i.cj = getelementptr inbounds nuw i8, ptr %.261, i64 1 ; 2 uses
  %i.ck = load i32, ptr %3, align 4, !tbaa !4
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %3, align 4, !tbaa !4
  %i.cm = add i32 %.273, -1                       ; 3 uses
  %i.cn = icmp ne i32 %i.cm, 0
  %i.co = icmp ne i32 %i.ci, 0
  %or.cond = select i1 %i.cn, i1 %i.co, i1 false
  br i1 %or.cond, label %bb.z, label %.loopexit, !llvm.loop !131

.loopexit:                                        ; preds = %bb.z, %bb.y
  %.374 = phi i32 [ %.172, %bb.y ], [ %i.cm, %bb.z ]
  %.362 = phi ptr [ %.160, %bb.y ], [ %i.cj, %bb.z ]
  %.158 = phi i32 [ 0, %bb.y ], [ %i.ci, %bb.z ]
  store i32 %.158, ptr %i.bq, align 4, !tbaa !129
  br label %bb.ab

bb.aa:                                            ; preds = %.preheader101
  %.not95 = icmp eq i32 %i.ca, %.068
  %i.cp = add i32 %.065, 1
  %i.cq = select i1 %.not95, i32 %i.cp, i32 1
  %i.cr = trunc i32 %.070 to i8
  store i8 %i.cr, ptr %.160, align 1, !tbaa !30
  %i.cs = getelementptr inbounds nuw i8, ptr %.160, i64 1
  %i.ct = load i32, ptr %3, align 4, !tbaa !4
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %3, align 4, !tbaa !4
  %i.cv = add i32 %.172, -1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.loopexit
  %.475 = phi i32 [ %.374, %.loopexit ], [ %i.cv, %bb.aa ] ; 2 uses
  %.169 = phi i32 [ %.068, %.loopexit ], [ %i.ca, %bb.aa ] ; 2 uses
  %.267 = phi i32 [ 0, %.loopexit ], [ %i.cq, %bb.aa ] ; 2 uses
  %.463 = phi ptr [ %.362, %.loopexit ], [ %i.cs, %bb.aa ]
  %i.cw = icmp ne i32 %.475, 0
  %i.cx = icmp ne i32 %i.cf, 0
  %i.cy = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %i.cy, label %.preheader101, label %bb.ac, !llvm.loop !132

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.ce, ptr %i.bk, align 4, !tbaa !125
  store i32 %.169, ptr %i.bl, align 8, !tbaa !126
  store i32 %.267, ptr %i.bm, align 8, !tbaa !127
  store i32 %i.cf, ptr %i.bn, align 4, !tbaa !128
  br label %.thread97

bb.ad:                                            ; preds = %bb.n, %bb.r, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.ao, %bb.r ], [ %i.ai, %bb.n ] ; 2 uses
  %.177 = extractvalue { ptr, i32 } %.pn.pn, 0
  %.179 = extractvalue { ptr, i32 } %.pn.pn, 1
  %i.cz = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTI18CInBufferException) #20
  %i.da = icmp eq i32 %.179, %i.cz
  %i.db = tail call ptr @__cxa_begin_catch(ptr %.177) #20
  br i1 %i.da, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !112
  tail call void @__cxa_end_catch()
  br label %.thread97

end_hunk_0
