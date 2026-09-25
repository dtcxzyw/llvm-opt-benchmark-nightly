Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_property_hooks?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._zend_array = type { %struct._zend_refcounted_h, %union.anon.0, i32, %union.anon.1, i32, i32, i32, i32, i64, ptr }
%struct._zend_refcounted_h = type { i32, %union.anon }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { ptr }
%struct._zend_object_iterator_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._zend_executor_globals = type { %struct._zval_struct, %struct._zval_struct, [32 x ptr], ptr, ptr, %struct._zend_array, %struct._zend_array, ptr, i32, i8, %struct._zval_struct, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, i32, ptr, i32, i64, i32, i32, i32, i8, i8, %struct.zend_atomic_bool_s, %struct.zend_atomic_bool_s, ptr, i64, ptr, ptr, %struct._zend_array, %struct._zend_array, i32, i8, %struct._zval_struct, %struct._zval_struct, %struct._zend_stack, %struct._zend_stack, %struct._zend_stack, ptr, i32, i32, i64, ptr, ptr, ptr, %struct._zend_objects_store, %struct._zend_lazy_objects_store, ptr, ptr, ptr, [3 x %struct._zend_op], ptr, i8, i8, i64, i32, i32, ptr, [16 x %struct._HashTableIterator], ptr, %union._zend_function, %struct._zend_op, %struct._zend_array, i64, %struct.zend_get_gc_buffer, ptr, ptr, ptr, i64, i8, i32, ptr, ptr, i64, %struct._zend_call_stack, i64, i64, %struct._zend_strtod_state, [6 x ptr] }
%struct.zend_atomic_bool_s = type { i8 }
%struct._zval_struct = type { %union._zend_value, %union.anon.3, %union.anon.6 }
%union._zend_value = type { i64 }
%union.anon.3 = type { i32 }
%union.anon.6 = type { i32 }
%struct._zend_stack = type { i32, i32, i32, ptr }
%struct._zend_objects_store = type { ptr, i32, i32, i32 }
%struct._zend_lazy_objects_store = type { %struct._zend_array }
%struct._HashTableIterator = type { ptr, i32, i32 }
%union._zend_function = type { %struct._zend_op_array }
%struct._zend_op_array = type { i8, [3 x i8], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [6 x ptr] }
%struct._zend_op = type { ptr, %union._znode_op, %union._znode_op, %union._znode_op, i32, i32, i8, i8, i8, i8 }
%union._znode_op = type { i32 }
%struct.zend_get_gc_buffer = type { ptr, ptr, ptr }
%struct._zend_call_stack = type { ptr, i64 }
%struct._zend_strtod_state = type { [8 x ptr], ptr, ptr }

@zend_empty_array = external constant %struct._zend_array, align 8
@zend_hooked_object_it_funcs = internal constant %struct._zend_object_iterator_funcs { ptr @zho_it_dtor, ptr @zho_it_valid, ptr @zho_it_get_current_data, ptr @zho_it_get_current_key, ptr @zho_it_move_forward, ptr @zho_it_rewind, ptr null, ptr @zho_it_get_gc }, align 8
@executor_globals = external global %struct._zend_executor_globals, align 8
@.str = private unnamed_addr constant [44 x i8] c"Cannot create reference to property %s::$%s\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Cannot acquire reference to readonly property %s::$%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @zend_hooked_object_build_properties(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18
  %i.c = icmp ugt i32 %i.b, 1073741823
  br i1 %i.c, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @zend_lazy_object_init(ptr noundef nonnull %0) #7 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.b ], [ %0, %bb.a ]
  %i.e = tail call fastcc ptr @zho_build_properties_ex(ptr noundef nonnull %.0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.05 = phi ptr [ %i.e, %bb.c ], [ @zend_empty_array, %bb.b ]
  ret ptr %.05
}

declare ptr @zend_lazy_object_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @zho_build_properties_ex(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct._zval_struct, align 8       ; 5 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20   ; 5 uses
  br i1 %3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 28
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.in = phi ptr [ %i.g, %bb.c ], [ %i.h, %bb.d ]
  %i.i = load i32, ptr %.in, align 4, !tbaa !22
  %i.j = tail call ptr @_zend_new_array(i32 noundef %i.i) #7 ; 6 uses
  tail call void @zend_hash_real_init_mixed(ptr noundef %i.j) #7
  %.not148168 = icmp eq ptr %i.d, null            ; 2 uses
  br i1 %.not148168, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.k = zext nneg i32 %i.m to i64
  %i.l = shl nuw nsw i64 %i.k, 3
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.0142170 = phi ptr [ %i.o, %.lr.ph ], [ %i.d, %bb.e ]
  %.0143169 = phi i32 [ %i.m, %.lr.ph ], [ 0, %bb.e ]
  %i.m = add nuw nsw i32 %.0143169, 1             ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0142170, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23   ; 2 uses
  %.not148 = icmp eq ptr %i.o, null
  br i1 %.not148, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !86

._crit_edge:                                      ; preds = %bb.e, %._crit_edge.loopexit
  %.0143.lcssa = phi i64 [ 0, %bb.e ], [ %i.l, %._crit_edge.loopexit ]
  %i.p = tail call noalias ptr @_emalloc(i64 noundef %.0143.lcssa) #8 ; 3 uses
  br i1 %.not148168, label %._crit_edge184, label %.lr.ph175

.preheader:                                       ; preds = %.lr.ph175
  %5 = trunc nuw i64 %indvars.iv.next to i32
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %.lr.ph183, label %._crit_edge184

.lr.ph183:                                        ; preds = %.preheader
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.f

.lr.ph175:                                        ; preds = %._crit_edge, %.lr.ph175
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph175 ], [ 0, %._crit_edge ] ; 2 uses
  %.0139173 = phi ptr [ %i.v, %.lr.ph175 ], [ %i.d, %._crit_edge ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  store ptr %.0139173, ptr %i.t, align 8, !tbaa !91
  %i.u = getelementptr inbounds nuw i8, ptr %.0139173, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %.not149 = icmp eq ptr %i.v, null
  br i1 %.not149, label %.preheader, label %.lr.ph175, !llvm.loop !87

.loopexit167:                                     ; preds = %zend_string_release.exit, %bb.f
  %i.w = icmp sgt i64 %indvars.iv194, 1
  br i1 %i.w, label %bb.f, label %._crit_edge184, !llvm.loop !88

bb.f:                                             ; preds = %.lr.ph183, %.loopexit167
  %indvars.iv194 = phi i64 [ %indvars.iv.next, %.lr.ph183 ], [ %indvars.iv.next195, %.loopexit167 ] ; 2 uses
  %indvars.iv.next195 = add nsw i64 %indvars.iv194, -1 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next195
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !91   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !27 ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %.idx = shl nuw nsw i64 %i.ad, 5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx
  %.not155177 = icmp eq i32 %i.ac, 0
  br i1 %.not155177, label %.loopexit167, label %.lr.ph180

.lr.ph180:                                        ; preds = %bb.f, %zend_string_release.exit
  %.0138178 = phi ptr [ %i.co, %zend_string_release.exit ], [ %i.aa, %bb.f ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0138178, i64 8
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !23
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %zend_string_release.exit, label %bb.g, !prof !19

bb.g:                                             ; preds = %.lr.ph180
  %i.ai = load ptr, ptr %.0138178, align 8, !tbaa !23 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !34 ; 2 uses
  %i.al = and i32 %i.ak, 16
  %.not156 = icmp eq i32 %i.al, 0
  br i1 %.not156, label %bb.h, label %zend_string_release.exit

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !35 ; 6 uses
  %i.ao = and i32 %i.ak, 2
  %.not157 = icmp eq i32 %i.ao, 0
  br i1 %.not157, label %zend_string_release.exit164, label %zend_string_alloc.exit

zend_string_alloc.exit:                           ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.ap = call i32 @zend_unmangle_property_name_ex(ptr noundef %i.an, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null) #7 ; 0 uses
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !37  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  %i.ar = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aq) #9 ; 4 uses
  %i.as = and i64 %i.ar, -8
  %i.at = add i64 %i.as, 32
  %i.au = call noalias ptr @_emalloc(i64 noundef %i.at) #8 ; 11 uses
  store i32 1, ptr %i.au, align 4, !tbaa !38
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  store i32 22, ptr %i.av, align 4, !tbaa !23
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %i.ar, ptr %i.ax, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull align 1 %i.aq, i64 %i.ar, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ar
  store i8 0, ptr %i.az, align 1, !tbaa !23
  %i.ba = call ptr @zend_hash_find(ptr noundef nonnull %i.q, ptr noundef nonnull %i.au) #7 ; 2 uses
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %zend_hash_find_ptr.exit.thread, label %bb.i

bb.i:                                             ; preds = %zend_string_alloc.exit
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !23, !nonnull !42, !noundef !42
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !34
  %i.be = and i32 %i.bd, 1
  %.not159 = icmp eq i32 %i.be, 0
  br i1 %.not159, label %zend_hash_find_ptr.exit.thread, label %zend_string_release.exit164

zend_hash_find_ptr.exit.thread:                   ; preds = %zend_string_alloc.exit, %bb.i
  %i.bf = load i32, ptr %i.av, align 4, !tbaa !23 ; 2 uses
  %i.bg = and i32 %i.bf, 64
  %.not.i162 = icmp eq i32 %i.bg, 0
  br i1 %.not.i162, label %bb.j, label %zend_string_release.exit164

bb.j:                                             ; preds = %zend_hash_find_ptr.exit.thread
  %i.bh = load i32, ptr %i.au, align 8, !tbaa !38 ; 2 uses
  %i.bi = icmp ne i32 %i.bh, 0
  call void @llvm.assume(i1 %i.bi)
  %i.bj = add i32 %i.bh, -1                       ; 2 uses
  store i32 %i.bj, ptr %i.au, align 8, !tbaa !38
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.k, label %zend_string_release.exit164

bb.k:                                             ; preds = %bb.j
  %i.bl = and i32 %i.bf, 128
  %.not5.i163 = icmp eq i32 %i.bl, 0
  br i1 %.not5.i163, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.au) #7
  br label %zend_string_release.exit164

bb.m:                                             ; preds = %bb.k
  call void @_efree(ptr noundef nonnull %i.au) #7
  br label %zend_string_release.exit164

zend_string_release.exit164:                      ; preds = %bb.m, %bb.l, %bb.j, %zend_hash_find_ptr.exit.thread, %bb.i, %bb.h
  %.1137 = phi ptr [ %i.an, %bb.h ], [ %i.au, %bb.i ], [ %i.an, %zend_hash_find_ptr.exit.thread ], [ %i.an, %bb.j ], [ %i.an, %bb.l ], [ %i.an, %bb.m ] ; 9 uses
  br i1 %1, label %bb.n, label %bb.o

bb.n:                                             ; preds = %zend_string_release.exit164
  %i.bm = call i32 @zend_check_property_access(ptr noundef %0, ptr noundef %.1137, i1 noundef zeroext false) #7
  %i.bn = icmp eq i32 %i.bm, -1
  br i1 %i.bn, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n, %zend_string_release.exit164
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !43
  %i.bq = icmp ne ptr %i.bp, null
  %or.cond = or i1 %2, %i.bq
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store ptr %i.ai, ptr %4, align 8, !tbaa !23
  store i32 13, ptr %i.s, align 8, !tbaa !23
  %i.br = call ptr @zend_hash_update(ptr noundef %i.j, ptr noundef %.1137, ptr noundef nonnull %4) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.bs = load i32, ptr %i.ai, align 8, !tbaa !44
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !23
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.r, label %bb.s, !prof !19

bb.r:                                             ; preds = %bb.q
  %i.by = load i32, ptr %i.r, align 8, !tbaa !23
  %i.bz = or i32 %i.by, 32
  store i32 %i.bz, ptr %i.r, align 8, !tbaa !23
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ca = call ptr @zend_hash_lookup(ptr noundef %i.j, ptr noundef %.1137) #7 ; 2 uses
  %i.cb = load i32, ptr %i.ai, align 8, !tbaa !44
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.cc
  store ptr %i.cd, ptr %i.ca, align 8, !tbaa !23
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 12, ptr %i.ce, align 8, !tbaa !23
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.s, %bb.n
  %i.cf = load ptr, ptr %i.am, align 8, !tbaa !35
  %.not160 = icmp eq ptr %.1137, %i.cf
  br i1 %.not160, label %zend_string_release.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = getelementptr inbounds nuw i8, ptr %.1137, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !23 ; 2 uses
  %i.ci = and i32 %i.ch, 64
  %.not.i161 = icmp eq i32 %i.ci, 0
  br i1 %.not.i161, label %bb.v, label %zend_string_release.exit

bb.v:                                             ; preds = %bb.u
  %i.cj = load i32, ptr %.1137, align 4, !tbaa !38 ; 2 uses
  %i.ck = icmp ne i32 %i.cj, 0
  call void @llvm.assume(i1 %i.ck)
  %i.cl = add i32 %i.cj, -1                       ; 2 uses
  store i32 %i.cl, ptr %.1137, align 4, !tbaa !38
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.w, label %zend_string_release.exit

bb.w:                                             ; preds = %bb.v
  %i.cn = and i32 %i.ch, 128
  %.not5.i = icmp eq i32 %i.cn, 0
  br i1 %.not5.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @free(ptr noundef nonnull %.1137) #7
  br label %zend_string_release.exit

bb.y:                                             ; preds = %bb.w
  call void @_efree(ptr noundef nonnull %.1137) #7
  br label %zend_string_release.exit

zend_string_release.exit:                         ; preds = %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.g, %.lr.ph180
  %i.co = getelementptr inbounds nuw i8, ptr %.0138178, i64 32 ; 2 uses
  %.not155 = icmp eq ptr %i.co, %i.ae
  br i1 %.not155, label %.loopexit167, label %.lr.ph180, !llvm.loop !89

._crit_edge184:                                   ; preds = %.loopexit167, %._crit_edge, %.preheader
  call void @_efree(ptr noundef %i.p) #7
  br i1 %3, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %._crit_edge184
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !21 ; 4 uses
  %.not150 = icmp eq ptr %i.cq, null
  br i1 %.not150, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !27 ; 2 uses
  %.not151185 = icmp eq i32 %i.ct, 0
  br i1 %.not151185, label %.loopexit, label %.lr.ph191.preheader

.lr.ph191.preheader:                              ; preds = %bb.aa
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !23
  br label %.lr.ph191

.lr.ph191:                                        ; preds = %.lr.ph191.preheader, %bb.ag
  %.0189 = phi i32 [ %i.dk, %bb.ag ], [ %i.ct, %.lr.ph191.preheader ]
  %.0131188 = phi ptr [ %.1, %bb.ag ], [ %i.cv, %.lr.ph191.preheader ] ; 5 uses
  %.0134186 = phi ptr [ %.1135, %bb.ag ], [ null, %.lr.ph191.preheader ]
  %i.cw = load i32, ptr %i.cr, align 8, !tbaa !23
  %i.cx = and i32 %i.cw, 4
  %.not152 = icmp eq i32 %i.cx, 0
  br i1 %.not152, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph191
  %i.cy = getelementptr inbounds nuw i8, ptr %.0131188, i64 16
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph191
  %i.cz = getelementptr inbounds nuw i8, ptr %.0131188, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %.0131188, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !47
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.1135 = phi ptr [ %.0134186, %bb.ab ], [ %i.db, %bb.ac ] ; 2 uses
  %.1 = phi ptr [ %i.cy, %bb.ab ], [ %i.cz, %bb.ac ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.0131188, i64 8
  %i.dd = load i8, ptr %i.dc, align 8, !tbaa !23
  switch i8 %i.dd, label %bb.ae [
    i8 0, label %bb.ag
    i8 12, label %bb.ag
  ], !prof !92

bb.ae:                                            ; preds = %bb.ad
  %i.de = call ptr @zend_hash_add_new(ptr noundef %i.j, ptr noundef %.1135, ptr noundef nonnull %.0131188) #7 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 9
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !23
  %.not153 = icmp eq i8 %i.dg, 0
  br i1 %.not153, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dh = load ptr, ptr %i.de, align 8, !tbaa !23 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !38
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !38
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.ad, %bb.ae, %bb.af
  %i.dk = add i32 %.0189, -1                      ; 2 uses
  %.not151 = icmp eq i32 %i.dk, 0
  br i1 %.not151, label %.loopexit, label %.lr.ph191, !llvm.loop !90

.loopexit:                                        ; preds = %bb.ag, %bb.aa, %bb.z, %._crit_edge184
  ret ptr %i.j
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @zend_hooked_object_get_iterator(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !23     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18
  %i.d = icmp ugt i32 %i.c, 1073741823
  br i1 %i.d, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @zend_lazy_object_init(ptr noundef nonnull %i.a) #7 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b, %bb.a
  %.026 = phi ptr [ %i.e, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.f = tail call noalias ptr @_emalloc_160() #7 ; 14 uses
  tail call void @zend_iterator_init(ptr noundef %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.h = load i32, ptr %.026, align 4, !tbaa !38
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %.026, align 4, !tbaa !38
  store ptr %.026, ptr %i.g, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i32 776, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  store ptr @zend_hooked_object_it_funcs, ptr %i.k, align 8, !tbaa !95
  %i.l = icmp ne i32 %2, 0
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.n = zext i1 %i.l to i8
  store i8 %i.n, ptr %i.m, align 8, !tbaa !52
  %i.o = tail call fastcc ptr @zho_build_properties_ex(ptr noundef nonnull %.026, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store ptr %i.o, ptr %i.p, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i32 775, ptr %i.q, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !53
  %.not27 = icmp eq i32 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 89
  %i.u = zext i1 %.not27 to i8
  store i8 %i.u, ptr %i.t, align 1, !tbaa !54
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !96
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !98
  %i.aa = tail call ptr %i.z(ptr noundef %i.v) #7, !inline_history !93 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i8 0, ptr %i.ab, align 8, !tbaa !55
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !23 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !27 ; 2 uses
  %i.ag = zext i32 %i.af to i64
  %.idx.i.i = shl nuw nsw i64 %i.ag, 5
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i.i
  %.not1622.i.i = icmp eq i32 %i.af, 0
  br i1 %.not1622.i.i, label %zho_dynamic_it_init.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %select.unfold.i.i
  %.01424.i.i = phi ptr [ %i.am, %select.unfold.i.i ], [ %i.ad, %bb.c ] ; 2 uses
  %.01523.i.i = phi i32 [ %.1.ph.i.i, %select.unfold.i.i ], [ 0, %bb.c ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01424.i.i, i64 8
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !23  ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %select.unfold.i.i, label %bb.d, !prof !19

bb.d:                                             ; preds = %.lr.ph.i.i
  %.not17.i.i = icmp eq i8 %i.aj, 12
  %i.al = add i32 %.01523.i.i, 1
  br i1 %.not17.i.i, label %select.unfold.i.i, label %zho_dynamic_it_init.exit

select.unfold.i.i:                                ; preds = %bb.d, %.lr.ph.i.i
  %.1.ph.i.i = phi i32 [ %.01523.i.i, %.lr.ph.i.i ], [ %i.al, %bb.d ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01424.i.i, i64 32 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.am, %i.ah
  br i1 %.not16.i.i, label %zho_dynamic_it_init.exit, label %.lr.ph.i.i, !llvm.loop !94

zho_dynamic_it_init.exit:                         ; preds = %bb.d, %select.unfold.i.i, %bb.c
  %.015.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %.01523.i.i, %bb.d ], [ %.1.ph.i.i, %select.unfold.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  store i32 %.015.lcssa.i.i, ptr %i.an, align 4, !tbaa !56
  %i.ao = tail call i32 @zend_hash_iterator_add(ptr noundef %i.aa, i32 noundef %.015.lcssa.i.i) #7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !57
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store i32 0, ptr %i.aq, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  store i32 0, ptr %i.ar, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %zho_dynamic_it_init.exit
  %.0 = phi ptr [ %i.f, %zho_dynamic_it_init.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noalias ptr @_emalloc_160() local_unnamed_addr #1

declare void @zend_iterator_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @_zend_new_array(i32 noundef) local_unnamed_addr #1

declare void @zend_hash_real_init_mixed(ptr noundef) local_unnamed_addr #1

declare noalias ptr @_emalloc_32() local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @zend_check_property_access(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @zend_hash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_efree(ptr noundef) local_unnamed_addr #1
end_hunk_0
