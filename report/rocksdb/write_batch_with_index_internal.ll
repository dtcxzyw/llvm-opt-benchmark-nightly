Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/write_batch_with_index_internal?download=true
inline.NumInlined: 1470
inline.NumDeleted: 660
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7rocksdb17BaseDeltaIterator13UpdateCurrentEv:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.critedge, %_ZN7rocksdb17BaseDeltaIterator20ResetValueAndColumnsEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store i32 8, ptr %1, align 8, !tbaa !143
  store ptr @.str, ptr %i.j, align 8, !tbaa !98
  store i64 0, ptr %i.k, align 8, !tbaa !139
  store ptr @.str, ptr %i.l, align 8, !tbaa !98
  store i64 0, ptr %i.m, align 8, !tbaa !139
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !93   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  %i.y = load i8, ptr %i.x, align 8, !tbaa !123, !range !87, !noundef !88
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN7rocksdb6StatusD2Ev.exit16, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !124 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not5.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit16, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !126 ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i13, label %_ZN7rocksdb6StatusD2Ev.exit16, label %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit

_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit: ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !128
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !129
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.e, label %_ZN7rocksdb6StatusD2Ev.exit16

bb.e:                                             ; preds = %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit
  %i.ai = call noundef zeroext i8 @_ZN7rocksdb16WBWIIteratorImpl16FindLatestUpdateEPNS_12MergeContextE(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !93
  call void @_ZNK7rocksdb16WBWIIteratorImpl5EntryEv(ptr dead_on_unwind nonnull writable sret(%"struct.rocksdb::WriteEntry") align 8 %2, ptr noundef nonnull align 8 dereferenceable(72) %i.aj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !277
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.ak = icmp eq i8 %i.ai, 1
  br label %_ZN7rocksdb6StatusD2Ev.exit16

_ZN7rocksdb6StatusD2Ev.exit16:                    ; preds = %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit, %bb.b, %bb.c, %bb.d, %bb.e
  %.010 = phi i1 [ %i.ak, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit ] ; 2 uses
  store i8 0, ptr %i.p, align 2, !tbaa !84
  %i.al = load ptr, ptr %i.q, align 8, !tbaa !92  ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(40) %i.al), !inline_history !115
  br i1 %i.ap, label %bb.p, label %bb.f

bb.f:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !92  ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 104
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %i.aq)
  %i.au = load i8, ptr %3, align 8, !tbaa !114
  %i.av = icmp eq i8 %i.au, 0
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !113 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i20, label %_ZN7rocksdb6StatusD2Ev.exit22, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21: ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.aw) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit22

_ZN7rocksdb6StatusD2Ev.exit22:                    ; preds = %bb.f, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %i.av, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit22
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 1, ptr %i.ax, align 1, !tbaa !83
  br label %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit28.thread

bb.h:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit22
  %i.ay = load ptr, ptr %i.n, align 8, !tbaa !93  ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !123, !range !87, !noundef !88
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit28.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !124 ; 2 uses
  %.not5.i.i.i26 = icmp eq ptr %i.bd, null
  br i1 %.not5.i.i.i26, label %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit28.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !126 ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i27, label %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit28.thread, label %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit28

_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit28: ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !129
  %i.bj = icmp eq i32 %i.bg, %i.bi
  br i1 %i.bj, label %bb.k, label %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit28.thread

bb.k:                                             ; preds = %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit28
  br i1 %.010, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.s, align 8, !tbaa !107 ; 3 uses
  %.not.i = icmp eq ptr %i.bk, null
  br i1 %.not.i, label %_ZNK7rocksdb12MergeContext14GetNumOperandsEv.exit.thread, label %_ZNK7rocksdb12MergeContext14GetNumOperandsEv.exit

_ZNK7rocksdb12MergeContext14GetNumOperandsEv.exit: ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !146
  %i.bn = load ptr, ptr %i.bk, align 8, !tbaa !109
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNK7rocksdb12MergeContext14GetNumOperandsEv.exit.thread, label %bb.o

_ZNK7rocksdb12MergeContext14GetNumOperandsEv.exit.thread: ; preds = %bb.l, %_ZNK7rocksdb12MergeContext14GetNumOperandsEv.exit
  %i.bp = load i8, ptr %i.t, align 8, !tbaa !82, !range !87, !noundef !88
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK7rocksdb12MergeContext14GetNumOperandsEv.exit.thread
  call void @_ZN7rocksdb16WBWIIteratorImpl10AdvanceKeyEb(ptr noundef nonnull align 8 dereferenceable(72) %i.ay, i1 noundef zeroext true)
  br label %.critedge

bb.n:                                             ; preds = %_ZNK7rocksdb12MergeContext14GetNumOperandsEv.exit.thread
  call void @_ZN7rocksdb16WBWIIteratorImpl7PrevKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ay)
  br label %.critedge

bb.o:                                             ; preds = %_ZNK7rocksdb12MergeContext14GetNumOperandsEv.exit, %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %i.br, align 1, !tbaa !83
  call void @_ZN7rocksdb17BaseDeltaIterator27SetValueAndColumnsFromDeltaEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit28.thread

bb.p:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit16
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !93  ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !123, !range !87, !noundef !88
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit31.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !124 ; 2 uses
  %.not5.i.i.i29 = icmp eq ptr %i.bx, null
  br i1 %.not5.i.i.i29, label %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit31.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !126 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i30, label %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit31.thread, label %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit31

_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit31: ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !128
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !129
  %i.cd = icmp eq i32 %i.ca, %i.cc
  br i1 %i.cd, label %bb.t, label %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit31.thread

_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit31.thread: ; preds = %bb.r, %bb.q, %bb.p, %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit31
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 1, ptr %i.ce, align 1, !tbaa !83
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !89, !range !87, !noundef !88
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit28.thread, label %bb.s

bb.s:                                             ; preds = %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit31.thread
  call void @_ZN7rocksdb17BaseDeltaIterator26SetValueAndColumnsFromBaseEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit28.thread

bb.t:                                             ; preds = %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit31
  %i.ci = load i8, ptr %i.t, align 8, !tbaa !82, !range !87, !noundef !88
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = load ptr, ptr %i.u, align 8, !tbaa !94  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.cl = load ptr, ptr %i.q, align 8, !tbaa !92  ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !26
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 96
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = call { ptr, i64 } %i.co(ptr noundef nonnull align 8 dereferenceable(40) %i.cl) ; 2 uses
  %i.cq = extractvalue { ptr, i64 } %i.cp, 0
  store ptr %i.cq, ptr %4, align 8
  %i.cr = extractvalue { ptr, i64 } %i.cp, 1
  store i64 %i.cr, ptr %i.v, align 8
  %i.cs = load ptr, ptr %i.ck, align 8, !tbaa !26
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 232
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = call noundef i32 %i.cu(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext false) ; 3 uses
  %i.cw = sub nsw i32 0, %i.cv
  %i.cx = select i1 %i.cj, i32 %i.cv, i32 %i.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  %i.cy = icmp slt i32 %i.cx, 1
  br i1 %i.cy, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.cz = icmp eq i32 %i.cv, 0
  br i1 %i.cz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %i.p, align 2, !tbaa !84
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %.010, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.da = load ptr, ptr %i.s, align 8, !tbaa !107 ; 3 uses
  %.not.i32 = icmp eq ptr %i.da, null
  br i1 %.not.i32, label %_ZNK7rocksdb12MergeContext14GetNumOperandsEv.exit34.thread, label %_ZNK7rocksdb12MergeContext14GetNumOperandsEv.exit34

_ZNK7rocksdb12MergeContext14GetNumOperandsEv.exit34: ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !146
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !109
  %.not = icmp eq ptr %i.dc, %i.dd
  br i1 %.not, label %_ZNK7rocksdb12MergeContext14GetNumOperandsEv.exit34.thread, label %bb.y

bb.y:                                             ; preds = %_ZNK7rocksdb12MergeContext14GetNumOperandsEv.exit34, %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 0, ptr %i.de, align 1, !tbaa !83
  call void @_ZN7rocksdb17BaseDeltaIterator27SetValueAndColumnsFromDeltaEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit28.thread

_ZNK7rocksdb12MergeContext14GetNumOperandsEv.exit34.thread: ; preds = %bb.x, %_ZNK7rocksdb12MergeContext14GetNumOperandsEv.exit34
  %i.df = load i8, ptr %i.t, align 8, !tbaa !82, !range !87, !noundef !88
  %i.dg = trunc nuw i8 %i.df to i1
  %i.dh = load ptr, ptr %i.n, align 8, !tbaa !93  ; 2 uses
  br i1 %i.dg, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNK7rocksdb12MergeContext14GetNumOperandsEv.exit34.thread
  call void @_ZN7rocksdb16WBWIIteratorImpl10AdvanceKeyEb(ptr noundef nonnull align 8 dereferenceable(72) %i.dh, i1 noundef zeroext true)
  br label %_ZN7rocksdb17BaseDeltaIterator12AdvanceDeltaEv.exit35

bb.aa:                                            ; preds = %_ZNK7rocksdb12MergeContext14GetNumOperandsEv.exit34.thread
  call void @_ZN7rocksdb16WBWIIteratorImpl7PrevKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %i.dh)
  br label %_ZN7rocksdb17BaseDeltaIterator12AdvanceDeltaEv.exit35

_ZN7rocksdb17BaseDeltaIterator12AdvanceDeltaEv.exit35: ; preds = %bb.z, %bb.aa
  %i.di = load i8, ptr %i.p, align 2, !tbaa !84, !range !87, !noundef !88
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %_ZN7rocksdb17BaseDeltaIterator12AdvanceDeltaEv.exit35
  %i.dk = load i8, ptr %i.t, align 8, !tbaa !82, !range !87, !noundef !88
  %i.dl = trunc nuw i8 %i.dk to i1
  %i.dm = load ptr, ptr %i.q, align 8, !tbaa !92  ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !26
  %..i = select i1 %i.dl, i64 56, i64 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %..i
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(40) %i.dm), !inline_history !147
  br label %.critedge

bb.ac:                                            ; preds = %bb.t
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 1, ptr %i.dq, align 1, !tbaa !83
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !89, !range !87, !noundef !88
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit28.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN7rocksdb17BaseDeltaIterator26SetValueAndColumnsFromBaseEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  br label %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit28.thread

.critedge:                                        ; preds = %bb.n, %bb.m, %bb.ab, %_ZN7rocksdb17BaseDeltaIterator12AdvanceDeltaEv.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.b

_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit28.thread: ; preds = %bb.j, %bb.i, %bb.h, %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit28, %_ZNK7rocksdb17BaseDeltaIterator10DeltaValidEv.exit31.thread, %bb.g, %bb.o, %bb.y, %bb.s, %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb17BaseDeltaIterator10SeekToLastEv(ptr noundef nonnull align 8 dereferenceable(200) initializes((40, 41), (48, 54), (160, 176)) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.a, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !93
  tail call void @_ZN7rocksdb16WBWIIteratorImpl10SeekToLastEv(ptr noundef nonnull align 8 dereferenceable(72) %i.h)
  tail call void @_ZN7rocksdb17BaseDeltaIterator13UpdateCurrentEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb16WBWIIteratorImpl10SeekToLastEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.rocksdb::WriteBatchIndexEntry", align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !148  ; 2 uses
  %.not = icmp eq ptr %i.c, null                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !129
  %i.f = zext i1 %.not to i32
  %.sink5 = add i32 %i.e, %i.f
  %.sink4 = sext i1 %.not to i64
  store i64 -1, ptr %1, align 8, !tbaa !131
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sink5, ptr %i.g, align 8, !tbaa !128
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1, ptr %i.h, align 4, !tbaa !132
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 0, ptr %i.i, align 8, !tbaa !133
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 0, ptr %i.j, align 1, !tbaa !134
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 0, ptr %i.k, align 8, !tbaa !137
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.sink4, ptr %i.l, align 8, !tbaa !138
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.c, ptr %i.m, align 8, !tbaa !135
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store ptr %1, ptr %i.a, align 8, !tbaa !126
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !136
  %i.p = call noundef ptr @_ZNK7rocksdb8SkipListIPNS_20WriteBatchIndexEntryERKNS_25WriteBatchEntryComparatorEE18FindGreaterOrEqualERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %i.o, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.not3 = icmp eq ptr %i.p, null
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !136  ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !157  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.v = load atomic i32, ptr %i.u monotonic, align 8
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  br i1 %.not3, label %.preheader.outer, label %.split.us.i.i.outer

.preheader.outer:                                 ; preds = %.preheader, %bb.a
  %.010.i.i.ph = phi ptr [ %i.t, %bb.a ], [ %i.aa, %.preheader ] ; 3 uses
  %.09.i.i.ph = phi i32 [ %i.w, %bb.a ], [ %.09.i.i, %.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %.010.i.i.ph, i64 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.outer, %bb.c
  %.09.i.i = phi i32 [ %i.ad, %bb.c ], [ %.09.i.i.ph, %.preheader.outer ] ; 4 uses
  %i.y = sext i32 %.09.i.i to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.y
  %i.aa = load atomic ptr, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.b, label %.preheader.outer, !llvm.loop !1

bb.b:                                             ; preds = %.preheader
  %i.ac = icmp eq i32 %.09.i.i, 0
  br i1 %i.ac, label %_ZN7rocksdb8SkipListIPNS_20WriteBatchIndexEntryERKNS_25WriteBatchEntryComparatorEE8Iterator10SeekToLastEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = add nsw i32 %.09.i.i, -1
  br label %.preheader, !llvm.loop !1

_ZN7rocksdb8SkipListIPNS_20WriteBatchIndexEntryERKNS_25WriteBatchEntryComparatorEE8Iterator10SeekToLastEv.exit: ; preds = %bb.b
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !136
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !157
  %i.ah = icmp eq ptr %.010.i.i.ph, %i.ag
  br i1 %i.ah, label %.thread, label %bb.g

.split.us.i.i:                                    ; preds = %.split.us.i.i.outer, %bb.f
  %.018.us.i.i = phi i32 [ %i.ao, %bb.f ], [ %.018.us.i.i.ph, %.split.us.i.i.outer ] ; 4 uses
  %.017.us.i.i = phi ptr [ %i.ak, %bb.f ], [ %.017.us.i.i.ph, %.split.us.i.i.outer ] ; 2 uses
  %i.ai = sext i32 %.018.us.i.i to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ai
  %i.ak = load atomic ptr, ptr %i.aj acquire, align 8 ; 4 uses
  %.not.us.i.i = icmp eq ptr %i.ak, %.017.us.i.i
  br i1 %.not.us.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.split.us.i.i
  %i.al = call noundef zeroext i1 @_ZNK7rocksdb8SkipListIPNS_20WriteBatchIndexEntryERKNS_25WriteBatchEntryComparatorEE14KeyIsAfterNodeERKS2_PNS6_4NodeE(ptr noundef nonnull align 8 dereferenceable(48) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef %i.ak)
  br i1 %i.al, label %.split.us.i.i.outer, label %bb.e, !llvm.loop !2

.split.us.i.i.outer:                              ; preds = %bb.d, %bb.a
  %.021.us.i.i.ph = phi ptr [ %i.t, %bb.a ], [ %i.ak, %bb.d ] ; 3 uses
  %.018.us.i.i.ph = phi i32 [ %i.w, %bb.a ], [ %.018.us.i.i, %bb.d ]
  %.017.us.i.i.ph = phi ptr [ null, %bb.a ], [ %.017.us.i.i, %bb.d ]
  %i.am = getelementptr inbounds nuw i8, ptr %.021.us.i.i.ph, i64 8
  br label %.split.us.i.i

bb.e:                                             ; preds = %bb.d, %.split.us.i.i
  %i.an = icmp eq i32 %.018.us.i.i, 0
  br i1 %i.an, label %_ZN7rocksdb8SkipListIPNS_20WriteBatchIndexEntryERKNS_25WriteBatchEntryComparatorEE8Iterator4PrevEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = add nsw i32 %.018.us.i.i, -1
  br label %.split.us.i.i, !llvm.loop !2

_ZN7rocksdb8SkipListIPNS_20WriteBatchIndexEntryERKNS_25WriteBatchEntryComparatorEE8Iterator4PrevEv.exit: ; preds = %bb.e
end_hunk_0
