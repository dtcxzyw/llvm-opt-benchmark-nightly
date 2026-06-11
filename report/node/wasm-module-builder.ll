inline.NumInlined: 914
inline.NumDeleted: 472
begin_hunk_0_@_ZNK2v88internal4wasm16LocalDeclEncoder4SizeEv
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ugt ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = shl nsw i64 %i.k, 1                      ; 2 uses
  %i.m = add i64 %i.l, 5                          ; 2 uses
  %i.n = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i = icmp eq i64 %i.m, -1
  br i1 %.not.i.i, label %bb.c, label %bb.d, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = add i64 %i.l, 12
  %i.p = and i64 %i.o, -8                         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = sub i64 %i.r, %i.t
  %i.v = icmp ugt i64 %i.p, %i.u
  br i1 %i.v, label %bb.e, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 noundef %i.p) #10
  %.pre.i.i.i = load i64, ptr %i.s, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i: ; preds = %bb.e, %bb.d
  %i.w = phi i64 [ %.pre.i.i.i, %bb.e ], [ %i.t, %bb.d ] ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 4 uses
  %i.y = add i64 %i.w, %i.p
  store i64 %i.y, ptr %i.s, align 8
  %i.z = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.a, align 8
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.z, i64 %i.ad, i1 false)
  %i.ae = load ptr, ptr %i.a, align 8
  %i.af = load ptr, ptr %i.g, align 8
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.x, i64 %i.ai ; 2 uses
  store ptr %i.aj, ptr %i.a, align 8
  store ptr %i.x, ptr %i.g, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.m
  store ptr %i.ak, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit

_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit: ; preds = %bb.a, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i
  %i.al = phi ptr [ %i.b, %bb.a ], [ %i.aj, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i ]
  %i.am = trunc i64 %1 to i32                     ; 3 uses
  %i.an = icmp ugt i32 %i.am, 127
  br i1 %i.an, label %.lr.ph.i, label %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit

.lr.ph.i:                                         ; preds = %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit, %.lr.ph.i
  %.05.i = phi i32 [ %i.as, %.lr.ph.i ], [ %i.am, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit ] ; 3 uses
  %i.ao = trunc i32 %.05.i to i8
  %i.ap = or i8 %i.ao, -128
  %i.aq = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store ptr %i.ar, ptr %i.a, align 8
  store i8 %i.ap, ptr %i.aq, align 1
  %i.as = lshr i32 %.05.i, 7                      ; 2 uses
  %i.at = icmp ugt i32 %.05.i, 16383
  br i1 %i.at, label %.lr.ph.i, label %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit.loopexit, !llvm.loop !9

_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit.loopexit: ; preds = %.lr.ph.i
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit

_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit: ; preds = %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit.loopexit, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit
  %i.au = phi ptr [ %i.al, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit ], [ %.pre, %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit.loopexit ] ; 2 uses
  %.0.lcssa.i = phi i32 [ %i.am, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit ], [ %i.as, %_ZN2v88internal4wasm9LEBHelper10write_u32vEPPhj.exit.loopexit ]
  %i.av = trunc nuw nsw i32 %.0.lcssa.i to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store ptr %i.aw, ptr %i.a, align 8
  store i8 %i.av, ptr %i.au, align 1
  ret void
}

declare noundef i64 @_ZNK2v88internal4wasm16LocalDeclEncoder4EmitEPh(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal4wasm19WasmFunctionBuilder23WriteAsmWasmOffsetTableEPNS1_10ZoneBufferE(ptr noundef nonnull align 8 dereferenceable(316) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp ugt ptr %i.k, %i.m
  br i1 %i.n, label %bb.d, label %_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = shl nsw i64 %i.s, 1                      ; 2 uses
  %i.u = add i64 %i.t, 5                          ; 2 uses
  %i.v = load ptr, ptr %1, align 8                ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.u, -1
  br i1 %.not.i.i.i, label %bb.e, label %bb.f, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.w = add i64 %i.t, 12
  %i.x = and i64 %i.w, -8                         ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = sub i64 %i.z, %i.ab
  %i.ad = icmp ugt i64 %i.x, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.v, i64 noundef %i.x) #10
  %.pre.i.i.i.i = load i64, ptr %i.aa, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i: ; preds = %bb.g, %bb.f
  %i.ae = phi i64 [ %.pre.i.i.i.i, %bb.g ], [ %i.ab, %bb.f ] ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr               ; 4 uses
  %i.ag = add i64 %i.ae, %i.x
  store i64 %i.ag, ptr %i.aa, align 8
  %i.ah = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.ai = load ptr, ptr %i.i, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.ah, i64 %i.al, i1 false)
  %i.am = load ptr, ptr %i.i, align 8
  %i.an = load ptr, ptr %i.o, align 8
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds i8, ptr %i.af, i64 %i.aq
  store ptr %i.af, ptr %i.o, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.u
  store ptr %i.as, ptr %i.l, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm.exit

_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm.exit: ; preds = %bb.c, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i
  %i.at = phi ptr [ %i.j, %bb.c ], [ %i.ar, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store ptr %i.au, ptr %i.i, align 8
  store i8 0, ptr %i.at, align 1
  br label %_ZN2v88internal4wasm10ZoneBuffer5writeEPKhm.exit

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aw = tail call noundef i64 @_ZNK2v88internal4wasm16LocalDeclEncoder4SizeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.av) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.04.i = phi i64 [ %i.aw, %bb.h ], [ %i.ay, %bb.i ]
  %.0.i = phi i64 [ 0, %bb.h ], [ %i.ax, %bb.i ]
  %i.ax = add nuw nsw i64 %.0.i, 1                ; 2 uses
  %i.ay = lshr i64 %.04.i, 7                      ; 2 uses
  %.not.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i, label %_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit, label %bb.i, !llvm.loop !14

_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit: ; preds = %bb.i
  %i.az = load i32, ptr %i.a, align 8
  %2 = zext i32 %i.az to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit
  %.04.i7 = phi i64 [ %2, %_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit ], [ %4, %bb.j ]
  %.0.i8 = phi i64 [ 0, %_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit ], [ %3, %bb.j ]
  %3 = add nuw nsw i64 %.0.i8, 1                  ; 2 uses
  %4 = lshr i64 %.04.i7, 7                        ; 2 uses
  %.not.i9 = icmp eq i64 %4, 0
  br i1 %.not.i9, label %_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit10, label %bb.j, !llvm.loop !14

_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit10: ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = add nuw i64 %3, %i.ax
  %i.bh = add i64 %i.bg, %i.be
  %i.bi = sub i64 %i.bh, %i.bf
  tail call void @_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bi)
  %i.bj = tail call noundef i64 @_ZNK2v88internal4wasm16LocalDeclEncoder4SizeEv(ptr noundef nonnull align 8 dereferenceable(48) %i.av) #10
  %i.bk = trunc i64 %i.bj to i32
  tail call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.bk)
  %i.bl = load i32, ptr %i.a, align 8
  tail call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.bl)
  %i.bm = load ptr, ptr %i.bc, align 8            ; 3 uses
  %i.bn = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = ptrtoint ptr %i.bm to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 4 uses
  %i.br = icmp eq ptr %i.bn, %i.bm
  br i1 %i.br, label %_ZN2v88internal4wasm10ZoneBuffer5writeEPKhm.exit, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit10
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bq
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = icmp ugt ptr %i.bu, %i.bw
  br i1 %i.bx, label %bb.l, label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i

bb.l:                                             ; preds = %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = shl nsw i64 %i.cc, 1
  %i.ce = add i64 %i.cd, %i.bq                    ; 3 uses
  %i.cf = load ptr, ptr %1, align 8               ; 3 uses
  %.not.i.i.i11 = icmp eq i64 %i.ce, -1
  br i1 %.not.i.i.i11, label %bb.m, label %bb.n, !prof !5

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.cg = add i64 %i.ce, 7
  %i.ch = and i64 %i.cg, -8                       ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 3 uses
  %i.cl = load i64, ptr %i.ck, align 8            ; 2 uses
  %i.cm = sub i64 %i.cj, %i.cl
  %i.cn = icmp ugt i64 %i.ch, %i.cm
  br i1 %i.cn, label %bb.o, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i12, !prof !5

bb.o:                                             ; preds = %bb.n
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.cf, i64 noundef %i.ch) #10
  %.pre.i.i.i.i13 = load i64, ptr %i.ck, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i12

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i12: ; preds = %bb.o, %bb.n
  %i.co = phi i64 [ %.pre.i.i.i.i13, %bb.o ], [ %i.cl, %bb.n ] ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 4 uses
  %i.cq = add i64 %i.co, %i.ch
  store i64 %i.cq, ptr %i.ck, align 8
  %i.cr = load ptr, ptr %i.by, align 8            ; 2 uses
  %i.cs = load ptr, ptr %i.bs, align 8
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cr to i64
  %i.cv = sub i64 %i.ct, %i.cu
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr align 1 %i.cr, i64 %i.cv, i1 false)
  %i.cw = load ptr, ptr %i.bs, align 8
  %i.cx = load ptr, ptr %i.by, align 8
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = getelementptr inbounds i8, ptr %i.cp, i64 %i.da ; 2 uses
  store ptr %i.db, ptr %i.bs, align 8
  store ptr %i.cp, ptr %i.by, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ce
  store ptr %i.dc, ptr %i.bv, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i

_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i: ; preds = %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i12, %bb.k
  %i.dd = phi ptr [ %i.bt, %bb.k ], [ %i.db, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i12 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dd, ptr align 1 %i.bm, i64 %i.bq, i1 false)
  %i.de = load ptr, ptr %i.bs, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.bq
  store ptr %i.df, ptr %i.bs, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer5writeEPKhm.exit

_ZN2v88internal4wasm10ZoneBuffer5writeEPKhm.exit: ; preds = %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i, %_ZN2v88internal4wasm9LEBHelper11sizeof_u32vEm.exit10, %_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm17WasmModuleBuilderC2EPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(468) initializes((0, 368)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %1, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %1, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr %1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.x = ptrtoint ptr %1 to i64
  store i64 %i.x, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  store ptr %i.z, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 3 uses
  store i64 1, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  %i.ae = tail call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 noundef 0) #10 ; 5 uses
  %i.af = load i64, ptr %i.aa, align 8
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.b, label %_ZN2v88internal16ZoneUnorderedMapINS0_9SignatureINS0_4wasm9ValueTypeEEENS3_15ModuleTypeIndexENS_4base4hashIS5_EESt8equal_toIS5_EEC2EPNS0_4ZoneEm.exit

bb.b:                                             ; preds = %bb.a
  %i.ah = icmp eq i64 %i.ae, 1
  br i1 %i.ah, label %bb.c, label %bb.d, !prof !5

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.z, align 8
  br label %_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.ai = load ptr, ptr %i.w, align 8             ; 3 uses
  %i.aj = icmp ult i64 %i.ae, 2305843009213693951
  br i1 %i.aj, label %bb.f, label %bb.e, !prof !11

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ak = shl nuw i64 %i.ae, 3                    ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = sub i64 %i.am, %i.ao
  %i.aq = icmp ugt i64 %i.ak, %i.ap
  br i1 %i.aq, label %bb.g, label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_9SignatureINS2_4wasm9ValueTypeEEENS7_15ModuleTypeIndexEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i, !prof !5

bb.g:                                             ; preds = %bb.f
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, i64 noundef %i.ak) #10
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %i.an, align 8
  br label %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_9SignatureINS2_4wasm9ValueTypeEEENS7_15ModuleTypeIndexEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_9SignatureINS2_4wasm9ValueTypeEEENS7_15ModuleTypeIndexEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %i.ar = phi i64 [ %.pre.i.i.i.i.i.i.i.i.i, %bb.g ], [ %i.ao, %bb.f ] ; 2 uses
  %i.as = inttoptr i64 %i.ar to ptr               ; 2 uses
  %i.at = add i64 %i.ar, %i.ak
  store i64 %i.at, ptr %i.an, align 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.as, i8 0, i64 %i.ak, i1 false)
  br label %_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i

_ZNSt10_HashtableIN2v88internal9SignatureINS1_4wasm9ValueTypeEEESt4pairIKS5_NS3_15ModuleTypeIndexEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS5_ENS0_4base4hashIS5_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocIN2v88internal13ZoneAllocatorINS_10_Hash_nodeISt4pairIKNS2_9SignatureINS2_4wasm9ValueTypeEEENS7_15ModuleTypeIndexEELb1EEEEEE19_M_allocate_bucketsEm.exit.i.i.i.i, %bb.c
end_hunk_0
begin_hunk_1_@_ZN2v88internal4wasm17WasmModuleBuilder9AddExportENS_4base6VectorIKcEENS1_20ImportExportKindCodeEj:bb.a

_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmExportEE9push_backEOS4_.exit: ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.b, %bb.a ], [ %.pre.i.i, %bb.b ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.o, ptr %i.a, align 8
  store ptr %1, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 %3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  store i32 %4, ptr %.sroa.62.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal4wasm17WasmModuleBuilder17AddExportedGlobalENS1_9ValueTypeEbNS1_12WasmInitExprENS_4base6VectorIKcEE(ptr noundef nonnull align 8 dereferenceable(468) %0, i32 %1, i1 noundef zeroext %2, ptr nofree noundef readonly byval(%"class.v8::internal::wasm::WasmInitExpr") align 8 captures(none) %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.5.i = alloca [35 x i8], align 1          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.5.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.i, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.5.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %_ZN2v88internal4wasm17WasmModuleBuilder9AddGlobalENS1_9ValueTypeEbNS1_12WasmInitExprE.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 40
  %i.m = add nsw i64 %i.l, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmGlobalEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.m)
  %.pre.i.i.i = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm17WasmModuleBuilder9AddGlobalENS1_9ValueTypeEbNS1_12WasmInitExprE.exit

_ZN2v88internal4wasm17WasmModuleBuilder9AddGlobalENS1_9ValueTypeEbNS1_12WasmInitExprE.exit: ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.b, %bb.a ], [ %.pre.i.i.i, %bb.b ] ; 4 uses
  %i.o = zext i1 %2 to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.p, ptr %i.a, align 8
  store i32 %1, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i8 %i.o, ptr %.sroa.4.0..sroa_idx.i, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(35) %.sroa.5.i, i64 35, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp ult ptr %i.u, %i.w
  br i1 %i.x, label %_ZN2v88internal4wasm17WasmModuleBuilder9AddExportENS_4base6VectorIKcEENS1_20ImportExportKindCodeEj.exit, label %bb.c, !prof !11

bb.c:                                             ; preds = %_ZN2v88internal4wasm17WasmModuleBuilder9AddGlobalENS1_9ValueTypeEbNS1_12WasmInitExprE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = ptrtoint ptr %i.w to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 24
  %i.af = add nsw i64 %i.ae, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmExportEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef %i.af)
  %.pre.i.i.i7 = load ptr, ptr %i.t, align 8
  br label %_ZN2v88internal4wasm17WasmModuleBuilder9AddExportENS_4base6VectorIKcEENS1_20ImportExportKindCodeEj.exit

_ZN2v88internal4wasm17WasmModuleBuilder9AddExportENS_4base6VectorIKcEENS1_20ImportExportKindCodeEj.exit: ; preds = %_ZN2v88internal4wasm17WasmModuleBuilder9AddGlobalENS1_9ValueTypeEbNS1_12WasmInitExprE.exit, %bb.c
  %i.ag = phi ptr [ %i.u, %_ZN2v88internal4wasm17WasmModuleBuilder9AddGlobalENS1_9ValueTypeEbNS1_12WasmInitExprE.exit ], [ %.pre.i.i.i7, %bb.c ] ; 5 uses
  %i.ah = ptrtoint ptr %i.q to i64
  %i.ai = ptrtoint ptr %i.s to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = sdiv exact i64 %i.aj, 40
  %i.al = trunc i64 %i.ak to i32
  %i.am = add i32 %i.al, -1                       ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.an, ptr %i.t, align 8
  store ptr %4, ptr %i.ag, align 8
  %.sroa.4.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %5, ptr %.sroa.4.0..sroa_idx.i8, align 8
  %.sroa.5.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i8 3, ptr %.sroa.5.0..sroa_idx.i9, align 8
  %.sroa.62.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store i32 %i.am, ptr %.sroa.62.0..sroa_idx.i, align 4
  ret i32 %i.am
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN2v88internal4wasm17WasmModuleBuilder9AddGlobalENS1_9ValueTypeEbNS1_12WasmInitExprE(ptr noundef nonnull align 8 dereferenceable(468) %0, i32 %1, i1 noundef zeroext %2, ptr nofree noundef readonly byval(%"class.v8::internal::wasm::WasmInitExpr") align 8 captures(none) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.5 = alloca [35 x i8], align 1            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.5, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.5.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmGlobalEE9push_backEOS4_.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 40
  %i.m = add nsw i64 %i.l, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmGlobalEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef %i.m)
  %.pre.i.i = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmGlobalEE9push_backEOS4_.exit

_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmGlobalEE9push_backEOS4_.exit: ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %i.b, %bb.a ], [ %.pre.i.i, %bb.b ] ; 4 uses
  %i.o = zext i1 %2 to i8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr %i.p, ptr %i.a, align 8
  store i32 %1, ptr %i.n, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i8 %i.o, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(35) %.sroa.5, i64 35, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = sdiv exact i64 %i.v, 40
  %i.x = trunc i64 %i.w to i32
  %i.y = add i32 %i.x, -1
  ret i32 %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm17WasmModuleBuilder22ExportImportedFunctionENS_4base6VectorIKcEEi(ptr noundef nonnull align 8 dereferenceable(468) %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp ult ptr %i.f, %i.h
  br i1 %i.i, label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmExportEE9push_backEOS4_.exit, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 24
  %i.q = add nsw i64 %i.p, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmExportEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef %i.q)
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmExportEE9push_backEOS4_.exit

_ZN2v88internal10ZoneVectorINS0_4wasm17WasmModuleBuilder10WasmExportEE9push_backEOS4_.exit: ; preds = %bb.a, %bb.b
  %i.r = phi ptr [ %i.f, %bb.a ], [ %.pre.i.i, %bb.b ] ; 5 uses
  %i.s = ptrtoint ptr %i.b to i64
  %i.t = ptrtoint ptr %i.d to i64
  %i.u = sub i64 %i.s, %i.t
  %.neg = sdiv exact i64 %i.u, -40
  %.neg2 = trunc i64 %.neg to i32
  %i.v = add i32 %3, %.neg2
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.w, ptr %i.e, align 8
  store ptr %1, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  store i32 %i.v, ptr %.sroa.61.0..sroa_idx, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferE(ptr nofree noundef nonnull readonly align 8 dereferenceable(468) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 4 uses
  %3 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 4 uses
  %4 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 4 uses
  %5 = alloca %"class.v8::internal::wasm::ValueType", align 4 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 250 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 103 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ugt ptr %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN2v88internal4wasm10ZoneBuffer9write_u32Ej.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = shl nsw i64 %i.k, 1                      ; 2 uses
  %i.m = load ptr, ptr %1, align 8                ; 3 uses
  %i.n = add i64 %i.l, 10
  %i.o = and i64 %i.n, -8                         ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = sub i64 %i.q, %i.s
  %i.u = icmp ugt i64 %i.o, %i.t
  br i1 %i.u, label %bb.c, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 noundef %i.o) #10
  %.pre.i.i.i.i = load i64, ptr %i.r, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i: ; preds = %bb.c, %bb.b
  %i.v = phi i64 [ %.pre.i.i.i.i, %bb.c ], [ %i.s, %bb.b ] ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr                 ; 4 uses
  %i.x = add i64 %i.v, %i.o
  store i64 %i.x, ptr %i.r, align 8
  %i.y = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.z = load ptr, ptr %i.a, align 8
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.y, i64 %i.ac, i1 false)
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds i8, ptr %i.w, i64 %i.ah ; 2 uses
  store ptr %i.ai, ptr %i.a, align 8
  store ptr %i.w, ptr %i.g, align 8
  %i.aj = getelementptr i8, ptr %i.w, i64 %i.l
  %i.ak = getelementptr i8, ptr %i.aj, i64 4
  store ptr %i.ak, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer9write_u32Ej.exit

_ZN2v88internal4wasm10ZoneBuffer9write_u32Ej.exit: ; preds = %bb.a, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i
  %i.al = phi ptr [ %i.b, %bb.a ], [ %i.ai, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i ]
  store i32 1836278016, ptr %i.al, align 1
  %i.am = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  store ptr %i.an, ptr %i.a, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.aq = icmp ugt ptr %i.ao, %i.ap
  br i1 %i.aq, label %bb.d, label %_ZN2v88internal4wasm10ZoneBuffer9write_u32Ej.exit331

bb.d:                                             ; preds = %_ZN2v88internal4wasm10ZoneBuffer9write_u32Ej.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = shl nsw i64 %i.av, 1                    ; 2 uses
  %i.ax = load ptr, ptr %1, align 8               ; 3 uses
  %i.ay = add i64 %i.aw, 10
  %i.az = and i64 %i.ay, -8                       ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = sub i64 %i.bb, %i.bd
  %i.bf = icmp ugt i64 %i.az, %i.be
  br i1 %i.bf, label %bb.e, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i329, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i64 noundef %i.az) #10
  %.pre.i.i.i.i330 = load i64, ptr %i.bc, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i329

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i329: ; preds = %bb.e, %bb.d
  %i.bg = phi i64 [ %.pre.i.i.i.i330, %bb.e ], [ %i.bd, %bb.d ] ; 2 uses
  %i.bh = inttoptr i64 %i.bg to ptr               ; 4 uses
  %i.bi = add i64 %i.bg, %i.az
  store i64 %i.bi, ptr %i.bc, align 8
  %i.bj = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.bk = load ptr, ptr %i.a, align 8
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bj to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.bj, i64 %i.bn, i1 false)
  %i.bo = load ptr, ptr %i.a, align 8
  %i.bp = load ptr, ptr %i.ar, align 8
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = getelementptr inbounds i8, ptr %i.bh, i64 %i.bs ; 2 uses
  store ptr %i.bt, ptr %i.a, align 8
  store ptr %i.bh, ptr %i.ar, align 8
  %i.bu = getelementptr i8, ptr %i.bh, i64 %i.aw
  %i.bv = getelementptr i8, ptr %i.bu, i64 4
  store ptr %i.bv, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer9write_u32Ej.exit331

_ZN2v88internal4wasm10ZoneBuffer9write_u32Ej.exit331: ; preds = %_ZN2v88internal4wasm10ZoneBuffer9write_u32Ej.exit, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i329
  %i.bw = phi ptr [ %i.an, %_ZN2v88internal4wasm10ZoneBuffer9write_u32Ej.exit ], [ %i.bt, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i329 ]
  store i32 1, ptr %i.bw, align 1
  %i.bx = load ptr, ptr %i.a, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store ptr %i.by, ptr %i.a, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = icmp eq ptr %i.ca, %i.cc
  br i1 %i.cd, label %bb.cn, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal4wasm10ZoneBuffer9write_u32Ej.exit331
  %i.ce = tail call fastcc noundef i64 @_ZN2v88internal4wasm12_GLOBAL__N_111EmitSectionENS1_11SectionCodeEPNS1_10ZoneBufferE(i8 noundef signext 1, ptr noundef nonnull %1) ; 2 uses
  %i.cf = load ptr, ptr %i.bz, align 8
  %i.cg = load ptr, ptr %i.cb, align 8
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = sdiv exact i64 %i.cj, 24
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.cm = load ptr, ptr %i.cl, align 8            ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8            ; 3 uses
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = sub i64 %i.cp, %i.cq
  %i.cs = ashr exact i64 %i.cr, 3
  %i.ct = add nsw i64 %i.cs, %i.ck                ; 2 uses
  %.not863 = icmp eq ptr %i.co, %i.cm
  br i1 %.not863, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.f
  %.0.lcssa = phi i64 [ %i.ct, %bb.f ], [ %i.db, %.lr.ph ]
  tail call void @_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %.0.lcssa)
  %i.cu = load ptr, ptr %i.cl, align 8
  %i.cv = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cw = icmp eq ptr %i.cu, %i.cv
  %spec.select787 = select i1 %i.cw, ptr null, ptr %i.cv ; 2 uses
  %i.cx = load ptr, ptr %i.bz, align 8
  %i.cy = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.not959 = icmp eq ptr %i.cx, %i.cy
  br i1 %.not959, label %.preheader, label %select.unfold.preheader.lr.ph

select.unfold.preheader.lr.ph:                    ; preds = %._crit_edge
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 60 uses
  br label %select.unfold.preheader

.lr.ph:                                           ; preds = %bb.f, %.lr.ph
  %.0865 = phi i64 [ %i.db, %.lr.ph ], [ %i.ct, %bb.f ]
  %.0250864 = phi ptr [ %i.dc, %.lr.ph ], [ %i.co, %bb.f ] ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0250864, i64 4
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4
  %i.da = zext i32 %.sroa.3.0.copyload to i64
  %i.db = sub i64 %.0865, %i.da                   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0250864, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dc, %i.cm
  br i1 %.not, label %._crit_edge, label %.lr.ph

select.unfold.preheader:                          ; preds = %select.unfold.preheader.lr.ph, %.loopexit835
  %i.dd = phi ptr [ %i.cy, %select.unfold.preheader.lr.ph ], [ %i.aau, %.loopexit835 ]
  %i.de = phi i64 [ 0, %select.unfold.preheader.lr.ph ], [ %i.aas, %.loopexit835 ]
  %.0251882 = phi ptr [ %spec.select787, %select.unfold.preheader.lr.ph ], [ %.1.lcssa, %.loopexit835 ] ; 2 uses
  %.0252881 = phi i32 [ 0, %select.unfold.preheader.lr.ph ], [ %i.aar, %.loopexit835 ] ; 2 uses
  %.not276866 = icmp eq ptr %.0251882, null
  br i1 %.not276866, label %.critedge, label %.lr.ph868

.preheader:                                       ; preds = %.loopexit835, %._crit_edge
  %.0251.lcssa = phi ptr [ %spec.select787, %._crit_edge ], [ %.1.lcssa, %.loopexit835 ] ; 2 uses
  %.not275884 = icmp eq ptr %.0251.lcssa, null
  br i1 %.not275884, label %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit415._crit_edge, label %.lr.ph886

.lr.ph886:                                        ; preds = %.preheader
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  br label %bb.ce

.lr.ph868:                                        ; preds = %select.unfold.preheader, %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit
  %.1867 = phi ptr [ %i.gq, %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit ], [ %.0251882, %select.unfold.preheader ] ; 5 uses
  %i.dg = load i32, ptr %.1867, align 4
  %i.dh = icmp eq i32 %.0252881, %i.dg
  br i1 %i.dh, label %bb.g, label %.critedge.loopexit

bb.g:                                             ; preds = %.lr.ph868
  %i.di = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dk = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.dl = icmp ugt ptr %i.dj, %i.dk
end_hunk_1
begin_hunk_2_@_ZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferE:bb.a
  %i.apx = ptrtoint ptr %i.apu to i64
  %i.apy = ptrtoint ptr %i.apw to i64
  %i.apz = sub i64 %i.apx, %i.apy                 ; 2 uses
  %i.aqa = shl nsw i64 %i.apz, 1                  ; 2 uses
  %i.aqb = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i450 = icmp eq i64 %i.apz, -1
  br i1 %.not.i.i.i450, label %bb.do, label %bb.dp, !prof !5

bb.do:                                            ; preds = %bb.dn
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.dp:                                            ; preds = %bb.dn
  %i.aqc = and i64 %i.aqa, -8
  %i.aqd = add i64 %i.aqc, 8                      ; 3 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqb, i64 24
  %i.aqf = load i64, ptr %i.aqe, align 8
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqb, i64 16 ; 3 uses
  %i.aqh = load i64, ptr %i.aqg, align 8          ; 2 uses
  %i.aqi = sub i64 %i.aqf, %i.aqh
  %i.aqj = icmp ugt i64 %i.aqd, %i.aqi
  br i1 %i.aqj, label %bb.dq, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i451, !prof !5

bb.dq:                                            ; preds = %bb.dp
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.aqb, i64 noundef %i.aqd) #10
  %.pre.i.i.i.i452 = load i64, ptr %i.aqg, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i451

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i451: ; preds = %bb.dq, %bb.dp
  %i.aqk = phi i64 [ %.pre.i.i.i.i452, %bb.dq ], [ %i.aqh, %bb.dp ] ; 2 uses
  %i.aql = inttoptr i64 %i.aqk to ptr             ; 4 uses
  %i.aqm = add i64 %i.aqk, %i.aqd
  store i64 %i.aqm, ptr %i.aqg, align 8
  %i.aqn = load ptr, ptr %i.aos, align 8          ; 2 uses
  %i.aqo = load ptr, ptr %i.a, align 8
  %i.aqp = ptrtoint ptr %i.aqo to i64
  %i.aqq = ptrtoint ptr %i.aqn to i64
  %i.aqr = sub i64 %i.aqp, %i.aqq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aql, ptr align 1 %i.aqn, i64 %i.aqr, i1 false)
  %i.aqs = load ptr, ptr %i.a, align 8
  %i.aqt = load ptr, ptr %i.aos, align 8
  %i.aqu = ptrtoint ptr %i.aqs to i64
  %i.aqv = ptrtoint ptr %i.aqt to i64
  %i.aqw = sub i64 %i.aqu, %i.aqv
  %i.aqx = getelementptr inbounds i8, ptr %i.aql, i64 %i.aqw
  store ptr %i.aql, ptr %i.aos, align 8
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aql, i64 %i.aqa
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 1
  store ptr %i.aqz, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit453

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit453: ; preds = %bb.dm, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i451
  %i.ara = phi ptr [ %i.aps, %bb.dm ], [ %i.aqx, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i451 ] ; 2 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 1
  store ptr %i.arb, ptr %i.a, align 8
  store i8 64, ptr %i.ara, align 1
  %i.arc = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arc, i64 1
  %i.are = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.arf = icmp ugt ptr %i.ard, %i.are
  br i1 %i.arf, label %bb.dr, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit458

bb.dr:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit453
  %i.arg = load ptr, ptr %i.aos, align 8
  %i.arh = ptrtoint ptr %i.are to i64
  %i.ari = ptrtoint ptr %i.arg to i64
  %i.arj = sub i64 %i.arh, %i.ari                 ; 2 uses
  %i.ark = shl nsw i64 %i.arj, 1                  ; 2 uses
  %i.arl = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i455 = icmp eq i64 %i.arj, -1
  br i1 %.not.i.i.i455, label %bb.ds, label %bb.dt, !prof !5

bb.ds:                                            ; preds = %bb.dr
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.dt:                                            ; preds = %bb.dr
  %i.arm = and i64 %i.ark, -8
  %i.arn = add i64 %i.arm, 8                      ; 3 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arl, i64 24
  %i.arp = load i64, ptr %i.aro, align 8
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arl, i64 16 ; 3 uses
  %i.arr = load i64, ptr %i.arq, align 8          ; 2 uses
  %i.ars = sub i64 %i.arp, %i.arr
  %i.art = icmp ugt i64 %i.arn, %i.ars
  br i1 %i.art, label %bb.du, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i456, !prof !5

bb.du:                                            ; preds = %bb.dt
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.arl, i64 noundef %i.arn) #10
  %.pre.i.i.i.i457 = load i64, ptr %i.arq, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i456

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i456: ; preds = %bb.du, %bb.dt
  %i.aru = phi i64 [ %.pre.i.i.i.i457, %bb.du ], [ %i.arr, %bb.dt ] ; 2 uses
  %i.arv = inttoptr i64 %i.aru to ptr             ; 4 uses
  %i.arw = add i64 %i.aru, %i.arn
  store i64 %i.arw, ptr %i.arq, align 8
  %i.arx = load ptr, ptr %i.aos, align 8          ; 2 uses
  %i.ary = load ptr, ptr %i.a, align 8
  %i.arz = ptrtoint ptr %i.ary to i64
  %i.asa = ptrtoint ptr %i.arx to i64
  %i.asb = sub i64 %i.arz, %i.asa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.arv, ptr align 1 %i.arx, i64 %i.asb, i1 false)
  %i.asc = load ptr, ptr %i.a, align 8
  %i.asd = load ptr, ptr %i.aos, align 8
  %i.ase = ptrtoint ptr %i.asc to i64
  %i.asf = ptrtoint ptr %i.asd to i64
  %i.asg = sub i64 %i.ase, %i.asf
  %i.ash = getelementptr inbounds i8, ptr %i.arv, i64 %i.asg
  store ptr %i.arv, ptr %i.aos, align 8
  %i.asi = getelementptr inbounds nuw i8, ptr %i.arv, i64 %i.ark
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 1
  store ptr %i.asj, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit458

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit458: ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit453, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i456
  %i.ask = phi ptr [ %i.arc, %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit453 ], [ %i.ash, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i456 ] ; 2 uses
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ask, i64 1
  store ptr %i.asl, ptr %i.a, align 8
  store i8 0, ptr %i.ask, align 1
  br label %bb.dv

bb.dv:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit458, %bb.dl
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_114WriteValueTypeEPNS1_10ZoneBufferERKNS1_9ValueTypeE(ptr noundef nonnull %1, ptr noundef nonnull align 4 dereferenceable(4) %.0265906)
  %i.asm = getelementptr inbounds nuw i8, ptr %.0265906, i64 14 ; 3 uses
  %i.asn = load i8, ptr %i.asm, align 2
  %i.aso = icmp eq i8 %i.asn, 1
  %i.asp = select i1 %i.aso, i8 4, i8 0
  %i.asq = getelementptr inbounds nuw i8, ptr %.0265906, i64 13
  %i.asr = load i8, ptr %i.asq, align 1, !range !17, !noundef !18
  %i.ass = shl nuw nsw i8 %i.asr, 1
  %i.ast = or disjoint i8 %i.asp, %i.ass
  %i.asu = getelementptr inbounds nuw i8, ptr %.0265906, i64 12 ; 2 uses
  %i.asv = load i8, ptr %i.asu, align 4, !range !17, !noundef !18
  %i.asw = or disjoint i8 %i.ast, %i.asv
  %i.asx = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 1
  %i.asz = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.ata = icmp ugt ptr %i.asy, %i.asz
  br i1 %i.ata, label %bb.dw, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit463

bb.dw:                                            ; preds = %bb.dv
  %i.atb = load ptr, ptr %i.aos, align 8
  %i.atc = ptrtoint ptr %i.asz to i64
  %i.atd = ptrtoint ptr %i.atb to i64
  %i.ate = sub i64 %i.atc, %i.atd                 ; 2 uses
  %i.atf = shl nsw i64 %i.ate, 1                  ; 2 uses
  %i.atg = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i460 = icmp eq i64 %i.ate, -1
  br i1 %.not.i.i.i460, label %bb.dx, label %bb.dy, !prof !5

bb.dx:                                            ; preds = %bb.dw
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.dy:                                            ; preds = %bb.dw
  %i.ath = and i64 %i.atf, -8
  %i.ati = add i64 %i.ath, 8                      ; 3 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %i.atg, i64 24
  %i.atk = load i64, ptr %i.atj, align 8
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atg, i64 16 ; 3 uses
  %i.atm = load i64, ptr %i.atl, align 8          ; 2 uses
  %i.atn = sub i64 %i.atk, %i.atm
  %i.ato = icmp ugt i64 %i.ati, %i.atn
  br i1 %i.ato, label %bb.dz, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i461, !prof !5

bb.dz:                                            ; preds = %bb.dy
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.atg, i64 noundef %i.ati) #10
  %.pre.i.i.i.i462 = load i64, ptr %i.atl, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i461

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i461: ; preds = %bb.dz, %bb.dy
  %i.atp = phi i64 [ %.pre.i.i.i.i462, %bb.dz ], [ %i.atm, %bb.dy ] ; 2 uses
  %i.atq = inttoptr i64 %i.atp to ptr             ; 4 uses
  %i.atr = add i64 %i.atp, %i.ati
  store i64 %i.atr, ptr %i.atl, align 8
  %i.ats = load ptr, ptr %i.aos, align 8          ; 2 uses
  %i.att = load ptr, ptr %i.a, align 8
  %i.atu = ptrtoint ptr %i.att to i64
  %i.atv = ptrtoint ptr %i.ats to i64
  %i.atw = sub i64 %i.atu, %i.atv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.atq, ptr align 1 %i.ats, i64 %i.atw, i1 false)
  %i.atx = load ptr, ptr %i.a, align 8
  %i.aty = load ptr, ptr %i.aos, align 8
  %i.atz = ptrtoint ptr %i.atx to i64
  %i.aua = ptrtoint ptr %i.aty to i64
  %i.aub = sub i64 %i.atz, %i.aua
  %i.auc = getelementptr inbounds i8, ptr %i.atq, i64 %i.aub
  store ptr %i.atq, ptr %i.aos, align 8
  %i.aud = getelementptr inbounds nuw i8, ptr %i.atq, i64 %i.atf
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 1
  store ptr %i.aue, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit463

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit463: ; preds = %bb.dv, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i461
  %i.auf = phi ptr [ %i.asx, %bb.dv ], [ %i.auc, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i461 ] ; 2 uses
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 1
  store ptr %i.aug, ptr %i.a, align 8
  store i8 %i.asw, ptr %i.auf, align 1
  %i.auh = getelementptr inbounds nuw i8, ptr %.0265906, i64 4
  %i.aui = load i32, ptr %i.auh, align 4          ; 3 uses
  %.val323.val = load i8, ptr %i.asm, align 2
  %i.auj = icmp eq i8 %.val323.val, 1
  br i1 %i.auj, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit463
  %i.auk = zext i32 %i.aui to i64                 ; 2 uses
  %i.aul = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %i.aul, i64 10
  %i.aun = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.auo = icmp ugt ptr %i.aum, %i.aun
  br i1 %i.auo, label %bb.eb, label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i

bb.eb:                                            ; preds = %bb.ea
  %i.aup = load ptr, ptr %i.aos, align 8
  %i.auq = ptrtoint ptr %i.aun to i64
  %i.aur = ptrtoint ptr %i.aup to i64
  %i.aus = sub i64 %i.auq, %i.aur
  %i.aut = shl nsw i64 %i.aus, 1                  ; 2 uses
  %i.auu = load ptr, ptr %1, align 8              ; 3 uses
  %i.auv = and i64 %i.aut, -8
  %i.auw = add i64 %i.auv, 16                     ; 3 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auu, i64 24
  %i.auy = load i64, ptr %i.aux, align 8
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auu, i64 16 ; 3 uses
  %i.ava = load i64, ptr %i.auz, align 8          ; 2 uses
  %i.avb = sub i64 %i.auy, %i.ava
  %i.avc = icmp ugt i64 %i.auw, %i.avb
  br i1 %i.avc, label %bb.ec, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i, !prof !5

bb.ec:                                            ; preds = %bb.eb
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.auu, i64 noundef %i.auw) #10
  %.pre.i.i.i.i.i = load i64, ptr %i.auz, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i: ; preds = %bb.ec, %bb.eb
  %i.avd = phi i64 [ %.pre.i.i.i.i.i, %bb.ec ], [ %i.ava, %bb.eb ] ; 2 uses
  %i.ave = inttoptr i64 %i.avd to ptr             ; 4 uses
  %i.avf = add i64 %i.avd, %i.auw
  store i64 %i.avf, ptr %i.auz, align 8
  %i.avg = load ptr, ptr %i.aos, align 8          ; 2 uses
  %i.avh = load ptr, ptr %i.a, align 8
  %i.avi = ptrtoint ptr %i.avh to i64
  %i.avj = ptrtoint ptr %i.avg to i64
  %i.avk = sub i64 %i.avi, %i.avj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ave, ptr align 1 %i.avg, i64 %i.avk, i1 false)
  %i.avl = load ptr, ptr %i.a, align 8
  %i.avm = load ptr, ptr %i.aos, align 8
  %i.avn = ptrtoint ptr %i.avl to i64
  %i.avo = ptrtoint ptr %i.avm to i64
  %i.avp = sub i64 %i.avn, %i.avo
  %i.avq = getelementptr inbounds i8, ptr %i.ave, i64 %i.avp ; 2 uses
  store ptr %i.avq, ptr %i.a, align 8
  store ptr %i.ave, ptr %i.aos, align 8
  %i.avr = getelementptr i8, ptr %i.ave, i64 %i.aut
  %i.avs = getelementptr i8, ptr %i.avr, i64 10
  store ptr %i.avs, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i

_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i: ; preds = %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i, %bb.ea
  %i.avt = phi ptr [ %i.aul, %bb.ea ], [ %i.avq, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i ]
  %i.avu = icmp ugt i32 %i.aui, 127
  br i1 %i.avu, label %.lr.ph.i.i.i.a, label %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i

.lr.ph.i.i.i.a:                                   ; preds = %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i, %.lr.ph.i.i.i.a
  %.05.i.i.i = phi i64 [ %i.avz, %.lr.ph.i.i.i.a ], [ %i.auk, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i ] ; 3 uses
  %i.avv = trunc i64 %.05.i.i.i to i8
  %i.avw = or i8 %i.avv, -128
  %i.avx = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avx, i64 1
  store ptr %i.avy, ptr %i.a, align 8
  store i8 %i.avw, ptr %i.avx, align 1
  %i.avz = lshr i64 %.05.i.i.i, 7                 ; 2 uses
  %i.awa = icmp samesign ugt i64 %.05.i.i.i, 16383
  br i1 %i.awa, label %.lr.ph.i.i.i.a, label %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i, !llvm.loop !10

_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.a
  %.pre.i.i = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i

_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i: ; preds = %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i
  %i.awb = phi ptr [ %i.avt, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i ], [ %.pre.i.i, %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i ] ; 2 uses
  %.0.lcssa.i.i.i = phi i64 [ %i.auk, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i ], [ %i.avz, %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i ]
  %i.awc = trunc nuw nsw i64 %.0.lcssa.i.i.i to i8
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awb, i64 1
  store ptr %i.awd, ptr %i.a, align 8
  store i8 %i.awc, ptr %i.awb, align 1
  br label %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit"

bb.ed:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit463
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.aui)
  br label %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit"

"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit": ; preds = %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i, %bb.ed
  %i.awe = load i8, ptr %i.asu, align 4, !range !17, !noundef !18
  %i.awf = trunc nuw i8 %i.awe to i1
  br i1 %i.awf, label %bb.ee, label %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit473"

bb.ee:                                            ; preds = %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit"
  %i.awg = getelementptr inbounds nuw i8, ptr %.0265906, i64 8
  %i.awh = load i32, ptr %i.awg, align 8          ; 3 uses
  %.val321.val = load i8, ptr %i.asm, align 2
  %i.awi = icmp eq i8 %.val321.val, 1
  br i1 %i.awi, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  %i.awj = zext i32 %i.awh to i64                 ; 2 uses
  %i.awk = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awk, i64 10
  %i.awm = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.awn = icmp ugt ptr %i.awl, %i.awm
  br i1 %i.awn, label %bb.eg, label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i464

bb.eg:                                            ; preds = %bb.ef
  %i.awo = load ptr, ptr %i.aos, align 8
  %i.awp = ptrtoint ptr %i.awm to i64
  %i.awq = ptrtoint ptr %i.awo to i64
  %i.awr = sub i64 %i.awp, %i.awq
  %i.aws = shl nsw i64 %i.awr, 1                  ; 2 uses
  %i.awt = load ptr, ptr %1, align 8              ; 3 uses
  %i.awu = and i64 %i.aws, -8
  %i.awv = add i64 %i.awu, 16                     ; 3 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awt, i64 24
  %i.awx = load i64, ptr %i.aww, align 8
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awt, i64 16 ; 3 uses
  %i.awz = load i64, ptr %i.awy, align 8          ; 2 uses
  %i.axa = sub i64 %i.awx, %i.awz
  %i.axb = icmp ugt i64 %i.awv, %i.axa
  br i1 %i.axb, label %bb.eh, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i471, !prof !5

bb.eh:                                            ; preds = %bb.eg
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.awt, i64 noundef %i.awv) #10
  %.pre.i.i.i.i.i472 = load i64, ptr %i.awy, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i471

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i471: ; preds = %bb.eh, %bb.eg
  %i.axc = phi i64 [ %.pre.i.i.i.i.i472, %bb.eh ], [ %i.awz, %bb.eg ] ; 2 uses
  %i.axd = inttoptr i64 %i.axc to ptr             ; 4 uses
  %i.axe = add i64 %i.axc, %i.awv
  store i64 %i.axe, ptr %i.awy, align 8
  %i.axf = load ptr, ptr %i.aos, align 8          ; 2 uses
  %i.axg = load ptr, ptr %i.a, align 8
  %i.axh = ptrtoint ptr %i.axg to i64
  %i.axi = ptrtoint ptr %i.axf to i64
  %i.axj = sub i64 %i.axh, %i.axi
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.axd, ptr align 1 %i.axf, i64 %i.axj, i1 false)
  %i.axk = load ptr, ptr %i.a, align 8
  %i.axl = load ptr, ptr %i.aos, align 8
  %i.axm = ptrtoint ptr %i.axk to i64
  %i.axn = ptrtoint ptr %i.axl to i64
  %i.axo = sub i64 %i.axm, %i.axn
  %i.axp = getelementptr inbounds i8, ptr %i.axd, i64 %i.axo ; 2 uses
  store ptr %i.axp, ptr %i.a, align 8
  store ptr %i.axd, ptr %i.aos, align 8
  %i.axq = getelementptr i8, ptr %i.axd, i64 %i.aws
  %i.axr = getelementptr i8, ptr %i.axq, i64 10
  store ptr %i.axr, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i464

_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i464: ; preds = %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i471, %bb.ef
  %i.axs = phi ptr [ %i.awk, %bb.ef ], [ %i.axp, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i471 ]
  %i.axt = icmp ugt i32 %i.awh, 127
  br i1 %i.axt, label %.lr.ph.i.i.i467.a, label %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i465

.lr.ph.i.i.i467.a:                                ; preds = %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i464, %.lr.ph.i.i.i467.a
  %.05.i.i.i468 = phi i64 [ %i.axy, %.lr.ph.i.i.i467.a ], [ %i.awj, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i464 ] ; 3 uses
  %i.axu = trunc i64 %.05.i.i.i468 to i8
  %i.axv = or i8 %i.axu, -128
  %i.axw = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axw, i64 1
  store ptr %i.axx, ptr %i.a, align 8
  store i8 %i.axv, ptr %i.axw, align 1
  %i.axy = lshr i64 %.05.i.i.i468, 7              ; 2 uses
  %i.axz = icmp samesign ugt i64 %.05.i.i.i468, 16383
  br i1 %i.axz, label %.lr.ph.i.i.i467.a, label %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i469, !llvm.loop !10

_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i469: ; preds = %.lr.ph.i.i.i467.a
  %.pre.i.i470 = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i465

_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i465: ; preds = %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i469, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i464
  %i.aya = phi ptr [ %i.axs, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i464 ], [ %.pre.i.i470, %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i469 ] ; 2 uses
  %.0.lcssa.i.i.i466 = phi i64 [ %i.awj, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i464 ], [ %i.axy, %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i469 ]
  %i.ayb = trunc nuw nsw i64 %.0.lcssa.i.i.i466 to i8
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.aya, i64 1
  store ptr %i.ayc, ptr %i.a, align 8
  store i8 %i.ayb, ptr %i.aya, align 1
  br label %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit473"

bb.ei:                                            ; preds = %bb.ee
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.awh)
  br label %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit473"

"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit473": ; preds = %bb.ei, %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i465, %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit"
  %i.ayd = load i8, ptr %i.app, align 8, !range !17, !noundef !18
  %i.aye = trunc nuw i8 %i.ayd to i1
  br i1 %i.aye, label %bb.ej, label %bb.eo

bb.ej:                                            ; preds = %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit473"
  call fastcc void @_ZN2v88internal4wasm12_GLOBAL__N_136WriteInitializerExpressionWithoutEndEPNS1_10ZoneBufferERKNS1_12WasmInitExprE(ptr noundef nonnull %1, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.apo)
  %i.ayf = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 1
  %i.ayh = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.ayi = icmp ugt ptr %i.ayg, %i.ayh
  br i1 %i.ayi, label %bb.ek, label %_ZN2v88internal4wasm12_GLOBAL__N_126WriteInitializerExpressionEPNS1_10ZoneBufferERKNS1_12WasmInitExprE.exit

bb.ek:                                            ; preds = %bb.ej
  %i.ayj = load ptr, ptr %i.aos, align 8
  %i.ayk = ptrtoint ptr %i.ayh to i64
  %i.ayl = ptrtoint ptr %i.ayj to i64
  %i.aym = sub i64 %i.ayk, %i.ayl                 ; 2 uses
  %i.ayn = shl nsw i64 %i.aym, 1                  ; 2 uses
  %i.ayo = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.aym, -1
  br i1 %.not.i.i.i.i, label %bb.el, label %bb.em, !prof !5

bb.el:                                            ; preds = %bb.ek
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.em:                                            ; preds = %bb.ek
  %i.ayp = and i64 %i.ayn, -8
  %i.ayq = add i64 %i.ayp, 8                      ; 3 uses
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.ayo, i64 24
  %i.ays = load i64, ptr %i.ayr, align 8
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayo, i64 16 ; 3 uses
  %i.ayu = load i64, ptr %i.ayt, align 8          ; 2 uses
  %i.ayv = sub i64 %i.ays, %i.ayu
  %i.ayw = icmp ugt i64 %i.ayq, %i.ayv
  br i1 %i.ayw, label %bb.en, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i474, !prof !5

bb.en:                                            ; preds = %bb.em
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ayo, i64 noundef %i.ayq) #10
  %.pre.i.i.i.i.i475 = load i64, ptr %i.ayt, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i474

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i474: ; preds = %bb.en, %bb.em
  %i.ayx = phi i64 [ %.pre.i.i.i.i.i475, %bb.en ], [ %i.ayu, %bb.em ] ; 2 uses
  %i.ayy = inttoptr i64 %i.ayx to ptr             ; 4 uses
  %i.ayz = add i64 %i.ayx, %i.ayq
  store i64 %i.ayz, ptr %i.ayt, align 8
  %i.aza = load ptr, ptr %i.aos, align 8          ; 2 uses
  %i.azb = load ptr, ptr %i.a, align 8
  %i.azc = ptrtoint ptr %i.azb to i64
  %i.azd = ptrtoint ptr %i.aza to i64
  %i.aze = sub i64 %i.azc, %i.azd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ayy, ptr align 1 %i.aza, i64 %i.aze, i1 false)
  %i.azf = load ptr, ptr %i.a, align 8
  %i.azg = load ptr, ptr %i.aos, align 8
  %i.azh = ptrtoint ptr %i.azf to i64
  %i.azi = ptrtoint ptr %i.azg to i64
  %i.azj = sub i64 %i.azh, %i.azi
  %i.azk = getelementptr inbounds i8, ptr %i.ayy, i64 %i.azj
  store ptr %i.ayy, ptr %i.aos, align 8
  %i.azl = getelementptr inbounds nuw i8, ptr %i.ayy, i64 %i.ayn
  %i.azm = getelementptr inbounds nuw i8, ptr %i.azl, i64 1
  store ptr %i.azm, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm12_GLOBAL__N_126WriteInitializerExpressionEPNS1_10ZoneBufferERKNS1_12WasmInitExprE.exit

_ZN2v88internal4wasm12_GLOBAL__N_126WriteInitializerExpressionEPNS1_10ZoneBufferERKNS1_12WasmInitExprE.exit: ; preds = %bb.ej, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i474
  %i.azn = phi ptr [ %i.ayf, %bb.ej ], [ %i.azk, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i474 ] ; 2 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 1
  store ptr %i.azo, ptr %i.a, align 8
  store i8 11, ptr %i.azn, align 1
  br label %bb.eo

bb.eo:                                            ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_126WriteInitializerExpressionEPNS1_10ZoneBufferERKNS1_12WasmInitExprE.exit, %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_1clEj.exit473"
  %i.azp = getelementptr inbounds nuw i8, ptr %.0265906, i64 56 ; 2 uses
  %.not283 = icmp eq ptr %i.azp, %i.aor
  br i1 %.not283, label %._crit_edge909, label %bb.dl

bb.ep:                                            ; preds = %._crit_edge909, %bb.dj
  %i.azq = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.azr = load ptr, ptr %i.azq, align 8
  %i.azs = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.azt = load ptr, ptr %i.azs, align 8
  %i.azu = icmp eq ptr %i.azr, %i.azt
  br i1 %i.azu, label %bb.ff, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.azv = call fastcc noundef i64 @_ZN2v88internal4wasm12_GLOBAL__N_111EmitSectionENS1_11SectionCodeEPNS1_10ZoneBufferE(i8 noundef signext 5, ptr noundef nonnull %1) ; 2 uses
  %i.azw = load ptr, ptr %i.azq, align 8
  %i.azx = load ptr, ptr %i.azs, align 8
  %i.azy = ptrtoint ptr %i.azw to i64
  %i.azz = ptrtoint ptr %i.azx to i64
  %i.baa = sub i64 %i.azy, %i.azz
  %i.bab = sdiv exact i64 %i.baa, 12
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bab)
  %i.bac = load ptr, ptr %i.azs, align 8          ; 2 uses
  %i.bad = load ptr, ptr %i.azq, align 8          ; 2 uses
  %.not284910 = icmp eq ptr %i.bac, %i.bad
  br i1 %.not284910, label %._crit_edge914, label %.lr.ph913

.lr.ph913:                                        ; preds = %bb.eq
  %i.bae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 12 uses
  br label %bb.er

._crit_edge914:                                   ; preds = %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit503", %bb.eq
  %i.baf = getelementptr i8, ptr %1, i64 8
  %.val311 = load ptr, ptr %i.baf, align 8        ; 2 uses
  %.val312 = load ptr, ptr %i.a, align 8
  %i.bag = ptrtoint ptr %.val312 to i64
  %i.bah = ptrtoint ptr %.val311 to i64
  %i.bai = add i64 %i.azv, %i.bah
  %i.baj = sub i64 %i.bag, %i.bai
  %i.bak = trunc i64 %i.baj to i32
  %i.bal = add i32 %i.bak, -5                     ; 5 uses
  %i.bam = getelementptr inbounds nuw i8, ptr %.val311, i64 %i.azv ; 5 uses
  %i.ban = lshr i32 %i.bal, 7
  %i.bao = trunc i32 %i.bal to i8
  %i.bap = or i8 %i.bao, -128
  %.112.i.i476 = getelementptr inbounds nuw i8, ptr %i.bam, i64 1
  store i8 %i.bap, ptr %i.bam, align 1
  %i.baq = lshr i32 %i.bal, 14
  %i.bar = trunc i32 %i.ban to i8
  %i.bas = or i8 %i.bar, -128
  %.112.1.i.i477 = getelementptr inbounds nuw i8, ptr %i.bam, i64 2
  store i8 %i.bas, ptr %.112.i.i476, align 1
  %i.bat = lshr i32 %i.bal, 21
  %i.bau = trunc i32 %i.baq to i8
  %i.bav = or i8 %i.bau, -128
  %.112.2.i.i478 = getelementptr inbounds nuw i8, ptr %i.bam, i64 3
  store i8 %i.bav, ptr %.112.1.i.i477, align 1
  %i.baw = lshr i32 %i.bal, 28
  %i.bax = trunc i32 %i.bat to i8
  %i.bay = or i8 %i.bax, -128
  %.112.3.i.i479 = getelementptr inbounds nuw i8, ptr %i.bam, i64 4
  store i8 %i.bay, ptr %.112.2.i.i478, align 1
  %i.baz = trunc nuw nsw i32 %i.baw to i8
  store i8 %i.baz, ptr %.112.3.i.i479, align 1
  br label %bb.ff

bb.er:                                            ; preds = %.lr.ph913, %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit503"
  %.0266911 = phi ptr [ %i.bac, %.lr.ph913 ], [ %i.bgq, %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit503" ] ; 6 uses
  %i.bba = getelementptr inbounds nuw i8, ptr %.0266911, i64 10 ; 3 uses
  %i.bbb = load i8, ptr %i.bba, align 2
  %i.bbc = icmp eq i8 %i.bbb, 1
  %i.bbd = select i1 %i.bbc, i8 4, i8 0
  %i.bbe = getelementptr inbounds nuw i8, ptr %.0266911, i64 9
  %i.bbf = load i8, ptr %i.bbe, align 1, !range !17, !noundef !18
  %i.bbg = shl nuw nsw i8 %i.bbf, 1
  %i.bbh = or disjoint i8 %i.bbd, %i.bbg
  %i.bbi = getelementptr inbounds nuw i8, ptr %.0266911, i64 8 ; 2 uses
  %i.bbj = load i8, ptr %i.bbi, align 4, !range !17, !noundef !18
  %i.bbk = or disjoint i8 %i.bbh, %i.bbj
  %i.bbl = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.bbl, i64 1
  %i.bbn = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bbo = icmp ugt ptr %i.bbm, %i.bbn
  br i1 %i.bbo, label %bb.es, label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit484

bb.es:                                            ; preds = %bb.er
  %i.bbp = load ptr, ptr %i.bae, align 8
  %i.bbq = ptrtoint ptr %i.bbn to i64
  %i.bbr = ptrtoint ptr %i.bbp to i64
  %i.bbs = sub i64 %i.bbq, %i.bbr                 ; 2 uses
  %i.bbt = shl nsw i64 %i.bbs, 1                  ; 2 uses
  %i.bbu = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i481 = icmp eq i64 %i.bbs, -1
  br i1 %.not.i.i.i481, label %bb.et, label %bb.eu, !prof !5

bb.et:                                            ; preds = %bb.es
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.eu:                                            ; preds = %bb.es
  %i.bbv = and i64 %i.bbt, -8
  %i.bbw = add i64 %i.bbv, 8                      ; 3 uses
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbu, i64 24
  %i.bby = load i64, ptr %i.bbx, align 8
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bbu, i64 16 ; 3 uses
  %i.bca = load i64, ptr %i.bbz, align 8          ; 2 uses
  %i.bcb = sub i64 %i.bby, %i.bca
  %i.bcc = icmp ugt i64 %i.bbw, %i.bcb
  br i1 %i.bcc, label %bb.ev, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i482, !prof !5

bb.ev:                                            ; preds = %bb.eu
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bbu, i64 noundef %i.bbw) #10
  %.pre.i.i.i.i483 = load i64, ptr %i.bbz, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i482

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i482: ; preds = %bb.ev, %bb.eu
  %i.bcd = phi i64 [ %.pre.i.i.i.i483, %bb.ev ], [ %i.bca, %bb.eu ] ; 2 uses
  %i.bce = inttoptr i64 %i.bcd to ptr             ; 4 uses
  %i.bcf = add i64 %i.bcd, %i.bbw
  store i64 %i.bcf, ptr %i.bbz, align 8
  %i.bcg = load ptr, ptr %i.bae, align 8          ; 2 uses
  %i.bch = load ptr, ptr %i.a, align 8
  %i.bci = ptrtoint ptr %i.bch to i64
  %i.bcj = ptrtoint ptr %i.bcg to i64
  %i.bck = sub i64 %i.bci, %i.bcj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bce, ptr align 1 %i.bcg, i64 %i.bck, i1 false)
  %i.bcl = load ptr, ptr %i.a, align 8
  %i.bcm = load ptr, ptr %i.bae, align 8
  %i.bcn = ptrtoint ptr %i.bcl to i64
  %i.bco = ptrtoint ptr %i.bcm to i64
  %i.bcp = sub i64 %i.bcn, %i.bco
  %i.bcq = getelementptr inbounds i8, ptr %i.bce, i64 %i.bcp
  store ptr %i.bce, ptr %i.bae, align 8
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bce, i64 %i.bbt
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bcr, i64 1
  store ptr %i.bcs, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit484

_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit484: ; preds = %bb.er, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i482
  %i.bct = phi ptr [ %i.bbl, %bb.er ], [ %i.bcq, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i482 ] ; 2 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bct, i64 1
  store ptr %i.bcu, ptr %i.a, align 8
  store i8 %i.bbk, ptr %i.bct, align 1
  %i.bcv = load i32, ptr %.0266911, align 4       ; 3 uses
  %.val327.val = load i8, ptr %i.bba, align 2
  %i.bcw = icmp eq i8 %.val327.val, 1
  br i1 %i.bcw, label %bb.ew, label %bb.ez

bb.ew:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit484
  %i.bcx = zext i32 %i.bcv to i64                 ; 2 uses
  %i.bcy = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcy, i64 10
  %i.bda = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bdb = icmp ugt ptr %i.bcz, %i.bda
  br i1 %i.bdb, label %bb.ex, label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i485

bb.ex:                                            ; preds = %bb.ew
  %i.bdc = load ptr, ptr %i.bae, align 8
  %i.bdd = ptrtoint ptr %i.bda to i64
  %i.bde = ptrtoint ptr %i.bdc to i64
  %i.bdf = sub i64 %i.bdd, %i.bde
  %i.bdg = shl nsw i64 %i.bdf, 1                  ; 2 uses
  %i.bdh = load ptr, ptr %1, align 8              ; 3 uses
  %i.bdi = and i64 %i.bdg, -8
  %i.bdj = add i64 %i.bdi, 16                     ; 3 uses
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdh, i64 24
  %i.bdl = load i64, ptr %i.bdk, align 8
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdh, i64 16 ; 3 uses
  %i.bdn = load i64, ptr %i.bdm, align 8          ; 2 uses
  %i.bdo = sub i64 %i.bdl, %i.bdn
  %i.bdp = icmp ugt i64 %i.bdj, %i.bdo
  br i1 %i.bdp, label %bb.ey, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i492, !prof !5

bb.ey:                                            ; preds = %bb.ex
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bdh, i64 noundef %i.bdj) #10
  %.pre.i.i.i.i.i493 = load i64, ptr %i.bdm, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i492

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i492: ; preds = %bb.ey, %bb.ex
  %i.bdq = phi i64 [ %.pre.i.i.i.i.i493, %bb.ey ], [ %i.bdn, %bb.ex ] ; 2 uses
  %i.bdr = inttoptr i64 %i.bdq to ptr             ; 4 uses
  %i.bds = add i64 %i.bdq, %i.bdj
  store i64 %i.bds, ptr %i.bdm, align 8
  %i.bdt = load ptr, ptr %i.bae, align 8          ; 2 uses
  %i.bdu = load ptr, ptr %i.a, align 8
  %i.bdv = ptrtoint ptr %i.bdu to i64
  %i.bdw = ptrtoint ptr %i.bdt to i64
  %i.bdx = sub i64 %i.bdv, %i.bdw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bdr, ptr align 1 %i.bdt, i64 %i.bdx, i1 false)
  %i.bdy = load ptr, ptr %i.a, align 8
  %i.bdz = load ptr, ptr %i.bae, align 8
  %i.bea = ptrtoint ptr %i.bdy to i64
  %i.beb = ptrtoint ptr %i.bdz to i64
  %i.bec = sub i64 %i.bea, %i.beb
  %i.bed = getelementptr inbounds i8, ptr %i.bdr, i64 %i.bec ; 2 uses
  store ptr %i.bed, ptr %i.a, align 8
  store ptr %i.bdr, ptr %i.bae, align 8
  %i.bee = getelementptr i8, ptr %i.bdr, i64 %i.bdg
  %i.bef = getelementptr i8, ptr %i.bee, i64 10
  store ptr %i.bef, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i485

_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i485: ; preds = %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i492, %bb.ew
  %i.beg = phi ptr [ %i.bcy, %bb.ew ], [ %i.bed, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i492 ]
  %i.beh = icmp ugt i32 %i.bcv, 127
  br i1 %i.beh, label %.lr.ph.i.i.i488.a, label %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i486

.lr.ph.i.i.i488.a:                                ; preds = %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i485, %.lr.ph.i.i.i488.a
  %.05.i.i.i489 = phi i64 [ %i.bem, %.lr.ph.i.i.i488.a ], [ %i.bcx, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i485 ] ; 3 uses
  %i.bei = trunc i64 %.05.i.i.i489 to i8
  %i.bej = or i8 %i.bei, -128
  %i.bek = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bek, i64 1
  store ptr %i.bel, ptr %i.a, align 8
  store i8 %i.bej, ptr %i.bek, align 1
  %i.bem = lshr i64 %.05.i.i.i489, 7              ; 2 uses
  %i.ben = icmp samesign ugt i64 %.05.i.i.i489, 16383
  br i1 %i.ben, label %.lr.ph.i.i.i488.a, label %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i490, !llvm.loop !10

_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i490: ; preds = %.lr.ph.i.i.i488.a
  %.pre.i.i491 = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i486

_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i486: ; preds = %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i490, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i485
  %i.beo = phi ptr [ %i.beg, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i485 ], [ %.pre.i.i491, %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i490 ] ; 2 uses
  %.0.lcssa.i.i.i487 = phi i64 [ %i.bcx, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i485 ], [ %i.bem, %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i490 ]
  %i.bep = trunc nuw nsw i64 %.0.lcssa.i.i.i487 to i8
  %i.beq = getelementptr inbounds nuw i8, ptr %i.beo, i64 1
  store ptr %i.beq, ptr %i.a, align 8
  store i8 %i.bep, ptr %i.beo, align 1
  br label %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit"

bb.ez:                                            ; preds = %_ZN2v88internal4wasm10ZoneBuffer8write_u8Eh.exit484
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.bcv)
  br label %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit"

"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit": ; preds = %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i486, %bb.ez
  %i.ber = load i8, ptr %i.bbi, align 4, !range !17, !noundef !18
  %i.bes = trunc nuw i8 %i.ber to i1
  br i1 %i.bes, label %bb.fa, label %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit503"

bb.fa:                                            ; preds = %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit"
  %i.bet = getelementptr inbounds nuw i8, ptr %.0266911, i64 4
  %i.beu = load i32, ptr %i.bet, align 4          ; 3 uses
  %.val325.val = load i8, ptr %i.bba, align 2
  %i.bev = icmp eq i8 %.val325.val, 1
  br i1 %i.bev, label %bb.fb, label %bb.fe

bb.fb:                                            ; preds = %bb.fa
  %i.bew = zext i32 %i.beu to i64                 ; 2 uses
  %i.bex = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.bey = getelementptr inbounds nuw i8, ptr %i.bex, i64 10
  %i.bez = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bfa = icmp ugt ptr %i.bey, %i.bez
  br i1 %i.bfa, label %bb.fc, label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i494

bb.fc:                                            ; preds = %bb.fb
  %i.bfb = load ptr, ptr %i.bae, align 8
  %i.bfc = ptrtoint ptr %i.bez to i64
  %i.bfd = ptrtoint ptr %i.bfb to i64
  %i.bfe = sub i64 %i.bfc, %i.bfd
  %i.bff = shl nsw i64 %i.bfe, 1                  ; 2 uses
  %i.bfg = load ptr, ptr %1, align 8              ; 3 uses
  %i.bfh = and i64 %i.bff, -8
  %i.bfi = add i64 %i.bfh, 16                     ; 3 uses
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfg, i64 24
  %i.bfk = load i64, ptr %i.bfj, align 8
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bfg, i64 16 ; 3 uses
  %i.bfm = load i64, ptr %i.bfl, align 8          ; 2 uses
  %i.bfn = sub i64 %i.bfk, %i.bfm
  %i.bfo = icmp ugt i64 %i.bfi, %i.bfn
  br i1 %i.bfo, label %bb.fd, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i501, !prof !5

bb.fd:                                            ; preds = %bb.fc
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bfg, i64 noundef %i.bfi) #10
  %.pre.i.i.i.i.i502 = load i64, ptr %i.bfl, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i501

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i501: ; preds = %bb.fd, %bb.fc
  %i.bfp = phi i64 [ %.pre.i.i.i.i.i502, %bb.fd ], [ %i.bfm, %bb.fc ] ; 2 uses
  %i.bfq = inttoptr i64 %i.bfp to ptr             ; 4 uses
  %i.bfr = add i64 %i.bfp, %i.bfi
  store i64 %i.bfr, ptr %i.bfl, align 8
  %i.bfs = load ptr, ptr %i.bae, align 8          ; 2 uses
  %i.bft = load ptr, ptr %i.a, align 8
  %i.bfu = ptrtoint ptr %i.bft to i64
  %i.bfv = ptrtoint ptr %i.bfs to i64
  %i.bfw = sub i64 %i.bfu, %i.bfv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bfq, ptr align 1 %i.bfs, i64 %i.bfw, i1 false)
  %i.bfx = load ptr, ptr %i.a, align 8
  %i.bfy = load ptr, ptr %i.bae, align 8
  %i.bfz = ptrtoint ptr %i.bfx to i64
  %i.bga = ptrtoint ptr %i.bfy to i64
  %i.bgb = sub i64 %i.bfz, %i.bga
  %i.bgc = getelementptr inbounds i8, ptr %i.bfq, i64 %i.bgb ; 2 uses
  store ptr %i.bgc, ptr %i.a, align 8
  store ptr %i.bfq, ptr %i.bae, align 8
  %i.bgd = getelementptr i8, ptr %i.bfq, i64 %i.bff
  %i.bge = getelementptr i8, ptr %i.bgd, i64 10
  store ptr %i.bge, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i494

_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i494: ; preds = %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i501, %bb.fb
  %i.bgf = phi ptr [ %i.bex, %bb.fb ], [ %i.bgc, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i.i501 ]
  %i.bgg = icmp ugt i32 %i.beu, 127
  br i1 %i.bgg, label %.lr.ph.i.i.i497.a, label %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i495

.lr.ph.i.i.i497.a:                                ; preds = %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i494, %.lr.ph.i.i.i497.a
  %.05.i.i.i498 = phi i64 [ %i.bgl, %.lr.ph.i.i.i497.a ], [ %i.bew, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i494 ] ; 3 uses
  %i.bgh = trunc i64 %.05.i.i.i498 to i8
  %i.bgi = or i8 %i.bgh, -128
  %i.bgj = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.bgk = getelementptr inbounds nuw i8, ptr %i.bgj, i64 1
  store ptr %i.bgk, ptr %i.a, align 8
  store i8 %i.bgi, ptr %i.bgj, align 1
  %i.bgl = lshr i64 %.05.i.i.i498, 7              ; 2 uses
  %i.bgm = icmp samesign ugt i64 %.05.i.i.i498, 16383
  br i1 %i.bgm, label %.lr.ph.i.i.i497.a, label %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i499, !llvm.loop !10

_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i499: ; preds = %.lr.ph.i.i.i497.a
  %.pre.i.i500 = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i495

_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i495: ; preds = %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i499, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i494
  %i.bgn = phi ptr [ %i.bgf, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i494 ], [ %.pre.i.i500, %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i499 ] ; 2 uses
  %.0.lcssa.i.i.i496 = phi i64 [ %i.bew, %_ZN2v88internal4wasm10ZoneBuffer11EnsureSpaceEm.exit.i.i494 ], [ %i.bgl, %_ZN2v88internal4wasm9LEBHelper10write_u64vEPPhm.exit.loopexit.i.i499 ]
  %i.bgo = trunc nuw nsw i64 %.0.lcssa.i.i.i496 to i8
  %i.bgp = getelementptr inbounds nuw i8, ptr %i.bgn, i64 1
  store ptr %i.bgp, ptr %i.a, align 8
  store i8 %i.bgo, ptr %i.bgn, align 1
  br label %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit503"

bb.fe:                                            ; preds = %bb.fa
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %i.beu)
  br label %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit503"

"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit503": ; preds = %bb.fe, %_ZN2v88internal4wasm10ZoneBuffer10write_u64vEm.exit.i495, %"_ZZNK2v88internal4wasm17WasmModuleBuilder7WriteToEPNS1_10ZoneBufferEENK3$_2clEj.exit"
  %i.bgq = getelementptr inbounds nuw i8, ptr %.0266911, i64 12 ; 2 uses
  %.not284 = icmp eq ptr %i.bgq, %i.bad
  br i1 %.not284, label %._crit_edge914, label %bb.er

bb.ff:                                            ; preds = %._crit_edge914, %bb.ep
  %i.bgr = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.bgs = load ptr, ptr %i.bgr, align 8
  %i.bgt = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.bgu = load ptr, ptr %i.bgt, align 8
  %i.bgv = icmp eq ptr %i.bgs, %i.bgu
  br i1 %i.bgv, label %bb.fm, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.bgw = call fastcc noundef i64 @_ZN2v88internal4wasm12_GLOBAL__N_111EmitSectionENS1_11SectionCodeEPNS1_10ZoneBufferE(i8 noundef signext 13, ptr noundef nonnull %1) ; 2 uses
  %i.bgx = load ptr, ptr %i.bgr, align 8
  %i.bgy = load ptr, ptr %i.bgt, align 8
  %i.bgz = ptrtoint ptr %i.bgx to i64
  %i.bha = ptrtoint ptr %i.bgy to i64
  %i.bhb = sub i64 %i.bgz, %i.bha
  %i.bhc = ashr exact i64 %i.bhb, 2
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bhc)
  %i.bhd = load ptr, ptr %i.bgt, align 8          ; 2 uses
  %i.bhe = load ptr, ptr %i.bgr, align 8          ; 2 uses
  %.not285915 = icmp eq ptr %i.bhd, %i.bhe
  br i1 %.not285915, label %._crit_edge919, label %.lr.ph918

.lr.ph918:                                        ; preds = %bb.fg
  %i.bhf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %bb.fh

._crit_edge919:                                   ; preds = %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit513, %bb.fg
  %i.bhg = getelementptr i8, ptr %1, i64 8
  %.val309 = load ptr, ptr %i.bhg, align 8        ; 2 uses
  %.val310 = load ptr, ptr %i.a, align 8
  %i.bhh = ptrtoint ptr %.val310 to i64
  %i.bhi = ptrtoint ptr %.val309 to i64
  %i.bhj = add i64 %i.bgw, %i.bhi
  %i.bhk = sub i64 %i.bhh, %i.bhj
  %i.bhl = trunc i64 %i.bhk to i32
  %i.bhm = add i32 %i.bhl, -5                     ; 5 uses
  %i.bhn = getelementptr inbounds nuw i8, ptr %.val309, i64 %i.bgw ; 5 uses
  %i.bho = lshr i32 %i.bhm, 7
  %i.bhp = trunc i32 %i.bhm to i8
  %i.bhq = or i8 %i.bhp, -128
  %.112.i.i504 = getelementptr inbounds nuw i8, ptr %i.bhn, i64 1
  store i8 %i.bhq, ptr %i.bhn, align 1
  %i.bhr = lshr i32 %i.bhm, 14
  %i.bhs = trunc i32 %i.bho to i8
  %i.bht = or i8 %i.bhs, -128
  %.112.1.i.i505 = getelementptr inbounds nuw i8, ptr %i.bhn, i64 2
  store i8 %i.bht, ptr %.112.i.i504, align 1
  %i.bhu = lshr i32 %i.bhm, 21
  %i.bhv = trunc i32 %i.bhr to i8
  %i.bhw = or i8 %i.bhv, -128
  %.112.2.i.i506 = getelementptr inbounds nuw i8, ptr %i.bhn, i64 3
  store i8 %i.bhw, ptr %.112.1.i.i505, align 1
  %i.bhx = lshr i32 %i.bhm, 28
  %i.bhy = trunc i32 %i.bhu to i8
  %i.bhz = or i8 %i.bhy, -128
  %.112.3.i.i507 = getelementptr inbounds nuw i8, ptr %i.bhn, i64 4
  store i8 %i.bhz, ptr %.112.2.i.i506, align 1
  %i.bia = trunc nuw nsw i32 %i.bhx to i8
  store i8 %i.bia, ptr %.112.3.i.i507, align 1
  br label %bb.fm

bb.fh:                                            ; preds = %.lr.ph918, %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit513
  %.0268916 = phi ptr [ %i.bhd, %.lr.ph918 ], [ %i.bjl, %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit513 ] ; 2 uses
  %.sroa.094.0.copyload = load i32, ptr %.0268916, align 4
  %i.bib = load ptr, ptr %i.a, align 8            ; 2 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bib, i64 5
  %i.bid = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.bie = icmp ugt ptr %i.bic, %i.bid
  br i1 %i.bie, label %bb.fi, label %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit513

bb.fi:                                            ; preds = %bb.fh
  %i.bif = load ptr, ptr %i.bhf, align 8
  %i.big = ptrtoint ptr %i.bid to i64
  %i.bih = ptrtoint ptr %i.bif to i64
  %i.bii = sub i64 %i.big, %i.bih
  %i.bij = shl nsw i64 %i.bii, 1                  ; 2 uses
  %i.bik = add i64 %i.bij, 5                      ; 2 uses
  %i.bil = load ptr, ptr %1, align 8              ; 3 uses
  %.not.i.i.i510 = icmp eq i64 %i.bik, -1
  br i1 %.not.i.i.i510, label %bb.fj, label %bb.fk, !prof !5

bb.fj:                                            ; preds = %bb.fi
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  unreachable

bb.fk:                                            ; preds = %bb.fi
  %i.bim = add i64 %i.bij, 12
  %i.bin = and i64 %i.bim, -8                     ; 3 uses
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bil, i64 24
  %i.bip = load i64, ptr %i.bio, align 8
  %i.biq = getelementptr inbounds nuw i8, ptr %i.bil, i64 16 ; 3 uses
  %i.bir = load i64, ptr %i.biq, align 8          ; 2 uses
  %i.bis = sub i64 %i.bip, %i.bir
  %i.bit = icmp ugt i64 %i.bin, %i.bis
  br i1 %i.bit, label %bb.fl, label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i511, !prof !5

bb.fl:                                            ; preds = %bb.fk
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bil, i64 noundef %i.bin) #10
  %.pre.i.i.i.i512 = load i64, ptr %i.biq, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i511

_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i511: ; preds = %bb.fl, %bb.fk
  %i.biu = phi i64 [ %.pre.i.i.i.i512, %bb.fl ], [ %i.bir, %bb.fk ] ; 2 uses
  %i.biv = inttoptr i64 %i.biu to ptr             ; 4 uses
  %i.biw = add i64 %i.biu, %i.bin
  store i64 %i.biw, ptr %i.biq, align 8
  %i.bix = load ptr, ptr %i.bhf, align 8          ; 2 uses
  %i.biy = load ptr, ptr %i.a, align 8
  %i.biz = ptrtoint ptr %i.biy to i64
  %i.bja = ptrtoint ptr %i.bix to i64
  %i.bjb = sub i64 %i.biz, %i.bja
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.biv, ptr align 1 %i.bix, i64 %i.bjb, i1 false)
  %i.bjc = load ptr, ptr %i.a, align 8
  %i.bjd = load ptr, ptr %i.bhf, align 8
  %i.bje = ptrtoint ptr %i.bjc to i64
  %i.bjf = ptrtoint ptr %i.bjd to i64
  %i.bjg = sub i64 %i.bje, %i.bjf
  %i.bjh = getelementptr inbounds i8, ptr %i.biv, i64 %i.bjg
  store ptr %i.biv, ptr %i.bhf, align 8
  %i.bji = getelementptr inbounds nuw i8, ptr %i.biv, i64 %i.bik
  store ptr %i.bji, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit513

_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj.exit513: ; preds = %bb.fh, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i511
  %i.bjj = phi ptr [ %i.bib, %bb.fh ], [ %i.bjh, %_ZN2v88internal4Zone13AllocateArrayIhNS0_4wasm10ZoneBuffer6BufferEEEPT_m.exit.i.i511 ] ; 2 uses
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjj, i64 1
  store ptr %i.bjk, ptr %i.a, align 8
  store i8 0, ptr %i.bjj, align 1
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_u32vEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %.sroa.094.0.copyload)
  %i.bjl = getelementptr inbounds nuw i8, ptr %.0268916, i64 4 ; 2 uses
  %.not285 = icmp eq ptr %i.bjl, %i.bhe
  br i1 %.not285, label %._crit_edge919, label %bb.fh

bb.fm:                                            ; preds = %._crit_edge919, %bb.ff
  %i.bjm = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.bjn = load ptr, ptr %i.bjm, align 8
  %i.bjo = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 3 uses
  %i.bjp = load ptr, ptr %i.bjo, align 8
  %i.bjq = icmp eq ptr %i.bjn, %i.bjp
  br i1 %i.bjq, label %bb.fx, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.bjr = call fastcc noundef i64 @_ZN2v88internal4wasm12_GLOBAL__N_111EmitSectionENS1_11SectionCodeEPNS1_10ZoneBufferE(i8 noundef signext 6, ptr noundef nonnull %1) ; 2 uses
  %i.bjs = load ptr, ptr %i.bjm, align 8
  %i.bjt = load ptr, ptr %i.bjo, align 8
  %i.bju = ptrtoint ptr %i.bjs to i64
  %i.bjv = ptrtoint ptr %i.bjt to i64
  %i.bjw = sub i64 %i.bju, %i.bjv
  %i.bjx = sdiv exact i64 %i.bjw, 40
  call void @_ZN2v88internal4wasm10ZoneBuffer10write_sizeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bjx)
  %i.bjy = load ptr, ptr %i.bjo, align 8          ; 2 uses
  %i.bjz = load ptr, ptr %i.bjm, align 8          ; 2 uses
  %.not286920 = icmp eq ptr %i.bjy, %i.bjz
  br i1 %.not286920, label %._crit_edge924, label %.lr.ph923

.lr.ph923:                                        ; preds = %bb.fn
  %i.bka = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  br label %bb.fo

._crit_edge924:                                   ; preds = %_ZN2v88internal4wasm12_GLOBAL__N_126WriteInitializerExpressionEPNS1_10ZoneBufferERKNS1_12WasmInitExprE.exit526, %bb.fn
  %i.bkb = getelementptr i8, ptr %1, i64 8
  %.val307 = load ptr, ptr %i.bkb, align 8        ; 2 uses
  %.val308 = load ptr, ptr %i.a, align 8
  %i.bkc = ptrtoint ptr %.val308 to i64
  %i.bkd = ptrtoint ptr %.val307 to i64
  %i.bke = add i64 %i.bjr, %i.bkd
  %i.bkf = sub i64 %i.bkc, %i.bke
  %i.bkg = trunc i64 %i.bkf to i32
  %i.bkh = add i32 %i.bkg, -5                     ; 5 uses
  %i.bki = getelementptr inbounds nuw i8, ptr %.val307, i64 %i.bjr ; 5 uses
  %i.bkj = lshr i32 %i.bkh, 7
  %i.bkk = trunc i32 %i.bkh to i8
  %i.bkl = or i8 %i.bkk, -128
  %.112.i.i514 = getelementptr inbounds nuw i8, ptr %i.bki, i64 1
  store i8 %i.bkl, ptr %i.bki, align 1
  %i.bkm = lshr i32 %i.bkh, 14
  %i.bkn = trunc i32 %i.bkj to i8
  %i.bko = or i8 %i.bkn, -128
  %.112.1.i.i515 = getelementptr inbounds nuw i8, ptr %i.bki, i64 2
  store i8 %i.bko, ptr %.112.i.i514, align 1
  %i.bkp = lshr i32 %i.bkh, 21
  %i.bkq = trunc i32 %i.bkm to i8
  %i.bkr = or i8 %i.bkq, -128
  %.112.2.i.i516 = getelementptr inbounds nuw i8, ptr %i.bki, i64 3
  store i8 %i.bkr, ptr %.112.1.i.i515, align 1
end_hunk_2
