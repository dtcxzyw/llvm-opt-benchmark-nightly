Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/log_writer?download=true
inline.NumInlined: 873
inline.NumDeleted: 499
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7rocksdb3log6Writer9AddRecordERKNS_12WriteOptionsERKNS_5SliceERKm:bb.a
  %7 = alloca %"class.rocksdb::IOStatus", align 8 ; 17 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 10 uses
  %9 = alloca %"class.rocksdb::IOStatus", align 8 ; 17 uses
  %10 = alloca %"class.rocksdb::IOStatus", align 8 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  %i.b = load ptr, ptr %1, align 8, !tbaa !21, !noalias !163
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 169
  %i.d = load atomic i8, ptr %i.c monotonic, align 1, !range !73, !noalias !163, !noundef !74
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  store i8 5, ptr %0, align 8, !tbaa !85, !alias.scope !165
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.f, align 1, !tbaa !86, !alias.scope !165
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 0, ptr %i.g, align 2, !alias.scope !165
  %i.h = tail call noalias noundef nonnull dereferenceable(33) ptr @_Znam(i64 noundef 33) #23, !noalias !165 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.h, ptr noundef nonnull align 1 dereferenceable(32) @.str.41, i64 32, i1 false), !noalias !165
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i8 0, ptr %i.i, align 1, !tbaa !19, !noalias !165
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8, !tbaa !65, !alias.scope !163
  br label %bb.az

bb.c:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !tbaa !85, !alias.scope !166
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.k, align 1, !tbaa !86, !alias.scope !166
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 0, ptr %i.l, align 2, !alias.scope !166
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 15 uses
  store ptr null, ptr %i.m, align 8, !tbaa !65, !alias.scope !163
  %i.n = load ptr, ptr %3, align 8, !tbaa !112    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !113
  store i64 %i.p, ptr %i.a, align 8, !tbaa !114
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !66   ; 3 uses
  %.not = icmp ne ptr %i.r, null                  ; 4 uses
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr noundef nonnull align 8 dereferenceable(88) %i.r)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.f:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store i64 0, ptr %5, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.w, align 8, !tbaa !93
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 4, ptr %i.x, align 4, !tbaa !94
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i8 7, ptr %i.y, align 8, !tbaa !95
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !96
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store i64 1, ptr %i.ab, align 8, !tbaa !97
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ad, align 8, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.ae, i8 0, i64 19, i1 false)
  store i8 -1, ptr %i.af, align 1, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  invoke void @_ZN7rocksdb18WritableFileWriter16PrepareIOOptionsERKNS_12WriteOptionsERNS_9IOOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %6, ptr noundef nonnull align 8 dereferenceable(25) %2, ptr noundef nonnull align 8 dereferenceable(84) %5)
          to label %bb.g unwind label %bb.ac

bb.g:                                             ; preds = %bb.f
  %.not.i = icmp eq ptr %0, %6
  br i1 %.not.i, label %_ZN7rocksdb8IOStatusaSEOS0_.exit, label %bb.h

_ZN7rocksdb8IOStatusaSEOS0_.exit:                 ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !65 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %.thread219, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre) #20
  br label %.thread219

.thread219:                                       ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %_ZN7rocksdb8IOStatusaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.preheader

bb.h:                                             ; preds = %bb.g
  %i.ag = load i8, ptr %6, align 8, !tbaa !99     ; 2 uses
  store i8 %i.ag, ptr %0, align 8, !tbaa !85
  store i8 0, ptr %6, align 8, !tbaa !85
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !100
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !86
  store i8 0, ptr %i.ah, align 1, !tbaa !86
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !101, !range !73, !noundef !74
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.al, ptr %i.am, align 1, !tbaa !101
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ao = load i8, ptr %i.an, align 4, !tbaa !102, !range !73, !noundef !74
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.ao, ptr %i.ap, align 4, !tbaa !102
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 5
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !103
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !103
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !65
  store ptr %i.au, ptr %i.m, align 8, !tbaa !65
  %i.av = icmp eq i8 %i.ag, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %i.av, label %.preheader, label %.thread124

.preheader:                                       ; preds = %.thread219, %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.not.i73 = icmp eq ptr %0, %7                  ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 3 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 5 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.not.i87 = icmp eq ptr %0, %9                  ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 1 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 3 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 5 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.bp = load i64, ptr %i.aw, align 8, !tbaa !52 ; 2 uses
  %i.bq = sub i64 32768, %i.bp                    ; 3 uses
  %i.br = load i32, ptr %i.ax, align 4, !tbaa !55
  %i.bs = sext i32 %i.br to i64                   ; 3 uses
  %i.bt = icmp slt i64 %i.bq, %i.bs
  br i1 %i.bt, label %bb.i, label %bb.n

bb.i:                                             ; preds = %.preheader
  %i.bu = icmp sgt i64 %i.bq, 0
  br i1 %i.bu, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.bv = load ptr, ptr %1, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr @.str.39, ptr %8, align 8, !tbaa !112
  store i64 %i.bq, ptr %i.ay, align 8, !tbaa !113
  invoke void @_ZN7rocksdb18WritableFileWriter6AppendERKNS_9IOOptionsERKNS_5SliceEj(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %7, ptr noundef nonnull align 8 dereferenceable(258) %i.bv, ptr noundef nonnull align 8 dereferenceable(84) %5, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef 0)
          to label %bb.k unwind label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %.pre145 = load ptr, ptr %i.bh, align 8, !tbaa !65 ; 2 uses
  br i1 %.not.i73, label %_ZN7rocksdb8IOStatusaSEOS0_.exit76.peel, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = load i8, ptr %7, align 8, !tbaa !99     ; 3 uses
  store i8 %i.bw, ptr %0, align 8, !tbaa !85
  store i8 0, ptr %7, align 8, !tbaa !85
  %i.bx = load i8, ptr %i.az, align 1, !tbaa !100
  store i8 %i.bx, ptr %i.ba, align 1, !tbaa !86
  store i8 0, ptr %i.az, align 1, !tbaa !86
  %i.by = load i8, ptr %i.bb, align 1, !tbaa !101, !range !73, !noundef !74
  store i8 %i.by, ptr %i.bc, align 1, !tbaa !101
  %i.bz = load i8, ptr %i.bd, align 4, !tbaa !102, !range !73, !noundef !74
  store i8 %i.bz, ptr %i.be, align 4, !tbaa !102
  %i.ca = load i8, ptr %i.bf, align 1, !tbaa !103
  store i8 %i.ca, ptr %i.bg, align 1, !tbaa !103
  store i8 0, ptr %i.bf, align 1, !tbaa !103
  store ptr null, ptr %i.bh, align 8, !tbaa !65
  %i.cb = load ptr, ptr %i.m, align 8, !tbaa !65  ; 2 uses
  store ptr %.pre145, ptr %i.m, align 8, !tbaa !65
  %.not.i.i.i.i.i74.peel = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i.i74.peel, label %_ZN7rocksdb8IOStatusaSEOS0_.exit76.peel.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i75.peel

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i75.peel: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.cb) #20
  %.pre144 = load ptr, ptr %i.bh, align 8, !tbaa !65
  br label %_ZN7rocksdb8IOStatusaSEOS0_.exit76.peel

_ZN7rocksdb8IOStatusaSEOS0_.exit76.peel:          ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i75.peel, %bb.k
  %i.cc = phi i8 [ %i.bw, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i75.peel ], [ 0, %bb.k ] ; 2 uses
  %i.cd = phi ptr [ %.pre144, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i75.peel ], [ %.pre145, %bb.k ] ; 2 uses
  %.not.i.i77.peel = icmp eq ptr %i.cd, null
  br i1 %.not.i.i77.peel, label %_ZN7rocksdb8IOStatusaSEOS0_.exit76.peel.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i78.peel

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i78.peel: ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit76.peel
  call void @_ZdaPv(ptr noundef nonnull %i.cd) #20
  br label %_ZN7rocksdb8IOStatusaSEOS0_.exit76.peel.thread

_ZN7rocksdb8IOStatusaSEOS0_.exit76.peel.thread:   ; preds = %bb.l, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i78.peel, %_ZN7rocksdb8IOStatusaSEOS0_.exit76.peel
  %i.ce = phi i8 [ %i.cc, %_ZN7rocksdb8IOStatusaSEOS0_.exit76.peel ], [ %i.cc, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i78.peel ], [ %i.bw, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %._crit_edge165, label %.thread124

._crit_edge165:                                   ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit76.peel.thread
  %.pre146.pre = load i32, ptr %i.ax, align 4, !tbaa !55
  %.pre175 = sext i32 %.pre146.pre to i64
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge165, %bb.i
  %.pre172.pre-phi = phi i64 [ %.pre175, %._crit_edge165 ], [ %i.bs, %bb.i ]
  store i64 0, ptr %i.aw, align 8, !tbaa !52
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.preheader
  %.pre-phi.a = phi i64 [ %.pre172.pre-phi, %bb.m ], [ %i.bs, %.preheader ]
  %i.cg = phi i64 [ 0, %bb.m ], [ %i.bp, %.preheader ]
  %i.ch = add i64 %i.cg, %.pre-phi.a
  %i.ci = sub i64 32768, %i.ch                    ; 2 uses
  %i.cj = load ptr, ptr %i.q, align 8, !tbaa !66  ; 3 uses
  %.not127.peel = icmp eq ptr %i.cj, null
  %.pre147 = load i64, ptr %i.a, align 8          ; 3 uses
  br i1 %.not127.peel, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = icmp eq i64 %.pre147, 0
  %or.cond.peel = select i1 %.not, i1 true, i1 %i.ck
  br i1 %or.cond.peel, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.cl = load ptr, ptr %3, align 8, !tbaa !112
  %i.cm = load i64, ptr %i.o, align 8, !tbaa !113
  %i.cn = load ptr, ptr %i.bi, align 8, !tbaa !65
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !68
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = invoke noundef i32 %i.cq(ptr noundef nonnull align 8 dereferenceable(88) %i.cj, ptr noundef %i.cl, i64 noundef %i.cm, ptr noundef %i.cn, ptr noundef nonnull %i.a)
          to label %bb.q unwind label %.loopexit.split-lp133 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %.loopexit137, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !114 ; 2 uses
  %i.cu = icmp ne i64 %i.ct, 0
  %or.cond5.peel = or i1 %.not, %i.cu
  br i1 %or.cond5.peel, label %bb.s, label %.loopexit227

bb.s:                                             ; preds = %bb.r
  %i.cv = load ptr, ptr %i.bi, align 8, !tbaa !65
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.o, %bb.n
  %i.cw = phi i64 [ %i.ct, %bb.s ], [ %.pre147, %bb.o ], [ %.pre147, %bb.n ] ; 2 uses
  %.146.peel = phi ptr [ %i.cv, %bb.s ], [ %i.n, %bb.o ], [ %i.n, %bb.n ] ; 2 uses
  %.139.peel = phi i32 [ %i.cr, %bb.s ], [ 0, %bb.o ], [ 0, %bb.n ] ; 3 uses
  %.2.peel = phi i1 [ false, %bb.s ], [ false, %bb.o ], [ %.not, %bb.n ]
  %i.cx = call i64 @llvm.umin.i64(i64 %i.cw, i64 %i.ci) ; 3 uses
  %i.cy = icmp ule i64 %i.cw, %i.ci
  %i.cz = icmp eq i32 %.139.peel, 0
  %i.da = and i1 %i.cy, %i.cz
  %i.db = load i8, ptr %i.bj, align 8, !tbaa !54, !range !73, !noundef !74
  %11 = trunc nuw i8 %i.db to i1                  ; 2 uses
  %12 = select i1 %11, i8 5, i8 1
  %13 = select i1 %11, i8 6, i8 2
  %.0.peel = select i1 %i.da, i8 %12, i8 %13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  invoke void @_ZN7rocksdb3log6Writer18EmitPhysicalRecordERKNS_12WriteOptionsENS0_10RecordTypeEPKcm(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %9, ptr noundef nonnull align 8 dereferenceable(656) %1, ptr noundef nonnull align 8 dereferenceable(25) %2, i8 noundef zeroext %.0.peel, ptr noundef %.146.peel, i64 noundef %i.cx)
          to label %bb.u unwind label %.loopexit.split-lp139

bb.u:                                             ; preds = %bb.t
  %.pre149.a = load ptr, ptr %i.bo, align 8, !tbaa !65 ; 2 uses
  br i1 %.not.i87, label %_ZN7rocksdb8IOStatusaSEOS0_.exit90.peel, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = load i8, ptr %9, align 8, !tbaa !99     ; 3 uses
  store i8 %i.dc, ptr %0, align 8, !tbaa !85
  store i8 0, ptr %9, align 8, !tbaa !85
  %i.dd = load i8, ptr %i.bk, align 1, !tbaa !100
  store i8 %i.dd, ptr %i.ba, align 1, !tbaa !86
  store i8 0, ptr %i.bk, align 1, !tbaa !86
  %i.de = load i8, ptr %i.bl, align 1, !tbaa !101, !range !73, !noundef !74
  store i8 %i.de, ptr %i.bc, align 1, !tbaa !101
  %i.df = load i8, ptr %i.bm, align 4, !tbaa !102, !range !73, !noundef !74
  store i8 %i.df, ptr %i.be, align 4, !tbaa !102
  %i.dg = load i8, ptr %i.bn, align 1, !tbaa !103
  store i8 %i.dg, ptr %i.bg, align 1, !tbaa !103
  store i8 0, ptr %i.bn, align 1, !tbaa !103
  store ptr null, ptr %i.bo, align 8, !tbaa !65
  %i.dh = load ptr, ptr %i.m, align 8, !tbaa !65  ; 2 uses
  store ptr %.pre149.a, ptr %i.m, align 8, !tbaa !65
  %.not.i.i.i.i.i88.peel = icmp eq ptr %i.dh, null
  br i1 %.not.i.i.i.i.i88.peel, label %_ZN7rocksdb8IOStatusaSEOS0_.exit90.peel.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i89.peel

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i89.peel: ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.dh) #20
  %.pre148 = load ptr, ptr %i.bo, align 8, !tbaa !65
  br label %_ZN7rocksdb8IOStatusaSEOS0_.exit90.peel

_ZN7rocksdb8IOStatusaSEOS0_.exit90.peel:          ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i89.peel, %bb.u
  %14 = phi i8 [ %i.dc, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i89.peel ], [ 0, %bb.u ] ; 2 uses
  %i.di = phi ptr [ %.pre148, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i89.peel ], [ %.pre149.a, %bb.u ] ; 2 uses
  %.not.i.i91.peel = icmp eq ptr %i.di, null
  br i1 %.not.i.i91.peel, label %_ZN7rocksdb8IOStatusaSEOS0_.exit90.peel.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i92.peel

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i92.peel: ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit90.peel
  call void @_ZdaPv(ptr noundef nonnull %i.di) #20
  br label %_ZN7rocksdb8IOStatusaSEOS0_.exit90.peel.thread

_ZN7rocksdb8IOStatusaSEOS0_.exit90.peel.thread:   ; preds = %bb.v, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i92.peel, %_ZN7rocksdb8IOStatusaSEOS0_.exit90.peel
  %15 = phi i8 [ %14, %_ZN7rocksdb8IOStatusaSEOS0_.exit90.peel ], [ %14, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i92.peel ], [ %i.dc, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.dj = load i64, ptr %i.a, align 8, !tbaa !114
  %i.dk = sub i64 %i.dj, %i.cx                    ; 3 uses
  store i64 %i.dk, ptr %i.a, align 8, !tbaa !114
  %i.dl = icmp eq i8 %15, 0
  br i1 %i.dl, label %bb.w, label %.thread124

bb.w:                                             ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit90.peel.thread
  %i.dm = icmp ne i64 %i.dk, 0
  %16 = icmp ne i32 %.139.peel, 0
  %i.dn = or i1 %i.dm, %16
  br i1 %i.dn, label %.peel.next, label %.loopexit227

.peel.next:                                       ; preds = %bb.w
  %17 = getelementptr inbounds nuw i8, ptr %.146.peel, i64 %i.cx
  br label %bb.x

bb.x:                                             ; preds = %.peel.next, %bb.aq
  %.pre153170 = phi i64 [ %i.fn, %bb.aq ], [ %i.dk, %.peel.next ] ; 2 uses
  %.045 = phi ptr [ %i.fq, %bb.aq ], [ %17, %.peel.next ] ; 2 uses
  %.038 = phi i32 [ %.139, %bb.aq ], [ %.139.peel, %.peel.next ] ; 2 uses
  %.1 = phi i1 [ %.2, %bb.aq ], [ %.2.peel, %.peel.next ] ; 3 uses
  %i.do = load i64, ptr %i.aw, align 8, !tbaa !52 ; 2 uses
  %i.dp = sub i64 32768, %i.do                    ; 3 uses
  %i.dq = load i32, ptr %i.ax, align 4, !tbaa !55
  %i.dr = sext i32 %i.dq to i64                   ; 3 uses
  %i.ds = icmp slt i64 %i.dp, %i.dr
  br i1 %i.ds, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.dt = icmp sgt i64 %i.dp, 0
  br i1 %i.dt, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.du = load ptr, ptr %1, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr @.str.39, ptr %8, align 8, !tbaa !112
  store i64 %i.dp, ptr %i.ay, align 8, !tbaa !113
  invoke void @_ZN7rocksdb18WritableFileWriter6AppendERKNS_9IOOptionsERKNS_5SliceEj(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %7, ptr noundef nonnull align 8 dereferenceable(258) %i.du, ptr noundef nonnull align 8 dereferenceable(84) %5, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef 0)
          to label %bb.aa unwind label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %.pre151 = load ptr, ptr %i.bh, align 8, !tbaa !65 ; 2 uses
  br i1 %.not.i73, label %_ZN7rocksdb8IOStatusaSEOS0_.exit76, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dv = load i8, ptr %7, align 8, !tbaa !99     ; 3 uses
  store i8 %i.dv, ptr %0, align 8, !tbaa !85
  store i8 0, ptr %7, align 8, !tbaa !85
  %i.dw = load i8, ptr %i.az, align 1, !tbaa !100
  store i8 %i.dw, ptr %i.ba, align 1, !tbaa !86
  store i8 0, ptr %i.az, align 1, !tbaa !86
  %i.dx = load i8, ptr %i.bb, align 1, !tbaa !101, !range !73, !noundef !74
  store i8 %i.dx, ptr %i.bc, align 1, !tbaa !101
  %i.dy = load i8, ptr %i.bd, align 4, !tbaa !102, !range !73, !noundef !74
  store i8 %i.dy, ptr %i.be, align 4, !tbaa !102
  %i.dz = load i8, ptr %i.bf, align 1, !tbaa !103
  store i8 %i.dz, ptr %i.bg, align 1, !tbaa !103
  store i8 0, ptr %i.bf, align 1, !tbaa !103
  store ptr null, ptr %i.bh, align 8, !tbaa !65
  %i.ea = load ptr, ptr %i.m, align 8, !tbaa !65  ; 2 uses
  store ptr %.pre151, ptr %i.m, align 8, !tbaa !65
  %.not.i.i.i.i.i74 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i.i74, label %_ZN7rocksdb8IOStatusaSEOS0_.exit76.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i75

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i75: ; preds = %bb.ab
  call void @_ZdaPv(ptr noundef nonnull %i.ea) #20
  %.pre150 = load ptr, ptr %i.bh, align 8, !tbaa !65
  br label %_ZN7rocksdb8IOStatusaSEOS0_.exit76

_ZN7rocksdb8IOStatusaSEOS0_.exit76:               ; preds = %bb.aa, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i75
  %.pr119.pr161 = phi i8 [ 0, %bb.aa ], [ %i.dv, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i75 ] ; 2 uses
  %i.eb = phi ptr [ %.pre151, %bb.aa ], [ %.pre150, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i75 ] ; 2 uses
  %.not.i.i77 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i77, label %_ZN7rocksdb8IOStatusaSEOS0_.exit76.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i78

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i78: ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit76
  call void @_ZdaPv(ptr noundef nonnull %i.eb) #20
  br label %_ZN7rocksdb8IOStatusaSEOS0_.exit76.thread

_ZN7rocksdb8IOStatusaSEOS0_.exit76.thread:        ; preds = %bb.ab, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i78, %_ZN7rocksdb8IOStatusaSEOS0_.exit76
  %.pr119.pr161224 = phi i8 [ %.pr119.pr161, %_ZN7rocksdb8IOStatusaSEOS0_.exit76 ], [ %.pr119.pr161, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i78 ], [ %i.dv, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ec = icmp eq i8 %.pr119.pr161224, 0
  br i1 %i.ec, label %._crit_edge167, label %.thread124

._crit_edge167:                                   ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit76.thread
  %.pre152.pre = load i32, ptr %i.ax, align 4, !tbaa !55
  %.pre153.pre.pre = load i64, ptr %i.a, align 8
  %.pre176 = sext i32 %.pre152.pre to i64
  br label %bb.ae

bb.ac:                                            ; preds = %bb.f
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.ax

.loopexit:                                        ; preds = %bb.z
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.ax

bb.ae:                                            ; preds = %._crit_edge167, %bb.y
  %.pre173.pre-phi = phi i64 [ %.pre176, %._crit_edge167 ], [ %i.dr, %bb.y ]
  %.pre153.pre = phi i64 [ %.pre153.pre.pre, %._crit_edge167 ], [ %.pre153170, %bb.y ]
  store i64 0, ptr %i.aw, align 8, !tbaa !52
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.x
  %.pre-phi174 = phi i64 [ %.pre173.pre-phi, %bb.ae ], [ %i.dr, %bb.x ]
  %.pre153 = phi i64 [ %.pre153.pre, %bb.ae ], [ %.pre153170, %bb.x ] ; 3 uses
  %i.ee = phi i64 [ 0, %bb.ae ], [ %i.do, %bb.x ]
  %i.ef = add i64 %i.ee, %.pre-phi174
  %i.eg = sub i64 32768, %i.ef                    ; 2 uses
  %i.eh = load ptr, ptr %i.q, align 8, !tbaa !66  ; 3 uses
  %.not127 = icmp eq ptr %i.eh, null
  br i1 %.not127, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ei = icmp eq i64 %.pre153, 0
  %or.cond = select i1 %.1, i1 true, i1 %i.ei
  br i1 %or.cond, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %bb.ag
  %i.ej = load ptr, ptr %3, align 8, !tbaa !112
  %i.ek = load i64, ptr %i.o, align 8, !tbaa !113
  %i.el = load ptr, ptr %i.bi, align 8, !tbaa !65
  %i.em = load ptr, ptr %i.eh, align 8, !tbaa !68
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = invoke noundef i32 %i.eo(ptr noundef nonnull align 8 dereferenceable(88) %i.eh, ptr noundef %i.ej, i64 noundef %i.ek, ptr noundef %i.el, ptr noundef nonnull %i.a)
          to label %bb.ai unwind label %.loopexit132 ; 2 uses

bb.ai:                                            ; preds = %bb.ah
  %i.eq = icmp slt i32 %i.ep, 0
  br i1 %i.eq, label %.loopexit137, label %bb.al

.loopexit137:                                     ; preds = %bb.ai, %bb.q
  %i.er = invoke noalias noundef nonnull dereferenceable(33) ptr @_Znam(i64 noundef 33) #23
          to label %bb.aj unwind label %bb.ak     ; 3 uses

bb.aj:                                            ; preds = %.loopexit137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.er, ptr noundef nonnull align 1 dereferenceable(32) @.str.40, i64 32, i1 false), !noalias !167
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  store i8 0, ptr %i.es, align 1, !tbaa !19, !noalias !167
  store i8 5, ptr %0, align 8, !tbaa !85
  store i8 0, ptr %i.ba, align 1, !tbaa !86
  store i8 0, ptr %i.bc, align 1, !tbaa !101
  store i8 0, ptr %i.bg, align 1, !tbaa !103
  %i.et = load ptr, ptr %i.m, align 8, !tbaa !65  ; 2 uses
  store ptr %i.er, ptr %i.m, align 8, !tbaa !65
  %.not.i.i.i.i.i81 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i.i81, label %.thread113, label %_ZN7rocksdb8IOStatusaSEOS0_.exit83

_ZN7rocksdb8IOStatusaSEOS0_.exit83:               ; preds = %bb.aj
  call void @_ZdaPv(ptr noundef nonnull %i.et) #20
  br label %.thread113

.loopexit132:                                     ; preds = %bb.ah
  %lpad.loopexit134 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp133:                            ; preds = %bb.p
  %lpad.loopexit.split-lp135 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ak:                                            ; preds = %.loopexit137
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.al:                                            ; preds = %bb.ai
  %i.ev = load i64, ptr %i.a, align 8, !tbaa !114 ; 2 uses
  %i.ew = icmp ne i64 %i.ev, 0
  %or.cond5 = or i1 %.1, %i.ew
  br i1 %or.cond5, label %bb.am, label %.loopexit227

bb.am:                                            ; preds = %bb.al
  %i.ex = load ptr, ptr %i.bi, align 8, !tbaa !65
  br label %bb.an

bb.an:                                            ; preds = %bb.ag, %bb.am, %bb.af
  %i.ey = phi i64 [ %i.ev, %bb.am ], [ %.pre153, %bb.ag ], [ %.pre153, %bb.af ] ; 2 uses
  %.146 = phi ptr [ %i.ex, %bb.am ], [ %.045, %bb.ag ], [ %.045, %bb.af ] ; 2 uses
  %.139 = phi i32 [ %i.ep, %bb.am ], [ %.038, %bb.ag ], [ %.038, %bb.af ] ; 3 uses
  %.2 = phi i1 [ false, %bb.am ], [ false, %bb.ag ], [ %.1, %bb.af ]
  %i.ez = call i64 @llvm.umin.i64(i64 %i.ey, i64 %i.eg) ; 3 uses
  %i.fa = icmp ule i64 %i.ey, %i.eg
  %i.fb = icmp eq i32 %.139, 0
  %i.fc = select i1 %i.fa, i1 %i.fb, i1 false
  %i.fd = load i8, ptr %i.bj, align 8, !tbaa !54, !range !73, !noundef !74
  %18 = trunc nuw i8 %i.fd to i1                  ; 2 uses
  %19 = select i1 %18, i8 7, i8 3
  %i.fe = select i1 %18, i8 8, i8 4
  %.0 = select i1 %i.fc, i8 %i.fe, i8 %19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  invoke void @_ZN7rocksdb3log6Writer18EmitPhysicalRecordERKNS_12WriteOptionsENS0_10RecordTypeEPKcm(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %9, ptr noundef nonnull align 8 dereferenceable(656) %1, ptr noundef nonnull align 8 dereferenceable(25) %2, i8 noundef zeroext %.0, ptr noundef %.146, i64 noundef %i.ez)
          to label %bb.ao unwind label %.loopexit138

bb.ao:                                            ; preds = %bb.an
  %.pre155 = load ptr, ptr %i.bo, align 8, !tbaa !65 ; 2 uses
  br i1 %.not.i87, label %_ZN7rocksdb8IOStatusaSEOS0_.exit90, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ff = load i8, ptr %9, align 8, !tbaa !99
  store i8 %i.ff, ptr %0, align 8, !tbaa !85
  store i8 0, ptr %9, align 8, !tbaa !85
  %i.fg = load i8, ptr %i.bk, align 1, !tbaa !100
  store i8 %i.fg, ptr %i.ba, align 1, !tbaa !86
  store i8 0, ptr %i.bk, align 1, !tbaa !86
  %i.fh = load i8, ptr %i.bl, align 1, !tbaa !101, !range !73, !noundef !74
  store i8 %i.fh, ptr %i.bc, align 1, !tbaa !101
  %i.fi = load i8, ptr %i.bm, align 4, !tbaa !102, !range !73, !noundef !74
  store i8 %i.fi, ptr %i.be, align 4, !tbaa !102
  %i.fj = load i8, ptr %i.bn, align 1, !tbaa !103
  store i8 %i.fj, ptr %i.bg, align 1, !tbaa !103
  store i8 0, ptr %i.bn, align 1, !tbaa !103
  store ptr null, ptr %i.bo, align 8, !tbaa !65
  %i.fk = load ptr, ptr %i.m, align 8, !tbaa !65  ; 2 uses
  store ptr %.pre155, ptr %i.m, align 8, !tbaa !65
  %.not.i.i.i.i.i88 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i.i.i88, label %_ZN7rocksdb8IOStatusaSEOS0_.exit90.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i89

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i89: ; preds = %bb.ap
  call void @_ZdaPv(ptr noundef nonnull %i.fk) #20
  %.pre154 = load ptr, ptr %i.bo, align 8, !tbaa !65
  br label %_ZN7rocksdb8IOStatusaSEOS0_.exit90

_ZN7rocksdb8IOStatusaSEOS0_.exit90:               ; preds = %bb.ao, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i89
  %i.fl = phi ptr [ %.pre155, %bb.ao ], [ %.pre154, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i89 ] ; 2 uses
  %.not.i.i91 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i91, label %_ZN7rocksdb8IOStatusaSEOS0_.exit90.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i92

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i92: ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit90
  call void @_ZdaPv(ptr noundef nonnull %i.fl) #20
  br label %_ZN7rocksdb8IOStatusaSEOS0_.exit90.thread

_ZN7rocksdb8IOStatusaSEOS0_.exit90.thread:        ; preds = %bb.ap, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i92, %_ZN7rocksdb8IOStatusaSEOS0_.exit90
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.fm = load i64, ptr %i.a, align 8, !tbaa !114
  %i.fn = sub i64 %i.fm, %i.ez                    ; 3 uses
  store i64 %i.fn, ptr %i.a, align 8, !tbaa !114
  %i.fo = load i8, ptr %0, align 8, !tbaa !85
  %i.fp = icmp eq i8 %i.fo, 0
  br i1 %i.fp, label %bb.aq, label %.thread124

bb.aq:                                            ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit90.thread
  %i.fq = getelementptr inbounds nuw i8, ptr %.146, i64 %i.ez
  %i.fr = icmp ne i64 %i.fn, 0
  %i.fs = icmp sgt i32 %.139, 0
  %i.ft = select i1 %i.fr, i1 true, i1 %i.fs
  br i1 %i.ft, label %bb.x, label %.loopexit227, !llvm.loop !162

.loopexit138:                                     ; preds = %bb.an
  %lpad.loopexit140 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp139:                            ; preds = %bb.t
  %lpad.loopexit.split-lp141 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp139, %.loopexit138
  %lpad.phi142 = phi { ptr, i32 } [ %lpad.loopexit140, %.loopexit138 ], [ %lpad.loopexit.split-lp141, %.loopexit.split-lp139 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.ax

.thread113:                                       ; preds = %bb.aj, %_ZN7rocksdb8IOStatusaSEOS0_.exit83
  store i8 1, ptr %i.be, align 4, !tbaa !102
  br label %.thread124

.loopexit227:                                     ; preds = %bb.aq, %bb.al, %bb.w, %bb.r
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 560
  %i.fv = load i8, ptr %i.fu, align 8, !tbaa !56, !range !73, !noundef !74
  %i.fw = trunc nuw i8 %i.fv to i1
  br i1 %i.fw, label %.thread121.thread, label %bb.as

bb.as:                                            ; preds = %.loopexit227
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.fx = load ptr, ptr %1, align 8, !tbaa !21
  invoke void @_ZN7rocksdb18WritableFileWriter5FlushERKNS_9IOOptionsE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %10, ptr noundef nonnull align 8 dereferenceable(258) %i.fx, ptr noundef nonnull align 8 dereferenceable(84) %5)
          to label %bb.at unwind label %bb.av

bb.at:                                            ; preds = %bb.as
  %.not.i94 = icmp eq ptr %0, %10
  br i1 %.not.i94, label %_ZN7rocksdb8IOStatusaSEOS0_.exit97, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fy = load i8, ptr %10, align 8, !tbaa !99    ; 3 uses
  store i8 %i.fy, ptr %0, align 8, !tbaa !85
  store i8 0, ptr %10, align 8, !tbaa !85
  %i.fz = getelementptr inbounds nuw i8, ptr %10, i64 1 ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !100
  store i8 %i.ga, ptr %i.ba, align 1, !tbaa !86
  store i8 0, ptr %i.fz, align 1, !tbaa !86
  %i.gb = getelementptr inbounds nuw i8, ptr %10, i64 3
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !101, !range !73, !noundef !74
  store i8 %i.gc, ptr %i.bc, align 1, !tbaa !101
  %i.gd = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.ge = load i8, ptr %i.gd, align 4, !tbaa !102, !range !73, !noundef !74
  store i8 %i.ge, ptr %i.be, align 4, !tbaa !102
  %i.gf = getelementptr inbounds nuw i8, ptr %10, i64 5 ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !103
  store i8 %i.gg, ptr %i.bg, align 1, !tbaa !103
  store i8 0, ptr %i.gf, align 1, !tbaa !103
  %i.gh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !65
  store ptr null, ptr %i.gh, align 8, !tbaa !65
  %i.gj = load ptr, ptr %i.m, align 8, !tbaa !65  ; 2 uses
  store ptr %i.gi, ptr %i.m, align 8, !tbaa !65
  %.not.i.i.i.i.i95 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i.i.i95, label %_ZN7rocksdb8IOStatusaSEOS0_.exit97, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i96

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i96: ; preds = %bb.au
  call void @_ZdaPv(ptr noundef nonnull %i.gj) #20
  br label %_ZN7rocksdb8IOStatusaSEOS0_.exit97

_ZN7rocksdb8IOStatusaSEOS0_.exit97:               ; preds = %bb.at, %bb.au, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i96
  %.pr123.pr163 = phi i8 [ 0, %bb.at ], [ %i.fy, %bb.au ], [ %i.fy, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i96 ]
  %i.gk = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !65 ; 2 uses
  %.not.i.i98 = icmp eq ptr %i.gl, null
  br i1 %.not.i.i98, label %.thread121, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i99

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i99: ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit97
  call void @_ZdaPv(ptr noundef nonnull %i.gl) #20
  br label %.thread121

bb.av:                                            ; preds = %bb.as
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.ax

.thread121:                                       ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i99, %_ZN7rocksdb8IOStatusaSEOS0_.exit97
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.gn = icmp eq i8 %.pr123.pr163, 0
  br i1 %i.gn, label %.thread121.thread, label %.thread124

.thread121.thread:                                ; preds = %.loopexit227, %.thread121
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 648 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !114
  %i.gq = load i64, ptr %4, align 8, !tbaa !114
  %i.gr = call i64 @llvm.umax.i64(i64 %i.gp, i64 %i.gq)
  store i64 %i.gr, ptr %i.go, align 8, !tbaa !62
  br label %.thread124

.thread124:                                       ; preds = %_ZN7rocksdb8IOStatusaSEOS0_.exit90.thread, %_ZN7rocksdb8IOStatusaSEOS0_.exit76.thread, %_ZN7rocksdb8IOStatusaSEOS0_.exit76.peel.thread, %_ZN7rocksdb8IOStatusaSEOS0_.exit90.peel.thread, %.thread113, %bb.h, %.thread121.thread, %.thread121
  %i.gs = load ptr, ptr %i.ac, align 8, !tbaa !104 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.thread124, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.gt, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i ], [ %i.gs, %.thread124 ] ; 6 uses
  %i.gt = load ptr, ptr %.06.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !18 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 56 ; 2 uses
  %i.gy = icmp eq ptr %i.gw, %i.gx
  br i1 %i.gy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !19
  %i.ha = add i64 %i.gz, 1
  call void @_ZdlPvm(ptr noundef %i.gw, i64 noundef %i.ha) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.hb = load ptr, ptr %i.gu, align 8, !tbaa !18 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 24 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !19
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #20
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 80) #20
  %.not.i.i.i104 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i104, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_ELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i.i.i, %.thread124
  %i.hg = load ptr, ptr %i.z, align 8, !tbaa !96
  %i.hh = load i64, ptr %i.ab, align 8, !tbaa !97
  %i.hi = shl i64 %i.hh, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.hg, i8 0, i64 %i.hi, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.hj = load ptr, ptr %i.z, align 8, !tbaa !96  ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.aa
  br i1 %i.hk, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i
  %i.hl = load i64, ptr %i.ab, align 8, !tbaa !97
  %i.hm = shl i64 %i.hl, 3
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #20
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.az

bb.ax:                                            ; preds = %.loopexit132, %.loopexit.split-lp133, %bb.ad, %bb.ar, %bb.ak, %bb.av, %bb.ac
  %.pn68 = phi { ptr, i32 } [ %i.eu, %bb.ak ], [ %i.gm, %bb.av ], [ %i.ed, %bb.ac ], [ %lpad.phi, %bb.ad ], [ %lpad.phi142, %bb.ar ], [ %lpad.loopexit134, %.loopexit132 ], [ %lpad.loopexit.split-lp135, %.loopexit.split-lp133 ]
  call void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.z) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.e
  %.pn68.pn.pn = phi { ptr, i32 } [ %.pn68, %bb.ax ], [ %i.v, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.hn = load ptr, ptr %i.m, align 8, !tbaa !65  ; 2 uses
  %.not.i.i101 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i101, label %_ZN7rocksdb6StatusD2Ev.exit103, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i102

bb.az:                                            ; preds = %bb.b, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEED2Ev.exit
  ret void

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i102: ; preds = %bb.ay
  call void @_ZdaPv(ptr noundef nonnull %i.hn) #20
  br label %_ZN7rocksdb6StatusD2Ev.exit103

_ZN7rocksdb6StatusD2Ev.exit103:                   ; preds = %bb.ay, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i102
  resume { ptr, i32 } %.pn68.pn.pn
}

declare void @_ZN7rocksdb18WritableFileWriter6AppendERKNS_9IOOptionsERKNS_5SliceEj(ptr dead_on_unwind writable sret(%"class.rocksdb::IOStatus") align 8, ptr noundef nonnull align 8 dereferenceable(258), ptr noundef nonnull align 8 dereferenceable(84), ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb3log6Writer18EmitPhysicalRecordERKNS_12WriteOptionsENS0_10RecordTypeEPKcm(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::IOStatus") align 8 %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(656) %1, ptr noundef nonnull align 8 dereferenceable(25) %2, i8 noundef zeroext %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [11 x i8], align 4                ; 8 uses
  %6 = alloca %"struct.rocksdb::IOOptions", align 8 ; 17 uses
  %7 = alloca %"class.rocksdb::IOStatus", align 8 ; 13 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %9 = alloca %"class.rocksdb::IOStatus", align 8 ; 13 uses
  %10 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = trunc i64 %5 to i16
  store i16 %i.c, ptr %i.b, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %3, ptr %i.d, align 2, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = zext i8 %3 to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !63   ; 9 uses
  switch i8 %3, label %bb.b [
    i8 -126, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 4, label %bb.c
    i8 3, label %bb.c
    i8 2, label %bb.c
    i8 1, label %bb.c
    i8 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 7 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !53
  %i.l = trunc i64 %i.k to i32
  store i32 %i.l, ptr %i.i, align 1
  %i.m = call noundef i32 @_ZN7rocksdb6crc32c6ExtendEjPKcm(i32 noundef %i.h, ptr noundef nonnull %i.i, i64 noundef 4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.037 = phi i64 [ 11, %bb.b ], [ 7, %bb.a ], [ 7, %bb.a ], [ 7, %bb.a ], [ 7, %bb.a ], [ 7, %bb.a ], [ 7, %bb.a ], [ 7, %bb.a ], [ 7, %bb.a ] ; 2 uses
  %.036 = phi i32 [ %i.m, %bb.b ], [ %i.h, %bb.a ], [ %i.h, %bb.a ], [ %i.h, %bb.a ], [ %i.h, %bb.a ], [ %i.h, %bb.a ], [ %i.h, %bb.a ], [ %i.h, %bb.a ], [ %i.h, %bb.a ]
  %i.n = call noundef i32 @_ZN7rocksdb6crc32c6ExtendEjPKcm(i32 noundef 0, ptr noundef %4, i64 noundef %5) ; 2 uses
  %i.o = call noundef i32 @_ZN7rocksdb6crc32c13Crc32cCombineEjjm(i32 noundef %.036, i32 noundef %i.n, i64 noundef %5) ; 2 uses
  %i.p = call i32 @llvm.fshl.i32(i32 %i.o, i32 %i.o, i32 17)
  %i.q = add i32 %i.p, -1568478504
  store i32 %i.q, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i64 0, ptr %6, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.r, align 8, !tbaa !93
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 4, ptr %i.s, align 4, !tbaa !94
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 7, ptr %i.t, align 8, !tbaa !95
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !96
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store i64 1, ptr %i.w, align 8, !tbaa !97
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.y, align 8, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.z, i8 0, i64 19, i1 false)
  store i8 -1, ptr %i.aa, align 1, !tbaa !98
  invoke void @_ZN7rocksdb18WritableFileWriter16PrepareIOOptionsERKNS_12WriteOptionsERNS_9IOOptionsE(ptr dead_on_unwind writable sret(%"class.rocksdb::IOStatus") align 8 %0, ptr noundef nonnull align 8 dereferenceable(25) %2, ptr noundef nonnull align 8 dereferenceable(84) %6)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.ab = load i8, ptr %0, align 8, !tbaa !85
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.ad = load ptr, ptr %1, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store ptr %i.a, ptr %8, align 8, !tbaa !112
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.037, ptr %i.ae, align 8, !tbaa !113
  invoke void @_ZN7rocksdb18WritableFileWriter6AppendERKNS_9IOOptionsERKNS_5SliceEj(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %7, ptr noundef nonnull align 8 dereferenceable(258) %i.ad, ptr noundef nonnull align 8 dereferenceable(84) %6, ptr noundef nonnull align 8 dereferenceable(16) %8, i32 noundef 0)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr %0, %7
  br i1 %.not.i, label %_ZN7rocksdb8IOStatusaSEOS0_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i8, ptr %7, align 8, !tbaa !99
  store i8 %i.af, ptr %0, align 8, !tbaa !85
  store i8 0, ptr %7, align 8, !tbaa !85
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !100
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !86
  store i8 0, ptr %i.ag, align 1, !tbaa !86
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !101, !range !73, !noundef !74
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !101
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.an = load i8, ptr %i.am, align 4, !tbaa !102, !range !73, !noundef !74
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.an, ptr %i.ao, align 4, !tbaa !102
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 5 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !103
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !103
  store i8 0, ptr %i.ap, align 1, !tbaa !103
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !65
  store ptr null, ptr %i.as, align 8, !tbaa !65
end_hunk_0
