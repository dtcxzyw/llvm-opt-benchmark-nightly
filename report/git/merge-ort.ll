Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/merge-ort?download=true
inline.NumInlined: 332
inline.NumDeleted: 74
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0
@.str.71 = private unnamed_addr constant [38 x i8] c"renames->cached_pairs_valid_side == 0\00", align 1
@__PRETTY_FUNCTION__.clear_or_reinit_internal_opts = private unnamed_addr constant [73 x i8] c"void clear_or_reinit_internal_opts(struct merge_options_internal *, int)\00", align 1
@.str.72 = private unnamed_addr constant [54 x i8] c"!merge_trees[0] && !merge_trees[1] && !merge_trees[2]\00", align 1
@__PRETTY_FUNCTION__.merge_check_renames_reusable = private unnamed_addr constant [126 x i8] c"void merge_check_renames_reusable(struct merge_options *, struct merge_result *, struct tree *, struct tree *, struct tree *)\00", align 1
@.str.73 = private unnamed_addr constant [51 x i8] c"merge_trees[0] && merge_trees[1] && merge_trees[2]\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"sanity checks\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"opt->repo\00", align 1
@__PRETTY_FUNCTION__.merge_start = private unnamed_addr constant [64 x i8] c"void merge_start(struct merge_options *, struct merge_result *)\00", align 1
@.str.76 = private unnamed_addr constant [29 x i8] c"opt->branch1 && opt->branch2\00", align 1
@.str.77 = private unnamed_addr constant [127 x i8] c"opt->detect_directory_renames >= MERGE_DIRECTORY_RENAMES_NONE && opt->detect_directory_renames <= MERGE_DIRECTORY_RENAMES_TRUE\00", align 1
@.str.78 = private unnamed_addr constant [24 x i8] c"opt->rename_limit >= -1\00", align 1
@.str.79 = private unnamed_addr constant [57 x i8] c"opt->rename_score >= 0 && opt->rename_score <= MAX_SCORE\00", align 1
@.str.80 = private unnamed_addr constant [65 x i8] c"opt->show_rename_progress >= 0 && opt->show_rename_progress <= 1\00", align 1
@.str.81 = private unnamed_addr constant [19 x i8] c"opt->xdl_opts >= 0\00", align 1
@.str.82 = private unnamed_addr constant [97 x i8] c"opt->recursive_variant >= MERGE_VARIANT_NORMAL && opt->recursive_variant <= MERGE_VARIANT_THEIRS\00", align 1
@.str.83 = private unnamed_addr constant [37 x i8] c"opt->record_conflict_msgs_as_headers\00", align 1
@.str.84 = private unnamed_addr constant [69 x i8] c"opt->detect_renames >= -1 && opt->detect_renames <= DIFF_DETECT_COPY\00", align 1
@.str.85 = private unnamed_addr constant [43 x i8] c"opt->verbosity >= 0 && opt->verbosity <= 5\00", align 1
@.str.86 = private unnamed_addr constant [24 x i8] c"opt->buffer_output <= 2\00", align 1
@.str.87 = private unnamed_addr constant [19 x i8] c"opt->obuf.len == 0\00", align 1
@.str.88 = private unnamed_addr constant [113 x i8] c"struct merge_result passed to merge_incore_*recursive() must be zeroed or filled with values from a previous run\00", align 1
@.str.89 = private unnamed_addr constant [50 x i8] c"!!result->priv == !!result->_properly_initialized\00", align 1
@.str.90 = private unnamed_addr constant [27 x i8] c"opt->priv->call_depth == 0\00", align 1
@.str.91 = private unnamed_addr constant [65 x i8] c"!opt->priv->toplevel_dir || 0 == strlen(opt->priv->toplevel_dir)\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"allocate/init\00", align 1
@.str.93 = private unnamed_addr constant [19 x i8] c"collect_merge_info\00", align 1
@.str.94 = private unnamed_addr constant [50 x i8] c"collecting merge info failed for trees %s, %s, %s\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"renames\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"reset_maps\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"process_entries\00", align 1
@.str.98 = private unnamed_addr constant [25 x i8] c"unable to read tree (%s)\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"traverse_trees\00", align 1
@.str.100 = private unnamed_addr constant [41 x i8] c"Called collect_merge_info_callback wrong\00", align 1
@.str.101 = private unnamed_addr constant [41 x i8] c"mbase_null == is_null_oid(&names[0].oid)\00", align 1
@__PRETTY_FUNCTION__.collect_merge_info_callback = private unnamed_addr constant [112 x i8] c"int collect_merge_info_callback(int, unsigned long, unsigned long, struct name_entry *, struct traverse_info *)\00", align 1
@.str.102 = private unnamed_addr constant [41 x i8] c"side1_null == is_null_oid(&names[1].oid)\00", align 1
@.str.103 = private unnamed_addr constant [41 x i8] c"side2_null == is_null_oid(&names[2].oid)\00", align 1
@.str.104 = private unnamed_addr constant [42 x i8] c"!mbase_null || !side1_null || !side2_null\00", align 1
@.str.105 = private unnamed_addr constant [21 x i8] c"mask > 0 && mask < 8\00", align 1
@.str.111 = private unnamed_addr constant [76 x i8] c"renames->dir_rename_mask == 0 || renames->dir_rename_mask == (dirmask & ~1)\00", align 1
@__PRETTY_FUNCTION__.collect_rename_info = private unnamed_addr constant [140 x i8] c"void collect_rename_info(struct merge_options *, struct name_entry *, const char *, const char *, unsigned int, unsigned int, unsigned int)\00", align 1
@.str.112 = private unnamed_addr constant [35 x i8] c"match_mask == 0 || match_mask == 6\00", align 1
@__PRETTY_FUNCTION__.add_pair = private unnamed_addr constant [129 x i8] c"void add_pair(struct merge_options *, struct name_entry *, const char *, unsigned int, unsigned int, unsigned int, unsigned int)\00", align 1
@.str.113 = private unnamed_addr constant [54 x i8] c"match_mask == 0 || match_mask == 3 || match_mask == 5\00", align 1
@.str.114 = private unnamed_addr constant [27 x i8] c"size_t overflow: %lu + %lu\00", align 1
@.str.115 = private unnamed_addr constant [63 x i8] c"renames->dir_rename_mask == 2 || renames->dir_rename_mask == 4\00", align 1
@__PRETTY_FUNCTION__.traverse_trees_wrapper = private unnamed_addr constant [98 x i8] c"int traverse_trees_wrapper(struct index_state *, int, struct tree_desc *, struct traverse_info *)\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"n==3\00", align 1
@__PRETTY_FUNCTION__.traverse_trees_wrapper_callback = private unnamed_addr constant [116 x i8] c"int traverse_trees_wrapper_callback(int, unsigned long, unsigned long, struct name_entry *, struct traverse_info *)\00", align 1
@__PRETTY_FUNCTION__.handle_deferred_entries = private unnamed_addr constant [76 x i8] c"int handle_deferred_entries(struct merge_options *, struct traverse_info *)\00", align 1
@.str.117 = private unnamed_addr constant [128 x i8] c"Assertion `renames->deferred[side].trivial_merges_okay && !strset_contains(&renames->deferred[side].target_dirs, path)' failed.\00", align 1
@.str.118 = private unnamed_addr constant [33 x i8] c"renames->redo_after_renames == 0\00", align 1
@__PRETTY_FUNCTION__.resolve_trivial_directory_merge = private unnamed_addr constant [66 x i8] c"void resolve_trivial_directory_merge(struct conflict_info *, int)\00", align 1
@.str.119 = private unnamed_addr constant [73 x i8] c"(side == 1 && ci->match_mask == 5) || (side == 2 && ci->match_mask == 3)\00", align 1
@.str.120 = private unnamed_addr constant [30 x i8] c"!ci->filemask || !ci->dirmask\00", align 1
@.str.121 = private unnamed_addr constant [27 x i8] c"opt->priv && !result->priv\00", align 1
@__PRETTY_FUNCTION__.move_opt_priv_to_result_priv = private unnamed_addr constant [81 x i8] c"void move_opt_priv_to_result_priv(struct merge_options *, struct merge_result *)\00", align 1
@.str.122 = private unnamed_addr constant [16 x i8] c"regular renames\00", align 1
@.str.123 = private unnamed_addr constant [18 x i8] c"directory renames\00", align 1
@.str.124 = private unnamed_addr constant [16 x i8] c"process renames\00", align 1
@diff_queued_diff = external local_unnamed_addr global %struct.diff_queue_struct, align 8
@.str.125 = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@.str.126 = private unnamed_addr constant [16 x i8] c"diffcore_rename\00", align 1
@.str.127 = private unnamed_addr constant [17 x i8] c"p->status == 'D'\00", align 1
@__PRETTY_FUNCTION__.possibly_cache_new_pair = private unnamed_addr constant [97 x i8] c"void possibly_cache_new_pair(struct rename_info *, struct diff_filepair *, unsigned int, char *)\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"!old_value\00", align 1
@__PRETTY_FUNCTION__.cache_new_pair = private unnamed_addr constant [68 x i8] c"void cache_new_pair(struct rename_info *, int, char *, char *, int)\00", align 1
@.str.129 = private unnamed_addr constant [165 x i8] c"CONFLICT (directory rename split): Unclear where to rename %s to; it was renamed to multiple other directories, with no destination getting a majority of the files.\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"CONFLICT\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.132 = private unnamed_addr constant [193 x i8] c"Assertion `omittable_hint == (!starts_with(type_short_descriptions[type], \22CONFLICT\22) && !starts_with(type_short_descriptions[type], \22ERROR\22)) || type == CONFLICT_DIR_RENAME_SUGGESTED' failed.\00", align 1
@.str.133 = private unnamed_addr constant [18 x i8] c"From inner merge:\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"new_path\00", align 1
@__PRETTY_FUNCTION__.compute_collisions = private unnamed_addr constant [86 x i8] c"void compute_collisions(struct strmap *, struct strmap *, struct diff_queue_struct *)\00", align 1
@.str.136 = private unnamed_addr constant [81 x i8] c"WARNING: Avoiding applying %s -> %s rename to %s, because %s itself was renamed.\00", align 1
@.str.137 = private unnamed_addr constant [34 x i8] c"Failed to apply directory rename!\00", align 1
@.str.138 = private unnamed_addr constant [15 x i8] c"c_info is NULL\00", align 1
@.str.139 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.140 = private unnamed_addr constant [140 x i8] c"CONFLICT (implicit dir rename): Existing file/dir at %s in the way of implicit directory rename(s) putting the following path(s) there: %s.\00", align 1
@.str.141 = private unnamed_addr constant [131 x i8] c"CONFLICT (implicit dir rename): Cannot map more than one path to %s; implicit directory renames tried to put these paths there: %s\00", align 1
@__PRETTY_FUNCTION__.apply_directory_rename_modifications = private unnamed_addr constant [98 x i8] c"void apply_directory_rename_modifications(struct merge_options *, struct diff_filepair *, char *)\00", align 1
@.str.142 = private unnamed_addr constant [39 x i8] c"ci->filemask == 2 || ci->filemask == 4\00", align 1
@.str.143 = private unnamed_addr constant [37 x i8] c"ci->dirmask == 0 || ci->dirmask == 1\00", align 1
@.str.144 = private unnamed_addr constant [20 x i8] c"!new_ci->match_mask\00", align 1
@.str.145 = private unnamed_addr constant [32 x i8] c"new_ci && !new_ci->merged.clean\00", align 1
@.str.146 = private unnamed_addr constant [39 x i8] c"(new_ci->filemask & ci->filemask) == 0\00", align 1
@.str.148 = private unnamed_addr constant [89 x i8] c"Path updated: %s added in %s inside a directory that was renamed in %s; moving it to %s.\00", align 1
@.str.149 = private unnamed_addr constant [98 x i8] c"Path updated: %s renamed to %s in %s, inside a directory that was renamed in %s; moving it to %s.\00", align 1
@.str.150 = private unnamed_addr constant [129 x i8] c"CONFLICT (file location): %s added in %s inside a directory that was renamed in %s, suggesting it should perhaps be moved to %s.\00", align 1
@.str.151 = private unnamed_addr constant [138 x i8] c"CONFLICT (file location): %s renamed to %s in %s, inside a directory that was renamed in %s, suggesting it should perhaps be moved to %s.\00", align 1
@.str.152 = private unnamed_addr constant [28 x i8] c"base && !base->merged.clean\00", align 1
@__PRETTY_FUNCTION__.process_renames = private unnamed_addr constant [72 x i8] c"int process_renames(struct merge_options *, struct diff_queue_struct *)\00", align 1
@.str.153 = private unnamed_addr constant [30 x i8] c"side1 && !side1->merged.clean\00", align 1
@.str.154 = private unnamed_addr constant [30 x i8] c"side2 && !side2->merged.clean\00", align 1
@.str.155 = private unnamed_addr constant [15 x i8] c"side1 == side2\00", align 1
@.str.156 = private unnamed_addr constant [66 x i8] c"CONFLICT (rename/rename): %s renamed to %s in %s and to %s in %s.\00", align 1
@.str.158 = private unnamed_addr constant [34 x i8] c"newinfo && !newinfo->merged.clean\00", align 1
@.str.159 = private unnamed_addr constant [39 x i8] c"target_index == 1 || target_index == 2\00", align 1
@.str.160 = private unnamed_addr constant [96 x i8] c"source_deleted || oldinfo->filemask & old_sidemask || !strcmp(pair->one->path, pair->two->path)\00", align 1
@.str.161 = private unnamed_addr constant [158 x i8] c"CONFLICT (rename involved in collision): rename of %s -> %s has content conflicts AND collides with another path; this may result in nested conflict markers.\00", align 1
@.str.162 = private unnamed_addr constant [69 x i8] c"CONFLICT (rename/delete): %s renamed to %s in %s, but deleted in %s.\00", align 1
@.str.163 = private unnamed_addr constant [41 x i8] c"(S_IFMT & a->mode) == (S_IFMT & b->mode)\00", align 1
@__PRETTY_FUNCTION__.handle_content_merge = private unnamed_addr constant [210 x i8] c"int handle_content_merge(struct merge_options *, const char *, const struct version_info *, const struct version_info *, const struct version_info *, const char **, const int, const int, struct version_info *)\00", align 1
@.str.164 = private unnamed_addr constant [17 x i8] c"S_ISREG(a->mode)\00", align 1
@.str.165 = private unnamed_addr constant [47 x i8] c"error: failed to execute internal merge for %s\00", align 1
@.str.166 = private unnamed_addr constant [36 x i8] c"error: unable to add %s to database\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"Auto-merging %s\00", align 1
@.str.168 = private unnamed_addr constant [49 x i8] c"unsupported object type in the tree: %06o for %s\00", align 1
@__const.merge_3way.ll_opts = private unnamed_addr constant { i8, [3 x i8], i32, i32, [4 x i8], i64 } { i8 0, [3 x i8] zeroinitializer, i32 0, i32 -1, [4 x i8] zeroinitializer, i64 0 }, align 8
@.str.169 = private unnamed_addr constant [62 x i8] c"pathnames[0] && pathnames[1] && pathnames[2] && opt->ancestor\00", align 1
@__PRETTY_FUNCTION__.merge_3way = private unnamed_addr constant [171 x i8] c"int merge_3way(struct merge_options *, const char *, const struct object_id *, const struct object_id *, const struct object_id *, const char **, const int, mmbuffer_t *)\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.171 = private unnamed_addr constant [51 x i8] c"warning: Cannot merge binary files: %s (%s vs. %s)\00", align 1
@.str.172 = private unnamed_addr constant [15 x i8] c".gitattributes\00", align 1
@.str.173 = private unnamed_addr constant [83 x i8] c"submodule deleted on one side; this should be handled outside of merge_submodule()\00", align 1
@.str.174 = private unnamed_addr constant [47 x i8] c"Failed to merge submodule %s (not checked out)\00", align 1
@.str.175 = private unnamed_addr constant [45 x i8] c"Failed to merge submodule %s (no merge base)\00", align 1
@.str.176 = private unnamed_addr constant [51 x i8] c"Failed to merge submodule %s (commits not present)\00", align 1
@.str.177 = private unnamed_addr constant [57 x i8] c"error: failed to merge submodule %s (repository corrupt)\00", align 1
@.str.178 = private unnamed_addr constant [63 x i8] c"Failed to merge submodule %s (commits don't follow merge-base)\00", align 1
@.str.179 = private unnamed_addr constant [41 x i8] c"Note: Fast-forwarding submodule %s to %s\00", align 1
@.str.180 = private unnamed_addr constant [29 x i8] c"Failed to merge submodule %s\00", align 1
@.str.181 = private unnamed_addr constant [73 x i8] c"Failed to merge submodule %s, but a possible merge resolution exists: %s\00", align 1
@.str.182 = private unnamed_addr constant [69 x i8] c"Failed to merge submodule %s, but multiple possible merges exist:\0A%s\00", align 1
@default_abbrev = external local_unnamed_addr global i32, align 4
@.str.183 = private unnamed_addr constant [9 x i8] c"rev-list\00", align 1
@.str.184 = private unnamed_addr constant [9 x i8] c"--merges\00", align 1
@.str.185 = private unnamed_addr constant [16 x i8] c"--ancestry-path\00", align 1
@.str.186 = private unnamed_addr constant [6 x i8] c"--all\00", align 1
@.str.187 = private unnamed_addr constant [4 x i8] c"^%s\00", align 1
@.str.188 = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@.str.189 = private unnamed_addr constant [12 x i8] c"virtual %s\0A\00", align 1
@.str.190 = private unnamed_addr constant [6 x i8] c"%h %s\00", align 1
@.str.191 = private unnamed_addr constant [22 x i8] c"process_entries setup\00", align 1
@.str.192 = private unnamed_addr constant [11 x i8] c"plist grow\00", align 1
@.str.193 = private unnamed_addr constant [11 x i8] c"plist copy\00", align 1
@.str.194 = private unnamed_addr constant [19 x i8] c"plist special sort\00", align 1
@.str.195 = private unnamed_addr constant [11 x i8] c"processing\00", align 1
@.str.196 = private unnamed_addr constant [24 x i8] c"process_entries cleanup\00", align 1
@.str.197 = private unnamed_addr constant [45 x i8] c"dir_metadata.offsets.nr = %lu (should be 1)\0A\00", align 1
@.str.198 = private unnamed_addr constant [55 x i8] c"dir_metadata.offsets.items[0].util = %u (should be 0)\0A\00", align 1
@.str.199 = private unnamed_addr constant [57 x i8] c"dir_metadata accounting completely off; shouldn't happen\00", align 1
@.str.200 = private unnamed_addr constant [9 x i8] c"dir_info\00", align 1
@__PRETTY_FUNCTION__.write_completed_directory = private unnamed_addr constant [97 x i8] c"int write_completed_directory(struct merge_options *, const char *, struct directory_versions *)\00", align 1
@.str.201 = private unnamed_addr constant [30 x i8] c"strchr(basename, '/') == NULL\00", align 1
@__PRETTY_FUNCTION__.record_entry_for_tree = private unnamed_addr constant [92 x i8] c"void record_entry_for_tree(struct directory_versions *, const char *, struct merged_info *)\00", align 1
@__PRETTY_FUNCTION__.process_entry = private unnamed_addr constant [109 x i8] c"int process_entry(struct merge_options *, const char *, struct conflict_info *, struct directory_versions *)\00", align 1
@.str.203 = private unnamed_addr constant [89 x i8] c"ci->match_mask == 0 || ci->match_mask == 3 || ci->match_mask == 5 || ci->match_mask == 6\00", align 1
@.str.204 = private unnamed_addr constant [16 x i8] c"ci->df_conflict\00", align 1
@.str.205 = private unnamed_addr constant [18 x i8] c"ci->filemask != 0\00", align 1
@.str.206 = private unnamed_addr constant [34 x i8] c"ci->merged.result.mode == S_IFDIR\00", align 1
@.str.207 = private unnamed_addr constant [88 x i8] c"CONFLICT (file/directory): directory in the way of %s from %s; moving it to %s instead.\00", align 1
@.str.208 = private unnamed_addr constant [33 x i8] c"othermask == 2 || othermask == 4\00", align 1
@.str.209 = private unnamed_addr constant [55 x i8] c"ci->merged.is_null == (ci->filemask == ci->match_mask)\00", align 1
@.str.210 = private unnamed_addr constant [120 x i8] c"CONFLICT (distinct types): %s had different types on each side; renamed both of them so each can be recorded somewhere.\00", align 1
@.str.211 = private unnamed_addr constant [119 x i8] c"CONFLICT (distinct types): %s had different types on each side; renamed one of them so each can be recorded somewhere.\00", align 1
@.str.213 = private unnamed_addr constant [41 x i8] c"df_file_index == 1 || df_file_index == 2\00", align 1
@.str.214 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.215 = private unnamed_addr constant [8 x i8] c"add/add\00", align 1
@.str.216 = private unnamed_addr constant [10 x i8] c"submodule\00", align 1
@.str.217 = private unnamed_addr constant [36 x i8] c"CONFLICT (%s): Merge conflict in %s\00", align 1
@.str.218 = private unnamed_addr constant [95 x i8] c"CONFLICT (modify/delete): %s deleted in %s and modified in %s.  Version %s of %s left in tree.\00", align 1
@.str.219 = private unnamed_addr constant [17 x i8] c"!ci->df_conflict\00", align 1
@.str.220 = private unnamed_addr constant [4 x i8] c"%s~\00", align 1
@.str.221 = private unnamed_addr constant [4 x i8] c"_%d\00", align 1
@.str.222 = private unnamed_addr constant [11 x i8] c"./strbuf.h\00", align 1
@.str.223 = private unnamed_addr constant [30 x i8] c"strbuf_setlen() beyond buffer\00", align 1
@.str.224 = private unnamed_addr constant [19 x i8] c"!strbuf_slopbuf[0]\00", align 1
@__PRETTY_FUNCTION__.strbuf_setlen = private unnamed_addr constant [44 x i8] c"void strbuf_setlen(struct strbuf *, size_t)\00", align 1
@.str.225 = private unnamed_addr constant [29 x i8] c"error: cannot read object %s\00", align 1
@.str.226 = private unnamed_addr constant [31 x i8] c"error: object %s is not a blob\00", align 1
@.str.227 = private unnamed_addr constant [23 x i8] c"offset <= versions->nr\00", align 1
@__PRETTY_FUNCTION__.write_tree = private unnamed_addr constant [92 x i8] c"int write_tree(struct repository *, struct object_id *, struct string_list *, unsigned int)\00", align 1
@.str.228 = private unnamed_addr constant [8 x i8] c"%o %s%c\00", align 1
@__const.merge_ort_internal.merge_base_abbrev = private unnamed_addr constant %struct.strbuf { i64 0, i64 0, ptr @strbuf_slopbuf }, align 8
@.str.229 = private unnamed_addr constant [9 x i8] c"ancestor\00", align 1
@.str.230 = private unnamed_addr constant [11 x i8] c"empty tree\00", align 1
@.str.231 = private unnamed_addr constant [24 x i8] c"merged common ancestors\00", align 1
@.str.232 = private unnamed_addr constant [25 x i8] c"Temporary merge branch 1\00", align 1
@.str.233 = private unnamed_addr constant [25 x i8] c"Temporary merge branch 2\00", align 1
@.str.234 = private unnamed_addr constant [12 x i8] c"merged tree\00", align 1
@.str.235 = private unnamed_addr constant [20 x i8] c"GIT_MERGE_VERBOSITY\00", align 1
@.str.236 = private unnamed_addr constant [16 x i8] c"merge.verbosity\00", align 1
@.str.237 = private unnamed_addr constant [17 x i8] c"diff.renamelimit\00", align 1
@.str.238 = private unnamed_addr constant [18 x i8] c"merge.renormalize\00", align 1
@.str.239 = private unnamed_addr constant [13 x i8] c"diff.renames\00", align 1
@.str.240 = private unnamed_addr constant [14 x i8] c"merge.renames\00", align 1
@.str.241 = private unnamed_addr constant [23 x i8] c"merge.directoryrenames\00", align 1
@.str.242 = private unnamed_addr constant [9 x i8] c"conflict\00", align 1
@.str.243 = private unnamed_addr constant [15 x i8] c"diff.algorithm\00", align 1
@.str.244 = private unnamed_addr constant [34 x i8] c"unknown value for config '%s': %s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @merge_display_update_messages(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.strbuf, align 8             ; 6 uses
  %4 = alloca %struct.strbuf, align 8             ; 6 uses
  %5 = alloca %struct.strbuf, align 8             ; 6 uses
  %6 = alloca %struct.hashmap_iter, align 8       ; 5 uses
  %7 = alloca %struct.string_list, align 8        ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load i8, ptr %i.d, align 8               ; 2 uses
  %i.f = and i8 %i.e, 4
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 4826, ptr noundef nonnull @.str.1) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = and i8 %i.e, 2
  %.not53 = icmp eq i8 %i.g, 0
  br i1 %.not53, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str, i32 noundef 4828, ptr noundef nonnull @.str.2) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %0, align 8, !tbaa !28
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_enter_fl(ptr noundef nonnull @.str, i32 noundef 4830, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %i.h) #22
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.k = load i8, ptr %i.j, align 8
  %i.l = and i8 %i.k, 1
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %strmap_get_size.exit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.36, i32 noundef 308, ptr noundef nonnull @.str.37) #23
  unreachable

strmap_get_size.exit:                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.n = load i32, ptr %i.m, align 8, !tbaa !32   ; 2 uses
  %.not120 = icmp eq i32 %i.n, 0
  br i1 %.not120, label %bb.g, label %strmap_get_size.exit57

strmap_get_size.exit57:                           ; preds = %strmap_get_size.exit
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.p = tail call i32 @llvm.umax.i32(i32 %i.n, i32 24)
  %spec.select61 = zext i32 %i.p to i64           ; 2 uses
  store i64 %spec.select61, ptr %i.o, align 8, !tbaa !35
  %i.q = shl nuw nsw i64 %spec.select61, 4
  %i.r = tail call ptr @xrealloc(ptr noundef null, i64 noundef %i.q) #22
  store ptr %i.r, ptr %7, align 8, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %strmap_get_size.exit57, %strmap_get_size.exit
  call void @hashmap_iter_init(ptr noundef nonnull %i.i, ptr noundef nonnull %6) #22
  %i.s = call ptr @hashmap_iter_next(ptr noundef nonnull %6) #22 ; 2 uses
  %.not5462 = icmp eq ptr %i.s, null
  br i1 %.not5462, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %.04863 = phi ptr [ %i.z, %.lr.ph ], [ %i.s, %bb.g ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.04863, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %.04863, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.x = call ptr @string_list_append(ptr noundef nonnull %7, ptr noundef %i.w) #22
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.u, ptr %i.y, align 8, !tbaa !43
  %i.z = call ptr @hashmap_iter_next(ptr noundef nonnull %6) #22 ; 2 uses
  %.not54 = icmp eq ptr %i.z, null
  br i1 %.not54, label %._crit_edge, label %.lr.ph, !llvm.loop !190

._crit_edge:                                      ; preds = %.lr.ph, %bb.g
  call void @string_list_sort(ptr noundef nonnull %7) #22
  %i.aa = load i32, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 0
  %i.ac = load ptr, ptr @stderr, align 8
  %spec.select = select i1 %i.ab, ptr %i.ac, ptr %i.c ; 11 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !46 ; 3 uses
  %.not78 = icmp eq i64 %i.ae, 0
  br i1 %.not78, label %._crit_edge75, label %.lr.ph74

.lr.ph74:                                         ; preds = %._crit_edge
  %.not55 = icmp eq i32 %1, 0
  br i1 %.not55, label %.lr.ph74.split.us, label %.lr.ph74.split

.lr.ph74.split.us:                                ; preds = %.lr.ph74, %._crit_edge71.split.us.us
  %.pre100.a = phi i32 [ %.pre100106, %._crit_edge71.split.us.us ], [ %i.aa, %.lr.ph74 ] ; 3 uses
  %i.af = phi i64 [ %i.bb, %._crit_edge71.split.us.us ], [ %i.ae, %.lr.ph74 ]
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %._crit_edge71.split.us.us ], [ 0, %.lr.ph74 ] ; 2 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %8, i64 %indvars.iv93
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !43 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !46 ; 2 uses
  %.not81 = icmp eq i64 %i.ak, 0
  br i1 %.not81, label %._crit_edge71.split.us.us, label %.lr.ph70.us.preheader

.lr.ph70.us.preheader:                            ; preds = %.lr.ph74.split.us
  %.pre98.a = load ptr, ptr %i.ai, align 8, !tbaa !36
  br label %.lr.ph70.us

.lr.ph70.us:                                      ; preds = %.lr.ph70.us.preheader, %bb.i
  %.pre100107 = phi i32 [ %.pre100.a, %.lr.ph70.us.preheader ], [ %.pre100108, %bb.i ]
  %i.al = phi i64 [ %i.ak, %.lr.ph70.us.preheader ], [ %i.ax, %bb.i ]
  %i.am = phi i32 [ %.pre100.a, %.lr.ph70.us.preheader ], [ %i.ay, %bb.i ] ; 2 uses
  %i.an = phi ptr [ %.pre98.a, %.lr.ph70.us.preheader ], [ %i.az, %bb.i ] ; 2 uses
  %indvars.iv90 = phi i64 [ 0, %.lr.ph70.us.preheader ], [ %indvars.iv.next91, %bb.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %indvars.iv90 ; 2 uses
  %i.ap = icmp slt i32 %i.am, 0
  br i1 %i.ap, label %bb.h, label %.critedge.us.us

bb.h:                                             ; preds = %.lr.ph70.us
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !43
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !50
  %i.at = icmp ult i32 %i.as, 22
  br i1 %i.at, label %bb.i, label %.critedge.us.us

.critedge.us.us:                                  ; preds = %bb.h, %.lr.ph70.us
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !51
  %i.av = call i32 @fputs(ptr noundef %i.au, ptr noundef %spec.select) ; 0 uses
  %i.aw = call i32 @fputc(i32 noundef 10, ptr noundef %spec.select) ; 0 uses
  %.pre97.a = load ptr, ptr %i.ai, align 8, !tbaa !36
  %.pre99.a = load i32, ptr %2, align 8, !tbaa !45 ; 2 uses
  %.pre101 = load i64, ptr %i.aj, align 8, !tbaa !46
  br label %bb.i

bb.i:                                             ; preds = %.critedge.us.us, %bb.h
  %.pre100108 = phi i32 [ %.pre99.a, %.critedge.us.us ], [ %.pre100107, %bb.h ] ; 2 uses
  %i.ax = phi i64 [ %.pre101, %.critedge.us.us ], [ %i.al, %bb.h ] ; 2 uses
  %i.ay = phi i32 [ %.pre99.a, %.critedge.us.us ], [ %i.am, %bb.h ]
  %i.az = phi ptr [ %.pre97.a, %.critedge.us.us ], [ %i.an, %bb.h ]
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.ba = icmp ugt i64 %i.ax, %indvars.iv.next91
  br i1 %i.ba, label %.lr.ph70.us, label %._crit_edge71.split.us.us.loopexit, !llvm.loop !191

._crit_edge71.split.us.us.loopexit:               ; preds = %bb.i
  %.pre102 = load i64, ptr %i.ad, align 8, !tbaa !46
  br label %._crit_edge71.split.us.us

._crit_edge71.split.us.us:                        ; preds = %._crit_edge71.split.us.us.loopexit, %.lr.ph74.split.us
  %.pre100106 = phi i32 [ %.pre100108, %._crit_edge71.split.us.us.loopexit ], [ %.pre100.a, %.lr.ph74.split.us ]
  %i.bb = phi i64 [ %.pre102, %._crit_edge71.split.us.us.loopexit ], [ %i.af, %.lr.ph74.split.us ] ; 2 uses
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %i.bc = icmp ugt i64 %i.bb, %indvars.iv.next94
  br i1 %i.bc, label %.lr.ph74.split.us, label %._crit_edge75, !llvm.loop !192

._crit_edge75:                                    ; preds = %._crit_edge71.split, %._crit_edge71.split.us.us, %._crit_edge
  call void @string_list_clear(ptr noundef nonnull %7, i32 noundef 0) #22
  %i.bd = load i32, ptr %2, align 8, !tbaa !45
  %i.be = icmp sgt i32 %i.bd, -1
  br i1 %i.be, label %bb.m, label %bb.r

.lr.ph74.split:                                   ; preds = %.lr.ph74, %._crit_edge71.split
  %i.bf = phi i64 [ %i.bl, %._crit_edge71.split ], [ %i.ae, %.lr.ph74 ]
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %._crit_edge71.split ], [ 0, %.lr.ph74 ] ; 2 uses
  %9 = load ptr, ptr %7, align 8, !tbaa !36
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %9, i64 %indvars.iv87
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !43 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !46 ; 2 uses
  %.not79 = icmp eq i64 %i.bk, 0
  br i1 %.not79, label %._crit_edge71.split, label %.lr.ph70

._crit_edge71.split.loopexit:                     ; preds = %bb.l
  %.pre96 = load i64, ptr %i.ad, align 8, !tbaa !46
  br label %._crit_edge71.split

._crit_edge71.split:                              ; preds = %._crit_edge71.split.loopexit, %.lr.ph74.split
  %i.bl = phi i64 [ %.pre96, %._crit_edge71.split.loopexit ], [ %i.bf, %.lr.ph74.split ] ; 2 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %i.bm = icmp ugt i64 %i.bl, %indvars.iv.next88
  br i1 %i.bm, label %.lr.ph74.split, label %._crit_edge75, !llvm.loop !192

.lr.ph70:                                         ; preds = %.lr.ph74.split, %bb.l
  %i.bn = phi i64 [ %i.cv, %bb.l ], [ %i.bk, %.lr.ph74.split ]
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %bb.l ], [ 0, %.lr.ph74.split ] ; 3 uses
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !36
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %indvars.iv84
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !43 ; 4 uses
  %i.bs = load i32, ptr %2, align 8, !tbaa !45
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph70
  %i.bu = load i32, ptr %i.br, align 8, !tbaa !50
  %i.bv = icmp ult i32 %i.bu, 22
  br i1 %i.bv, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph70
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !194
  %i.bz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %spec.select, ptr noundef nonnull @.str.5, i64 noundef %i.by) #22 ; 0 uses
  %i.ca = call i32 @fputc(i32 noundef 0, ptr noundef %spec.select) ; 0 uses
  %i.cb = load i64, ptr %i.bx, align 8, !tbaa !194
  %.not80 = icmp eq i64 %i.cb, 0
  br i1 %.not80, label %._crit_edge67, label %.lr.ph66

.lr.ph66:                                         ; preds = %bb.k, %.lr.ph66
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph66 ], [ 0, %bb.k ] ; 2 uses
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !195
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !52
  %i.cf = call i32 @fputs(ptr noundef %i.ce, ptr noundef %spec.select) ; 0 uses
  %i.cg = call i32 @fputc(i32 noundef 0, ptr noundef %spec.select) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = load i64, ptr %i.bx, align 8, !tbaa !194
  %i.ci = icmp ugt i64 %i.ch, %indvars.iv.next
  br i1 %i.ci, label %.lr.ph66, label %._crit_edge67, !llvm.loop !193

._crit_edge67:                                    ; preds = %.lr.ph66, %bb.k
  %i.cj = load i32, ptr %i.br, align 8, !tbaa !50
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @type_short_descriptions, i64 %i.ck
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !52
  %i.cn = call i32 @fputs(ptr noundef %i.cm, ptr noundef %spec.select) ; 0 uses
  %i.co = call i32 @fputc(i32 noundef 0, ptr noundef %spec.select) ; 0 uses
  %i.cp = load ptr, ptr %i.bi, align 8, !tbaa !36
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.cp, i64 %indvars.iv84
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !51
  %i.cs = call i32 @fputs(ptr noundef %i.cr, ptr noundef %spec.select) ; 0 uses
  %i.ct = call i32 @fputc(i32 noundef 10, ptr noundef %spec.select) ; 0 uses
  %i.cu = call i32 @fputc(i32 noundef 0, ptr noundef %spec.select) ; 0 uses
  %.pre.a = load i64, ptr %i.bj, align 8, !tbaa !46
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge67, %bb.j
  %i.cv = phi i64 [ %.pre.a, %._crit_edge67 ], [ %i.bn, %bb.j ] ; 2 uses
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1 ; 2 uses
  %i.cw = icmp ugt i64 %i.cv, %indvars.iv.next85
  br i1 %i.cw, label %.lr.ph70, label %._crit_edge71.split.loopexit, !llvm.loop !191

bb.m:                                             ; preds = %._crit_edge75
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 2440 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.merge_ort_internal.merge_base_abbrev, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.merge_ort_internal.merge_base_abbrev, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.merge_ort_internal.merge_base_abbrev, i64 24, i1 false)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 2448 ; 3 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !46
  %.not.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i, label %print_submodule_conflict_suggestion.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @strbuf_add_separated_string_list(ptr noundef nonnull %5, ptr noundef nonnull @.str.66, ptr noundef nonnull %i.cx) #22
  %i.da = load ptr, ptr %i.cx, align 8, !tbaa !36 ; 3 uses
  %.not1418.i = icmp eq ptr %i.da, null
  br i1 %.not1418.i, label %.critedge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.db = load i64, ptr %i.cy, align 8, !tbaa !46 ; 2 uses
  %.not121 = icmp eq i64 %i.db, 0
  br i1 %.not121, label %.critedge.i, label %.lr.ph77

.lr.ph77:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.dc = phi i64 [ %i.dn, %.lr.ph.i ], [ %i.db, %.lr.ph.i.preheader ]
  %i.dd = phi ptr [ %i.do, %.lr.ph.i ], [ %i.da, %.lr.ph.i.preheader ]
  %.019.i76 = phi ptr [ %i.dp, %.lr.ph.i ], [ %i.da, %.lr.ph.i.preheader ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.019.i76, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !43 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !54
  %i.di = and i32 %i.dh, -2
  %switch.i = icmp eq i32 %i.di, 18
  br i1 %switch.i, label %.lr.ph.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph77
  %i.dj = load i32, ptr @git_gettext_enabled, align 4, !tbaa !55
  %.not4.i.i = icmp eq i32 %i.dj, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dk = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #22
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.p, %bb.o
  %.0.i.i = phi ptr [ %i.dk, %bb.p ], [ @.str.67, %bb.o ]
  %i.dl = load ptr, ptr %.019.i76, align 8, !tbaa !51
  %i.dm = load ptr, ptr %i.df, align 8, !tbaa !56
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %4, ptr noundef %.0.i.i, ptr noundef %i.dl, ptr noundef %i.dm) #22
  %.pre103 = load ptr, ptr %i.cx, align 8, !tbaa !36
  %.pre104 = load i64, ptr %i.cy, align 8, !tbaa !46
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_.exit.i, %.lr.ph77
  %i.dn = phi i64 [ %.pre104, %_.exit.i ], [ %i.dc, %.lr.ph77 ] ; 2 uses
  %i.do = phi ptr [ %.pre103, %_.exit.i ], [ %i.dd, %.lr.ph77 ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.019.i76, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.dn
  %i.dr = icmp ult ptr %i.dp, %i.dq
  br i1 %i.dr, label %.lr.ph77, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i, %.lr.ph.i.preheader, %bb.n
  %i.ds = load i32, ptr @git_gettext_enabled, align 4, !tbaa !55
  %.not4.i15.i = icmp eq i32 %i.ds, 0
  br i1 %.not4.i15.i, label %_.exit17.i, label %bb.q

bb.q:                                             ; preds = %.critedge.i
  %i.dt = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.68, i32 noundef 5) #22
  br label %_.exit17.i

_.exit17.i:                                       ; preds = %bb.q, %.critedge.i
  %.0.i16.i = phi ptr [ %i.dt, %bb.q ], [ @.str.68, %.critedge.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !57
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !57
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %3, ptr noundef %.0.i16.i, ptr noundef %i.dv, ptr noundef %i.dx) #22
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !57
  call void (i32, ptr, ...) @advise_if_enabled(i32 noundef 42, ptr noundef nonnull @.str.69, ptr noundef %i.dz) #22
  call void @strbuf_release(ptr noundef nonnull %5) #22
  call void @strbuf_release(ptr noundef nonnull %4) #22
  call void @strbuf_release(ptr noundef nonnull %3) #22
  br label %print_submodule_conflict_suggestion.exit

print_submodule_conflict_suggestion.exit:         ; preds = %bb.m, %_.exit17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.r

bb.r:                                             ; preds = %print_submodule_conflict_suggestion.exit, %._crit_edge75
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 2156
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !196
  call void @diff_warn_rename_limit(ptr noundef nonnull @.str.6, i32 noundef %i.eb, i32 noundef 0) #22
  %i.ec = load ptr, ptr %0, align 8, !tbaa !28
  call void (ptr, i32, ptr, ptr, ptr, ...) @trace2_region_leave_fl(ptr noundef nonnull @.str, i32 noundef 4883, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %i.ec) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @trace2_region_enter_fl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @string_list_append(ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @hashmap_iter_next(ptr noundef) local_unnamed_addr #4

declare void @string_list_sort(ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @string_list_clear(ptr noundef, i32 noundef) local_unnamed_addr #4

end_hunk_0
